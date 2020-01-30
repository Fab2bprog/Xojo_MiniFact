#tag Window
Begin Window Win_NomenclArtSel
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
   MaximizeButton  =   False
   MaxWidth        =   700
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   500
   MinimizeButton  =   True
   MinWidth        =   500
   Placement       =   0
   Resizeable      =   True
   Title           =   "Nomenclature des articles"
   Visible         =   True
   Width           =   500
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
      Width           =   468
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
         ColumnWidths    =   "*,0,0"
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
         HasHorizontalScrollbar=   False
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
         Top             =   40
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   438
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
      Left            =   440
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
   Begin BevelButton LBTN_OK
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
      Icon            =   1671636991
      IconAlignment   =   "1"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   388
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
      Tooltip         =   "Valider"
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
   Begin BevelButton LBTN_DeploiArbre1
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
		Sub Open()
		  
		  Def_Nomenclature(1,0)
		  
		End Sub
	#tag EndEvent


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
		Sub Def_Nomenclatureancien(Niveau as Int64, Numero as Int64)
		  Dim OrdreSql as String
		  Dim rs as RecordSet
		  Dim rsNumero as int64
		  Dim rsNom      as String
		  
		  'Select case Niveau
		  'Case 1
		  'OrdreSql = " SELECT * FROM NCLENSEMBLE  "
		  'Case 2
		  'OrdreSql = " SELECT * FROM NCLGROUPE WHERE NCLPARENT ="+str(Numero)
		  'Case 3
		  'OrdreSql = " SELECT * FROM NCLFAM    WHERE NCLPARENT ="+str(Numero)
		  'Case 4
		  'OrdreSql = " SELECT * FROM NCLSOFAM  WHERE NCLPARENT ="+str(Numero)
		  'Case Else
		  'exit sub
		  'end select
		  
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
		    rsNom                = rs.Field("NOM").Value
		    
		    Lst_Nomencl.AddFolder str(rsNom)
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,1) = str(Niveau )
		    Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,2) = str(rsNumero)
		    
		    if Data_NiveauNomencl=Niveau and Data_NumeroNomencl=rsNumero then
		      Lst_Nomencl.CellCheck(Lst_Nomencl.LastIndex,0)=True
		    end if
		    
		    
		    rs.MoveNext
		    
		  loop
		End Sub
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
		SourceWindowName As string
	#tag EndProperty


#tag EndWindowCode

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
		    end if
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_CANCEL
	#tag Event
		Sub Action()
		  self.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_OK
	#tag Event
		Sub Action()
		  Dim BolVoid as Boolean
		  
		  if SourceWindowName="Win_ArticleFich" then
		    Win_ArticleFich.Data_NiveauNomencl=Data_NiveauNomencl
		    Win_ArticleFich.Data_NumeroNomencl=Data_NumeroNomencl
		    Win_ArticleFich.Def_Nomencl
		  end if
		  
		  ForceExit=true
		  self.close
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DeploiArbre
	#tag Event
		Sub Action()
		  Dim i as Integer
		  for i=0 to (Lst_Nomencl.ListCount - 1 )
		    Lst_Nomencl.Expanded(i)=True
		  next i
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DeploiArbre1
	#tag Event
		Sub Action()
		  Dim i as Integer
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
