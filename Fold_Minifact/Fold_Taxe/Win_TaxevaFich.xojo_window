#tag Window
Begin Window Win_TaxevaFich
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   355
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   355
   MaximizeButton  =   False
   MaxWidth        =   750
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   355
   MinimizeButton  =   True
   MinWidth        =   750
   Placement       =   0
   Resizeable      =   False
   Title           =   " FICHE TVA"
   Visible         =   True
   Width           =   750
   Begin GroupBox Grb_Identification
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Identification"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   137
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
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
      Width           =   721
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
      Begin Label Lab_Nature
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
         Left            =   271
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   74
         Transparent     =   False
         Underline       =   False
         Value           =   "Nature"
         Visible         =   True
         Width           =   69
      End
      Begin PopupMenu Pop_TvaNature
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
         InitialParent   =   "Grb_Identification"
         InitialValue    =   ""
         Italic          =   False
         Left            =   370
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   69
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   326
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
         Top             =   108
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
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   106
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   604
      End
      Begin Label Lab_Taux
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
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   74
         Transparent     =   False
         Underline       =   False
         Value           =   "Taux"
         Visible         =   True
         Width           =   52
      End
      Begin TextField Txt_Taux
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
         MaximumCharactersAllowed=   10
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "3"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   72
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   109
      End
   End
   Begin GroupBox Grb_Poste
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Postes affectés"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   136
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   9
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   147
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   721
      Begin PopupMenu Pop_PosteTvaColct
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
         InitialParent   =   "Grb_Poste"
         InitialValue    =   ""
         Italic          =   False
         Left            =   370
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
         Top             =   172
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   325
      End
      Begin PopupMenu Pop_PosteTvaDeduc
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
         InitialParent   =   "Grb_Poste"
         InitialValue    =   ""
         Italic          =   False
         Left            =   370
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
         Top             =   211
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   325
      End
      Begin PopupMenu Pop_PosteTvaImmo
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
         InitialParent   =   "Grb_Poste"
         InitialValue    =   ""
         Italic          =   False
         Left            =   370
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   250
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   325
      End
      Begin Label Lab_PosteTvaColct
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
         InitialParent   =   "Grb_Poste"
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
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Value           =   "TVA collectée"
         Visible         =   True
         Width           =   337
      End
      Begin Label Lab_PosteTvaDeduc
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
         InitialParent   =   "Grb_Poste"
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
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   211
         Transparent     =   False
         Underline       =   False
         Value           =   "TVA déductible"
         Visible         =   True
         Width           =   337
      End
      Begin Label Lab_PosteTvaImmo
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
         InitialParent   =   "Grb_Poste"
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
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   251
         Transparent     =   False
         Underline       =   False
         Value           =   "TVA immobilisations"
         Visible         =   True
         Width           =   337
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
      Left            =   690
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
      Top             =   304
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
      Left            =   639
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
      Top             =   304
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
      Left            =   20
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
      Top             =   304
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
		  Ite_Exit.Enable
		  Ite_InfoAcces.Enable
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  
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
		Function AccessQuery_User(Login_user as String, DataAccessMode as String, numTaxeva as Int64) As Boolean
		  dim test as Boolean
		  
		  AccessMode_Data=DataAccessMode
		  
		  if AccesPerm_Data.Blocage="O" then
		    LBTN_BLOCAGE.Enabled=true
		  else
		    LBTN_BLOCAGE.Enabled=False
		  end if
		  
		  
		  if AccessMode_Data="ADD" then
		    
		    Lab_Code.Visible=False
		    Txt_Code.Visible=False
		    
		    TaxevaActuel=new Class_Taxeva
		    TaxevaActuel.DBaseID=App.MainDB
		    
		    Def_ListeTva("Pop_PosteTvaColct" ,"TVACOLCT"  , TaxevaActuel.TvaColct  )
		    Def_ListeTva("Pop_PosteTvaDeduc" ,"TVADEDUC"  , TaxevaActuel.TvaDeduc  )
		    Def_ListeTva("Pop_PosteTvaImmo"  ,"TVAIMMOS"  , TaxevaActuel.TvaImmos  )
		    Def_ListeTva("Pop_TvaNature"     ,"TVANATURE" , TaxevaActuel.TvaNature )
		    
		    return true
		    
		  end if
		  
		  if AccessMode_Data="LIRE" then
		    
		    Enable_Formulaire(False)
		    LBTN_OK.Visible=false
		    
		  end if
		  
		  if AccessMode_Data="MODIF" then
		    
		    Txt_Code.ReadOnly=True
		    
		  end if
		  
		  TaxevaActuel = new Class_Taxeva
		  TaxevaActuel.DBaseID=App.MainDB
		  TaxevaActuel.DBaseSource="SELECT * FROM TVADESC WHERE NUMERO="+str(numTaxeva)
		  
		  if not TaxevaActuel.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  test=TaxevaActuel.Charge_Premier
		  
		  
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

	#tag Method, Flags = &h0
		Sub Def_ListeTva(NomControl as string, Table as string, Numero as Int64 = - 1)
		  Dim PosteTVA as Class_TvaType
		  Dim element as string
		  
		  PosteTVA = new  Class_TvaType
		  PosteTVA.DBaseID     = App.MainDB
		  PosteTVA.NomTable    = Table
		  PosteTVA.DBaseSource = "SELECT * FROM "+Table
		  
		  select Case NomControl
		  Case "Pop_PosteTvaColct"
		    Pop_PosteTvaColct.AddRow("Indefini")
		    Pop_PosteTvaColct.RowTag(Pop_PosteTvaColct.ListCount-1) = 0
		    if PosteTVA.Numero = Numero then Pop_PosteTvaColct.ListIndex = Numero
		  Case "Pop_PosteTvaDeduc"
		    Pop_PosteTvaDeduc.AddRow("Indefini")
		    Pop_PosteTvaDeduc.RowTag(Pop_PosteTvaDeduc.ListCount-1) = 0
		    if PosteTVA.Numero = Numero then Pop_PosteTvaDeduc.ListIndex = Numero
		  Case "Pop_PosteTvaImmo"
		    Pop_PosteTvaImmo.AddRow("Indefini")
		    Pop_PosteTvaImmo.RowTag(Pop_PosteTvaImmo.ListCount-1) = 0
		    if PosteTVA.Numero = Numero then Pop_PosteTvaImmo.ListIndex  = Numero
		  Case "Pop_TvaNature"
		    Pop_TvaNature.AddRow("Indefini")
		    Pop_TvaNature.RowTag(Pop_TvaNature.ListCount-1) = 0
		    if PosteTVA.Numero = Numero then Pop_TvaNature.ListIndex  = Numero
		  end select
		  
		  if not PosteTVA.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if not PosteTVA.Charge_Premier then
		  end if
		  
		  do
		    
		    element = PosteTVA.NumPoste+"|"+PosteTVA.Nom
		    
		    select Case NomControl
		    Case "Pop_PosteTvaColct"
		      Pop_PosteTvaColct.AddRow(element)
		      Pop_PosteTvaColct.RowTag(Pop_PosteTvaColct.ListCount-1) = PosteTVA.Numero
		      if PosteTVA.Numero = Numero then Pop_PosteTvaColct.ListIndex=Numero
		    Case "Pop_PosteTvaDeduc"
		      Pop_PosteTvaDeduc.AddRow(element)
		      Pop_PosteTvaDeduc.RowTag(Pop_PosteTvaDeduc.ListCount-1) = PosteTVA.Numero
		      if PosteTVA.Numero = Numero then Pop_PosteTvaDeduc.ListIndex=Numero
		    Case "Pop_PosteTvaImmo"
		      Pop_PosteTvaImmo.AddRow(element)
		      Pop_PosteTvaImmo.RowTag(Pop_PosteTvaImmo.ListCount-1)   = PosteTVA.Numero
		      if PosteTVA.Numero = Numero then Pop_PosteTvaImmo.ListIndex=Numero
		    Case "Pop_TvaNature"
		      Pop_TvaNature.AddRow(element)
		      Pop_TvaNature.RowTag(Pop_TvaNature.ListCount-1)   = PosteTVA.Numero
		      if PosteTVA.Numero = Numero then Pop_TvaNature.ListIndex=Numero
		    case else
		      exit sub
		    end select
		    
		  loop until not PosteTVA.Charge_Suivant
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function Detect_Modif() As Boolean
		  
		  if not ( Txt_Code.Text                =  VarRes_Code          )  then return true
		  if not ( Txt_Nom.Text                 =  VarRes_Nom           )  then return true
		  if not ( Txt_Taux.Text                =  VarRes_Taux          )  then return true
		  if not ( Pop_PosteTvaColct.RowTag(Pop_PosteTvaColct.ListIndex)      =  VarRes_TvaColct      )  then return true
		  if not ( Pop_PosteTvaDeduc.RowTag(Pop_PosteTvaDeduc.ListIndex)      =  VarRes_TvaDeduc      )  then return true
		  if not ( Pop_PosteTvaImmo.RowTag(Pop_PosteTvaImmo.ListIndex)        =  VarRes_TvaImmos      )  then return true
		  if not ( Pop_TvaNature.RowTag(Pop_TvaNature.ListIndex)              =  VarRes_TvaNature     )  then return true
		  
		  return false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  TaxevaActuel.Numero      = Cdbl(Txt_Code.Text)
		  TaxevaActuel.Nom         = Txt_Nom.Text
		  TaxevaActuel.Taux        = Cdbl(Txt_Taux.Text)
		  TaxevaActuel.TvaColct    = Pop_PosteTvaColct.RowTag(Pop_PosteTvaColct.ListIndex)
		  TaxevaActuel.TvaDeduc    = Pop_PosteTvaDeduc.RowTag(Pop_PosteTvaDeduc.ListIndex)
		  TaxevaActuel.TvaImmos    = Pop_PosteTvaImmo.RowTag(Pop_PosteTvaImmo.ListIndex)
		  TaxevaActuel.TvaNature   = Pop_TvaNature.RowTag(Pop_TvaNature.ListIndex)
		  
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enable_Formulaire(VraiFaux as Boolean)
		  Grb_Identification.Enabled  = VraiFaux
		  Grb_Poste.Enabled           = VraiFaux
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enregistre_Formulaire()
		  Dim BolVoid as Boolean
		  
		  if Valide_Formulaire then
		    
		    EcranVersObjet
		    
		    If AccessMode_Data="MODIF" then TaxevaActuel.DBase_Update
		    If AccessMode_Data="ADD"   then
		      TaxevaActuel.DBase_Create
		    end if
		    
		    if SourceWindowName="Win_TaxevaLst" then
		      BolVoid = Win_TaxevaLst.Page_Lire
		    end if
		    
		    
		    ForceExit=true
		    self.close
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  Txt_Code.Text              =    str(TaxevaActuel.Numero)
		  Txt_Nom.Text               =    TaxevaActuel.Nom
		  Txt_Taux.Text              =    str(TaxevaActuel.Taux)
		  
		  Def_ListeTva("Pop_PosteTvaColct" ,"TVACOLCT"  ,TaxevaActuel.TvaColct  )
		  Def_ListeTva("Pop_PosteTvaDeduc" ,"TVADEDUC"  ,TaxevaActuel.TvaDeduc  )
		  Def_ListeTva("Pop_PosteTvaImmo"  ,"TVAIMMOS"  ,TaxevaActuel.TvaImmos  )
		  Def_ListeTva("Pop_TvaNature","TVANATURE" ,TaxevaActuel.TvaNature )
		  
		  
		  if TaxevaActuel.BLOCAGE="O" then
		    LBTN_BLOCAGE.Icon=lock_32X
		    Enable_Formulaire(False)
		  else
		    LBTN_BLOCAGE.Icon=unlock_32X
		    if not (AccessMode_Data="LIRE") then Enable_Formulaire(True)
		  end if
		  
		  if AccesPerm_Data.ModeAcces="W" and AccesPerm_Data.Blocage="O" then
		    LBTN_BLOCAGE.Enabled=true
		  else
		    LBTN_BLOCAGE.Enabled=False
		  end if
		  
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchro_VarRes()
		  //Memorisation des variables de reserve
		  VarRes_Code           =    str(TaxevaActuel.Numero)
		  VarRes_Nom            =    TaxevaActuel.Nom
		  VarRes_Taux           =    str(TaxevaActuel.Taux)
		  VarRes_DateDeb        =    TaxevaActuel.DateDeb
		  VarRes_DateFin        =    TaxevaActuel.DateFin
		  VarRes_TvaColct       =    TaxevaActuel.TvaColct
		  VarRes_TvaDeduc       =    TaxevaActuel.TvaDeduc
		  VarRes_TvaImmos       =    TaxevaActuel.TvaImmos
		  VarRes_TvaNature      =    TaxevaActuel.TvaNature
		  
		  
		  
		  
		  
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
		  
		  if trim(Txt_Nom.Text)="" then
		    MsgBox "Le champ Nom doit obligatoirement etre complété"
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

	#tag Property, Flags = &h0
		Contact_TypeAcces As String = "MODIF"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ForceExit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceWindowName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TaxevaActuel As Class_Taxeva
	#tag EndProperty

	#tag Property, Flags = &h0
		Untitled As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Code As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_DateDeb As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_DateFin As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Taux As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_TvaColct As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_TvaDeduc As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_TvaImmos As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_TvaLigne As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_TvaNature As Int64
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_TaxevaFich", Scope = Private
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
#tag Events Pop_TvaNature
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
#tag Events Txt_Taux
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		  return App.Valide_TxtNumKeydown(me,Key,false)
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  Dim BoolVoid as Boolean
		  BoolVoid= App.Valide_TxtNumLostFocus(me,false,5,0,100,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Pop_PosteTvaColct
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Pop_PosteTvaDeduc
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Pop_PosteTvaImmo
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
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    Enregistre_Formulaire
		    return True
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_BLOCAGE
	#tag Event
		Sub Action()
		  if me.Icon=lock_32X then
		    me.Icon=unlock_32X
		    if AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      TaxevaActuel.BLOCAGE="N"
		      Enable_Formulaire(True)
		    end if
		  else
		    me.Icon=lock_32X
		    If AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      TaxevaActuel.BLOCAGE="O"
		      Enable_Formulaire(False)
		    end if
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
		Name="Contact_TypeAcces"
		Visible=false
		Group="Behavior"
		InitialValue="MODIF"
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
		Name="Untitled"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
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
	#tag ViewProperty
		Name="VarRes_Taux"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_TvaColct"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_TvaDeduc"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_TvaImmos"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_TvaLigne"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_TvaNature"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Int64"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
