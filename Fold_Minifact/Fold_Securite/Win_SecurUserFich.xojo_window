#tag Window
Begin Window Win_SecurUserFich
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   250
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   250
   MaximizeButton  =   False
   MaxWidth        =   650
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   250
   MinimizeButton  =   True
   MinWidth        =   650
   Placement       =   0
   Resizeable      =   False
   Title           =   " FICHE UTILISATEUR"
   Visible         =   True
   Width           =   650
   Begin GroupBox Grb_Identification
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "IDENTIFICATION UTILISATEUR DU LOGICIEL"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   107
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
      Width           =   561
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
         Width           =   59
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
         MaximumCharactersAllowed=   30
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
         ValidationMask  =   "AAAAAAAAAAAAAAAAAAAAAAAA>AAAAAAAA"
         Value           =   ""
         Visible         =   True
         Width           =   459
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
      Top             =   199
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
      Top             =   199
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
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Valider"
      Top             =   199
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin BevelButton LBTN_PASSWORD
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
      Icon            =   1970620415
      IconAlignment   =   "0"
      IconDeltaX      =   0
      IconDeltaY      =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   583
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
      Tooltip         =   "Definir un mot de passe"
      Top             =   11
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
      Height          =   53
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
      Top             =   134
      Transparent     =   False
      Underline       =   False
      Value           =   "Info : L'utilisateur Administrateur ne peut pas changer de nom. Deux utilisateurs differents ne peuvent pas avoir le même nom. "
      Visible         =   True
      Width           =   561
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
		Function AccessQuery_User(Login_user as String, DataAccessMode as String, numclient as Int64) As Boolean
		  dim test as Boolean
		  AccessMode_Data=DataAccessMode
		  
		  if DataAccessMode="ADD" then
		    
		    Lab_Code.Visible=False
		    Txt_Code.Visible=False
		    
		    UserActuel=new Class_User
		    UserActuel.DBaseID=App.MainDB
		    
		    
		    return true
		    
		  end if
		  
		  if DataAccessMode="LIRE" then
		    
		    Grb_Identification.Enabled=false
		    
		    LBTN_OK.Visible=false
		    
		  end if
		  
		  if DataAccessMode="MODIF" then
		    
		    Txt_Code.ReadOnly=True
		    
		  end if
		  
		  
		  
		  UserActuel = new Class_User
		  UserActuel.DBaseID=App.MainDB
		  UserActuel.DBaseSource="SELECT * FROM USER WHERE NUMERO="+str(numclient)
		  
		  if not UserActuel.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  test=UserActuel.Charge_Premier
		  
		  if UserActuel.Numero=1 then
		    Grb_Identification.Enabled=false
		  end if
		  
		  
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
		  
		  return false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  UserActuel.Numero           = Txt_Code.Text.CDbl
		  UserActuel.Nom              = Txt_Nom.Text
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enregistre_Formulaire()
		  Dim BolVoid as Boolean
		  
		  if Valide_Formulaire then
		    
		    EcranVersObjet
		    
		    If AccessMode_Data="MODIF" then UserActuel.DBase_Update
		    If AccessMode_Data="ADD"   then
		      UserActuel.DBase_Create
		    end if
		    
		    if SourceWindowName="Win_SecurUserLst" then
		      BolVoid = Win_SecurUserLst.Page_Lire
		    end if
		    
		    
		    
		    ForceExit=true
		    self.close
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  Txt_Code.Text         = str(UserActuel.Numero)
		  Txt_Nom.Text          = UserActuel.Nom
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchro_VarRes()
		  //Memorisation des variables de reserve
		  VarRes_Code         = str(UserActuel.Numero)
		  VarRes_Nom          = UserActuel.Nom
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Touche_Valide(key as String) As Boolean
		  if key=chr(13)  then return true
		  if key=chr(3)    then return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Valide_Formulaire() As Boolean
		  Dim OrdreSql as string
		  Dim RepUser  as Integer
		  Dim rs       as RecordSet
		  
		  if trim(Txt_Nom.Text)="" then
		    MsgBox "Le champ Nom doit obligatoirement etre complété"
		    return false
		  end if
		  
		  Select Case AccessMode_Data
		  Case "ADD"
		    OrdreSql = "SELECT  COUNT(*) AS NBRUSER FROM USER WHERE UPPER(NOM) = UPPER('"+Txt_Nom.Text+"')"
		  Case "MODIF"
		    OrdreSql = "SELECT  COUNT(*) AS NBRUSER FROM USER WHERE NUMERO <> "+Txt_Code.Text+" AND UPPER(NOM) = UPPER('"+Txt_Nom.Text+"') "
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
		  if rs.Field("NBRUSER").Value >0 then
		    RepUser = MsgBox("Un utilisateur qui porte un nom identique existe deja !",16,"Operation interdite")
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
		SourceWindowName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		UserActuel As Class_User
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


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_SecurUserFich", Scope = Private
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
#tag Events LBTN_PASSWORD
	#tag Event
		Sub Action()
		  Dim test as Boolean
		  
		  Win_SecurPasswordChange.Show
		  Win_SecurPasswordChange.Code         = UserActuel.Numero
		  Win_SecurPasswordChange.Identifiant  = UserActuel.Nom
		  Win_SecurPasswordChange.AncPassword  = UserActuel.Password
		  Win_SecurPasswordChange.SrcWindow_ID = AccessWindow_ID
		  
		  test = Win_SecurPasswordChange.AccessQuery_User(App.MyLogUserInfo.Nom,"MODIF")
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
