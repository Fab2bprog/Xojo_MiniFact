#tag Window
Begin Window Win_StockArtLst
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   600
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   501833727
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   700
   Placement       =   0
   Resizeable      =   True
   Title           =   " RECHERCHE STOCK ARTICLES"
   Visible         =   True
   Width           =   1024
   Begin GroupBox Grb_Resultat
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Exploration de la recherche par elements de nomenclature"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   352
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   183
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   984
      Begin Listbox LST_RESULT
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   10
         ColumnWidths    =   "50,50,80*,60*,60*,60*,60*,80,80,80"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   "0"
         GridLinesVerticalStyle=   "3"
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   311
         Index           =   -2147483648
         InitialParent   =   "Grb_Resultat"
         InitialValue    =   "Depot	Code	Libelle	Ensemble	Groupe	Fam	SoFam	Stock actuel	Stock alerte	Valeur estimée"
         Italic          =   False
         Left            =   301
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   "0"
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   216
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   694
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin Listbox Lst_Nomencl
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   True
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   3
         ColumnWidths    =   "*,0,0,0"
         DataField       =   ""
         DataSource      =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLinesHorizontalStyle=   "0"
         GridLinesVerticalStyle=   "0"
         HasBorder       =   True
         HasHeader       =   False
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   311
         Index           =   -2147483648
         InitialParent   =   "Grb_Resultat"
         InitialValue    =   ""
         Italic          =   False
         Left            =   34
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   "0"
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   216
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   255
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin GroupBox Grb_Recherche
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Criteres de recherche des articles du dépot"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   93
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   78
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   984
      Begin Label Lab_TypeChamp
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   False
         Underline       =   False
         Value           =   "Champ"
         Visible         =   True
         Width           =   47
      End
      Begin TextField Txt_ValCherche
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
         Height          =   25
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         Italic          =   False
         Left            =   508
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         MaximumCharactersAllowed=   100
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   104
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   487
      End
      Begin PopupMenu Pop_TypeChamp
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         InitialValue    =   ""
         Italic          =   False
         Left            =   87
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   105
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   252
      End
      Begin PopupMenu Pop_Operateur
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         InitialValue    =   "EGALE\r\nSUP_EGALE\r\nINF_EGALE\r\nDIFFERENT\r\nSUPERIEUR\r\nINFERIEUR\r\nCONTIENT\r\nCONTIENT_PAS\r\nCOMMENCE_PAR\r\nFINIT_PAR\r\nEST_VIDE\r\nEST_NON_VIDE\r\nEST_NULL\r\nEST_NON_NULL"
         Italic          =   False
         Left            =   351
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   105
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   145
      End
      Begin Label Lab_Limitepg
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         Italic          =   False
         Left            =   351
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   138
         Transparent     =   False
         Underline       =   False
         Value           =   "Présenter par block de"
         Visible         =   True
         Width           =   162
      End
      Begin Label Lab_Limitepg1
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         Italic          =   False
         Left            =   666
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   137
         Transparent     =   False
         Underline       =   False
         Value           =   "lignes."
         Visible         =   True
         Width           =   68
      End
      Begin PopupMenu POP_LIMITPAGE
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         InitialValue    =   "NON\r\n100\r\n150\r\n200\r\n250\r\n500\r\n750\r\n1000\r\n1500\r\n2000\r\n3000\r\n4000\r\n5000\r\n10000\r\n25000\r\n50000\r\n100000\r\n"
         Italic          =   False
         Left            =   555
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   137
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   99
      End
      Begin Label Lab_TypeStock
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   137
         Transparent     =   False
         Underline       =   False
         Value           =   "Parmis"
         Visible         =   True
         Width           =   41
      End
      Begin PopupMenu Pop_TypeStock
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Recherche"
         InitialValue    =   ""
         Italic          =   False
         Left            =   87
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   137
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   252
      End
   End
   Begin BevelButton LBTN_CANCEL
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "0"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   ""
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   40
      Icon            =   280725503
      IconAlignment   =   "1"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   956
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Quitter la fenetre"
      Top             =   540
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin TLBar_Stock TLBar_LstStock
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   "0"
      TabPanelIndex   =   "0"
      Transparent     =   True
      Visible         =   True
   End
   Begin GroupBox Grb_Depot
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Dépot où doit s'effectuer la recherche"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   58
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   8
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   984
      Begin PopupMenu Pop_Depot
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Depot"
         InitialValue    =   ""
         Italic          =   False
         Left            =   87
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   29
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   252
      End
      Begin Label Lab_Depot
         AllowAutoDeactivate=   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Grb_Depot"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   30
         Transparent     =   False
         Underline       =   False
         Value           =   "Nom"
         Visible         =   True
         Width           =   48
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  Ite_Exit.Enable
		  Ite_ExportExcel.Enable
		  Ite_ExportCSV.Enable
		  Ite_ExportXML.Enable
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  AccesPerm_Objet = new Class_AccesObjet
		  
		  Select case AccesPerm_Objet.Verif_Acces(AccessWindow_ID,false)
		  Case "N"
		    me.close
		    return
		  Case "R"
		    TLBar_LstStock.Item(3).Enabled=false
		    TLBar_LstStock.Item(4).Enabled=false
		    
		  Case "W"
		    if AccesPerm_Objet.Blocage="O" then
		      TLBar_LstStock.Item(3).Enabled=true
		      TLBar_LstStock.Item(4).Enabled=true
		    end if
		  end select
		  
		  Def_Nomenclature(0,0)
		  Def_TypeStock
		  Def_ListeDepot
		  
		  TLBar_LstStock.Item(9).Enabled=false
		  TLBar_LstStock.Item(10).Enabled=false
		  
		  ObjViewStock = new Class_ViewStock
		  ObjViewStock.DBaseID = App.MainDB
		  ObjViewStock.Create_ViewStock
		  ObjViewStock.DBaseSource="select * from "+TableCherche+" LIMIT 1"
		  
		  if not ObjViewStock.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  LST_RESULT.DeleteAllRows
		  
		  
		  Def_TypeChamp
		  
		  
		  //Lance une recherche  automatique  sans critere sur les 100 premiers enregistrements
		  'POP_LIMITPAGE.InitialValue = str(100)
		  'Lance_Recherche(true)
		  'If LST_RESULT.SelCount >0 then
		  'LST_RESULT.Selected(0)=true
		  'LST_RESULT.SetFocus
		  'end if
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_Exit() As Boolean Handles Ite_Exit.Action
			Win_StockArtLst.Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_ExportCSV() As Boolean Handles Ite_ExportCSV.Action
			ObjExport = new Class_Export
			ObjExport.DBaseID   = App.MainDB
			ObjExport.DBaseSource = Liste_Requete
			
			if Not ObjExport.Select_Fichier("CSV","csv")  then
			return false
			end if
			
			
			if not ObjExport.DBaseReqSrc_Exec then
			MsgBox "L'export CSV de la page en cour à échoué"
			return false
			end if
			
			if not ObjExport.Export_CSV then
			MsgBox "L'export CSV de la page en cour à échoué"
			return false
			end if
			
			MsgBox "Exportation csv de "+str(ObjExport.DBaseRS.RecordCount)+" ligne(s) réussi."
			
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_ExportExcel() As Boolean Handles Ite_ExportExcel.Action
			ObjExport = new Class_Export
			ObjExport.DBaseID   = App.MainDB
			ObjExport.DBaseSource = Liste_Requete
			
			if not ObjExport.DBaseReqSrc_Exec then
			MsgBox "L'export Excel de la page en cour à échoué"
			return false
			end if
			
			if not ObjExport.Export_Excel then
			MsgBox "L'export Excel de la page en cour à échoué"
			return false
			end if
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_ExportXML() As Boolean Handles Ite_ExportXML.Action
			ObjExport = new Class_Export
			ObjExport.DBaseID   = App.MainDB
			ObjExport.DBaseSource = Liste_Requete
			
			if Not ObjExport.Select_Fichier("XML","xml") then
			return false
			end if
			
			if not ObjExport.DBaseReqSrc_Exec then
			MsgBox "L'export XML de la page en cour à échoué"
			return false
			end if
			
			if not ObjExport.Export_XML("ARTICLE") then
			MsgBox "L'export XML de la page en cour à échoué"
			return false
			end if
			
			
			MsgBox "Exportation xml de "+str(ObjExport.DBaseRS.RecordCount)+" ligne(s) réussi."
			
			return true
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function AccessQuery_User(Login_user as String, DataAccessMode as String = "e", SrcWindowName as String = "") As Boolean
		  AccessMode_Data=DataAccessMode
		  
		  if DataAccessMode="SELECT" then
		    TLBar_LstStock.Item(3).Enabled=true
		    
		    ' TLBar_LstStock.Item(4).Enabled=false
		    'TLBar_LstStock.Item(5).Enabled=false
		    'TLBar_LstStock.Item(6).Enabled=false
		    'TLBar_LstStock.Item(7).Enabled=false
		    'TLBar_LstStock.Item(8).Enabled=false
		    'TLBar_LstStock.Item(9).Enabled=false
		    
		    SourceWindowName = SrcWindowName
		    
		    
		    
		  end If
		  
		  
		  return true
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_AfficheTout()
		  
		  
		  Lance_Recherche(true)
		  
		  
		  If LST_RESULT.SelCount >0 then
		    LST_RESULT.Selected(0)=true
		    LST_RESULT.SetFocus
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Ajouter()
		  dim test As Boolean
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if PermArticleFich.Interoge_Acces("Win_ArticleFich","W",false)  then
		    Win_ArticleFich.Show
		    Win_ArticleFich.AccesPerm_Data=PermArticleFich
		    Win_ArticleFich.SourceWindowName=AccessWindow_ID
		    test = Win_ArticleFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"ADD", 0)=true
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Blocage(Bloquer as String)
		  Dim OrdreSql as string
		  Dim RepUser  as Integer
		  Dim PermArticleFich as Class_AccesObjet
		  Dim numero as Int64
		  Dim LibBloque as string
		  
		  if Bloquer<>"O" then Bloquer="N"
		  
		  
		  if Bloquer="O" then
		    LibBloque="Bloquer"
		  else
		    LibBloque="Debloquer"
		  end if
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if  not PermArticleFich.Interoge_Acces("Win_ArticleFich","W") or PermArticleFich.Blocage="N"  then
		    RepUser=MsgBox("Vous ne possedez pas les droits necessaire à la réalisation de cette action",48)
		    exit sub
		  end if
		  
		  if LST_RESULT.SelCount >0 Then
		    RepUser=MsgBox(LibBloque+" en ecriture le Article sélectionné ?",52)
		    If  RepUser=7 then
		      exit sub  //User repond non
		    end if
		  else
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  numero= LST_RESULT.Cell(LST_RESULT.ListIndex,0).CLong
		  'OrdreSql="UPDATE ARTICLE SET BLOCAGE ='"+Bloquer+"' WHERE NUMERO="+str(numero)
		  'if not app.RequeteSql(OrdreSql) then
		  'exit sub
		  'end if
		  
		  LST_RESULT.Cell(LST_RESULT.ListIndex,8)=Bloquer
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Consulter()
		  dim test As Boolean
		  dim PermArticleFich as Class_AccesObjet
		  dim numero as Int64
		  
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if LST_RESULT.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  
		  if PermArticleFich.Interoge_Acces("Win_ArticleFich","R",False)  then
		    
		    Win_ArticleFich.Show
		    numero= LST_RESULT.Cell(LST_RESULT.ListIndex,0).CLong
		    Win_ArticleFich.AccesPerm_Data=PermArticleFich
		    Win_ArticleFich.SourceWindowName=AccessWindow_ID
		    test = Win_ArticleFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"LIRE", numero)=true
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Explorer(ConservReq as Boolean = false)
		  
		  Dim RechTxt As string
		  Dim RepUser as Boolean
		  
		  Grb_Resultat.Enabled=False
		  
		  ObjViewStock.Filtre_NclCibleCode   = Data_NumeroNomencl
		  ObjViewStock.Filtre_NclCibleNiveau = Data_NiveauNomencl
		  ObjViewStock.Create_ViewStock
		  
		  //Limitation de la recherche a X lignes par page
		  if not (POP_LIMITPAGE.Text  ="NON") then
		    Ligne_ParPage= POP_LIMITPAGE .Text.CLong
		  else
		    Ligne_ParPage=0
		  end if
		  
		  
		  
		  'if not AffichTout then
		  'RechTxt = Escape_SQLData(Txt_ValCherche.Text)
		  'Liste_Requete="select *  from "+TableCherche+" WHERE "+  AppliOperation2ChampSql(Pop_TypeChamp.Text, Pop_Operateur.Text ,RechTxt)+" ORDER BY NUMDEPOT,NUMART  "
		  'else
		  'Liste_Requete="select *  from "+TableCherche+" ORDER BY NUMDEPOT,NUMART  "
		  'end if
		  
		  
		  Ligne_DebPage=0
		  Ligne_FinPage=Ligne_ParPage
		  
		  LST_RESULT.DeleteAllRows
		  
		  RepUser  = Page_Lire
		  
		  
		  Grb_Resultat.Enabled=True
		  
		  
		  If LST_RESULT.SelCount >0 then
		    LST_RESULT.Selected(0)=true
		    LST_RESULT.SetFocus
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Modifier()
		  dim test As Boolean
		  dim numero as Int64
		  dim RepUser as integer
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  
		  if LST_RESULT.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  if PermArticleFich.Interoge_Acces("Win_StockCorrect","W",false)  then
		    Win_StockCorrect.Show
		    'numero= LST_RESULT.Cell(LST_RESULT.ListIndex,0).CLong
		    'Win_ArticleFich.AccesPerm_Data=PermArticleFich
		    'Win_ArticleFich.SourceWindowName=AccessWindow_ID
		    'test = Win_ArticleFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"MODIF", numero)=true
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_PagePrecedente()
		  TLBar_LstStock.item(7).Enabled=True
		  
		  if  Ligne_DebPage<Ligne_ParPage then
		    Ligne_DebPage=0
		    TLBar_LstStock.item(6).Enabled=false
		    exit sub
		  end if
		  Ligne_DebPage=Ligne_DebPage-Ligne_ParPage
		  Ligne_FinPage= Ligne_ParPage
		  
		  if  Page_Lire=False then
		    TLBar_LstStock.item(6).Enabled=false
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_PageSuivante()
		  
		  TLBar_LstStock.item(6).Enabled=true
		  
		  Ligne_DebPage = Ligne_DebPage+Ligne_ParPage
		  Ligne_FinPage = Ligne_ParPage
		  
		  if  Page_Lire=False then
		    Ligne_DebPage = Ligne_DebPage-Ligne_ParPage
		    Ligne_FinPage = Ligne_ParPage
		    
		    TLBar_LstStock.item(7).Enabled=false
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Quitter()
		  self.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Rechercher(ConservReq as Boolean = false)
		  
		  Lance_Recherche
		  
		  
		  If LST_RESULT.SelCount >0 then
		    LST_RESULT.Selected(0)=true
		    LST_RESULT.SetFocus
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Selection()
		  Dim i as integer
		  
		  if LST_RESULT.SelCount =0 Then
		    exit sub
		  end if
		  
		  
		  if AccessMode_Data="SELECT" then
		    
		    
		    
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Supprimer()
		  dim RepUser  as Integer
		  dim numero   as Int64
		  dim OrdreSql as string
		  
		  if LST_RESULT.SelCount >0 Then
		    RepUser=MsgBox("Supprimer l'article sélectionné ?" ,52)
		    If  RepUser=7 then
		      exit sub  //User repond non
		    end if
		  else
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  numero = LST_RESULT.Cell(LST_RESULT.ListIndex,0).CLong
		  LST_RESULT.RemoveRow(LST_RESULT.ListIndex)
		  
		  OrdreSql="DELETE FROM ARTICLE   WHERE NUMERO="+str(numero)
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  OrdreSql="DELETE FROM VARACHAT  WHERE NUMART="+str(numero)
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  OrdreSql="DELETE FROM VARVENTE  WHERE NUMART="+str(numero)
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  OrdreSql="DELETE FROM GENCODE   WHERE NUMART="+str(numero)
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  OrdreSql="DELETE FROM ARTCARACT WHERE NUMART="+str(numero)
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AppliOperation2ChampSql(Champ as String, Operateur as String, Valeur As Variant = "") As string
		  Dim ChaineSql As String
		  Dim Param1Sql as String
		  Dim Param2Sql As String
		  Dim ChaineStock As String
		  Dim ChaineDepot As String
		  
		  Select Case Operateur
		  Case "EGALE"
		    Param1Sql=" ='"
		    Param2Sql="'"
		    
		  Case "SUP_EGALE"
		    Param1Sql=" >="
		    Param2Sql=""
		    
		  Case "INF_EGALE"
		    Param1Sql=" <="
		    Param2Sql=""
		    
		  Case "DIFFERENT"
		    Param1Sql=" <>'"
		    Param2Sql="'"
		    
		  Case "SUPERIEUR"
		    Param1Sql=" >"
		    Param2Sql=""
		    
		  Case "INFERIEUR"
		    Param1Sql=" <"
		    Param2Sql=""
		    
		  Case "CONTIENT"
		    Param1Sql=" LIKE '%"
		    Param2Sql="%'"
		    
		  Case "CONTIENT_PAS"
		    Param1Sql=" NOT LIKE '%"
		    Param2Sql="%'"
		    
		  Case "COMMENCE_PAR"
		    Param1Sql=" LIKE '"
		    Param2Sql="%'"
		    
		  Case "FINIT_PAR"
		    Param1Sql=" LIKE '%"
		    Param2Sql="'"
		    
		  Case "EST_VIDE"
		    Param1Sql=" = '"
		    Param2Sql="'"
		    Valeur=""
		    
		  Case "EST_NON_VIDE"
		    Param1Sql=" <> '"
		    Param2Sql="'"
		    Valeur=""
		    
		  Case "EST_NULL"
		    Param1Sql=" IS NULL "
		    Param2Sql=""
		    Valeur=""
		    
		  Case "EST_NON_NULL"
		    Param1Sql=" IS NOT NULL "
		    Param2Sql=""
		    Valeur=""
		    
		  End select
		  
		  ChaineSql=Champ + Param1Sql+Valeur+Param2Sql
		  
		  
		  Select Case Pop_TypeStock.RowTag(Pop_TypeStock.ListIndex)
		  Case "GEST"
		    ChaineStock=" AND STOCKGEST='O' "
		  Case "STOCK"
		    ChaineStock=" AND STOCKGEST='O' AND STOCKQTE > 0 AND STOCKQTE IS NOT NULL "
		  Case "ALERTMIN"
		    ChaineStock=" AND STOCKGEST='O' AND STOCKALERTMINGEST='O' AND STOCKQTE<=STOCKALERTMIN AND STOCKQTE IS NOT NULL "
		  Case "ALERTMAX"
		    ChaineStock=" AND STOCKGEST='O' AND STOCKALERTMAXGEST='O' AND STOCKQTE>=STOCKALERTMAX AND STOCKQTE IS NOT NULL "
		  Case "ZERO"
		    ChaineStock=" AND STOCKGEST='O' AND STOCKQTE<=0 OR STOCKQTE IS NULL "
		  Case "NOGEST"
		    ChaineStock=" AND STOCKGEST<>'O' "
		    
		  end Select
		  
		  Select Case Pop_Depot.RowTag(Pop_Depot.ListIndex)
		  Case 0
		    ChaineDepot= ""
		  Case Else
		    ChaineDepot= " AND NUMDEPOT="+Pop_Depot.RowTag(Pop_Depot.ListIndex)
		  end select
		  
		  
		  ChaineSql=ChaineSql+ChaineStock+ChaineDepot
		  
		  
		  return ChaineSql
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_ListeDepot()
		  Dim ObjDepot as Class_Depot
		  Dim element as string
		  
		  ObjDepot = new  Class_Depot
		  ObjDepot.DBaseID     = App.MainDB
		  ObjDepot.DBaseSource = "SELECT * FROM DEPOT"
		  
		  element = "Tous les dépots"
		  Pop_Depot.AddRow(element)
		  Pop_Depot.RowTag(Pop_Depot.ListCount-1) = 0
		  Pop_Depot.ListIndex=0
		  
		  if not ObjDepot.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if not ObjDepot.Charge_Premier then
		    exit sub
		  end if
		  
		  do
		    
		    element = str(ObjDepot.Numero)+" | "+ObjDepot.Nom
		    
		    Pop_Depot.AddRow(element)
		    Pop_Depot.RowTag(Pop_Depot.ListCount-1) = ObjDepot.Numero
		    
		  loop until not ObjDepot.Charge_Suivant
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_Nomenclature(Niveau as Int64, Numero as Int64)
		  Dim OrdreSql as String
		  Dim rs as RecordSet
		  Dim rsNumero as int64
		  Dim rsNiveau as int64
		  Dim rsNclParent as int64
		  Dim rsNom      as String
		  
		  
		  Select case Niveau
		  Case 0
		    OrdreSql = "  "
		    Lst_Nomencl.DeleteAllRows
		    Lst_Nomencl.AddFolder str("Tous")
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,1) = str(0 )
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,2) = str(0 )
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,3) = str(0 )
		    Lst_Nomencl.CellState(0,0)=CheckBox.CheckedStates.Checked
		  Case 1
		    OrdreSql = " SELECT * FROM NOMENCLATURE WHERE NIVEAU = 1 ORDER BY NOM  "
		  Case 2 to 1000000000
		    OrdreSql = " SELECT * FROM NOMENCLATURE WHERE NIVEAU="+str(Niveau)+" AND NCLPARENT ="+str(Numero)+" ORDER BY NIVEAU,NCLPARENT,NOM "
		  Case Else
		    exit sub
		  end select
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if rs=nil then
		    return
		  end if
		  
		  if rs.RecordCount=0 then
		    return
		  end if
		  
		  rs.MoveFirst
		  
		  do until rs.EOF
		    
		    rsNumero             = rs.Field("NUMERO").Value
		    rsNiveau             = rs.Field("NIVEAU").Value
		    rsNclParent          = rs.Field("NCLPARENT").Value
		    rsNom                = rs.Field("NOM").Value
		    
		    Lst_Nomencl.AddFolder str(rsNom)
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,1) = str(rsNiveau)
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,2) = str(rsNumero)
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,3) = str(rsNclParent)
		    
		    if Data_NiveauNomencl=Niveau and Data_NumeroNomencl=rsNumero then
		      Lst_Nomencl.CellCheck(Lst_Nomencl.LastIndex,0)=True
		    end if
		    
		    
		    rs.MoveNext
		    
		  loop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_TypeChamp()
		  Pop_TypeChamp.DeleteAllRows
		  
		  Pop_TypeChamp.AddRow      "Numero Article"
		  Pop_TypeChamp.RowTag(0) = "NUMART"
		  
		  Pop_TypeChamp.AddRow      "Nom"
		  Pop_TypeChamp.RowTag(1) = "NOM"
		  
		  Pop_TypeChamp.AddRow      "Actif (O/N)"
		  Pop_TypeChamp.RowTag(2) = "ACTIF"
		  
		  
		  Pop_TypeChamp.ListIndex = 0
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_TypeStock()
		  Pop_TypeStock.AddRow("Articles en stock")
		  Pop_TypeStock.RowTag(0) = "STOCK"
		  
		  Pop_TypeStock.AddRow("Articles en rupture de stock")
		  Pop_TypeStock.RowTag(1) = "ZERO"
		  
		  Pop_TypeStock.AddRow("Articles en stock alerte")
		  Pop_TypeStock.RowTag(2) = "ALERTMIN"
		  
		  Pop_TypeStock.AddRow("Articles en surstock")
		  Pop_TypeStock.RowTag(3) = "ALERTMAX"
		  
		  Pop_TypeStock.AddRow("Articles non gérés en stock")
		  Pop_TypeStock.RowTag(4) = "NOGEST"
		  
		  Pop_TypeStock.AddRow("Articles gérés en stock")
		  Pop_TypeStock.RowTag(5) = "GEST"
		  
		  
		  Pop_TypeStock.ListIndex = 0
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Escape_SQLData(data as string) As string
		  data = replaceAll( data, "\", "_" )
		  data = replaceAll( data, chr(34), "_" )
		  data = replaceAll( data, "'", "_" )
		  
		  return data
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Lance_Recherche(AffichTout as Boolean = false)
		  Dim RechTxt As string
		  Dim RepUser as Boolean
		  
		  Grb_Resultat.Enabled=False
		  
		  
		  
		  'LBTN_PagePrec.Enabled=False
		  'LBTN_PageSuiv.Enabled=True
		  
		  //Limitation de la recherche a X lignes par page
		  if not (POP_LIMITPAGE.Text  ="NON") then
		    Ligne_ParPage= POP_LIMITPAGE .Text.CLong
		  else
		    Ligne_ParPage=0
		  end if
		  
		  
		  if not AffichTout then
		    RechTxt = Escape_SQLData(Txt_ValCherche.Text)
		    Liste_Requete= " AND "+AppliOperation2ChampSql(Pop_TypeChamp.RowTag(Pop_TypeChamp.ListIndex), Pop_Operateur.Text ,RechTxt)
		  else
		    Liste_Requete=""
		  end if
		  
		  ObjViewStock.Filtre_NclCibleCode   = Data_NumeroNomencl
		  ObjViewStock.Filtre_NclCibleNiveau = Data_NiveauNomencl
		  ObjViewStock.ConditionsSource      = Liste_Requete
		  ObjViewStock.Create_ViewStock
		  
		  Ligne_DebPage=0
		  Ligne_FinPage=Ligne_ParPage
		  
		  LST_RESULT.DeleteAllRows
		  
		  RepUser  = Page_Lire
		  
		  
		  Grb_Resultat.Enabled=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Page_Lire() As Boolean
		  Dim MonService as  Class_Service
		  Dim MemoTrie   as  Integer
		  MonService = new Class_Service
		  MemoTrie = Lst_RESULT.SortedColumn
		  
		  
		  
		  
		  if Ligne_ParPage >0 then
		    ObjViewStock.DBaseSource    = "SELECT * FROM TEMP_VIEWSTOCK LIMIT "+str(Ligne_DebPage)+","+str(Ligne_FinPage)
		  else
		    ObjViewStock.DBaseSource = "SELECT * FROM TEMP_VIEWSTOCK"
		  end if
		  
		  if not ObjViewStock.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  if not ObjViewStock.Charge_Premier then
		    return false
		  end if
		  
		  LST_RESULT.DeleteAllRows
		  
		  Do
		    LST_RESULT.AddRow  str(ObjViewStock.NumDepot)
		    LST_RESULT.Cell(LST_RESULT.LastIndex,1)  =    str(ObjViewStock.NumArt                )
		    LST_RESULT.Cell(LST_RESULT.LastIndex,2)  =    str(ObjViewStock.Nom                   )
		    'LST_RESULT.Cell(LST_RESULT.LastIndex,3)  =    str(ObjViewStock.NclEnsembleArt_Nom    )
		    'LST_RESULT.Cell(LST_RESULT.LastIndex,4)  =    str(ObjViewStock.NclGroupeArt_Nom      )
		    'LST_RESULT.Cell(LST_RESULT.LastIndex,5)  =    str(ObjViewStock.NclFamilleArt_Nom     )
		    'LST_RESULT.Cell(LST_RESULT.LastIndex,6)  =    str(ObjViewStock.NclSousFamilleArt_Nom )
		    LST_RESULT.Cell(LST_RESULT.LastIndex,7)  =    str(ObjViewStock.StockQte              )
		    LST_RESULT.Cell(LST_RESULT.LastIndex,8)  =    str(ObjViewStock.StockAlertMin         )
		    
		    if not ObjViewStock.Charge_Suivant then
		      Lst_RESULT.SortedColumn = MemoTrie
		      Lst_RESULT.Sort
		      exit do
		    end if
		    
		  Loop
		  
		  
		  
		  return true
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Touche_Valide(key as String) As Boolean
		  if key=chr(13)  then return true
		  if key=chr(3)    then return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Valide_Ligne()
		  dim PermArticleFich as Class_AccesObjet
		  PermArticleFich = new Class_AccesObjet
		  
		  if AccessMode_Data="SELECT" then
		    Action_Selection
		    exit sub
		  end if
		  
		  
		  if PermArticleFich.Interoge_Acces("Win_ArticleFich","W",true)  then
		    Action_Modifier
		  else
		    if PermArticleFich.Interoge_Acces("Win_ArticleFich","R",false)  then
		      Action_Consulter
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AccesPerm_Objet As Class_AccesObjet
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected AccessMode_Data As String = "MOD"
	#tag EndProperty

	#tag Property, Flags = &h0
		Data_NiveauNomencl As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Data_NumeroNomencl As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ligne_DebPage As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ligne_FinPage As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Ligne_ParPage As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Liste_Requete As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private NumPage As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h0
		ObjExport As Class_Export
	#tag EndProperty

	#tag Property, Flags = &h0
		ObjViewStock As Class_ViewStock
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceWindowName As string
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_StockArtLst", Scope = Private
	#tag EndConstant

	#tag Constant, Name = TableCherche, Type = String, Dynamic = False, Default = \"TEMP_VIEWSTOCK", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events LST_RESULT
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2 = 0 then
		    g.ForeColor = &cFFFFFF // white color
		  else
		    g.ForeColor = &cf3f7fb // blue color
		  end if
		  g.FillRect 0,0, g.Width, g.Height
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Valide_Ligne
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  if  Touche_Valide(Key) then
		    Valide_Ligne
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Lst_Nomencl
	#tag Event
		Sub ExpandRow(row As Integer)
		  Def_Nomenclature(me.Cell(row,1).CDbl+1,me.Cell(row,2).CDbl)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.ColumnType(0)=2
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  Dim i as integer
		  
		  
		  
		  if column = 0 then
		    if me.CellState(row,column)=CheckBox.CheckedStates.Checked then
		      Data_NiveauNomencl=me.Cell(row,1).CDbl
		      Data_NumeroNomencl=me.Cell(row,2).CDbl
		      for i=0 to (me.ListCount - 1)
		        
		        if i<>row then
		          me.CellState(i,column)=CheckBox.CheckedStates.Unchecked
		        end if
		        
		      next i
		      Action_Explorer
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Txt_ValCherche
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    Action_Rechercher
		    return true
		  end if
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Pop_TypeChamp
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Pop_Operateur
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events POP_LIMITPAGE
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_CANCEL
	#tag Event
		Sub Action()
		  Action_Quitter
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TLBar_LstStock
	#tag Event
		Sub Action(item As ToolItem)
		  Select case item.Name
		    
		  Case "TItem_Rechercher"
		    Action_Rechercher
		  Case "TItem_Tous"
		    Action_AfficheTout
		  Case "TItem_StockArticle"
		    Action_Modifier
		  Case "TItem_StockNomencl"
		    Exit
		  Case "TItem_StockDepot"
		    exit
		  Case "TItem_PagePrec"
		    Action_PagePrecedente
		  Case "TItem_PageSuivante"
		    Action_PageSuivante
		    
		  end select
		  
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
		Name="Data_NiveauNomencl"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Data_NumeroNomencl"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Liste_Requete"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="SourceWindowName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ligne_DebPage"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ligne_FinPage"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Ligne_ParPage"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
