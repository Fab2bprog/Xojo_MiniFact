#tag Window
Begin Window Win_StockCorrect
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   406
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   640
   Placement       =   0
   Resizeable      =   False
   Title           =   "Fiche de correction de stock"
   Visible         =   True
   Width           =   650
   Begin GroupBox Grb_Stock
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Stock"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   67
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   200
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   620
      Begin TextField Txt_QteStock
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
         InitialParent   =   "Grb_Stock"
         Italic          =   False
         Left            =   136
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   15
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "3"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   227
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   124
      End
      Begin Label Lab_QteStock
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
         InitialParent   =   "Grb_Stock"
         Italic          =   False
         Left            =   21
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   229
         Transparent     =   False
         Underline       =   False
         Value           =   "Quantité"
         Visible         =   True
         Width           =   103
      End
   End
   Begin GroupBox Grb_Depot
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Depot"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   86
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   8
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   620
      Begin TextField Txt_NumDepot
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
         InitialParent   =   "Grb_Depot"
         Italic          =   False
         Left            =   135
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   15
         Password        =   False
         ReadOnly        =   True
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   29
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   125
      End
      Begin Label Lab_NumDepot
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
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   29
         Transparent     =   False
         Underline       =   False
         Value           =   "Code Depot"
         Visible         =   True
         Width           =   103
      End
      Begin TextField Txt_NomDepot
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
         InitialParent   =   "Grb_Depot"
         Italic          =   False
         Left            =   135
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   15
         Password        =   False
         ReadOnly        =   True
         Scope           =   "0"
         TabIndex        =   8
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
         Width           =   371
      End
      Begin Label Lab_NomDepot
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
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   62
         Transparent     =   False
         Underline       =   False
         Value           =   "Nom Depot"
         Visible         =   True
         Width           =   97
      End
   End
   Begin GroupBox Grb_Commentaires
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Commentaires"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   59
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
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
      Top             =   273
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   620
      Begin TextField Txt_Commentaires
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
         InitialParent   =   "Grb_Commentaires"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   50
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   293
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   596
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
      Left            =   590
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Quitter la fenetre"
      Top             =   346
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
      Left            =   538
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
      Top             =   346
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
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Valider"
      Top             =   346
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin GroupBox Grb_Article
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Article"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   94
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   99
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   620
      Begin TextField Txt_NomArt
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
         InitialParent   =   "Grb_Article"
         Italic          =   False
         Left            =   135
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   50
         Password        =   False
         ReadOnly        =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   158
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   483
      End
      Begin Label Lab_NomArt
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
         InitialParent   =   "Grb_Article"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   158
         Transparent     =   False
         Underline       =   False
         Value           =   "Nom article"
         Visible         =   True
         Width           =   103
      End
      Begin TextField Txt_NumArt
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
         InitialParent   =   "Grb_Article"
         Italic          =   False
         Left            =   135
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   15
         Password        =   False
         ReadOnly        =   True
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   124
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   125
      End
      Begin Label Lab_NumArt
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
         InitialParent   =   "Grb_Article"
         Italic          =   False
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Value           =   "Code Article"
         Visible         =   True
         Width           =   103
      End
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


	#tag Method, Flags = &h0
		Function AccessQuery_User(Login_user as String, DataAccessMode as String, numero as Int64, numeroarticle as int64) As Boolean
		  dim test as Boolean
		  Dim MonService as  Class_Service
		  MonService = new Class_Service
		  
		  
		  AccessMode_Data = DataAccessMode
		  VarAchatActuel  = new Class_VarAchat
		  VarAchatActuel.DBaseID = App.MainDB
		  VarAchatActuel.Table   = TableSource
		  
		  
		  
		  if AccesPerm_Data.Blocage = "O" then
		    LBTN_BLOCAGE.Enabled=true
		  else
		    LBTN_BLOCAGE.Enabled=False
		  end if
		  
		  
		  if AccessMode_Data="ADD" then
		    
		    
		  end if
		  
		  if AccessMode_Data="LIRE" then
		    
		    Enable_Formulaire(False)
		    LBTN_OK.Visible=false
		    
		    
		    
		  end if
		  
		  if AccessMode_Data="MODIF" then
		    
		    
		  end if
		  
		  
		  
		  
		  VarAchatActuel.DBaseSource="SELECT * FROM "+VarAchatActuel.Table+" WHERE NUMERO="+str(numero)+" AND NUMART="+str(numeroarticle)
		  
		  if not VarAchatActuel.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  test=VarAchatActuel.Charge_Premier
		  
		  
		  
		  ObjetVersEcran
		  
		  return true
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Bool2OuiNon(TrueFalse as Boolean) As String
		  if TrueFalse= true then
		    return "O"
		  else
		    return "N"
		  end if
		  
		  
		  
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
		  
		  'if not ( VarRes_NumFourn      = Txt_NumFourn.Text       ) then return True
		  'if not ( VarRes_RefFourn      = Txt_RefFourn.Text       ) then return True
		  'if not ( VarRes_LibFourn      = Txt_LibFourn.Text       ) then return True
		  'if not ( VarRes_UnitAchat     = Pop_UnitAchat.Text      ) then return True
		  'if not ( VarRes_Condit        = Txt_Condit.Text         ) then return True
		  'if not ( VarRes_TVA           = Pop_Tva.Text            ) then return True
		  'if not ( VarRes_PrixAchatHT   = Txt_PrixAchatHT.Text    ) then return True
		  'if not ( VarRes_PrixAchatTTC  = Txt_PrixAchatTTC.Text   ) then return True
		  'if not ( VarRes_DateDeb       = Txt_DateDeb.Text        ) then return True
		  'if not ( VarRes_DateFin       = Txt_DateFin.Text        ) then return True
		  'if not ( VarRes_Promo         = Bool2OuiNon(Chk_Promo.Value   )       ) then return True
		  'if not ( VarRes_Obsolete      = Bool2OuiNon(Chk_Obsolete.Value)       ) then return True
		  'if not ( VarRes_Commentaires  = Txt_Commentaires.Text   ) then return True
		  
		  return false
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  Dim BinVoid as Boolean
		  Dim DateDeb as new date
		  Dim DateFin as new date
		  Dim PaUnitHT as Double
		  Dim PaUnitTTC as Double
		  
		  //Attention tres important pour eviter le bug grave de perte evenement sur lostfocus
		  'PaUnitHT=Txt_PrixAchatHT.Text.CDbl
		  'PaUnitTTC=Txt_PrixAchatTTC.Text.CDbl
		  
		  'if IDFocus_PrixAchat="PAHT" then
		  'PaUnitTTC=Calc_PrixAchatTTC(PaUnitHT)
		  'end if
		  '
		  'if IDFocus_PrixAchat="PATTC" then
		  'PaUnitHT=Calc_PrixAchatHT(PaUnitTTC)
		  'end if
		  
		  //--------
		  
		  
		  'BinVoid = parsedate(Txt_DateDeb.Text,DateDeb)
		  'BinVoid = parsedate(Txt_DateFin.Text,DateFin)
		  '
		  'VarAchatActuel.Numero            =  Txt_VarAchat.Text.CDbl
		  'VarAchatActuel.NumArt            =  Txt_NumArt.Text.CDbl
		  'VarAchatActuel.NumTva            =  Pop_Tva.RowTag(Pop_Tva.ListIndex).DoubleValue
		  'VarAchatActuel.NumFourn          =  Txt_NumFourn.Text.CDbl
		  'VarAchatActuel.RefFourn          =  Txt_RefFourn.Text
		  'VarAchatActuel.LibFourn          =  Txt_LibFourn.Text
		  'VarAchatActuel.UnitAchat         =  Pop_UnitAchat.RowTag(Pop_UnitAchat.ListIndex).DoubleValue
		  'VarAchatActuel.Condit            =  Txt_Condit.Text.CDbl
		  'VarAchatActuel.PrixAchatHT       =  PaUnitHT
		  'VarAchatActuel.PrixAchatTTC      =  PaUnitTTC
		  'VarAchatActuel.DateDeb           =  DateDeb
		  'VarAchatActuel.DateFin           =  DateFin
		  'VarAchatActuel.Promo             =  Bool2OuiNon(Chk_Promo.value)
		  'VarAchatActuel.Obsolete          =  Bool2OuiNon(Chk_Obsolete.Value)
		  
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enable_Formulaire(VraiFaux as Boolean)
		  Grb_Depot.Enabled=VraiFaux
		  Grb_Article.Enabled=VraiFaux
		  Grb_Stock.Enabled=VraiFaux
		  Grb_Commentaires.Enabled=VraiFaux
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  
		  'Txt_VarAchat.Text         =  str(VarAchatActuel.Numero    )
		  'Txt_NumArt.Text           =  str(VarAchatActuel.NumArt    )
		  'Txt_NumFourn.Text         =  str(VarAchatActuel.NumFourn  )
		  'Txt_RefFourn.Text         =      VarAchatActuel.RefFourn
		  'Txt_LibFourn.Text         =      VarAchatActuel.LibFourn
		  '
		  'Txt_Condit.Text           =  str(VarAchatActuel.Condit       )
		  '
		  'Txt_PrixAchatHT.Text      =  str(VarAchatActuel.PrixAchatHT  )
		  'Txt_PrixAchatTTC.Text     =  str(VarAchatActuel.PrixAchatTTC )
		  'Txt_DateDeb.Text          =  str(VarAchatActuel.DateDeb.ShortDate      )
		  'Txt_DateFin.Text          =  str(VarAchatActuel.DateFin.ShortDate      )
		  'Chk_Promo.Value           =  OuiNon2Bool(VarAchatActuel.Promo   )
		  'Chk_Obsolete.Value        =  OuiNon2Bool(VarAchatActuel.Obsolete)
		  'Txt_Commentaires.Text     =  VarAchatActuel.Commentaires
		  '
		  'if Def_TextLibFourn(VarAchatActuel.NumFourn) then
		  'end if
		  'Def_PopUniAchat(VarAchatActuel.UnitAchat)
		  'Def_PopTVANom(VarAchatActuel.NumTva)
		  '
		  'if VarAchatActuel.BLOCAGE="O" then
		  'LBTN_BLOCAGE.Icon=lock_32X
		  'Enable_Formulaire(False)
		  'else
		  'LBTN_BLOCAGE.Icon=unlock_32X
		  'Enable_Formulaire(True)
		  'end if
		  '
		  'if AccesPerm_Data.ModeAcces="W" and AccesPerm_Data.Blocage="O" then
		  'LBTN_BLOCAGE.Enabled=true
		  'else
		  'LBTN_BLOCAGE.Enabled=False
		  'end if
		  '
		  
		  
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OuiNon2Bool(OuiNon as String) As Boolean
		  if OuiNon = "O" then
		    return True
		  else
		    return False
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchro_VarRes()
		  Dim MonService as  Class_Service
		  MonService = new Class_Service
		  
		  
		  
		  //Memorisation des variables de reserve
		  VarRes_VarAchat      =  str(VarAchatActuel.Numero    )
		  VarRes_NumArt        =  str(VarAchatActuel.NumArt    )
		  VarRes_NumFourn      =  str(VarAchatActuel.NumFourn  )
		  VarRes_NomFourn      =  MonService.Serv_RetourneChamp("NOM","FOURNISSEUR","NUMERO",VarAchatActuel.NumFourn)
		  VarRes_RefFourn      =      VarAchatActuel.RefFourn
		  VarRes_LibFourn      =      VarAchatActuel.LibFourn
		  VarRes_UnitAchat     =  str(VarAchatActuel.UnitAchat    )
		  VarRes_Condit        =  str(VarAchatActuel.Condit       )
		  VarRes_TVA           =  str(VarAchatActuel.NumTva       )
		  VarRes_PrixAchatHT   =  str(VarAchatActuel.PrixAchatHT  )
		  VarRes_PrixAchatTTC  =  str(VarAchatActuel.PrixAchatTTC )
		  VarRes_DateDeb       =  str(VarAchatActuel.DateDeb.ShortDate       )
		  VarRes_DateFin       =  str(VarAchatActuel.DateFin.ShortDate       )
		  VarRes_Promo         =      VarAchatActuel.Promo
		  VarRes_Obsolete      =      VarAchatActuel.Obsolete
		  VarRes_Commentaires  =      VarAchatActuel.Commentaires
		  VarRes_Blocage       =      VarAchatActuel.Blocage
		  
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
		  Dim NumVoid as Boolean
		  Dim Date1 as new Date
		  Dim Date2 as new Date
		  Dim Today as new Date
		  
		  'if trim(Txt_NumFourn.Text)="" then
		  'MsgBox "La saisie du fournisseur est obligatoire"
		  'return false
		  'end if
		  '
		  'if Pop_UnitAchat.ListIndex=0 then
		  'MsgBox "La saisie de l'unite d'achat  est obligatoire"
		  'return false
		  'end if
		  '
		  'if Pop_Tva.ListIndex=0 then
		  'MsgBox "La saisie de la TVA est obligatoire"
		  'return false
		  'end if
		  '
		  'if (Txt_PrixAchatHT.Text.CDbl<=0 and IDFocus_PrixAchat="PAHT") or (Txt_PrixAchatTTC.Text.CDbl<=0 and IDFocus_PrixAchat="PATTC") then
		  'MsgBox "La saisie du prix d'achat est obligatoire"
		  'return false
		  'end if
		  '
		  'if (Txt_PrixAchatHT.Text.CDbl<=0 and IDFocus_PrixAchat="") or (Txt_PrixAchatTTC.Text.CDbl<=0 and IDFocus_PrixAchat="") then
		  'MsgBox "La saisie du prix d'achat est obligatoire"
		  'return false
		  'end if
		  '
		  '
		  '
		  'if Txt_Condit.Text.CDbl<=0 then
		  'MsgBox "Le Conditionnement doit etre superieur ou egale a 1"
		  'return false
		  'end if
		  '
		  'if not ParseDate(Txt_DateDeb.Text,Date1) then
		  'Txt_DateDeb.Text=Today.ShortDate
		  'Date1=Today
		  'end if
		  '
		  'if not ParseDate(Txt_DateFin.Text,Date2) then
		  'Date2=Date1
		  'Date2.Year=Date2.Year+100
		  'Txt_DateFin.Text=Date2.ShortDate
		  'end if
		  '
		  'if Date1.Operator_Compare(Date2)>0 then
		  'MsgBox "La Date de fin doit etre superieure ou egale à la date de début"
		  'return false
		  'end if
		  
		  
		  
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
		IDFocus_PrixAchat As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceWindowName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		TableSource As String = "VARACHAT"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Untitled As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		VarAchatActuel As Class_VarAchat
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Blocage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Commentaires As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Condit As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_DateDeb As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_DateFin As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_LibFourn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NomFourn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NumArt As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NumFourn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Obsolete As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_PrixAchatHT As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_PrixAchatTTC As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Promo As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_RefFourn As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_TVA As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_UnitAchat As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_VarAchat As String
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_VarAchatFich", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events Txt_QteStock
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
		  Dim TvaHT  as Double
		  Dim TvaTTC as Double
		  Dim TauxTva as Double
		  Dim MonService as  Class_Service
		  
		  
		  
		  
		  
		  // byref ChampCible as TextField, EstEntier as Boolean = false, Precision as integer = 0, ValMin as Double = - 9999999999999, ValMax as Double = 9999999999999, ValDefaut as double = 0
		  
		  if App.Valide_TxtNumLostFocus(me,false,5,0,9999999999,0) then
		    
		    'TvaHT      = val(me.Text)
		    'MonService = new Class_Service
		    'TauxTva    = Val(MonService.Serv_RetourneChamp("TAUX","TVADESC","NUMERO",Pop_Tva.RowTag(Pop_Tva.ListIndex) ))
		    'TvaTTC     = App.SuperRound( TvaHT*(1+TauxTva/100),2)
		    'Txt_PrixAchatTTC.Text = str(TvaTTC)
		    
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub GotFocus()
		  IDFocus_PrixAchat="PAHT"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Txt_NumDepot
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_NomDepot
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_Commentaires
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
		  '
		  'if Valide_Formulaire then
		  '
		  'EcranVersObjet
		  '
		  'If AccessMode_Data="MODIF" then
		  'VarAchatActuel.DBase_Update
		  'end if
		  '
		  'If AccessMode_Data="ADD"   then
		  'VarAchatActuel.DBase_Create
		  'end if
		  '
		  'if SourceWindowName="Win_ArticleFich" then
		  'Win_ArticleFich.ObjetVersEcranVarAchat
		  'end if
		  '
		  'ForceExit=true
		  'self.close
		  'end if
		  '
		  '
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_BLOCAGE
	#tag Event
		Sub Action()
		  if me.Icon=lock_32X then
		    me.Icon=unlock_32X
		    if AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      VarAchatActuel.BLOCAGE="N"
		      Enable_Formulaire(True)
		    end if
		  else
		    me.Icon=lock_32X
		    If AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      VarAchatActuel.BLOCAGE="O"
		      Enable_Formulaire(False)
		    end if
		  end if
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Txt_NomArt
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_NumArt
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Touche_Valide(Key) then
		    FocusNext
		    return True
		  end if
		End Function
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
		Name="IDFocus_PrixAchat"
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
		Name="TableSource"
		Visible=false
		Group="Behavior"
		InitialValue="VARACHAT"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Blocage"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Commentaires"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Condit"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_DateDeb"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_DateFin"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_LibFourn"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_NomFourn"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_NumArt"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_NumFourn"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Obsolete"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_PrixAchatHT"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_PrixAchatTTC"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Promo"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_RefFourn"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_TVA"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_UnitAchat"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_VarAchat"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
