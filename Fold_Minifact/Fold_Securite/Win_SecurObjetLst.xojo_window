#tag Window
Begin Window Win_SecurObjetLst
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
   Title           =   " RECHERCHE DES FONCTIONS DU LOGICIEL POUVANT ETRE PROTEGEES"
   Visible         =   True
   Width           =   800
   Begin GroupBox Grb_Resultat
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "FONCTIONS DU LOGICIEL CORRESPONDANTES"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   428
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
      Top             =   107
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   752
      Begin Listbox LST_RESULT
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "250,*"
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
         Height          =   389
         Index           =   -2147483648
         InitialParent   =   "Grb_Resultat"
         InitialValue    =   "Code	Nom	Etat"
         Italic          =   False
         Left            =   34
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   True
         RowSelectionType=   "1"
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   132
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   729
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin GroupBox Grb_Recherche
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "CRITERES DE RECHERCHES DES FONCTIONS DU LOGICIEL"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   91
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
      Top             =   11
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   752
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
         Top             =   36
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
         Top             =   34
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   255
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
         Top             =   35
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
         Top             =   35
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
         Left            =   28
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
         Top             =   70
         Transparent     =   False
         Underline       =   False
         Value           =   "Fractionner la recherche par page de"
         Visible         =   True
         Width           =   311
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
         Left            =   508
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
         Top             =   70
         Transparent     =   False
         Underline       =   False
         Value           =   "lignes."
         Visible         =   True
         Width           =   112
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
         Left            =   351
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
         Top             =   70
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   145
      End
   End
   Begin TLBar_Liste TLBar_LstMenu
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   "0"
      TabPanelIndex   =   "0"
      Transparent     =   True
      Visible         =   True
   End
   Begin BevelButton LBTN_CANCEL
      AllowAutoDeactivate=   True
      AllowFocus      =   False
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
      Left            =   732
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
		  
		  TLBar_LstMenu.Item(3).Enabled=false
		  TLBar_LstMenu.Item(5).Enabled=false
		  TLBar_LstMenu.Item(7).Enabled=false
		  TLBar_LstMenu.Item(8).Enabled=false
		  TLBar_LstMenu.Item(9).Enabled=false
		  TLBar_LstMenu.Item(10).Enabled=false
		  TLBar_LstMenu.Item(11).Enabled=false
		  
		  ObjWin = new Class_ObjWin
		  ObjWin.DBaseID = App.MainDB
		  ObjWin.DBaseSource="select * from "+TableCherche+" LIMIT 1"
		  
		  if not ObjWin.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  LST_RESULT.DeleteAllRows
		  
		  
		  For i as Integer = 1 to  ObjWin.DBaseRS.FieldCount
		    if not (left(ObjWin.DBaseRS.IdxField(i).Name,3)="RSX") then
		      Pop_TypeChamp.AddRow   ObjWin.DBaseRS.IdxField(i).Name
		    end if
		  Next
		  Pop_TypeChamp.ListIndex= 0
		  
		  
		  //Lance une recherche  automatique  sans critere sur les 100 premiers enregistrements
		  POP_LIMITPAGE.InitialValue = str(100)
		  Lance_Recherche(true)
		  If LST_RESULT.SelCount >0 then
		    LST_RESULT.Selected(0)=true
		    LST_RESULT.SetFocus
		  end if
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_Exit() As Boolean Handles Ite_Exit.Action
			Win_SecurObjetLst.Close
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
			
			if not ObjExport.Export_XML("CLIENT") then
			MsgBox "L'export XML de la page en cour à échoué"
			return false
			end if
			
			
			MsgBox "Exportation xml de "+str(ObjExport.DBaseRS.RecordCount)+" ligne(s) réussi."
			
			return true
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function AccessQuery_User(Login_user as String, DataAccessMode as String = "e") As Boolean
		  
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
		Sub Action_Consulter()
		  dim test As Boolean
		  
		  
		  if LST_RESULT.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  Win_SecurObjetFich.Show
		  For i as integer=0 to LST_RESULT.ListCount-1
		    if LST_RESULT.Selected(i) then
		      Win_SecurObjetFich.Lst_ObjetWin.AddRow(LST_RESULT.Cell(i,0))
		      Win_SecurObjetFich.Lst_ObjetWin.Cell(Win_SecurObjetFich.Lst_ObjetWin.LastIndex,1)=LST_RESULT.Cell(i,1)
		    end if
		  next i
		  
		  
		  test = Win_SecurObjetFich.AccessQuery_User(App.MyLogUserInfo.Nom,"LIRE", LST_RESULT.Cell(LST_RESULT.ListIndex,0))=true
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Modifier()
		  Valide_Ligne
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_PagePrecedente()
		  TLBar_LstMenu.item(12).Enabled=True
		  
		  if  Ligne_DebPage<Ligne_ParPage then
		    Ligne_DebPage=0
		    TLBar_LstMenu.item(11).Enabled=false
		    exit sub
		  end if
		  Ligne_DebPage=Ligne_DebPage-Ligne_ParPage
		  Ligne_FinPage= Ligne_ParPage
		  
		  if  Page_Lire=False then
		    TLBar_LstMenu.item(11).Enabled=false
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_PageSuivante()
		  
		  TLBar_LstMenu.item(11).Enabled=true
		  
		  Ligne_DebPage=Ligne_DebPage+Ligne_ParPage
		  Ligne_FinPage= Ligne_ParPage
		  
		  if  Page_Lire=False then
		    Ligne_DebPage=Ligne_DebPage-Ligne_ParPage
		    Ligne_FinPage= Ligne_ParPage
		    
		    TLBar_LstMenu.item(12).Enabled=false
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Quitter()
		  self.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_Rechercher()
		  Lance_Recherche
		  
		  
		  If LST_RESULT.SelCount >0 then
		    LST_RESULT.Selected(0)=true
		    LST_RESULT.SetFocus
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AppliOperation2ChampSql(Champ as String, Operateur as String, Valeur As Variant = "") As string
		  Dim ChaineSql As String
		  Dim Param1Sql as String
		  Dim Param2Sql As String
		  
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
		  
		  return ChaineSql
		  
		End Function
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
		    Liste_Requete="select *  from "+TableCherche+" WHERE "+  AppliOperation2ChampSql(Pop_TypeChamp.Text, Pop_Operateur.Text ,RechTxt)+" ORDER BY OBJETID  "
		  else
		    Liste_Requete="select *  from "+TableCherche+" ORDER BY OBJETID  "
		  end if
		  
		  Ligne_DebPage=0
		  Ligne_FinPage=Ligne_ParPage
		  
		  LST_RESULT.DeleteAllRows
		  
		  RepUser  = Page_Lire
		  
		  
		  Grb_Resultat.Enabled=True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Page_Lire() As Boolean
		  
		  if Ligne_ParPage >0 then
		    ObjWin.DBaseSource    = Liste_Requete+" LIMIT "+str(Ligne_DebPage)+","+str(Ligne_FinPage)
		  else
		    ObjWin.DBaseSource = Liste_Requete
		  end if
		  
		  if not ObjWin.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  if not ObjWin.Charge_Premier then
		    return false
		  end if
		  
		  LST_RESULT.DeleteAllRows
		  
		  Do
		    LST_RESULT.AddRow  str(ObjWin.ObjetID)
		    LST_RESULT.Cell(LST_RESULT.LastIndex,1) = str(ObjWin.Commentaires)
		    if not ObjWin.Charge_Suivant then
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
		  dim test As Boolean
		  
		  
		  if LST_RESULT.SelCount =0 Then
		    exit sub
		  end if
		  
		  
		  Win_SecurObjetFich.Show
		  For i as integer=0 to LST_RESULT.ListCount-1
		    if LST_RESULT.Selected(i) then
		      Win_SecurObjetFich.Lst_ObjetWin.AddRow(LST_RESULT.Cell(i,0))
		      Win_SecurObjetFich.Lst_ObjetWin.Cell(Win_SecurObjetFich.Lst_ObjetWin.LastIndex,1)=LST_RESULT.Cell(i,1)
		    end if
		  next i
		  
		  test = Win_SecurObjetFich.AccessQuery_User(App.MyLogUserInfo.Nom,"MODIF", LST_RESULT.Cell(LST_RESULT.ListIndex,0))=true
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AccessMode_Data As String = "MOD"
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
		ObjWin As Class_ObjWin
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_SecurObjetLst", Scope = Private
	#tag EndConstant

	#tag Constant, Name = TableCherche, Type = String, Dynamic = False, Default = \"OBJET", Scope = Private
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
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    Valide_Ligne
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Valide_Ligne
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  
		  if column = 8 then
		    
		    if me.Cell(row,column)="O" then
		      g.DrawPicture(lock_16X,0,0)
		    else
		      g.DrawPicture(unlock_16X,0,0)
		    end if
		    g.TextSize=1
		    
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_ValCherche
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  
		  
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
#tag Events TLBar_LstMenu
	#tag Event
		Sub Action(item As ToolItem)
		  Select case item.Name
		    
		  Case "TItem_Rechercher"
		    Action_Rechercher
		  Case "TItem_Tous"
		    Action_AfficheTout
		  Case "TItem_Consulter"
		    Action_Consulter
		  Case "TItem_Ajouter"
		    // Action_Ajouter
		  Case "TItem_Modifier"
		    Action_Modifier
		  Case "TItem_Supprimer"
		    // Action_Supprimer
		  Case "TItem_PagePrec"
		    Action_PagePrecedente
		  Case "TItem_PageSuivante"
		    Action_PageSuivante
		  Case "TItem_Sortir"
		    Action_Quitter
		  end select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_CANCEL
	#tag Event
		Sub Action()
		  Action_Quitter
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
		Name="Liste_Requete"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
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
