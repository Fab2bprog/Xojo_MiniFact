#tag Window
Begin Window Win_NomenclArtGest
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   650
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   500
   MinimizeButton  =   True
   MinWidth        =   500
   Placement       =   0
   Resizeable      =   True
   Title           =   "Gestion de la nomenclature des articles"
   Visible         =   True
   Width           =   506
   Begin GroupBox Grb_Nomenclature
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Liste des niveaux de nomenclature"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   573
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   474
      Begin Listbox Lst_Nomencl
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   True
         AllowFocusRing  =   True
         AllowResizableColumns=   False
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   4
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
         GridLinesVerticalStyle=   "2"
         HasBorder       =   True
         HasHeader       =   False
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   539
         Index           =   -2147483648
         InitialParent   =   "Grb_Nomenclature"
         InitialValue    =   ""
         Italic          =   False
         Left            =   27
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   "0"
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   39
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   444
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
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
      Left            =   446
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Quitter la fenetre"
      Top             =   599
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin BevelButton LBTN_DeploiArbre
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   "0"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "Developper"
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   31
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   12
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   599
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   106
   End
   Begin BevelButton LBTN_ContracteArbre
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      BackgroundColor =   &c00000000
      BevelStyle      =   "0"
      Bold            =   False
      ButtonStyle     =   "0"
      Caption         =   "Contracter"
      CaptionAlignment=   "3"
      CaptionDelta    =   0
      CaptionPosition =   "1"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      HasBackgroundColor=   False
      Height          =   31
      Icon            =   0
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   130
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   599
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   106
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  Ite_Exit.Enable
		  Ite_InfoAcces.Enable
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  Def_Nomenclature(0,0)
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_AddEnfant() As Boolean Handles Ite_AddEnfant.Action
			Dim RepUser as Integer
			
			Win_InputBox.Show
			Win_InputBox.Parametre("Creation d'un element de niveau inferieur à '" +str( Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,0))+"'","chaine","",50)
			Win_InputBox.SourceWindowName=AccessWindow_ID
			Win_InputBox.Mode_Action="ADD_ENFANT"
			return true
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_AddFrere() As Boolean Handles Ite_AddFrere.Action
			Dim RepUser as Integer
			
			Win_InputBox.Show
			Win_InputBox.Parametre("Creation d'un element de meme niveau de nomenclature que '"+str( Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,0))+"'","chaine","",50)
			Win_InputBox.SourceWindowName=AccessWindow_ID
			Win_InputBox.Mode_Action="ADD_FRERE"
			return true
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_DelNode() As Boolean Handles Ite_DelNode.Action
			Dim RepUser as Integer
			Dim Niveau as Int64
			Dim Numero as Int64
			Dim NclCible as Class_Nomenclature
			
			if Lst_Nomencl.SelCount >0 Then
			RepUser=MsgBox("Supprimer l'element sélectionné ?"+ EndOfLine+ "Cela entrainera la suppression des elements qu'ils contiendrais eventuellement",52)
			If  RepUser=7 then
			exit function  //User repond non
			end if
			else
			MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
			exit Function
			end if
			
			
			
			Numero = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,2).CLong
			Niveau = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,1).CLong
			
			
			NclCible = new Class_Nomenclature
			NclCible.DBaseID = app.MainDB
			NclCible.Delete_Element(Numero,Niveau)
			
			
			Lst_Nomencl.Expanded(Lst_Nomencl.ListIndex)=False
			Lst_Nomencl.RemoveRow(Lst_Nomencl.ListIndex)
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Exit() As Boolean Handles Ite_Exit.Action
			me.Close
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_InfoAcces() As Boolean Handles Ite_InfoAcces.Action
			App.InfoUserObjet("","","",AccessWindow_ID)
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_RenameNode() As Boolean Handles Ite_RenameNode.Action
			Dim RepUser as Integer
			
			Win_InputBox.Show
			Win_InputBox.Parametre("Choisissez un nouveau nom pour cet element","chaine",str(Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,0)),50)
			Win_InputBox.SourceWindowName=AccessWindow_ID
			Win_InputBox.Mode_Action="RENAME"
			return true
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub Add_Node(NouveauNom as String, AjouteFrere as Boolean = true)
		  Dim OrdreSql as string
		  Dim Table as string
		  Dim NvlElement as Class_Nomenclature
		  Dim NclParent   as Int64
		  Dim NclNiveau   as Int64
		  Dim NclNumero   as Int64
		  
		  
		  NouveauNom = NouveauNom.Trim
		  
		  if AjouteFrere  then
		    NclParent = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,3).CDbl
		    NclNiveau = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,1).CDbl
		  else
		    NclParent = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,2).CDbl
		    NclNiveau = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,1).CDbl+1
		  end if
		  
		  
		  
		  
		  if Valide_Modif("ADD",NouveauNom,NclParent,NclNiveau) then
		    Win_InputBox.Close
		  else
		    Win_InputBox.Txt_Valeur.SetFocus
		    exit sub
		  end if
		  
		  
		  
		  NvlElement               = new Class_Nomenclature
		  NvlElement.DBaseID       = app.MainDB
		  NvlElement.Nom           = NouveauNom
		  NvlElement.Niveau        = NclNiveau
		  NvlElement.NclParent     = NclParent
		  NvlElement.DBase_Create
		  
		  NclNumero = NvlElement.Numero
		  
		  if AjouteFrere  then
		    Lst_Nomencl.InsertFolder(Lst_Nomencl.ListIndex,NouveauNom,NclNiveau)
		    Lst_Nomencl.Cell(Lst_Nomencl.ListIndex-1,1) = str(NclNiveau)
		    Lst_Nomencl.Cell(Lst_Nomencl.ListIndex-1,2) = str(NclNumero)
		    Lst_Nomencl.Cell(Lst_Nomencl.ListIndex-1,3) = str(NclParent)
		  else
		    if  Lst_Nomencl.Expanded(Lst_Nomencl.ListIndex) then
		      Lst_Nomencl.InsertFolder(Lst_Nomencl.ListIndex+1,NouveauNom,NclNiveau)
		      Lst_Nomencl.Cell(Lst_Nomencl.ListIndex+1,1) = str(NclNiveau)
		      Lst_Nomencl.Cell(Lst_Nomencl.ListIndex+1,2) = str(NclNumero)
		      Lst_Nomencl.Cell(Lst_Nomencl.ListIndex+1,3) = str(NclParent)
		    else
		      Lst_Nomencl.Expanded(Lst_Nomencl.ListIndex)=true
		    end if
		  end if
		  
		  
		  
		  
		  
		  
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
		Sub Rename_Node(NouveauNom as String)
		  Dim OrdreSql as string
		  Dim Table as string
		  
		  Dim Numero as Int64
		  Dim Niveau as Int64
		  Dim Parent as Int64
		  
		  NouveauNom = NouveauNom.Trim
		  Niveau = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,1).CDbl
		  Numero = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,2).CDbl
		  Parent = Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,3).CDbl
		  
		  if Valide_Modif("MODIF",NouveauNom,Parent,Niveau) then
		    Win_InputBox.Close
		  else
		    Win_InputBox.Txt_Valeur.SetFocus
		    exit sub
		  end if
		  
		  
		  
		  
		  OrdreSql=" UPDATE   NOMENCLATURE SET NOM = '"+NouveauNom+"' WHERE NUMERO = "+str(Numero)+" AND NIVEAU="+str(Niveau)
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  else
		    Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,0) = NouveauNom
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function Valide_Modif(TypeModif as string, NomElement as string, Parent as int64, Niveau as Int64) As Boolean
		  Dim OrdreSql as string
		  Dim RepUser  as Integer
		  Dim rs       as RecordSet
		  Dim Table    as string
		  
		  if NomElement.trim.len=0 then
		    msgbox "Le nom de cet element est invalide"
		    return false
		  end if
		  
		  Select Case TypeModif
		  Case "ADD"
		    OrdreSql = "SELECT  COUNT(*) AS NBRELEMENT FROM NOMENCLATURE WHERE UPPER(NOM) = UPPER('"+NomElement+"')  AND NCLPARENT = " _
		    +str(Parent)+" AND NIVEAU = "+str(Niveau)
		  Case "MODIF"
		    OrdreSql = "SELECT  COUNT(*) AS NBRELEMENT FROM NOMENCLATURE WHERE NUMERO <> "+str(Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,2)) _
		    +" AND UPPER(NOM) = UPPER('"+NomElement+"')  AND NCLPARENT = "+str(Parent)+" AND NIVEAU = "+str(Niveau)
		  Case Else
		    return false
		  end select
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if rs=nil then
		    return true
		  end if
		  
		  rs.MoveFirst
		  if rs.Field("NBRELEMENT").Value >0 then
		    RepUser = MsgBox("Un element porte déjà un nom identique à cet endroit !",16,"Operation interdite")
		    return false
		  end if
		  
		  
		  return true
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Data_NiveauNomencl As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		Data_NumeroNomencl As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ForceExit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_AddEnfant As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_AddFrere As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_DelNode As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Ite_RenameNode As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceWindowName As string
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_NomenclArtGest", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Lst_Nomencl
	#tag Event
		Sub ExpandRow(row As Integer)
		  Def_Nomenclature(me.Cell(row,1).CDbl+1,me.Cell(row,2).CDbl)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  if Lst_Nomencl.SelCount >0 Then
		    
		    if Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,1).CDbl>0 then
		      Ite_AddFrere       = New MenuItem
		      Ite_AddFrere.text  = "Ajouter un element de même niveau"
		      Ite_AddFrere.Name  = "Ite_AddFrere"
		      Ite_AddFrere.Enable
		      base.Append Ite_AddFrere
		    end if
		    
		    
		    Ite_AddEnfant       = New MenuItem
		    Ite_AddEnfant.text  = "Ajouter un element de niveau inférieur"
		    Ite_AddEnfant.Name  = "Ite_AddEnfant"
		    Ite_AddEnfant.Enable
		    base.Append Ite_AddEnfant
		    
		    
		    if Lst_Nomencl.Cell(Lst_Nomencl.ListIndex,1).CDbl>0 then
		      Ite_RenameNode        = New MenuItem
		      Ite_RenameNode.text   = "Renommer cet element "
		      Ite_RenameNode.Name   = "Ite_RenameNode"
		      Ite_RenameNode.Enable
		      base.Append Ite_RenameNode
		      
		      Ite_DelNode       = New MenuItem
		      Ite_DelNode.text  = "Supprimer l'element et ceux qu'ils contient"
		      Ite_DelNode.Name  = "Ite_DelNode"
		      Ite_DelNode.Icon  = cancel_16X
		      Ite_DelNode.Enable
		      base.Append Ite_DelNode
		    end if
		    
		  end if
		  
		  
		  return true
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_CANCEL
	#tag Event
		Sub Action()
		  self.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DeploiArbre
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Def_Nomenclature(0,0)
		  for i=0 to (Lst_Nomencl.ListCount - 1 )
		    Lst_Nomencl.Expanded(i)=True
		  next i
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ContracteArbre
	#tag Event
		Sub Action()
		  Dim i as Integer
		  Def_Nomenclature(0,0)
		  for i=0 to (Lst_Nomencl.ListCount - 1 )
		    Lst_Nomencl.Expanded(i)=False
		  next i
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
		Name="SourceWindowName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
