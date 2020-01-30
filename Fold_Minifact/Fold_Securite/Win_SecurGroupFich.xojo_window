#tag Window
Begin Window Win_SecurGroupFich
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   550
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
   MinWidth        =   650
   Placement       =   0
   Resizeable      =   True
   Title           =   "FICHE GROUPE UTILISATEUR"
   Visible         =   True
   Width           =   650
   Begin GroupBox Grb_Identification
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Identification"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   94
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
      Width           =   620
      Begin TextField Txt_Code
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
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "Grb_Identification"
         Italic          =   False
         Left            =   92
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   15
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   31
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   109
      End
      Begin Label Lab_Code
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
         InitialParent   =   "Grb_Identification"
         Italic          =   False
         Left            =   21
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
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
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Value           =   "Code"
         Visible         =   True
         Width           =   52
      End
      Begin Label Lab_Nom
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
         InitialParent   =   "Grb_Identification"
         Italic          =   False
         Left            =   21
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   63
         Transparent     =   False
         Underline       =   False
         Value           =   "Nom "
         Visible         =   True
         Width           =   62
      End
      Begin TextField Txt_Nom
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
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "Grb_Identification"
         Italic          =   False
         Left            =   92
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   50
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   61
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   478
      End
   End
   Begin GroupBox Grb_MembreGroupe
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Membres de ce groupe"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   312
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
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
      Top             =   103
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   621
      Begin BevelButton LBTN_DelGRoupe
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
         InitialParent   =   "Grb_MembreGroupe"
         Italic          =   False
         Left            =   582
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
         Tooltip         =   "Supprime le membre sélectionné dans la liste."
         Top             =   201
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin BevelButton LBTN_AddGroupe
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
         InitialParent   =   "Grb_MembreGroupe"
         Italic          =   False
         Left            =   582
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
         Tooltip         =   "Ajoute un nouveau membre."
         Top             =   136
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin Listbox Lst_User
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   2
         ColumnWidths    =   "100,*"
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
         Height          =   246
         Index           =   -2147483648
         InitialParent   =   "Grb_MembreGroupe"
         InitialValue    =   "Code	Nom"
         Italic          =   False
         Left            =   21
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
         Top             =   136
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   549
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
      Left            =   583
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
      Top             =   499
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
      Left            =   532
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
      Top             =   499
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
      Top             =   499
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin Label Lab_NoteInfo
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   60
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   True
      Left            =   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Multiline       =   True
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00008000
      Tooltip         =   ""
      Top             =   427
      Transparent     =   False
      Underline       =   False
      Value           =   "Info : Vous pouvez ajouter ou supprimer des membres dans un groupe. Cependant l'utilisateur Administrateur est protégé et ne pourra pas etre supprimé du groupe des Administrateurs ni affecté dans un autre groupe. De la même facon le groupe des Administrateurs ne peut pas changer de nom."
      Visible         =   True
      Width           =   620
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


	#tag Method, Flags = &h0
		Function AccessQuery_User(Login_user as String, DataAccessMode as String, numclient as Int64) As Boolean
		  dim test as Boolean
		  
		  
		  AccessMode_Data=DataAccessMode
		  
		  if DataAccessMode="ADD" then
		    
		    Lab_Code.Visible=False
		    Txt_Code.Visible=False
		    
		    GroupeActuel=new Class_GroupUser
		    GroupeActuel.DBaseID=App.MainDB
		    
		    User_Tab = new Class_TabAffectUserGroup
		    
		    return true
		    
		  end if
		  
		  if DataAccessMode="LIRE" then
		    
		    Grb_Identification.Enabled=false
		    Grb_MembreGroupe.Enabled=false
		    
		    LBTN_OK.Visible=false
		    
		  end if
		  
		  if DataAccessMode="MODIF" then
		    
		    Txt_Code.ReadOnly=True
		    
		  end if
		  
		  
		  
		  GroupeActuel = new Class_GroupUser
		  GroupeActuel.DBaseID=App.MainDB
		  GroupeActuel.DBaseSource="SELECT * FROM USERGROUP WHERE NUMERO="+str(numclient)
		  
		  if not GroupeActuel.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  test=GroupeActuel.Charge_Premier
		  
		  if GroupeActuel.Numero=1 then
		    Grb_Identification.Enabled=False
		  end if
		  
		  
		  
		  User_Tab = new Class_TabAffectUserGroup
		  User_Tab.UserGroup=GroupeActuel.Numero
		  User_Tab.User_TempCharge
		  
		  
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
		  
		  if  not(VarRes_Code         = Txt_Code.Text) then return True
		  if  not(VarRes_Nom          = Txt_Nom.Text) then return True
		  
		  
		  If AccessMode_Data="MODIF" and User_Tab.Tab_EstModif then return true
		  
		  return false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  GroupeActuel.Numero           = Txt_Code.Text.CDbl
		  GroupeActuel.Nom              = Txt_Nom.Text
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enregistre_Formulaire()
		  Dim BolVoid as Boolean
		  
		  if Valide_Formulaire then
		    
		    EcranVersObjet
		    
		    If AccessMode_Data="ADD"   then
		      GroupeActuel.DBase_Create
		      User_Tab.User_SauveGroupe(GroupeActuel.Numero)
		    end if
		    
		    If AccessMode_Data="MODIF" then
		      GroupeActuel.DBase_Update
		      User_Tab.User_SauveGroupe()
		    end if
		    
		    if SourceWindowName="Win_SecurGroupLst" then
		      BolVoid = Win_SecurGoupLst.Page_Lire
		    end if
		    
		    
		    
		    ForceExit=true
		    self.close
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  Txt_Code.Text         = str(GroupeActuel.Numero)
		  Txt_Nom.Text          = GroupeActuel.Nom
		  
		  
		  ObjetVersEcranUser
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranUser()
		  Dim OrdreSql as String
		  Dim rs as RecordSet
		  Dim rsNumero as int64
		  Dim rsNom      as String
		  
		  // Effacement du tableau
		  Lst_User.DeleteAllRows
		  
		  OrdreSql = " SELECT * FROM TEMP_USER   "
		  
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
		    
		    Lst_User.AddRow str(rsNumero)
		    Lst_User.Cell(Lst_User.LastIndex,1) =  rsNom
		    
		    rs.MoveNext
		    
		  loop
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchro_VarRes()
		  //Memorisation des variables de reserve
		  VarRes_Code         = str(GroupeActuel.Numero)
		  VarRes_Nom          = GroupeActuel.Nom
		  
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
		  
		  if Lst_User.ListCount=0 then
		    return 0
		  end if
		  
		  for i as integer=0 to Lst_User.ListCount-1
		    
		    if Lst_User.Cell(i,0).CDbl > NumMax then
		      NumMax = Lst_User.Cell(i,0).CDbl
		    end if
		    
		  next i
		  
		  return NumMax
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub User_TypeSaisie(OpeUser as String)
		  Dim numero as Int64
		  
		  if OpeUser="ADD" then
		    'Txt_UserNom.Text=""
		  end if
		  
		  if OpeUser="MOD" then
		    if Lst_User.SelCount >0 then
		      
		      numero= Lst_User.Cell(Lst_User.ListIndex,0).CLong
		      Win_SecurUserFich.Show
		      if  Win_SecurUserFich.AccessQuery_User(App.MyLogUserInfo.Nom,"MODIF", numero)=true then
		      end if
		      
		    else
		      MsgBox "Selectionnez un User dans la liste pour le modifier."
		      exit sub
		    end if
		  end if
		  
		  'VarRes_UserNom            =    Txt_UserNom.Text
		  
		  
		  User_TypeAcces = OpeUser
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Utilisateur_Add(Numero as int64, Nom as string) As Boolean
		  Dim RepUser as integer
		  
		  //On verifie que cet element n a jamais ete insere avant
		  for i as integer =0 to Lst_User.ListCount-1
		    if Lst_User.Cell(i,0) = str(Numero) then
		      return false
		    end if
		  next i
		  
		  if Numero=1 and GroupeActuel.Numero<>1 then
		    RepUser=MsgBox("Le membre Administrateur doit rester dans le groupe Administrateur"+EndOfLine+_
		    "L'Administrateur est un utilisateur spécial protégé du logiciel",16,"Operation Interdite")
		    return false
		  end if
		  
		  Lst_User.AddRow       str(Numero)
		  Lst_User.Cell(Lst_User.LastIndex,1) =str( Nom)
		  
		  
		  User_Tab.Tab_Ajouter(Numero)
		  
		  return true
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Valide_Formulaire() As Boolean
		  Dim OrdreSql as string
		  Dim RepUser  as Integer
		  Dim rs       as RecordSet
		  
		  
		  if Txt_Code.Text="1" and Txt_Nom.Text<>"Administrateurs" then
		    Txt_Nom.Text="Administrateurs"
		    RepUser=MsgBox("Le changement de nom du groupe Administrateurs sera toujours interdite par le logiciel."+EndOfLine+_
		    "Le groupe des Administrateurs est un groupe spécial, protégé par le logiciel."+EndOfLine+_
		    "Son existence est obligatoire et vous est imposée pour le bon fonctionnement du logiciel."+EndOfLine+_
		    "Le nom du groupe a été reinitialisé à la valeur 'Administrateurs'",16,"Operation Interdite")
		    return false
		  end if
		  
		  if trim(Txt_Nom.Text)="" then
		    MsgBox "Le champ Nom doit obligatoirement etre complété"
		    return false
		  end if
		  
		  Select Case AccessMode_Data
		  Case "ADD"
		    OrdreSql = "SELECT  COUNT(*) AS NBRGROUP FROM USERGROUP WHERE UPPER(NOM) = UPPER('"+Txt_Nom.Text+"')"
		  Case "MODIF"
		    OrdreSql = "SELECT  COUNT(*) AS NBRGROUP FROM USERGROUP WHERE NUMERO <> "+Txt_Code.Text+" AND UPPER(NOM) = UPPER('"+Txt_Nom.Text+"') "
		  Case Else
		    return true
		  end select
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if rs=nil then
		    return true
		  end if
		  
		  rs.MoveFirst
		  if rs.Field("NBRGROUP").Value >0 then
		    RepUser = MsgBox("Un groupe qui porte un nom identique existe deja !",16,"Operation interdite")
		    return false
		  end if
		  
		  
		  return true
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AccesPerm_Data As Class_AccesObjet
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected AccessMode_Data As String = "MOD"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ForceExit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		GroupeActuel As Class_GroupUser
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceWindowName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		UserActuel As Class_User
	#tag EndProperty

	#tag Property, Flags = &h0
		User_Tab As Class_TabAffectUserGroup
	#tag EndProperty

	#tag Property, Flags = &h0
		User_TypeAcces As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Code As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Nom As String
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_SecurGroupFich", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Txt_Code
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_Nom
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelGRoupe
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  if GroupeActuel.Numero=1 then
		    if Lst_User.Cell(Lst_User.ListIndex,0).CDbl=1 then
		      RepUser=MsgBox("Il est strictement interdit de supprimer le membre Administrateur du groupe des Administrateurs",16,"Operation Interdite")
		      exit sub
		    end if
		  end if
		  
		  if Lst_User.SelCount >0 then
		    RepUser=MsgBox("Supprimer cet utilisateur de la liste ?"+EndOfLine+"Ces modification ne seront enregistré qu'à la validation de la fiche groupe",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    User_Tab.User_TempSupprime(Lst_User.Cell(Lst_User.ListIndex,0).CDbl)
		    Lst_User.RemoveRow(Lst_User.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddGroupe
	#tag Event
		Sub Action()
		  Dim test as Boolean
		  
		  User_TypeSaisie("ADD")
		  
		  Win_SecurUserLst.Show
		  test = Win_SecurUserLst.AccessQuery_User(App.MyLogUserInfo.Nom,"SELECT",AccessWindow_ID)
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_User
	#tag Event
		Sub DoubleClick()
		  User_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    User_TypeSaisie("MOD")
		  end if
		  
		  
		  
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
#tag Events LBTN_OK
	#tag Event
		Sub Action()
		  Enregistre_Formulaire
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
		Name="SourceWindowName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="User_TypeAcces"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Code"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Nom"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
