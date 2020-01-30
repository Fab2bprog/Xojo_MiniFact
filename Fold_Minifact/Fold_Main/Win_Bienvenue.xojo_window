#tag Window
Begin Window Win_Bienvenue
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   480
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   480
   MinimizeButton  =   True
   MinWidth        =   640
   Placement       =   0
   Resizeable      =   True
   Title           =   "MiniFact"
   Visible         =   True
   Width           =   640
   Begin TextField Txt_Identifiant
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   23
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   True
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   100
      Password        =   False
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   457
      Transparent     =   True
      Underline       =   False
      ValidationMask  =   ""
      Value           =   "Anonyme"
      Visible         =   True
      Width           =   567
   End
   Begin TLBar_Bienvenue TLBar_BienvenueInstance
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   "0"
      Visible         =   True
   End
   Begin PushButton BTN_VERSION
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Version"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   573
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   457
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   67
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Dim MenuFichier as Class_MenuFichier
		  
		  Me.Maximize
		  
		  DynaMenuBar= new MenuBar
		  Self.MenuBar=DynaMenuBar
		  
		  Node_Fichier = New MenuItem
		  Node_Fichier.Text="Fichier"
		  Node_Fichier.Name="Node_Fichier"
		  DynaMenuBar.Append Node_Fichier
		  
		  MenuFichier = new Class_MenuFichier
		  MenuFichier.Node_Root=Node_Fichier
		  MenuFichier.Add_All
		  
		  TLBar_BienvenueInstance.Enabled=False
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_CloseBase() As Boolean Handles Ite_CloseBase.Action
			Close_Base
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_NewBase() As Boolean Handles Ite_NewBase.Action
			// Creation d'une nouvelle base de donnée
			
			dim dlog as SaveAsDialog
			dim file as folderItem
			
			Dim reponse As integer
			
			if not (App.MainDB_Etat="CLOSE") then
			reponse=MsgBox("Une base est deja ouverte, désirez vous fermer la base en cour ",36)
			if reponse=6 then
			Close_Base
			else
			if reponse = 7 then
			return false
			end if
			end if
			end if
			
			
			// Crée uine boite de dialogue de type creation de fichier
			dlog = New SaveAsDialog
			dlog.PromptText = "Création d'une nouvelle base"
			dlog.SuggestedFileName = "mabase.rsd"
			file = dlog.ShowModalWithin(me)
			
			// Dans le cas ou l'utilisateur annule le choix d'un fichier
			if file = NIL then
			return false
			end
			
			// Supprime un fichier qui porterait le meme nom
			if file.Exists then
			file.Delete
			if file.Exists then
			MsgBox "Le Fichier n'a put etre remplacé : cela peut etre du soit a une limitation de votre compte utilisateur, soit au fait qu'une autre Application utilise ce fichier"
			return false
			end if
			end if
			
			
			App.MainDB = New REALSQLDatabase
			App.MainDB.databaseFile =GetFolderItem( file.NativePath )
			
			
			if not App.CreateDatabaseFile then
			
			if app.MainDB.error then
			app.displayDatabaseError false
			end
			return false
			End if
			
			App.MainDB.Commit
			
			
			
			
			return true
			
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_OpenBase() As Boolean Handles Ite_OpenBase.Action
			// Ouverture d'une base de donnée
			
			dim dlog as OpenDialog
			dim file as folderItem
			Dim reponse As integer
			
			
			if not (App.MainDB_Etat="CLOSE") then
			reponse=MsgBox("Une base est deja ouverte, désirez vous fermer la base en cour ",36)
			if reponse=6 then // Reponse oui
			Close_Base
			else
			if reponse = 7 then // Reponse Non
			return false
			end if
			end if
			end if
			
			// Crée une boite de dialogue de type creation de fichier
			dlog = New OpenDialog
			dlog.PromptText = "Ouverture d'une base de donnée existante"
			dlog.SuggestedFileName = "mabase.rsd"
			file = dlog.ShowModalWithin(me)
			
			// Dans le cas ou l'utilisateur annule le choix d'un fichier
			if file = NIL then
			return false
			end
			
			App.MainDB = New REALSQLDatabase
			App.MainDB.databaseFile =GetFolderItem( file.NativePath,3 )
			
			
			if not App.OpenDatabaseFile then
			
			if app.MainDB.error then
			app.displayDatabaseError false
			end
			return false
			end if
			
			
			
			return true
			
			
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub Add_Menu()
		  Add_MenuTable
		  Add_MenuStock
		  Add_MenuDocuments
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_MenuDocuments()
		  Dim MenuDocuments as Class_MenuDocuments
		  
		  Node_Documents        = New MenuItem
		  Node_Documents.text   = "Documents"
		  Node_Documents.Name   = "Node_Documents"
		  Node_Documents.Enable
		  DynaMenuBar.Append Node_Documents
		  
		  MenuDocuments = new Class_MenuDocuments
		  MenuDocuments.Node_Root = Node_Documents
		  MenuDocuments.Add_Facture
		  
		  
		  TLBar_BienvenueInstance.Enabled=True
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_MenuStock()
		  Dim MenuStock as Class_MenuStock
		  
		  Node_Stock        = New MenuItem
		  Node_Stock.text  = "Stock"
		  Node_Stock.Name  = "Node_Stock"
		  Node_Stock.Enable
		  DynaMenuBar.Append Node_Stock
		  
		  MenuStock = new Class_MenuStock
		  MenuStock.Node_Root=Node_Stock
		  MenuStock.Add_BordRecep
		  MenuStock.Add_Stock
		  
		  TLBar_BienvenueInstance.Enabled=True
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Add_MenuTable()
		  Dim MenuTable as Class_MenuTable
		  
		  Node_Table       = New MenuItem
		  Node_Table.text  = "Tables"
		  Node_Table.Name  = "Node_Table"
		  Node_Table.Enable
		  DynaMenuBar.Append Node_Table
		  
		  MenuTable = new Class_MenuTable
		  MenuTable.Node_Root=Node_Table
		  MenuTable.Add_Depot
		  MenuTable.Add_Article
		  MenuTable.Add_Caracteristique
		  MenuTable.Add_Nomenclature
		  MenuTable.Add_TVA
		  MenuTable.Add_UnitMesure
		  MenuTable.Add_Client
		  MenuTable.Add_Fournisseur
		  MenuTable.Add_CodePostal
		  
		  if App.MyLogUserInfo.Numero=1 then
		    MenuTable.Add_Securite
		  end if
		  
		  TLBar_BienvenueInstance.Enabled=True
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Close_Base()
		  App.CloseDatabaseFile
		  Init_Menu
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init_Menu()
		  Dim MenuFichier as Class_MenuFichier
		  
		  DynaMenuBar= new MenuBar
		  Self.MenuBar=DynaMenuBar
		  
		  Node_Fichier = New MenuItem
		  Node_Fichier.Text="Fichier"
		  Node_Fichier.Name="Node_Fichier"
		  DynaMenuBar.Append Node_Fichier
		  
		  MenuFichier = new Class_MenuFichier
		  MenuFichier.Node_Root=Node_Fichier
		  MenuFichier.Add_All
		  
		  TLBar_BienvenueInstance.Enabled=False
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DynaMenuBar As MenuBar
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Documents As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Fichier As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Stock As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Node_Table As MenuItem
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_Bienvenue", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events TLBar_BienvenueInstance
	#tag Event
		Sub Action(item As ToolItem)
		  Select case item.Name
		    
		  Case "TItem_Fourn"
		    Win_FournLst.Show
		  Case "TItem_Article"
		    Win_ArticleLst.Show
		  Case "TItem_Export"
		    Win_ExportData.Show
		  CAse "TItem_Outils"
		    Win_Outils.Show
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_VERSION
	#tag Event
		Sub Action()
		  
		  MsgBox "LOGICIEL VERSION ALPHA 1.1.5 , COPYRIGHT : FABRICE GARCIA"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DynaMenuBar"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
