#tag Window
Begin Window Win_ClientFich
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   700
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   600
   MinimizeButton  =   True
   MinWidth        =   980
   Placement       =   0
   Resizeable      =   True
   Title           =   " FICHE CLIENT"
   Visible         =   True
   Width           =   1020
   Begin GroupBox Grb_Identification
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Identification"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   87
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
      Width           =   596
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
      Begin Label Lab_Type
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
         Left            =   313
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
         Top             =   36
         Transparent     =   False
         Underline       =   False
         Value           =   "Type"
         Visible         =   False
         Width           =   69
      End
      Begin PopupMenu Pop_Type
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
         Left            =   389
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
         Top             =   31
         Transparent     =   True
         Underline       =   False
         Visible         =   False
         Width           =   202
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
         TabIndex        =   3
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
         Width           =   499
      End
   End
   Begin GroupBox Grb_Adresse
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Adresse"
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
      Top             =   92
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   596
      Begin Label Lab_Adresse
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   24
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
         Top             =   118
         Transparent     =   False
         Underline       =   False
         Value           =   "Adresse"
         Visible         =   True
         Width           =   62
      End
      Begin Label Lab_CodePostal
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   24
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
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   "C. Postal"
         Visible         =   True
         Width           =   59
      End
      Begin Label Lab_Ville
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   24
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
         Top             =   195
         Transparent     =   False
         Underline       =   False
         Value           =   "Ville"
         Visible         =   True
         Width           =   59
      End
      Begin TextField Txt_Adresse1
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   95
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   116
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   496
      End
      Begin TextField Txt_Adresse2
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   95
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   141
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   496
      End
      Begin TextField Txt_CodePostal
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   95
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   5
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   167
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   76
      End
      Begin TextField Txt_Ville
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   95
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   30
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   193
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   200
      End
      Begin TextField Txt_Pays
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   389
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   30
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   193
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   202
      End
      Begin Label Lab_Pays
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   315
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
         Top             =   195
         Transparent     =   False
         Underline       =   False
         Value           =   "Pays"
         Visible         =   True
         Width           =   47
      End
      Begin TextField Txt_Region
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   389
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MaximumCharactersAllowed=   30
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   167
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   202
      End
      Begin Label Lab_Region
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
         InitialParent   =   "Grb_Adresse"
         Italic          =   False
         Left            =   315
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   "0"
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   169
         Transparent     =   False
         Underline       =   False
         Value           =   "Region"
         Visible         =   True
         Width           =   47
      End
   End
   Begin GroupBox Grb_Internet
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Internet"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   89
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   232
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   596
      Begin TextField Txt_SiteInternet
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
         InitialParent   =   "Grb_Internet"
         Italic          =   False
         Left            =   132
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   150
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   291
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   420
      End
      Begin PushButton BTN_Web
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Go"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Internet"
         Italic          =   False
         Left            =   557
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   290
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   40
      End
      Begin Label Lab_SiteInternet
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
         InitialParent   =   "Grb_Internet"
         Italic          =   False
         Left            =   27
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
         Top             =   292
         Transparent     =   False
         Underline       =   False
         Value           =   "Site Internet"
         Visible         =   True
         Width           =   93
      End
      Begin PushButton BTN_EMAIL
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Go"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Internet"
         Italic          =   False
         Left            =   404
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   259
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   40
      End
      Begin TextField Txt_EMail
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
         InitialParent   =   "Grb_Internet"
         Italic          =   False
         Left            =   132
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
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
         Top             =   259
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   257
      End
      Begin Label Lab_EMail
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
         InitialParent   =   "Grb_Internet"
         Italic          =   False
         Left            =   27
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
         Top             =   261
         Transparent     =   False
         Underline       =   False
         Value           =   "E Mail"
         Visible         =   True
         Width           =   86
      End
   End
   Begin GroupBox Grb_Commentaire
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Commentaires"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   317
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   617
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   4
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   383
      Begin TextArea TAr_Commentaires
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
         Height          =   229
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   623
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   512
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "0"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   80
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   372
      End
      Begin PushButton BTN_BoldCom
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "B"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   35
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   623
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   35
      End
      Begin PushButton BTN_ItalCom
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "I"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   35
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   True
         Left            =   664
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   35
      End
      Begin PushButton BTN_UnderLineCom
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "S"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   12.0
         FontUnit        =   0
         Height          =   35
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   705
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   True
         Visible         =   True
         Width           =   35
      End
      Begin BevelButton Blv_BlueColorCom
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c0000FF00
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
         Height          =   35
         Icon            =   1841012735
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   788
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   35
      End
      Begin BevelButton Blv_GreyColorCom
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c0000FF00
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
         Height          =   35
         Icon            =   632973311
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   829
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   35
      End
      Begin BevelButton Blv_GreenColorCom
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c0000FF00
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
         Height          =   35
         Icon            =   277018623
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   871
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   7
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   35
      End
      Begin BevelButton Blv_RedColorCom
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c0000FF00
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
         Height          =   35
         Icon            =   323313663
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   912
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   35
      End
      Begin BevelButton Blv_YellowColorCom
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c0000FF00
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
         Height          =   35
         Icon            =   842952703
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   954
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   9
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   35
      End
      Begin BevelButton Blv_BlackColorCom
         AllowAutoDeactivate=   True
         AllowFocus      =   True
         BackgroundColor =   &c0000FF00
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
         Height          =   35
         Icon            =   1964845055
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "Grb_Commentaire"
         Italic          =   False
         Left            =   747
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   10
         TabPanelIndex   =   0
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   35
      End
   End
   Begin GroupBox Grb_TVA
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Numero de TVA Intracommunautaire"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   89
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   617
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   321
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   383
      Begin TextField Txt_NumTva
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
         InitialParent   =   "Grb_TVA"
         Italic          =   False
         Left            =   668
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
         Top             =   359
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   275
      End
      Begin Label Lab_NumTVA
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
         InitialParent   =   "Grb_TVA"
         Italic          =   False
         Left            =   625
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
         Top             =   359
         Transparent     =   False
         Underline       =   False
         Value           =   "N°"
         Visible         =   True
         Width           =   31
      End
   End
   Begin GroupBox Grb_Facturation
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Facturation et reglement"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   89
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
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   321
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   596
      Begin TextField Txt_Remise
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
         InitialParent   =   "Grb_Facturation"
         Italic          =   False
         Left            =   293
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   10
         Password        =   False
         ReadOnly        =   False
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         TextAlignment   =   "3"
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   348
         Transparent     =   True
         Underline       =   False
         ValidationMask  =   ""
         Value           =   ""
         Visible         =   True
         Width           =   91
      End
      Begin Label Lab_ModeRegle
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
         InitialParent   =   "Grb_Facturation"
         Italic          =   False
         Left            =   27
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
         Top             =   381
         Transparent     =   False
         Underline       =   False
         Value           =   "Mode de reglement par defaut"
         Visible         =   False
         Width           =   207
      End
      Begin Label Lab_Remise
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
         InitialParent   =   "Grb_Facturation"
         Italic          =   False
         Left            =   27
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
         Top             =   350
         Transparent     =   False
         Underline       =   False
         Value           =   "Remise globale (0 à 100)"
         Visible         =   True
         Width           =   254
      End
      Begin PopupMenu Pop_ModeRegle
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
         InitialParent   =   "Grb_Facturation"
         InitialValue    =   ""
         Italic          =   False
         Left            =   293
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         SelectedRowIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   381
         Transparent     =   True
         Underline       =   False
         Visible         =   False
         Width           =   266
      End
      Begin PushButton BTN_ModeReglList
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "L"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   25
         Index           =   -2147483648
         InitialParent   =   "Grb_Facturation"
         Italic          =   False
         Left            =   572
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   "0"
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   380
         Transparent     =   True
         Underline       =   False
         Visible         =   False
         Width           =   25
      End
   End
   Begin GroupBox Grb_Contact
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Contacts"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   222
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   11
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   "0"
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   417
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   994
      Begin PagePanel Pag_Contact
         AllowAutoDeactivate=   True
         Enabled         =   True
         Height          =   178
         Index           =   -2147483648
         InitialParent   =   "Grb_Contact"
         Left            =   21
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         PanelCount      =   2
         Panels          =   ""
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   "True"
         Tooltip         =   ""
         Top             =   449
         Transparent     =   True
         Value           =   0
         Visible         =   True
         Width           =   968
         Begin Listbox Lst_Contact
            AllowAutoDeactivate=   True
            AllowAutoHideScrollbars=   True
            AllowExpandableRows=   False
            AllowFocusRing  =   True
            AllowResizableColumns=   True
            AllowRowDragging=   False
            AllowRowReordering=   False
            Bold            =   False
            ColumnCount     =   7
            ColumnWidths    =   "0,200,100,200,100,100,*"
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
            Height          =   156
            Index           =   -2147483648
            InitialParent   =   "Pag_Contact"
            InitialValue    =   "Code	Nom	Fonction	EMail	Tel_Bureau	Tel_Portable	Fax"
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
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   459
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   900
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin Label Lab_ContactNom
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   35
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   467
            Transparent     =   False
            Underline       =   False
            Value           =   "Nom "
            Visible         =   True
            Width           =   62
         End
         Begin TextField Txt_ContactNom
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   106
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
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   465
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   374
         End
         Begin Label Lab_ContactFonction
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   35
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   2
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   497
            Transparent     =   False
            Underline       =   False
            Value           =   "Fonction"
            Visible         =   True
            Width           =   51
         End
         Begin TextField Txt_ContactFonction
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   106
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MaximumCharactersAllowed=   30
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   3
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   495
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   217
         End
         Begin TextField Txt_ContactEMail
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   106
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MaximumCharactersAllowed=   50
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   4
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   525
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   374
         End
         Begin Label Lab_ContactEMail
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   35
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   5
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   527
            Transparent     =   False
            Underline       =   False
            Value           =   "EMail"
            Visible         =   True
            Width           =   59
         End
         Begin TextField Txt_ContactTelBureau
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   675
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MaximumCharactersAllowed=   15
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   6
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   465
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   120
         End
         Begin Label Lab_ContactBureau
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   7
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   467
            Transparent     =   False
            Underline       =   False
            Value           =   "Tel. Bureau"
            Visible         =   True
            Width           =   153
         End
         Begin TextField Txt_ContactTelPortable
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   675
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MaximumCharactersAllowed=   15
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   8
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   495
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   120
         End
         Begin Label Lab_ContactTelPort
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   9
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   497
            Transparent     =   False
            Underline       =   False
            Value           =   "Tel. Portable"
            Visible         =   True
            Width           =   125
         End
         Begin TextField Txt_ContactFax
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   675
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MaximumCharactersAllowed=   15
            Password        =   False
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   10
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   525
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   120
         End
         Begin Label Lab_ContactFax
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   503
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   False
            LockTop         =   False
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   11
            TabPanelIndex   =   2
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   527
            Transparent     =   False
            Underline       =   False
            Value           =   "Fax"
            Visible         =   True
            Width           =   125
         End
         Begin BevelButton LBTN_AddContact
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   938
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Ajoute un nouveau contact"
            Top             =   459
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin BevelButton LBTN_Modifcontact
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
            Icon            =   2065553407
            IconAlignment   =   "1"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   938
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Modifie le contacte sélectionné dans la liste"
            Top             =   517
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin BevelButton LBTN_DelContact
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
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   938
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Supprime le contact sélectionné dans la liste"
            Top             =   575
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin BevelButton LBTN_ContactOK
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
            Icon            =   1167030271
            IconAlignment   =   "1"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   938
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   14
            TabPanelIndex   =   2
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Ajoute un nouveau contact"
            Top             =   465
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin BevelButton LBTN_ContactCancel
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
            Icon            =   209494015
            IconAlignment   =   "1"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "Pag_Contact"
            Italic          =   False
            Left            =   938
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   15
            TabPanelIndex   =   2
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Modifie le contacte sélectionné dans la liste"
            Top             =   523
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
      End
   End
   Begin Label Lab_Remise1
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   398
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   "0"
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextAlignment   =   "0"
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   349
      Transparent     =   False
      Underline       =   False
      Value           =   "%"
      Visible         =   True
      Width           =   25
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
      Left            =   938
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Quitter la fenetre"
      Top             =   649
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
      Left            =   887
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Valider"
      Top             =   649
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
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Valider"
      Top             =   649
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
		  
		  if AccesPerm_Data.Blocage="O" then
		    LBTN_BLOCAGE.Enabled=true
		  else
		    LBTN_BLOCAGE.Enabled=False
		  end if
		  
		  
		  if AccessMode_Data="ADD" then
		    
		    Lab_Code.Visible=False
		    Txt_Code.Visible=False
		    
		    ClientActuel=new Class_Client
		    ClientActuel.DBaseID=App.MainDB
		    
		    Contact_Tab = new Class_TabContact
		    
		    return true
		    
		  end if
		  
		  if AccessMode_Data="LIRE" then
		    
		    Enable_Formulaire(False)
		    LBTN_OK.Visible=false
		    
		    
		    
		  end if
		  
		  if AccessMode_Data="MODIF" then
		    
		    Txt_Code.ReadOnly=True
		    
		  end if
		  
		  
		  
		  ClientActuel = new Class_Client
		  ClientActuel.DBaseID=App.MainDB
		  ClientActuel.DBaseSource="SELECT * FROM CLIENT WHERE NUMERO="+str(numclient)
		  
		  if not ClientActuel.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  test=ClientActuel.Charge_Premier
		  
		  Contact_Tab = new Class_TabContact
		  Contact_Tab.Client=ClientActuel.Numero
		  Contact_Tab.Base_Charge
		  
		  
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
		Function Contact_LstNumMax() As Int64
		  Dim NumMax as Int64 = 0
		  
		  if Lst_Contact.ListCount=0 then
		    return 0
		  end if
		  
		  for i as integer=0 to Lst_Contact.ListCount-1
		    
		    if Lst_Contact.Cell(i,0).CDbl > NumMax then
		      NumMax = Lst_Contact.Cell(i,0).CDbl
		    end if
		    
		  next i
		  
		  return NumMax
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Contact_TypeSaisie(OpeContact as String)
		  if OpeContact="ADD" then
		    Txt_ContactEMail.Text=""
		    Txt_ContactFax.Text=""
		    Txt_ContactFonction.Text=""
		    Txt_ContactNom.Text=""
		    Txt_ContactTelBureau.Text=""
		    Txt_ContactTelPortable.Text=""
		    
		  end if
		  
		  if OpeContact="MOD" then
		    if Lst_Contact.SelCount >0 then
		      Txt_ContactNom.Text          = Lst_Contact.Cell(Lst_Contact.ListIndex,1)
		      Txt_ContactFonction.Text     = Lst_Contact.Cell(Lst_Contact.ListIndex,2)
		      Txt_ContactEMail.Text        = Lst_Contact.Cell(Lst_Contact.ListIndex,3)
		      Txt_ContactTelBureau.Text    = Lst_Contact.Cell(Lst_Contact.ListIndex,4)
		      Txt_ContactTelPortable.Text  = Lst_Contact.Cell(Lst_Contact.ListIndex,5)
		      Txt_ContactFax.Text          = Lst_Contact.Cell(Lst_Contact.ListIndex,6)
		      
		    else
		      MsgBox "Selectionnez un contact dans la liste pour le modifier."
		      exit sub
		    end if
		  end if
		  
		  VarRes_ContactEMail          =    Txt_ContactEMail.Text
		  VarRes_ContactFax            =    Txt_ContactFax.Text
		  VarRes_ContactFonction       =    Txt_ContactFonction.Text
		  VarRes_ContactNom            =    Txt_ContactNom.Text
		  VarRes_ContactTelBureau      =    Txt_ContactTelBureau.Text
		  VarRes_ContactTelPortable    =    Txt_ContactTelPortable.Text
		  
		  Contact_TypeAcces = OpeContact
		  Pag_Contact.Value = 1
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function Detect_Modif() As Boolean
		  
		  
		  if  not(VarRes_Adresse1     = Txt_Adresse1.Text) then return True
		  if  not(VarRes_Adresse2     = Txt_Adresse2.Text) then return True
		  if  not(VarRes_Code         = Txt_Code.Text) then return True
		  if  not(VarRes_CodePostal   = Txt_CodePostal.Text) then return True
		  if  not(VarRes_EMail        = Txt_EMail.Text) then return True
		  if  not(VarRes_Nom          = Txt_Nom.Text) then return True
		  if  not(VarRes_NumTVA       = Txt_NumTVA.Text) then return True
		  if  not(VarRes_Pays         = Txt_Pays.Text) then return True
		  if  not(VarRes_Region       = Txt_Region.Text) then return True
		  if  not(VarRes_Remise       = Txt_Remise.Text) then return True
		  if  not(VarRes_SiteInternet = Txt_SiteInternet.Text) then return True
		  if  not(VarRes_Ville        = Txt_Ville.Text) then return True
		  
		  if not(AccessMode_Data="ADD") then
		    if  not(VarRes_Commentaires = TAr_Commentaires.StyledText.RTFData ) then return True
		  else
		    if trim(TAr_Commentaires.Text).Len>0 then return true
		  end if
		  
		  if Pag_Contact.Value=1 then
		    If not(  _
		      VarRes_ContactEMail          =    Txt_ContactEMail.Text       and _
		      VarRes_ContactFax            =    Txt_ContactFax.Text         and _
		      VarRes_ContactFonction       =    Txt_ContactFonction.Text    and _
		      VarRes_ContactNom            =    Txt_ContactNom.Text         and _
		      VarRes_ContactTelBureau      =    Txt_ContactTelBureau.Text   and _
		      VarRes_ContactTelPortable    =    Txt_ContactTelPortable.Text     _
		      ) then
		      return true
		    end if
		  end if
		  
		  If AccessMode_Data="MODIF" and Contact_Tab.Tab_EstModif then return true
		  
		  return false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  ClientActuel.Numero           = Txt_Code.Text.CDbl
		  ClientActuel.Nom              = Txt_Nom.Text
		  ClientActuel.CodePostal       = Txt_CodePostal.Text
		  ClientActuel.Pays             = Txt_Pays.Text
		  ClientActuel.Region           = Txt_Region.Text
		  ClientActuel.RemiseGlobale    = Txt_Remise.Text.CDbl
		  ClientActuel.Email            = Txt_EMail.Text
		  ClientActuel.Ville            = Txt_Ville.Text
		  ClientActuel.TVAIntraCom      = Txt_NumTva.Text
		  ClientActuel.SiteInternet     = Txt_SiteInternet.Text
		  ClientActuel.Adresse1         = Txt_Adresse1.Text
		  ClientActuel.Adresse2         = Txt_Adresse2.Text
		  
		  ClientActuel.Commentaires    = TAr_Commentaires.StyledText.RTFData
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enable_Formulaire(VraiFaux as Boolean)
		  Grb_Adresse.Enabled=VraiFaux
		  Grb_Commentaire.Enabled=VraiFaux
		  Grb_Contact.Enabled=VraiFaux
		  Grb_Facturation.Enabled=VraiFaux
		  Grb_Identification.Enabled=VraiFaux
		  Grb_Internet.Enabled=VraiFaux
		  Grb_TVA.Enabled=VraiFaux
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  Txt_Code.Text         = str(ClientActuel.Numero)
		  Txt_Nom.Text          = ClientActuel.Nom
		  Txt_CodePostal.Text   = ClientActuel.CodePostal
		  Txt_Pays.Text         = ClientActuel.Pays
		  Txt_Region.Text       = ClientActuel.Region
		  Txt_Remise.Text       = str( ClientActuel.RemiseGlobale)
		  Txt_EMail.Text        = ClientActuel.Email
		  Txt_Ville.Text        = ClientActuel.Ville
		  Txt_NumTva.Text       = ClientActuel.TVAIntraCom
		  Txt_SiteInternet.Text = ClientActuel.SiteInternet
		  Txt_Adresse1.Text     = ClientActuel.Adresse1
		  Txt_Adresse2.Text     = ClientActuel.Adresse2
		  
		  TAr_Commentaires.StyledText.RTFData = ClientActuel.Commentaires
		  
		  if ClientActuel.BLOCAGE="O" then
		    LBTN_BLOCAGE.Icon=lock_32X
		    Enable_Formulaire(False)
		  else
		    LBTN_BLOCAGE.Icon=unlock_32X
		    Enable_Formulaire(True)
		  end if
		  
		  if AccesPerm_Data.ModeAcces="W" and AccesPerm_Data.Blocage="O" then
		    LBTN_BLOCAGE.Enabled=true
		  else
		    LBTN_BLOCAGE.Enabled=False
		  end if
		  
		  
		  
		  ObjetVersEcranContact
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranContact()
		  //Remplissage du tableau
		  Lst_Contact.DeleteAllRows
		  
		  Contact_Tab.TempContact.DBaseSource="SELECT * FROM "+Contact_Tab.TempContact.TableContact
		  
		  if not Contact_Tab.TempContact.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if Contact_Tab.TempContact.Charge_Premier then
		    
		    do
		      
		      Lst_Contact.AddRow str(Contact_Tab.TempContact.NumContact)
		      Lst_Contact.Cell(Lst_Contact.LastIndex,1) =  str(Contact_Tab.TempContact.Nom)
		      Lst_Contact.Cell(Lst_Contact.LastIndex,2) =  str(Contact_Tab.TempContact.Fonction    )
		      Lst_Contact.Cell(Lst_Contact.LastIndex,3) =  str(Contact_Tab.TempContact.Email       )
		      Lst_Contact.Cell(Lst_Contact.LastIndex,4) =  str(Contact_Tab.TempContact.TelBureau   )
		      Lst_Contact.Cell(Lst_Contact.LastIndex,5) =  str(Contact_Tab.TempContact.TelPortable )
		      Lst_Contact.Cell(Lst_Contact.LastIndex,6) =  str(Contact_Tab.TempContact.Fax         )
		      
		      if not Contact_Tab.TempContact.Charge_Suivant then
		        exit do
		      end if
		      
		      
		    Loop
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Synchro_VarRes()
		  //Memorisation des variables de reserve
		  VarRes_Code         = str(ClientActuel.Numero)
		  VarRes_Nom          = ClientActuel.Nom
		  VarRes_CodePostal   = ClientActuel.CodePostal
		  VarRes_Pays         = ClientActuel.Pays
		  VarRes_Region       = ClientActuel.Region
		  VarRes_Remise       = str( ClientActuel.RemiseGlobale)
		  VarRes_EMail        = ClientActuel.Email
		  VarRes_Ville        = ClientActuel.Ville
		  VarRes_NumTva       = ClientActuel.TVAIntraCom
		  VarRes_SiteInternet = ClientActuel.SiteInternet
		  VarRes_Adresse1     = ClientActuel.Adresse1
		  VarRes_Adresse2     = ClientActuel.Adresse2
		  
		  VarRes_Commentaires =  ClientActuel.Commentaires
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
		ClientActuel As Class_Client
	#tag EndProperty

	#tag Property, Flags = &h0
		ContactActuel As Class_Contact
	#tag EndProperty

	#tag Property, Flags = &h0
		Contact_Tab As Class_TabContact
	#tag EndProperty

	#tag Property, Flags = &h0
		Contact_TypeAcces As String = "MODIF"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ForceExit As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Adresse1 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Adresse2 As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Code As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_CodePostal As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Commentaires As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_ContactEMail As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_ContactFax As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_ContactFonction As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_ContactNom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_ContactTelBureau As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_ContactTelPortable As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_EMail As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NumTVA As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Pays As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Region As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Remise As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_SiteInternet As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Ville As String
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_ClientFich", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events BTN_Web
	#tag Event
		Sub Action()
		  ShowURL Txt_SiteInternet.Text
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_EMAIL
	#tag Event
		Sub Action()
		  ShowURL "mailto:"+Txt_EMail.Text
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_BoldCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.ToggleSelectionBold
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_ItalCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.ToggleSelectionItalic
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_UnderLineCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.ToggleSelectionUnderline
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Blv_BlueColorCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.SelTextColor=&c0000FF
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Blv_GreyColorCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.SelTextColor=&cC0C0C0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Blv_GreenColorCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.SelTextColor=&c00E600
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Blv_RedColorCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.SelTextColor=&cFF0000
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Blv_YellowColorCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.SelTextColor=&cFBFB00
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Blv_BlackColorCom
	#tag Event
		Sub Action()
		  TAr_Commentaires.SelTextColor=&c000000
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Txt_Remise
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  return App.Valide_TxtNumKeydown(me,Key,false)
		End Function
	#tag EndEvent
	#tag Event
		Sub LostFocus()
		  // byref ChampCible as TextField, EstEntier as Boolean = false, Precision as integer = 0, ValMin as Double = - 9999999999999, ValMax as Double = 9999999999999, ValDefaut as double = 0
		  if App.Valide_TxtNumLostFocus(me,false,2,0,100,0) then
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_Contact
	#tag Event
		Sub DoubleClick()
		  Contact_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    Contact_TypeSaisie("MOD")
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_ContactEMail
	#tag Event
		Sub LostFocus()
		  Dim DetectErreur as Boolean =false
		  
		  if   trim(Txt_ContactEMail.Text).Len > 0   then
		    if    InStr(Txt_ContactEMail.Text,"@")=0  then
		      DetectErreur= true
		    end if
		    if InStr(Txt_ContactEMail.Text,".")=0  then
		      DetectErreur= true
		    end if
		    if  left(Txt_ContactEMail.Text,1)="." or left(Txt_ContactEMail.Text,1)="@"  then
		      DetectErreur= true
		    end if
		    if right(Txt_ContactEMail.Text,1)="." or right(Txt_ContactEMail.Text,1)="@" then
		      DetectErreur= true
		    end if
		    if DetectErreur then MsgBox "Votre adresse email ne parrait pas valide"
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddContact
	#tag Event
		Sub Action()
		  Contact_TypeSaisie("ADD")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_Modifcontact
	#tag Event
		Sub Action()
		  Contact_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelContact
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  if Lst_Contact.SelCount >0 then
		    RepUser=MsgBox("Supprimer ce contact de la liste ?"+EndOfLine+"Ces modification ne seront enregistré qu'à la validation de la fiche client",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    Contact_Tab.Tab_Supprime(Lst_Contact.Cell(Lst_Contact.ListIndex,0).CDbl)
		    Lst_Contact.RemoveRow(Lst_Contact.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ContactOK
	#tag Event
		Sub Action()
		  
		  if trim(Txt_ContactNom.Text).Len=0 then
		    MsgBox "Le nom du contact doit obligatoirement être renseigné"
		    exit sub
		  end if
		  
		  if  trim(Txt_ContactEMail.Text).Len=0 and  _
		    trim(Txt_ContactTelBureau.Text).Len=0 and _
		    trim(Txt_ContactTelPortable.Text).Len=0 and _
		    trim(Txt_ContactFax.Text).Len=0  then
		    MsgBox "Pour valider un contact vous devez obligatoirement saisir une donnée de type email, téléphone ou fax"
		    exit sub
		  end if
		  
		  
		  if Contact_TypeAcces="ADD" then
		    
		    Contact_Tab.Champs.Nom         = Txt_ContactNom.Text
		    Contact_Tab.Champs.Fonction    = Txt_ContactFonction.Text
		    Contact_Tab.Champs.EMail       = Txt_ContactEMail.Text
		    Contact_Tab.Champs.TelBureau   = Txt_ContactTelBureau.Text
		    Contact_Tab.Champs.TelPortable = Txt_ContactTelPortable.Text
		    Contact_Tab.Champs.Fax         = Txt_ContactFax.Text
		    
		    Contact_Tab.Tab_Ajouter
		    
		    Lst_Contact.AddRow str(Contact_Tab.TempContact.NumContact)
		    
		    Lst_Contact.Cell(Lst_Contact.LastIndex,1) = Contact_Tab.Champs.Nom
		    Lst_Contact.Cell(Lst_Contact.LastIndex,2) = Contact_Tab.Champs.Fonction
		    Lst_Contact.Cell(Lst_Contact.LastIndex,3) = Contact_Tab.Champs.EMail
		    Lst_Contact.Cell(Lst_Contact.LastIndex,4) = Contact_Tab.Champs.TelBureau
		    Lst_Contact.Cell(Lst_Contact.LastIndex,5) = Contact_Tab.Champs.TelPortable
		    Lst_Contact.Cell(Lst_Contact.LastIndex,6) = Contact_Tab.Champs.Fax
		    
		  end if
		  
		  
		  if Contact_TypeAcces="MOD" then
		    
		    Contact_Tab.Champs.Numero = Lst_Contact.Cell(Lst_Contact.ListIndex,0).CDbl
		    
		    Contact_Tab.Champs.Nom         = Txt_ContactNom.Text
		    Contact_Tab.Champs.Fonction    = Txt_ContactFonction.Text
		    Contact_Tab.Champs.EMail       = Txt_ContactEMail.Text
		    Contact_Tab.Champs.TelBureau   = Txt_ContactTelBureau.Text
		    Contact_Tab.Champs.TelPortable = Txt_ContactTelPortable.Text
		    Contact_Tab.Champs.Fax         = Txt_ContactFax.Text
		    Contact_Tab.Champs.Operation   = Contact_TypeAcces
		    
		    Contact_Tab.Tab_Modifier(Contact_Tab.Champs.Numero)
		    
		    Lst_Contact.Cell(Lst_Contact.ListIndex,1) = Contact_Tab.Champs.Nom
		    Lst_Contact.Cell(Lst_Contact.ListIndex,2) = Contact_Tab.Champs.Fonction
		    Lst_Contact.Cell(Lst_Contact.ListIndex,3) = Contact_Tab.Champs.EMail
		    Lst_Contact.Cell(Lst_Contact.ListIndex,4) = Contact_Tab.Champs.TelBureau
		    Lst_Contact.Cell(Lst_Contact.ListIndex,5) = Contact_Tab.Champs.TelPortable
		    Lst_Contact.Cell(Lst_Contact.ListIndex,6) = Contact_Tab.Champs.Fax
		    
		    
		  end if
		  
		  Pag_Contact.Value=0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ContactCancel
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  If not(  _
		    VarRes_ContactEMail          =    Txt_ContactEMail.Text       and _
		    VarRes_ContactFax            =    Txt_ContactFax.Text         and _
		    VarRes_ContactFonction       =    Txt_ContactFonction.Text    and _
		    VarRes_ContactNom            =    Txt_ContactNom.Text         and _
		    VarRes_ContactTelBureau      =    Txt_ContactTelBureau.Text   and _
		    VarRes_ContactTelPortable    =    Txt_ContactTelPortable.Text     _
		    ) then
		    
		    RepUser=MsgBox("Abandonner la saisie du contact ?",52)
		    
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		  end if
		  
		  Pag_Contact.Value=0
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
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
		    
		    If AccessMode_Data="MODIF" then ClientActuel.DBase_Update
		    If AccessMode_Data="ADD"   then
		      ClientActuel.DBase_Create
		      Contact_Tab.Tab_AffecteClientTemp(ClientActuel.Numero)
		    end if
		    
		    
		    Contact_Tab.Base_Sauve
		    
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
		    if AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      ClientActuel.BLOCAGE="N"
		      Enable_Formulaire(True)
		    end if
		  else
		    me.Icon=lock_32X
		    If AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      ClientActuel.BLOCAGE="O"
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
		Name="VarRes_Adresse1"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Adresse2"
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
		Name="VarRes_CodePostal"
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
		Name="VarRes_ContactEMail"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_ContactFax"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_ContactFonction"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_ContactNom"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_ContactTelBureau"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_ContactTelPortable"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_EMail"
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
		Name="VarRes_NumTVA"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Pays"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Region"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Remise"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_SiteInternet"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Ville"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
