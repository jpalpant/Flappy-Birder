<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="AlgorithmTimeTester.vi" Type="VI" URL="../AlgorithmTimeTester.vi"/>
		<Item Name="Configurator.vi" Type="VI" URL="../Configurator.vi"/>
		<Item Name="Flappy Tracker.vi" Type="VI" URL="../Flappy Tracker.vi"/>
		<Item Name="Game Manager.vi" Type="VI" URL="../Game Manager.vi"/>
		<Item Name="Global Booleans Enum.ctl" Type="VI" URL="../Global Booleans Enum.ctl"/>
		<Item Name="GUI.vi" Type="VI" URL="../GUI.vi"/>
		<Item Name="Image Collector.vi" Type="VI" URL="../Image Collector.vi"/>
		<Item Name="Report Error.vi" Type="VI" URL="../Report Error.vi"/>
		<Item Name="Shutdown.vi" Type="VI" URL="../Shutdown.vi"/>
		<Item Name="Tap Handler.vi" Type="VI" URL="../Tap Handler.vi"/>
		<Item Name="Tap Once.vi" Type="VI" URL="../Tap Once.vi"/>
		<Item Name="Top Level.vi" Type="VI" URL="../Top Level.vi"/>
		<Item Name="Wait on Boolean.vi" Type="VI" URL="../Wait on Boolean.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="High Resolution Relative Seconds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/High Resolution Relative Seconds.vi"/>
				<Item Name="Image Type" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/Image Type"/>
				<Item Name="IMAQ ArrayToImage" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ArrayToImage"/>
				<Item Name="IMAQ Copy" Type="VI" URL="/&lt;vilib&gt;/vision/Management.llb/IMAQ Copy"/>
				<Item Name="IMAQ Create" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Create"/>
				<Item Name="IMAQ Dispose" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ Dispose"/>
				<Item Name="IMAQ GetImageSize" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ GetImageSize"/>
				<Item Name="IMAQ Image.ctl" Type="VI" URL="/&lt;vilib&gt;/vision/Image Controls.llb/IMAQ Image.ctl"/>
				<Item Name="IMAQ ImageToArray" Type="VI" URL="/&lt;vilib&gt;/vision/Basics.llb/IMAQ ImageToArray"/>
				<Item Name="IMAQ ReadFile" Type="VI" URL="/&lt;vilib&gt;/vision/Files.llb/IMAQ ReadFile"/>
				<Item Name="IMAQdx.ctl" Type="VI" URL="/&lt;vilib&gt;/userdefined/High Color/IMAQdx.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVH-LINX.lvlib" Type="Library" URL="/&lt;vilib&gt;/LabVIEW Hacker/LINX/LVH-LINX.lvlib"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_Vision_Acquisition_Software.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/driver/NI_Vision_Acquisition_Software.lvlib"/>
				<Item Name="NI_Vision_Development_Module.lvlib" Type="Library" URL="/&lt;vilib&gt;/vision/NI_Vision_Development_Module.lvlib"/>
				<Item Name="NILabs_MLT.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Machine Learning/NILabs_MLT.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="Smart Open.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/DIO/VIs/Smart Open.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Write.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/DIO/VIs/Write.vi"/>
			</Item>
			<Item Name="CalcSSD.vi" Type="VI" URL="../CalcSSD.vi"/>
			<Item Name="CalculateSSDArrays.vi" Type="VI" URL="../CalculateSSDArrays.vi"/>
			<Item Name="CalculateSSDImages.vi" Type="VI" URL="../CalculateSSDImages.vi"/>
			<Item Name="Create Path and File.vi" Type="VI" URL="../Process Error Queue Folder/Error Handling.llb/Create Path and File.vi"/>
			<Item Name="Determine whether Error Should be Logged.vi" Type="VI" URL="../Process Error Queue Folder/Error Handling.llb/Determine whether Error Should be Logged.vi"/>
			<Item Name="DevelopRecipe.vi" Type="VI" URL="../DevelopRecipe.vi"/>
			<Item Name="FindSubimage.vi" Type="VI" URL="../FindSubimage.vi"/>
			<Item Name="FlappyHeightPoint.ctl" Type="VI" URL="../FlappyHeightPoint.ctl"/>
			<Item Name="FrequencyDomainCorrelation.vi" Type="VI" URL="../FrequencyDomainCorrelation.vi"/>
			<Item Name="FrequencyDomainCorrelationArrays.vi" Type="VI" URL="../FrequencyDomainCorrelationArrays.vi"/>
			<Item Name="FrequencyDomainCorrelationImages.vi" Type="VI" URL="../FrequencyDomainCorrelationImages.vi"/>
			<Item Name="FrequencyDomainCorrelationMathScript.vi" Type="VI" URL="../FrequencyDomainCorrelationMathScript.vi"/>
			<Item Name="Globals.vi" Type="VI" URL="../Globals.vi"/>
			<Item Name="Handle or Log Errors.vi" Type="VI" URL="../Process Error Queue Folder/Error Handling.llb/Handle or Log Errors.vi"/>
			<Item Name="ImageCluster.ctl" Type="VI" URL="../ImageCluster.ctl"/>
			<Item Name="IMAQ Pad Image.vi" Type="VI" URL="../IMAQ Pad Image.vi"/>
			<Item Name="LocalQuadraticSum.vi" Type="VI" URL="../LocalQuadraticSum.vi"/>
			<Item Name="LocalQuadraticSumArrays.vi" Type="VI" URL="../LocalQuadraticSumArrays.vi"/>
			<Item Name="LocalQuadraticSumImages.vi" Type="VI" URL="../LocalQuadraticSumImages.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="niimaqdx.dll" Type="Document" URL="niimaqdx.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivision.dll" Type="Document" URL="nivision.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nivissvc.dll" Type="Document" URL="nivissvc.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="Process Error Queue.vi" Type="VI" URL="../Process Error Queue Folder/Error Handling.llb/Process Error Queue.vi"/>
			<Item Name="Recipe step.ctl" Type="VI" URL="../Recipe step.ctl"/>
			<Item Name="Rotate Array.vi" Type="VI" URL="../Rotate Array.vi"/>
			<Item Name="Search 2D Array (Bool).vi" Type="VI" URL="../2D Array/Search 2D Array (Bool).vi"/>
			<Item Name="Search 2D Array (DBL).vi" Type="VI" URL="../2D Array/Search 2D Array (DBL).vi"/>
			<Item Name="Search 2D Array (I16).vi" Type="VI" URL="../2D Array/Search 2D Array (I16).vi"/>
			<Item Name="Search 2D Array (I32).vi" Type="VI" URL="../2D Array/Search 2D Array (I32).vi"/>
			<Item Name="Search 2D Array (String).vi" Type="VI" URL="../2D Array/Search 2D Array (String).vi"/>
			<Item Name="Search 2D Array (U16).vi" Type="VI" URL="../2D Array/Search 2D Array (U16).vi"/>
			<Item Name="Search 2D Array (U32).vi" Type="VI" URL="../2D Array/Search 2D Array (U32).vi"/>
			<Item Name="Search 2D Array.vi" Type="VI" URL="../2D Array/Search 2D Array.vi"/>
			<Item Name="SlopeAndValue.vi" Type="VI" URL="../SlopeAndValue.vi"/>
			<Item Name="STD - Tap Mode.ctl" Type="VI" URL="../STD - Tap Mode.ctl"/>
			<Item Name="StripPath_ErrorHandling.vi" Type="VI" URL="../Process Error Queue Folder/Error Handling.llb/StripPath_ErrorHandling.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
