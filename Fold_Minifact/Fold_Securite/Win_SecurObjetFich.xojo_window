#tag Window
Begin Window Win_SecurObjetFich
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
   MaximizeButton  =   False
   MaxWidth        =   768
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   600
   MinimizeButton  =   True
   MinWidth        =   700
   Placement       =   0
   Resizeable      =   True
   Title           =   " FICHE PROTECTION FONCTIONNALITE LOGICIEL"
   Visible         =   True
   Width           =   700
   Begin GroupBox Grb_Identification
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "FONCTIONS SELECTIONNEES"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   180
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "Valider"
      Top             =   4
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   670
      Begin Listbox Lst_ObjetWin
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "150,*"
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
         Height          =   144
         Index           =   -2147483648
         InitialParent   =   "Grb_Identification"
         InitialValue    =   "Code	Nom"
         Italic          =   False
         Left            =   21
         LockBottom      =   False
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
         Top             =   29
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   651
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
   End
   Begin GroupBox Grb_Groupe
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Groupes d'utilisateurs identiques contenus dans les objets listés"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   341
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   8
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
      Top             =   196
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   671
      Begin BevelButton LBTN_DelMembre
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
         Icon            =   172597247
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Groupe"
         Italic          =   False
         Left            =   631
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Supprime le groupe sélectionné dans la liste"
         Top             =   294
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin BevelButton LBTN_AddMembre
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
         Icon            =   491337727
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Groupe"
         Italic          =   False
         Left            =   631
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Ajoute un nouveau groupe"
         Top             =   229
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin Listbox Lst_Groupe
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   3
         ColumnWidths    =   "100,*,150"
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
         Height          =   275
         Index           =   -2147483648
         InitialParent   =   "Grb_Groupe"
         InitialValue    =   "Code	Nom	Autorisations"
         Italic          =   False
         Left            =   20
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
         Top             =   229
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   599
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin BevelButton LBTN_AccesGroupe
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
         Icon            =   1478787071
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Groupe"
         Italic          =   False
         Left            =   631
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Modifie les droits du groupe en relation avec les objets selectionnés."
         Top             =   363
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
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
      Left            =   633
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Quitter la fenetre"
      Top             =   549
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
      Left            =   579
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
      Top             =   549
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin BevelButton LBTN_BLOCAGE
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      BackgroundColor =   &c00000000
      BevelStyle      =   "0"
      Bold            =   False
      ButtonStyle     =   "1"
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
      Icon            =   851580927
      IconAlignment   =   "1"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
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
      Tooltip         =   "Valider"
      Top             =   549
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
		Function CancelClose(appQuitting as Boolean) As Boolean
		  if ForceExit then
		    // Le renvoie de la valeur false confirme la fermeture de la fenetre
		    return false
		  end if
		  
		  
		  if Confirm_UserExit then
		    // Le renvoie de la valeur false confirme la fermeture de la fenetre
		    return false
		  end if
		  
		  
		  // Le renvoie de la valeur true annule la fermeture de la fenetre
		  return true
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  Ite_InfoAcces.Enable
		  Ite_Exit.Enable
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_Exit() As Boolean Handles Ite_Exit.Action
			self.close
			return true
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_InfoAcces() As Boolean Handles Ite_InfoAcces.Action
			App.InfoUserObjet("","","",AccessWindow_ID)
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Function AccessQuery_User(Login_user as String, DataAccessMode as String, ObjetID as string) As Boolean
		  dim test as Boolean
		  dim i as integer
		  
		  AccessMode_Data=DataAccessMode
		  
		  if DataAccessMode="ADD" then
		    
		    Group_Tab = new Class_TabAffectObjetGroup
		    
		    return true
		    
		  end if
		  
		  if DataAccessMode="LIRE" then
		    
		    Grb_Identification.Enabled=false
		    Grb_Groupe.Enabled=false
		    
		    LBTN_OK.Visible=false
		    
		  end if
		  
		  if DataAccessMode="MODIF" then
		    
		    'Txt_Code.ReadOnly=True
		    
		  end if
		  
		  
		  Group_Tab = new Class_TabAffectObjetGroup
		  For i=0 to Lst_ObjetWin.ListCount-1
		    Group_Tab.ObjetID=Lst_ObjetWin.Cell(i,0)
		    Group_Tab.ObjetGroup_TempCharge
		  next i
		  
		  
		  ObjetVersEcran
		  
		  return true
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Confirm_UserExit() As Boolean
		  Dim RepUser as Integer
		  
		  if  not Detect_Modif then
		    return true
		  else
		    RepUser=MsgBox("Abandonner la saisie en cour ?",52)
		    If  RepUser=6 then
		      return true
		    end if
		  end if
		  
		  return false
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function Detect_Modif() As Boolean
		  
		  
		  If AccessMode_Data="MODIF" and Group_Tab.Tab_EstModif then return true
		  
		  return false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Groupe_Add(Numero as int64, Nom as string) As Boolean
		  for i as integer =0 to Lst_ObjetWin.ListCount-1
		    Group_Tab.ObjetID=Lst_ObjetWin.Cell(i,0)
		    Group_Tab.Tab_Ajouter(Numero)
		  next i
		  
		  ObjetVersEcranGroup
		  
		  return true
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  
		  ObjetVersEcranGroup
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranGroup()
		  Dim OrdreSql as String
		  Dim ObjGroup as Class_ObjGroupWin
		  
		  
		  
		  // Effacement du tableau
		  Lst_Groupe.DeleteAllRows
		  
		  ObjGroup = new Class_ObjGroupWin
		  ObjGroup.DBaseID     =  App.MainDB
		  ObjGroup.DBaseSource = "SELECT *, COUNT(OBJETID) AS NBROBJETID FROM TEMP_OBJETGROUP GROUP BY NUMGROUP HAVING NBROBJETID="+str(Lst_ObjetWin.ListCount)
		  
		  if not ObjGroup.DBaseReqSrc_Exec then
		    return
		  end if
		  
		  if not ObjGroup.Charge_Premier then
		    return
		  end if
		  
		  do
		    
		    Lst_Groupe.AddRow str(ObjGroup.NumGroup)
		    Lst_Groupe.Cell(Lst_Groupe.LastIndex,1) =  ObjGroup.NomGroup
		    Lst_Groupe.Cell(Lst_Groupe.LastIndex,2) =  ObjGroup.ModeAccesLib
		    
		    
		  loop until not ObjGroup.Charge_Suivant
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchro_VarRes()
		  //Memorisation des variables de reserve
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Touche_Valide(key as String) As Boolean
		  if key=chr(13)  then return true
		  if key=chr(3)    then return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function User_LstNumMax() As Int64
		  Dim NumMax as Int64 = 0
		  
		  if Lst_Groupe.ListCount=0 then
		    return 0
		  end if
		  
		  for i as integer=0 to Lst_Groupe.ListCount-1
		    
		    if Lst_Groupe.Cell(i,0).CDbl > NumMax then
		      NumMax = Lst_Groupe.Cell(i,0).CDbl
		    end if
		    
		  next i
		  
		  return NumMax
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub User_TypeSaisie(OpeUser as String)
		  Dim numero as Int64
		  
		  if OpeUser="MOD" then
		    if Lst_Groupe.SelCount >0 then
		      
		      numero= Lst_Groupe.Cell(Lst_Groupe.ListIndex,0).CLong
		      Win_SecurGroupFich.Show
		      
		      if  Win_SecurGroupFich.AccessQuery_User(App.MyLogUserInfo.Nom,"MODIF", numero)=true then
		      end if
		      
		    else
		      MsgBox "Selectionnez un groupe dans la liste pour en modifier l'acces."
		      exit sub
		    end if
		  end if
		  
		  User_TypeAcces = OpeUser
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Valide_Formulaire() As Boolean
		  
		  
		  return true
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AccessMode_Data As String = "MOD"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ForceExit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Group_Tab As Class_TabAffectObjetGroup
	#tag EndProperty

	#tag Property, Flags = &h0
		User_TypeAcces As String
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_SecurObjetFich", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events LBTN_DelMembre
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  
		  if Lst_Groupe.Cell(Lst_Groupe.ListIndex,0).CDbl=1 then
		    RepUser=MsgBox("Il est strictement interdit de supprimer le groupe des Administrateurs d'un objet",16,"Operation Interdite")
		    exit sub
		  end if
		  
		  
		  if Lst_Groupe.SelCount >0 then
		    RepUser=MsgBox("Supprimer ce groupe de la liste ?"+EndOfLine+"Ces modifications ne seront enregistrés qu'à la validation de la fiche client",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    Group_Tab.ObjetGroup_TempSupprime(Lst_Groupe.Cell(Lst_Groupe.ListIndex,0).CDbl )
		    Lst_Groupe.RemoveRow(Lst_Groupe.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddMembre
	#tag Event
		Sub Action()
		  Dim test as Boolean
		  
		  User_TypeSaisie("ADD")
		  
		  Win_SecurGoupLst.Show
		  test = Win_SecurGoupLst.AccessQuery_User(App.MyLogUserInfo.Nom,"SELECT",AccessWindow_ID)
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_Groupe
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    User_TypeSaisie("MOD")
		  end if
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  User_TypeSaisie("MOD")
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AccesGroupe
	#tag Event
		Sub Action()
		  Dim test as Boolean
		  
		  
		  if Lst_Groupe.SelCount >0 then
		    
		    Win_SecurObjetAccesFich.Show
		    Win_SecurObjetAccesFich.NumGroup      = cdbl(Lst_Groupe.Cell(Lst_Groupe.ListIndex,0))
		    
		    test = Win_SecurObjetAccesFich.AccessQuery_User(App.MyLogUserInfo.Nom,"MODIF",AccessWindow_ID)
		    
		  else
		    MsgBox "Selectionnez un groupe dans la liste pour en modifier l'acces."
		    exit sub
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
		  
		  if Valide_Formulaire then
		    
		    EcranVersObjet
		    
		    'If AccessMode_Data="MODIF" then Group_Tab.ObjetGroup_SauveGroupe
		    'If AccessMode_Data="ADD"   then
		    ' GroupeActuel.DBase_Create
		    'end if
		    
		    
		    Group_Tab.ObjetGroup_SauveGroupe
		    
		    ForceExit=true
		    self.close
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_BLOCAGE
	#tag Event
		Sub Action()
		  if me.Icon=lock_32X then
		    me.Icon=unlock_32X
		  else
		    me.Icon=lock_32X
		  end if
		  
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
		Name="User_TypeAcces"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
