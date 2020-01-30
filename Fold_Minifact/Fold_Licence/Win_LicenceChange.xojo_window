#tag Window
Begin Window Win_LicenceChange
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   566
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   500
   MinimizeButton  =   False
   MinWidth        =   900
   Placement       =   0
   Resizeable      =   True
   Title           =   "Affecter licence"
   Visible         =   True
   Width           =   904
   Begin PushButton BTN_OK
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Valider"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   25
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   666
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   "0"
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   511
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton BTN_CANCEL
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Annuler"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   25
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   763
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   "0"
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   511
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton BTN_DEMO
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Essayer en licence démonstration"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   25
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   111
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   "0"
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   511
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   242
   End
   Begin PushButton BTN_REJETLIC
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Rejeter la licence actuelle"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   25
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   365
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   "0"
      Scope           =   "0"
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   511
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   254
   End
   Begin Label Lab_InfoLic11
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   131
      Transparent     =   False
      Underline       =   False
      Value           =   ""
      Visible         =   True
      Width           =   732
   End
   Begin GroupBox Grb_Licence
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Licence du logiciel attribué à :"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   167
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   16
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   823
      Begin TextField Txt_Lic001
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   215
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   10
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   123
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   215
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
         Top             =   49
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   602
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   32
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   49
         Transparent     =   False
         Underline       =   False
         Value           =   "Nom"
         Visible         =   True
         Width           =   114
      End
      Begin Label Lab_NumLic
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   32
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
         Top             =   80
         Transparent     =   False
         Underline       =   False
         Value           =   "No de licence"
         Visible         =   True
         Width           =   114
      End
      Begin TextField Txt_Lic002
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   350
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   70
      End
      Begin TextField Txt_Lic003
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   429
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   70
      End
      Begin TextField Txt_Lic004
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   508
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   70
      End
      Begin TextField Txt_Lic005
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   588
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   70
      End
      Begin TextField Txt_Lic006
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   667
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   70
      End
      Begin TextField Txt_Lic007
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   747
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "2"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   70
      End
      Begin TextField Txt_Clef
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   215
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   50
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   114
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   602
      End
      Begin Label Lab_Clef
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
         InitialParent   =   "Grb_Licence"
         Italic          =   False
         Left            =   28
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   114
         Transparent     =   False
         Underline       =   False
         Value           =   "Clef de protection du logiciel"
         Visible         =   True
         Width           =   175
      End
   End
   Begin GroupBox Grb_Copyright
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Conditions d'utilisations de l'auteur de ce logiciel : Fabrice GARCIA"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   309
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   14
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   193
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   829
      Begin TextArea TextArea1
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   True
         AllowStyledText =   True
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
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   206
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "Grb_Copyright"
         Italic          =   False
         Left            =   28
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   235
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   "LICENCE ET CONDITIONS UTILISATION DE CE LOGICIEL.\r\n\r\nA-DROITS DE L'UTILISATEUR :\r\n1-Le paiement de l'utilisateur porte uniquement sur l'acquisition d'une licence d'utilisation du logiciel.\r\n2-Le numéro de licence ainsi que la clef de protection du logiciel  accordent uniquement un droit d'utilisation de ce logiciel ( et jamais  la propriété ) .\r\n3-Ce droit d'utilisation est accordé pour une période indéfinie sous réserve que l'on ne viole pas les interdictions qui  sont faites dans la partie ""B""  . \r\n4-Ce droit d'utilisation est restreint à un seul utilisateur sur un unique poste pour chaque différents numéro de licence  fournis. \r\n5-Ce droit d'utilisation est restreint à une seule famille de système d'exploitation par licence : par exemple si vous utilisez ce logiciel sous Mac OS, Windows et Linux vous devrez payer trois licence.\r\n6-Ce droit d'utilisation n'est valable que pour le seul numéro de version du logiciel pour lequel la licence à été acquise. \r\n7-Ce droit d'utilisation n'est accordé qu'à partir du paiement complet du logiciel et de la réception des informations de licences.\r\n8-Ce droit d'utilisation prendra fin instantanément en cas de violation d'une ou plusieurs des interdictions énumérées dans la partie ""B"". Dans ce cas aucune compensation financière ne sera versée à l'utilisateur. Ce dernier ne pourra pas prétendre à être remboursé du prix d'achat du logiciel.\r\n9-Vous avez le droit d'utiliser ce logiciel gratuitement en version de démonstration pendant un mois maximum dans le seul but de l'évaluer.\r\n\r\n\r\nB-INTERDICTIONS FAITE A L'UTILISATEUR :\r\n1-Il est interdit d'utiliser ce logiciel ou de le diffuser sans le consentement directement écrit de son auteur. \r\n2-Il est interdit de diffuser, céder, prêter, transmettre, vendre le numéro de licence ou la clef. Ces informations doivent rester strictement confidentielles sous peine de voir la licence d'utilisation révoquée.\r\n3-Il est interdit d'utiliser une autre clef de protection ou un autre numéro de licence que ceux qui vous ont été fournis directement par écrit de l'auteur . \r\n4-Il est interdit de contourner, de casser, de dérégler, de tromper la protection de ce logiciel .\r\n5-Il est interdit de modifier ce logiciel ou sa licence ou ses conditions d'utilisations.\r\n6-Il est interdit d'utiliser ce logiciel dans les centrales nucléaires, les hôpitaux, les cliniques, les armées, les services de sécurités civiles, les compagnies d'électricité, les compagnies de gaz, les compagnies pétrolières.\r\n7-Il est interdit d’utiliser ce logiciel si votre chiffre d’affaire moyen hors taxes annuel calculé sur les trois dernières années dépasse les dix millions d’euros.\r\n8-Il est interdit d’utiliser ce logiciel si votre bénéfice moyen annuel calculé sur les trois dernières années dépasse trois millions d’euros.\r\n9-Il est interdit d'utiliser ce logiciel pour commettre des actes répréhensibles par les lois françaises.\r\n10-Il est interdit de changer le nom du logiciel ou d'en dissimuler l'identité.\r\n11-Il est interdit de décompiler le logiciel.\r\n12-Il est interdit de diffuser sur Internet tout lien, astuces, données, programmes, fichiers, informations, clef de licence, clef de protection aillant pour effet de favoriser le piratage de ce logiciel.\r\n13-Il est interdit d'utiliser le logiciel en version de démonstration dans le cadre d'une activité commerciale, seule l'évaluation du logiciel est permise.\r\n\r\nC-LIMITATIONS DE RESPONSABILITE DE L'AUTEUR :\r\n1-Sauf mentions écrites et contraires de l'auteur qui vous auraient été personnellement et nominativement adressées : l'utilisation de ce logiciel ne donne droit à aucun support technique ou autre. \r\n2-L'auteur dégage toute responsabilité en cas de perte de données ou de dommages quelconques résultant de l'installation ou de l'utilisation de ce logiciel.\r\n3-Dans le cas où la responsabilité de l'auteur se verrait reconnus par les tribunaux,  les compensations financières ne pourraient jamais dépasser le prix du logiciel.\r\n4-La responsabilité de l'auteur ne pourra jamais être engagé si le logiciel est installé ou utilisé sur un système d'exploitation autre que celui sur lequel il est destiné à fonctionner.\r\n5-La responsabilité de l'auteur ne pourra jamais être engagé si le logiciel est installé ou utilisé sur un système d'exploitation qui n'existait pas au moment de la conception du logiciel.\r\n6-Lorsque vous utilisez le logiciel en version de démonstration, la responsabilité de l'auteur ne pourra jamais être engagé.\r\n7-Lorsque vous utilisez le logiciel en version de démonstration absolument aucune garantie ne vous est donnée par l'auteur.\r\n8-Lorsque vous utilisez le logiciel en version de démonstration vous l'utilisez ""tel quel"", c'est a dire avec ses fonctionnalités et ses bugs sans absolument aucune garantie ni aucune aide de l'auteur. \r\n9-La responsabilité de l'auteur ne pourra jamais être engagé sans le paiement complet de la licence du logiciel.\r\n10-La responsabilité de l'auteur ne pourra jamais être engagé pour les faits antérieurs au paiement complet du logiciel.\r\n11-Toutes versions du logiciel qui seront marqués comme étant des versions alpha et beta sont des versions de test et devrons obligatoirement être exécutés dans des environnements de test.\r\n12- Les versions alpha et beta sont susceptibles de contenir de très nombreuses erreurs et peuvent rendre votre système instable. Ce sont des versions d'évaluation gratuites mais dont l'utilisation est permise pendant un mois maximum. Aucune garantie n'est donné sur ces versions. Il vous est très fortement recommandé d'évaluer ces versions sur des jeux d'essais et non pas sur des données de production. L'exécution de ces versions alpha et beta pourraient corrompre les données de vos versions stables. Soyez prudent !\r\n\r\n\r\nD-OBLIGATIONS DE L'UTILISATEUR :\r\n1-L'utilisateur reconnaît avoir procédé à toute les sauvegardes de ses données informatiques préalablement à l'acquisition et à l'installation et à l'utilisation de ce logiciel.\r\n2-L'utilisateur reconnaît avoir ses sauvegardes informatiques à jour.\r\n3-L'utilisateur a pris toutes les dispositions nécessaires pour assurer la poursuite immédiate et totale de ses activités informatiques (ou autres) quelques soient les disfonctionnements que pourraient engendrer l'utilisation ou l'installation de ce logiciel.\r\n4-L'utilisateur conservera obligatoirement la facture d'achat de ce logiciel, ainsi que toutes correspondances avec l'auteur du logiciel de façon à prouver son droit d'utilisation.\r\n5-L'utilisateur conservera les numéros de licences, clef de protection du logiciel, manuels d'utilisation, notices diverses ainsi que le logiciel lui même ( Cette mesure vise à responsabiliser l'utilisateur et à le rendre indépendant du devenir du logiciel et de son auteur.).\r\n\r\n\r\nE-PROPRIETE INTELECTUELLE.\r\n1-Ce programme appartient uniquement à son auteur : Fabrice GARCIA .\r\n2-Le code source de ce programme appartient uniquement à son auteur : Fabrice GARCIA.\r\n3-Toute reproduction ou utilisation du logiciel sans le consentement écrit de son auteur (Fabrice GARCIA) entraînera une plainte auprès des tribunaux.\r\n4-Toute violation des interdictions faites à l'utilisateur sera susceptible d'entraîner une plainte de l'auteur auprès des tribunaux.\r\n\r\nF-JURIDICTIONS COMPETENTE.\r\n1- La responsabilité de l’auteur sera jugée au regard des lois françaises et elles seules.\r\n2- Seul les tribunaux français pourront juger des affaires concernant ce logiciel.\r\n3- Les tribunaux compétents seront ceux de la région Corse (Région française ) .\r\n4-Tout les appels en justice devront se faire devant les tribunaux situés en Corse.\r\n5-Toutes les plaintes devront être portées devant et traités par les tribunaux  situés dans la région Corse.\r\n\r\nG-CONFIGURATION MATERIELLE, LOGICIEL  ET SYSTEME MINIMUM.\r\n\r\n1-Version Macintosh Intel :\r\n-Un Macintosh avec un processeur intel (Core Duo, Core 2 Duo, Core i5, Core i7 ou plus puissant), fonctionnant à une vitesse de 1,6 Ghz minimum.\r\n-1,5 Giga octet de RAM.\r\n-Mac OS X 10.5.8 minimum.\r\n-2 Go d'espace libre sur le disque dur.\r\n-Un écran pouvant afficher une résolution minimum de 1024 pixels de hauteur sur 768 pixels de largeur.\r\n-Une imprimante reconnus par le système d'exploitation.\r\n-Vous aurez auparavant installé et évalué le logiciel en version de démonstration pour vous assurer de sa compatibilité avec votre configuration.\r\n\r\n\r\n2-Version Macintosh Power PC\r\n-Un macintosh avec un processeur PowerPC G5 allant à une vitesse de 1,5 Ghz minimum.\r\n-1,5 Giga octet de RAM.\r\n-Mac  OS X 10.5.8 minimum.\r\n-2Go d'espace libre sur le disque dur.\r\n-Un écran pouvant afficher une résolution minimum de 1024 pixels de hauteur sur 768 pixels de largeur.\r\n-Une imprimante reconnus par le système d'exploitation.\r\n-Vous aurez auparavant installé et évalué le logiciel en version de démonstration pour vous assurer de sa compatibilité avec votre configuration.\r\n\r\n3-Version Windows\r\n-Un PC de bureau ou un ordinateur portable à base se processeur Intel ou AMD dual core (Athlon II X2, Phenom X2, Core Duo, Core 2 Duo, Core i5, Core i7 ou plus puissant), fonctionnant à une vitesse de 1,6 Ghz Minimum.\r\n-Un système d'exploitation gérant les applications 32 bits.\r\n-1024 Mo de RAM minimum pour windows XP, 2048 Mo de RAM minimum pour Windows Vista ou supérieur.\r\n-Windows XP Service Pack 3 minimum ou Windows Vista Service Pack 1 minimum ou Windows Seven.\r\n-2 Go d'espace libre sur le disque dur.\r\n-Un écran pouvant afficher une résolution minimum de 1024 pixels de hauteur sur 768 pixels de largeur.\r\n-Une imprimante reconnus par le système d'exploitation.\r\n-Vous aurez auparavant installé et évalué le logiciel en version de démonstration pour vous assurer de sa compatibilité avec votre configuration.\r\n\r\n4-Version Linux\r\n-Un PC de bureau ou un ordinateur portable à base se processeur Intel ou AMD dual core (Athlon II X2, Phenom X2, Core Duo, Core 2 Duo, Core i5, Core i7 ou plus puissant), fonctionnant à une vitesse de 1,6 Ghz Minimum\r\n-1024 Mo de RAM\r\n-2 Go d'espace libre sur le disque dur.\r\n-Un écran pouvant afficher une résolution minimum de 1024 pixels de  hauteur sur 768 pixels de largeur.\r\n-Une imprimante reconnus par le systeme d'exploitation.\r\n-Un système d'exploitation gérant les applications 32 bits.\r\n-Système d'exploitation Linux obligatoirement choisie parmi :\r\n * Linux ubuntu version supérieur ou égale à 9.\r\n * Redhat Entreprise linux version supérieur ou égale à 5.\r\n * Suse Linux Entreprise édition version supérieur ou égale a 10.\r\n-Compte tenus des spécificités de Linux vous aurez auparavant installé, testé et évalué le logiciel en version de démonstration pour vous assurer de sa compatibilité avec votre configuration.\r\n\r\n\r\n\r\n\r\n\r\n\r\n"
         Visible         =   True
         Width           =   799
      End
      Begin CheckBox Chk_CondUtilise
         AllowAutoDeactivate=   True
         Bold            =   True
         Caption         =   "Je certifie sur l'honneur avoir lu et accepté toutes les conditions d'utilisation de ce logiciel."
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Grb_Copyright"
         Italic          =   False
         Left            =   32
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   "0"
         Width           =   791
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub EnableMenuItems()
		  Ite_Exit.Enable
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_Exit() As Boolean Handles Ite_Exit.Action
			me.Close
			Return True
			
		End Function
	#tag EndMenuHandler


#tag EndWindowCode

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
#tag EndViewBehavior
