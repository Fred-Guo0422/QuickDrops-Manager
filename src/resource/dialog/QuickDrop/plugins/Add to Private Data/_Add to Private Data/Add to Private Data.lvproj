<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="17008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Test" Type="Folder">
			<Item Name="MyClass.lvclass" Type="LVClass" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/Add to Private Data/_Add to Private Data/Test/MyClass/MyClass.lvclass"/>
		</Item>
		<Item Name="Dependencies" Type="Folder">
			<Property Name="NI.SortType" Type="Int">0</Property>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="C2Demo" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{C0DEE908-FA6B-49AF-8E98-8534AC2DD466}</Property>
				<Property Name="App_INI_GUID" Type="Str">{DCAA2EC3-928D-48AA-B94F-BC74F2C2E3A4}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{89F95312-4F40-4E83-8799-DFC008AAAF7C}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">C2Demo</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/C2Demo</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{0D7C63DA-177B-44A7-848F-CF9ABE491725}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">CoolScript.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/C2Demo/CoolScript.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/C2Demo/data</Property>
				<Property Name="Destination[2].destName" Type="Str">Configuration</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/C2Demo/Configuration</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{333168D8-7979-4875-B503-BF9C4595A72C}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref"></Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref"></Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">Composed Systems</Property>
				<Property Name="TgtF_fileDescription" Type="Str">C2Demo</Property>
				<Property Name="TgtF_internalName" Type="Str">C2Demo</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright ? 2016 Composed Systems</Property>
				<Property Name="TgtF_productName" Type="Str">C2Demo</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{841AE6BE-C31D-4042-B57C-5247CEFD6458}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">CoolScript.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
