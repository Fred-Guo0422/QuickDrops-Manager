"""
Author: Piotr Kruczkowski
"""

# easygui is used to display the dialog boxes
# pyperclip is used to copy the final string into the clipboard
# webbrowser is used to open the url to the PlantUML parser online
import easygui
import pyperclip
import webbrowser


def dsplit(input, sep1, sep2):
    # Splitting an input string into three elements based on two separators
    # This is used for parsing the lines in DETT trace
    els = []
    parts = input.partition(sep1)
    els.append(parts[0].strip())
    parts = parts[2].partition(sep2)
    els.append(parts[0].strip())
    els.append(parts[2].strip())
    return els

def leg(input_string):
    # This function is legalizing a string for the PlantUML to accept
    # by removing spaces and dashes
    return input_string.replace(' ', '').replace('-', '').replace('Actor', '')

# Ask the user for the paths to the files
path = easygui.fileopenbox(msg='Please select the trace text file to be translated into PlantUML',
                           filetypes='*.txt')

save_path = easygui.filesavebox(msg='Please select where to save the translated PlantUML text file',
                                default='translatedUML.txt',
                                filetypes='*.txt')

if path is not None and save_path is not None:  # If the files have been selected
    final_string = ''  # initialize final_string to empty
    with open(path) as af:  # With the text file as af
        for line in af:  # For every line in the text file
            if 'AF: ' in line:  # If the line is an AF related line
                split_line = line.split('\t')  # Split the line using tabs
                msg = split_line[6]  # Extract the comment column
                msg = msg.rstrip('\n').rstrip()  # Cut from the end of comment the eol character and spaces
                msg = msg.lstrip('AF:').lstrip()  # Cut from the start of comment the 'AF:' constant and spaces

                if 'has stopped' in msg:
                    stopped_actor, *not_used = msg.partition('has stopped')
                    text = 'destroy %s\n' % leg(stopped_actor)
                elif ' sent ' in msg and ' to ' in msg:
                    sender, what, receiver = dsplit(msg, ' sent ', ' to ')
                    not_used, what, not_used = dsplit(what, '.lvlib:', '.lvclass')
                    text = '%s->%s:%s\n' % (leg(sender), leg(receiver), leg(what))
                elif ' created ' in msg and ' of type ' in msg:
                    creator, what, typeof = dsplit(msg, ' created ', ' of type ')
                    if '.lvlib:' in typeof:
                        not_used, typeof, not_used = dsplit(typeof, '.lvlib:', '.lvclass')
                    else:
                        typeofarr = typeof.split('.lvclass')
                        typeof = typeofarr[0]
                    text = 'create %s\n' % (leg(what))
                    text += '%s->%s:%s\n' % (leg(creator), leg(what), leg(typeof))
                elif ' received ' in msg:
                    who, not_used, what = msg.partition(' received ')
                    not_used, what, not_used = dsplit(what, '.lvlib:', '.lvclass')
                    text = 'hnote over %s:%s\n' % (leg(who), leg(what))
                elif ' dropped ' in msg:
                    dropper, not_used, what = msg.partition(' dropped ')
                    not_used, what, not_used = dsplit(what, '.lvlib:', '.lvclass')
                    text = 'note over %s:%s\n' % (leg(dropper), leg(what))

                final_string += text

    with open(save_path, "w") as w:
        w.write(final_string)

    print('Translation complete. File save location: %s' % save_path)
    pyperclip.copy(final_string)
    webbrowser.open('http://www.planttext.com/planttext', 0)
else:
    print('Translation cancelled.')
