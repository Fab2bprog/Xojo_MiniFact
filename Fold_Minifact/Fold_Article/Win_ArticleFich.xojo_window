#tag Window
Begin Window Win_ArticleFich
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
   MinHeight       =   700
   MinimizeButton  =   True
   MinWidth        =   1000
   Placement       =   0
   Resizeable      =   True
   Title           =   " FICHE ARTICLE"
   Visible         =   True
   Width           =   1000
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
      Left            =   884
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
      Top             =   651
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
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
      Left            =   936
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Quitter la fenetre"
      Top             =   651
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
      Left            =   13
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MenuStyle       =   "0"
      MenuValue       =   "0"
      Scope           =   "0"
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c00000000
      Tooltip         =   "Valider"
      Top             =   651
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin TabPanel TPa_Article
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   631
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   13
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   "0"
      SmallTabs       =   False
      TabDefinition   =   "Presentation\rDetails\rConditions achats\rConditions vente"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   974
      Begin GroupBox Grb_Identification
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Info Article"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   89
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   23
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   46
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   616
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
            Left            =   145
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
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   99
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   486
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
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   99
            Transparent     =   True
            Underline       =   False
            Value           =   "Nom"
            Visible         =   True
            Width           =   44
         End
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
            Left            =   145
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
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   72
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   94
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
            Left            =   30
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   72
            Transparent     =   True
            Underline       =   False
            Value           =   "Code"
            Visible         =   True
            Width           =   44
         End
         Begin CheckBox Chk_Actif
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Actif"
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
            Left            =   251
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   "1"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   72
            Transparent     =   True
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   102
         End
         Begin CheckBox Chk_StockGest
            AllowAutoDeactivate=   True
            Bold            =   False
            Caption         =   "Article comptabilisé en stock"
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
            Left            =   365
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            State           =   "1"
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   72
            Transparent     =   True
            Underline       =   False
            Value           =   True
            Visible         =   True
            Width           =   266
         End
      End
      Begin GroupBox Grb_Caract
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Caractéristiques"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   580
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   344
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   39
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   632
         Begin PagePanel Pag_Caract
            AllowAutoDeactivate=   True
            Enabled         =   True
            Height          =   550
            Index           =   -2147483648
            InitialParent   =   "Grb_Caract"
            Left            =   351
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            PanelCount      =   2
            Panels          =   ""
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Tooltip         =   ""
            Top             =   60
            Transparent     =   True
            Value           =   0
            Visible         =   True
            Width           =   608
            Begin Listbox Lst_Caract
               AllowAutoDeactivate=   True
               AllowAutoHideScrollbars=   True
               AllowExpandableRows=   False
               AllowFocusRing  =   True
               AllowResizableColumns=   True
               AllowRowDragging=   False
               AllowRowReordering=   False
               Bold            =   False
               ColumnCount     =   3
               ColumnWidths    =   "40,*,*"
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
               Height          =   475
               Index           =   -2147483648
               InitialParent   =   "Pag_Caract"
               InitialValue    =   "No	Caracteristique	Valeur"
               Italic          =   False
               Left            =   361
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
               Top             =   67
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   585
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin Label Lab_CaractNom
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
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   369
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
               Top             =   83
               Transparent     =   False
               Underline       =   False
               Value           =   "Nom"
               Visible         =   True
               Width           =   77
            End
            Begin Label Lab_CaractValeur
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
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   369
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   False
               LockTop         =   False
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               TextAlignment   =   "0"
               TextColor       =   &c00000000
               Tooltip         =   ""
               Top             =   125
               Transparent     =   False
               Underline       =   False
               Value           =   "Valeur"
               Visible         =   True
               Width           =   87
            End
            Begin BevelButton LBTN_CaractCancel
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
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   902
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Annule la saisie de la caracteristique de votre article"
               Top             =   537
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_CaractOK
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
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   830
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Valide la saisie de la caracteristique"
               Top             =   537
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_AddCaract
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
               Icon            =   1233799167
               IconAlignment   =   "1"
               IconDeltaX      =   0
               IconDeltaY      =   0
               Index           =   -2147483648
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   802
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Ajoute une nouvelle caractéristique"
               Top             =   548
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_DelCaract
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
               Icon            =   469485567
               IconAlignment   =   "1"
               IconDeltaX      =   0
               IconDeltaY      =   0
               Index           =   -2147483648
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   854
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Supprime la caractéristique sélectionnée dans la liste"
               Top             =   548
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_ModifCaract
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
               Icon            =   2137853951
               IconAlignment   =   "1"
               IconDeltaX      =   0
               IconDeltaY      =   0
               Index           =   -2147483648
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   906
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   3
               TabPanelIndex   =   1
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Modifie la caractéristique sélectionnée dans la liste"
               Top             =   548
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin TextArea TAr_CaractValeur
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
               Height          =   368
               HideSelection   =   True
               Index           =   -2147483648
               InitialParent   =   "Pag_Caract"
               Italic          =   False
               Left            =   361
               LineHeight      =   0.0
               LineSpacing     =   1.0
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   True
               LockTop         =   True
               MaximumCharactersAllowed=   254
               Multiline       =   True
               ReadOnly        =   False
               Scope           =   "0"
               TabIndex        =   4
               TabPanelIndex   =   2
               TabStop         =   True
               TextAlignment   =   "0"
               TextColor       =   &c00000000
               Tooltip         =   ""
               Top             =   157
               Transparent     =   True
               Underline       =   False
               ValidationMask  =   ""
               Value           =   ""
               Visible         =   True
               Width           =   588
            End
            Begin PopupMenu Pop_CaractNom
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
               InitialParent   =   "Pag_Caract"
               InitialValue    =   ""
               Italic          =   False
               Left            =   450
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   True
               LockTop         =   True
               Scope           =   "0"
               SelectedRowIndex=   0
               TabIndex        =   0
               TabPanelIndex   =   2
               TabStop         =   True
               Tooltip         =   ""
               Top             =   84
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   499
            End
         End
      End
      Begin GroupBox Grb_Gencode
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Codes barres"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   580
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   23
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   39
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   308
         Begin PagePanel Pag_GenCode
            AllowAutoDeactivate=   True
            Enabled         =   True
            Height          =   550
            Index           =   -2147483648
            InitialParent   =   "Grb_Gencode"
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            PanelCount      =   2
            Panels          =   ""
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            Tooltip         =   ""
            Top             =   60
            Transparent     =   True
            Value           =   0
            Visible         =   True
            Width           =   294
            Begin Listbox Lst_GenCode
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
               Height          =   475
               Index           =   -2147483648
               InitialParent   =   "Pag_GenCode"
               InitialValue    =   "Gencode	Info"
               Italic          =   False
               Left            =   38
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
               Top             =   67
               Transparent     =   True
               Underline       =   False
               Visible         =   True
               Width           =   277
               _ScrollOffset   =   0
               _ScrollWidth    =   -1
            End
            Begin TextField Txt_NumGencode
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
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   151
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
               TabPanelIndex   =   2
               TabStop         =   True
               TextAlignment   =   "0"
               TextColor       =   &c00000000
               Tooltip         =   ""
               Top             =   81
               Transparent     =   True
               Underline       =   False
               ValidationMask  =   ""
               Value           =   ""
               Visible         =   True
               Width           =   161
            End
            Begin Label Lab_NumGencode
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
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   39
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   1
               TabPanelIndex   =   2
               TabStop         =   True
               TextAlignment   =   "0"
               TextColor       =   &c00000000
               Tooltip         =   ""
               Top             =   81
               Transparent     =   False
               Underline       =   False
               Value           =   "Gencode"
               Visible         =   True
               Width           =   94
            End
            Begin Label Lab_InfoGenCode
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
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   39
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   True
               LockRight       =   False
               LockTop         =   True
               Multiline       =   False
               Scope           =   "0"
               Selectable      =   False
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextAlignment   =   "0"
               TextColor       =   &c00000000
               Tooltip         =   ""
               Top             =   115
               Transparent     =   False
               Underline       =   False
               Value           =   "Info"
               Visible         =   True
               Width           =   94
            End
            Begin TextField Txt_InfoGenCode
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
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   151
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
               Top             =   115
               Transparent     =   True
               Underline       =   False
               ValidationMask  =   ""
               Value           =   ""
               Visible         =   True
               Width           =   161
            End
            Begin BevelButton LBTN_GenCodeOK
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
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   211
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   2
               TabPanelIndex   =   2
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Valide la saisie du  gencode"
               Top             =   537
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_GenCodeCancel
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
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   272
               LockBottom      =   False
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   True
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   3
               TabPanelIndex   =   2
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Abandonne la saisie du gencode en cour"
               Top             =   537
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_AddGenCode
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
               Icon            =   1233799167
               IconAlignment   =   "1"
               IconDeltaX      =   0
               IconDeltaY      =   0
               Index           =   -2147483648
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   171
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   1
               TabPanelIndex   =   1
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Ajoute un nouveau gencode"
               Top             =   548
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_ModifGenCode
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
               Icon            =   2137853951
               IconAlignment   =   "1"
               IconDeltaX      =   0
               IconDeltaY      =   0
               Index           =   -2147483648
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   275
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   3
               TabPanelIndex   =   1
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Modifie le gencode sélectionné dans la liste"
               Top             =   548
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
            Begin BevelButton LBTN_DelGenCode
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
               Icon            =   469485567
               IconAlignment   =   "1"
               IconDeltaX      =   0
               IconDeltaY      =   0
               Index           =   -2147483648
               InitialParent   =   "Pag_GenCode"
               Italic          =   False
               Left            =   223
               LockBottom      =   True
               LockedInPosition=   False
               LockLeft        =   False
               LockRight       =   True
               LockTop         =   False
               MenuStyle       =   "0"
               MenuValue       =   "0"
               Scope           =   "0"
               TabIndex        =   2
               TabPanelIndex   =   1
               TabStop         =   True
               TextColor       =   &c00000000
               Tooltip         =   "Supprime le gencode sélectionné dans la liste"
               Top             =   548
               Transparent     =   True
               Underline       =   False
               Value           =   False
               Visible         =   True
               Width           =   40
            End
         End
      End
      Begin GroupBox Grb_Photo
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Photos"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   500
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   23
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   139
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   616
         Begin BevelButton LBTN_AddImg
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
            Icon            =   1233799167
            IconAlignment   =   "1"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            Italic          =   False
            Left            =   547
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   2
            TabPanelIndex   =   1
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Ajoute une nouvelle image"
            Top             =   590
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin BevelButton LBTN_DelImg
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
            Icon            =   469485567
            IconAlignment   =   "1"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            Italic          =   False
            Left            =   591
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   False
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   "Supprime l'image sélectionnée dans la liste"
            Top             =   590
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   40
         End
         Begin Listbox Lst_ImgInfo
            AllowAutoDeactivate=   True
            AllowAutoHideScrollbars=   True
            AllowExpandableRows=   False
            AllowFocusRing  =   True
            AllowResizableColumns=   False
            AllowRowDragging=   False
            AllowRowReordering=   False
            Bold            =   False
            ColumnCount     =   2
            ColumnWidths    =   "*,*"
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
            Height          =   151
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            InitialValue    =   "Info	Valeur"
            Italic          =   False
            Left            =   400
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            RowSelectionType=   "0"
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   158
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   231
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin Listbox Lst_Img
            AllowAutoDeactivate=   True
            AllowAutoHideScrollbars=   True
            AllowExpandableRows=   False
            AllowFocusRing  =   True
            AllowResizableColumns=   True
            AllowRowDragging=   False
            AllowRowReordering=   False
            Bold            =   False
            ColumnCount     =   5
            ColumnWidths    =   "50,200,200,100,*"
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
            Height          =   131
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            InitialValue    =   "No	Nom_Image	Localisation	Vue	Commentaires"
            Italic          =   False
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   False
            RequiresSelection=   False
            RowSelectionType=   "0"
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   453
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   601
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
         Begin ImageWell IWell_Photo
            AllowAutoDeactivate=   True
            Enabled         =   True
            Height          =   290
            Image           =   0
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            Left            =   30
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            TabIndex        =   5
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   158
            Transparent     =   True
            Visible         =   True
            Width           =   364
         End
         Begin TextArea TAr_ImgCommentaire
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
            Height          =   103
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            Italic          =   False
            Left            =   400
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            MaximumCharactersAllowed=   0
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   7
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   345
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   231
         End
         Begin PopupMenu Pop_ImgFlagNom
            AllowAutoDeactivate=   True
            Bold            =   False
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   26
            Index           =   -2147483648
            InitialParent   =   "Grb_Photo"
            InitialValue    =   ""
            Italic          =   False
            Left            =   400
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            Scope           =   "0"
            SelectedRowIndex=   0
            TabIndex        =   6
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   313
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   231
         End
      End
      Begin GroupBox Grb_Description
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Description avancée"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   381
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   644
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   258
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   331
         Begin TextArea TAr_Description
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
            Height          =   348
            HideSelection   =   True
            Index           =   -2147483648
            InitialParent   =   "Grb_Description"
            Italic          =   False
            Left            =   651
            LineHeight      =   0.0
            LineSpacing     =   1.0
            LockBottom      =   True
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   True
            LockTop         =   True
            MaximumCharactersAllowed=   1024
            Multiline       =   True
            ReadOnly        =   False
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   282
            Transparent     =   True
            Underline       =   False
            ValidationMask  =   ""
            Value           =   ""
            Visible         =   True
            Width           =   317
         End
      End
      Begin GroupBox Grb_Nomenclature
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Nomenclature"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   200
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   644
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   46
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   331
         Begin PushButton BTN_ExploreNomencl
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "Explorer"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   24
            Index           =   -2147483648
            InitialParent   =   "Grb_Nomenclature"
            Italic          =   False
            Left            =   841
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MacButtonStyle  =   "0"
            Scope           =   "0"
            TabIndex        =   3
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   210
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   120
         End
         Begin Listbox Lst_Nomencl
            AllowAutoDeactivate=   True
            AllowAutoHideScrollbars=   True
            AllowExpandableRows=   False
            AllowFocusRing  =   True
            AllowResizableColumns=   False
            AllowRowDragging=   False
            AllowRowReordering=   False
            Bold            =   False
            ColumnCount     =   3
            ColumnWidths    =   "50,50,*"
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
            Height          =   126
            Index           =   -2147483648
            InitialParent   =   "Grb_Nomenclature"
            InitialValue    =   "Niveau	Code	Nom"
            Italic          =   False
            Left            =   658
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   False
            LockRight       =   True
            LockTop         =   True
            RequiresSelection=   False
            RowSelectionType=   "0"
            Scope           =   "0"
            TabIndex        =   4
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   72
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   303
            _ScrollOffset   =   0
            _ScrollWidth    =   -1
         End
      End
      Begin BevelButton LBTN_ModifCondAchat
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
         Icon            =   2137853951
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   936
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   3
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Modifie la condition d'achat sélectionnée  dans la liste"
         Top             =   152
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin BevelButton LBTN_DelCondAchat
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
         Icon            =   469485567
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   936
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   3
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Supprime la condition d'achat sélectionnée dans la liste"
         Top             =   102
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin BevelButton LBTN_AddCondAchat
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
         Icon            =   1233799167
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   936
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   7
         TabPanelIndex   =   3
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Ajoute une nouvelle condition d'achat"
         Top             =   50
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin Listbox Lst_VarAchat
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   False
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   8
         ColumnWidths    =   "40,*,100,100,100,100,80,80"
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
         Height          =   580
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         InitialValue    =   "No	Fournisseur	Unité	Condit	PA.HT	PA.TTC	Date_Debut	Date_Fin"
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   "0"
         Scope           =   "0"
         TabIndex        =   8
         TabPanelIndex   =   3
         TabStop         =   True
         Tooltip         =   ""
         Top             =   50
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   895
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin BevelButton LBTN_ModifCondVente
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
         Icon            =   2137853951
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   936
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   5
         TabPanelIndex   =   4
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Modifie la condition d'achat sélectionnée  dans la liste"
         Top             =   152
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin BevelButton LBTN_DelCondVente
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
         Icon            =   469485567
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   936
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   6
         TabPanelIndex   =   4
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Supprime la condition d'achat sélectionnée dans la liste"
         Top             =   102
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin BevelButton LBTN_AddCondVente
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
         Icon            =   1233799167
         IconAlignment   =   "1"
         IconDeltaX      =   0
         IconDeltaY      =   0
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         Italic          =   False
         Left            =   936
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MenuStyle       =   "0"
         MenuValue       =   "0"
         Scope           =   "0"
         TabIndex        =   7
         TabPanelIndex   =   4
         TabStop         =   True
         TextColor       =   &c00000000
         Tooltip         =   "Ajoute une nouvelle condition d'achat"
         Top             =   50
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   40
      End
      Begin Listbox Lst_VarVente
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   9
         ColumnWidths    =   "40,100,100,100,100,100,100,100,*"
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
         Height          =   580
         Index           =   -2147483648
         InitialParent   =   "TPa_Article"
         InitialValue    =   "No	Unité	Condi	PU.HT	PU.TTC	Date_Deb	Date_Fin	Promo	Obsolete"
         Italic          =   False
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   "0"
         Scope           =   "0"
         TabIndex        =   8
         TabPanelIndex   =   4
         TabStop         =   True
         Tooltip         =   ""
         Top             =   50
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   895
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
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
		Function AccessQuery_User(Login_user as String, DataAccessMode as String, numclient as Int64) As Boolean
		  Dim i as integer
		  dim test as Boolean
		  
		  AccessMode_Data=DataAccessMode
		  
		  ArticleActuel = new Class_Article
		  ArticleActuel.DBaseID=App.MainDB
		  
		  Caract_Tab   = new Class_TabArtCaract
		  Img_Tab      = new Class_TabArtImg
		  GenCode_Tab  = new Class_TabGenCode
		  VarAchat_Tab = new Class_TabVarAchat
		  VarVente_Tab = new Class_TabVarVente
		  
		  if AccesPerm_Data.Blocage="O" then
		    LBTN_BLOCAGE.Enabled=true
		  else
		    LBTN_BLOCAGE.Enabled=False
		  end if
		  
		  
		  if AccessMode_Data="ADD" then
		    
		    Lab_Code.Visible=False
		    Txt_Code.Visible=False
		    
		    
		    return true
		    
		  end if
		  
		  if AccessMode_Data="LIRE" then
		    
		    Enable_Formulaire(False)
		    LBTN_OK.Visible=false
		    
		  end if
		  
		  if AccessMode_Data="MODIF" then
		    
		    Txt_Code.ReadOnly=True
		    
		    
		    
		    
		  end if
		  
		  
		  ArticleActuel.DBaseSource="SELECT * FROM ARTICLE WHERE NUMERO="+str(numclient)
		  
		  if not ArticleActuel.DBaseReqSrc_Exec then
		    return false
		  end if
		  
		  test=ArticleActuel.Charge_Premier
		  
		  Data_NiveauNomencl = ArticleActuel.NclNiveau
		  Data_NumeroNomencl = ArticleActuel.NclParent
		  Def_Nomencl
		  
		  Caract_Tab.Article=ArticleActuel.Numero
		  Caract_Tab.Base_Charge
		  
		  Img_Tab.Article=ArticleActuel.Numero
		  Img_Tab.Base_Charge
		  
		  GenCode_Tab.Article=ArticleActuel.Numero
		  GenCode_Tab.Base_Charge
		  
		  VarAchat_Tab.Article=ArticleActuel.Numero
		  VarAchat_Tab.Base_Charge
		  
		  VarVente_Tab.Article=ArticleActuel.Numero
		  VarVente_Tab.Base_Charge
		  
		  ObjetVersEcran
		  
		  return true
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_AddVarAchat()
		  dim test As Boolean
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if PermArticleFich.Interoge_Acces("Win_VarAchatFich","W",false)  then
		    Win_VarAchatFich.Show
		    Win_VarAchatFich.AccesPerm_Data  = PermArticleFich
		    Win_VarAchatFich.Txt_NomArt.Text = Txt_Nom.Text
		    Win_VarAchatFich.TableSource     = "TEMP_VARACHAT"
		    Win_VarAchatFich.SourceWindowName=AccessWindow_ID
		    test = Win_VarAchatFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"ADD", 0,ArticleActuel.Numero)=true
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_AddVarVente()
		  dim test As Boolean
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if PermArticleFich.Interoge_Acces("Win_VarVenteFich","W",false)  then
		    Win_VarVenteFich.Show
		    Win_VarVenteFich.AccesPerm_Data  = PermArticleFich
		    Win_VarVenteFich.Txt_NomArt.Text = Txt_Nom.Text
		    Win_VarVenteFich.TableSource     = "TEMP_VARVENTE"
		    Win_VarVenteFich.SourceWindowName=AccessWindow_ID
		    test = Win_VarVenteFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"ADD", 0,ArticleActuel.Numero)=true
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_ConsultVarAchat()
		  dim test As Boolean
		  dim PermArticleFich as Class_AccesObjet
		  dim numero as Int64
		  
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if Lst_VarAchat.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  
		  if PermArticleFich.Interoge_Acces("Win_ArticleFich","R",False)  then
		    
		    Win_VarAchatFich.Show
		    numero= Lst_VarAchat.Cell(Lst_VarAchat.ListIndex,0).CLong
		    Win_VarAchatFich.AccesPerm_Data=PermArticleFich
		    Win_VarAchatFich.Txt_NomArt.Text = Txt_Nom.Text
		    Win_VarAchatFich.TableSource     = "TEMP_VARACHAT"
		    Win_VarAchatFich.SourceWindowName=AccessWindow_ID
		    test = Win_VarAchatFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"LIRE", numero,ArticleActuel.Numero)=true
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_ConsultVarVente()
		  dim test As Boolean
		  dim PermArticleFich as Class_AccesObjet
		  dim numero as Int64
		  
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if Lst_VarVente.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  
		  if PermArticleFich.Interoge_Acces("Win_ArticleFich","R",False)  then
		    
		    Win_VarVenteFich.Show
		    numero= Lst_VarVente.Cell(Lst_VarVente.ListIndex,0).CLong
		    Win_VarVenteFich.AccesPerm_Data=PermArticleFich
		    Win_VarVenteFich.Txt_NomArt.Text = Txt_Nom.Text
		    Win_VarVenteFich.TableSource     = "TEMP_VARVENTE"
		    Win_VarVenteFich.SourceWindowName=AccessWindow_ID
		    test = Win_VarVenteFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"LIRE", numero,ArticleActuel.Numero)=true
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_ModifVarAchat()
		  dim test As Boolean
		  dim numero as Int64
		  dim RepUser as integer
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  
		  if Lst_VarAchat.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  if PermArticleFich.Interoge_Acces("Win_VarAchatFich","W",false)  then
		    Win_VarAchatFich.Show
		    numero = Lst_VarAchat.Cell(Lst_VarAchat.ListIndex,0).CLong
		    Win_VarAchatFich.AccesPerm_Data  = PermArticleFich
		    Win_VarAchatFich.Txt_NomArt.Text = Txt_Nom.Text
		    Win_VarAchatFich.TableSource     = "TEMP_VARACHAT"
		    Win_VarAchatFich.SourceWindowName=AccessWindow_ID
		    test = Win_VarAchatFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"MODIF", numero,ArticleActuel.Numero)=true
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Action_ModifVarVente()
		  dim test As Boolean
		  dim numero as Int64
		  dim RepUser as integer
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  
		  if Lst_VarVente.SelCount =0 Then
		    MsgBox "Pour utiliser cette fonction vous devez préalablement selectionner un element dans la liste"
		    exit sub
		  end if
		  
		  if PermArticleFich.Interoge_Acces("Win_VarVenteFich","W",false)  then
		    Win_VarVenteFich.Show
		    numero = Lst_VarVente.Cell(Lst_VarVente.ListIndex,0).CLong
		    Win_VarVenteFich.AccesPerm_Data   = PermArticleFich
		    Win_VarVenteFich.Txt_NomArt.Text  = Txt_Nom.Text
		    Win_VarVenteFich.TableSource      = "TEMP_VARVENTE"
		    Win_VarVenteFich.SourceWindowName = AccessWindow_ID
		    test = Win_VarVenteFich.AccessQuery_User(str(App.MyLogUserInfo.Numero),"MODIF", numero,ArticleActuel.Numero)=true
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Apercu_Image()
		  Dim ImagePreview as Class_ArtImg
		  ImagePreview = new Class_ArtImg
		  dim testpictura as Picture
		  
		  
		  
		  ImagePreview.DBaseID=App.MainDB
		  ImagePreview.DBaseSource = "SELECT * FROM TEMP_ARTIMG WHERE NUMART = "+str(ArticleActuel.Numero).Trim+" AND NUMIMG = "+str(Lst_Img.Cell(Lst_Img.ListIndex,0)).Trim
		  
		  
		  if not ImagePreview.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  if ImagePreview.Charge_Premier then
		  end if
		  
		  Lst_ImgInfo.DeleteAllRows
		  
		  if Lst_Img.SelCount =0 Then
		    exit sub
		  end if
		  
		  
		  IWell_Photo.Image=nil
		  
		  IWell_Photo.Image = ImagePreview.ImageBlob
		  
		  
		  
		  'Lst_ImgInfo.AddRow("Nom")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(f.Name)
		  'Lst_ImgInfo.AddRow("Largeur")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(IWell_Photo.Image.Width)
		  'Lst_ImgInfo.AddRow("Hauteur")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(IWell_Photo.Image.Height)
		  'Lst_ImgInfo.AddRow("Poids")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(App.SuperRound(f.Length/1024,2))+" ko"
		  'Lst_ImgInfo.AddRow("Date creation")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(f.CreationDate.ShortDate)
		  'Lst_ImgInfo.AddRow("Heure creation")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(f.CreationDate.ShortTime)
		  'Lst_ImgInfo.AddRow("Date modification")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(f.ModificationDate.ShortDate)
		  'Lst_ImgInfo.AddRow("Heure modification")
		  'Lst_ImgInfo.Cell(Lst_ImgInfo.LastIndex,1) =  str(f.ModificationDate.ShortTime)
		  '
		  'Def_PopImgFlag(Lst_Img.Cell(Lst_Img.ListIndex,3).CDbl)
		  'TAr_ImgCommentaire.Text=Lst_Img.Cell(Lst_Img.ListIndex,4)
		  
		  
		  
		  
		  
		  
		  
		  Exception err as NilObjectException
		    MsgBox "Invalid pathname!"
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		    
		End Sub
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
		Sub Caract_TypeSaisie(OpeCaract as String)
		  if OpeCaract="ADD" then
		    Def_PopCaractNom()
		    TAr_CaractValeur.Text= ""
		  end if
		  
		  if OpeCaract="MOD" then
		    if Lst_Caract.SelCount >0 then
		      Def_PopCaractNom(Lst_Caract.Cell(Lst_Caract.ListIndex,0).CDbl)
		      TAr_CaractValeur.Text = Lst_Caract.Cell(Lst_Caract.ListIndex,2)
		    else
		      MsgBox "Selectionnez une caractéristique dans la liste pour la modifier."
		      exit sub
		    end if
		  end if
		  
		  VarRes_CaractNom             =    Pop_CaractNom.Text
		  VarRes_CaractValeur          =    TAr_CaractValeur.Text
		  
		  
		  Caract_TypeAcces = OpeCaract
		  Pag_Caract.Value = 1
		  
		  Pop_CaractNom.SetFocus
		  
		End Sub
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
		Sub Def_Nomencl()
		  Dim OrdreSql    as string
		  Dim RepUser     as integer
		  Dim rs          as RecordSet
		  Dim NiveauCible as Int64
		  Dim NumeroCible as Int64
		  
		  NiveauCible  = Data_NiveauNomencl
		  NumeroCible  = Data_NumeroNomencl
		  
		  Lst_Nomencl.DeleteAllRows
		  
		  do until NiveauCible = 0
		    rs = App.MainDB.SQLSelect( " SELECT NUMERO,NIVEAU,NCLPARENT,NOM FROM NOMENCLATURE WHERE NIVEAU="+str(NiveauCible)+" AND NUMERO ="+str(NumeroCible))
		    
		    if  not (rs=NIL) then
		      
		      rs.MoveFirst
		      Lst_Nomencl.InsertRow(1,str(rs.Field("NIVEAU").Value))
		      Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,1) =  str(rs.Field("NUMERO").Value)
		      Lst_Nomencl.Cell(Lst_Nomencl.LastIndex,2) =  str(rs.Field("NOM").Value)
		      
		      NumeroCible = rs.Field("NCLPARENT").Int64Value
		      NiveauCible = rs.Field("NIVEAU").Value - 1
		      
		    else
		      NumeroCible = 0
		      NiveauCible = 0
		    end if
		    
		  loop
		  
		  Lst_Nomencl.SortedColumn=0
		  Lst_Nomencl.Sort
		  
		  
		  
		  Exception err as NilObjectException
		    RepUser = MsgBox ("Echec afficage nomenclature ",48,"Erreur execution requete sql")
		    
		    
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_PopCaractNom(Numero as Int64 = - 1)
		  Dim ObjCaract as Class_Caract
		  Dim element as string
		  
		  ObjCaract = new  Class_Caract
		  ObjCaract.DBaseID     = App.MainDB
		  ObjCaract.DBaseSource = "SELECT * FROM CARACT"
		  
		  Pop_CaractNom.DeleteAllRows
		  Pop_CaractNom.AddRow("Indefini")
		  Pop_CaractNom.RowTag(Pop_CaractNom.ListCount-1) = 0
		  Pop_CaractNom.ListIndex = 0
		  
		  
		  if not ObjCaract.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if not ObjCaract.Charge_Premier then
		  end if
		  
		  do
		    
		    element = ObjCaract.Nom
		    
		    Pop_CaractNom.AddRow(element)
		    Pop_CaractNom.RowTag(Pop_CaractNom.ListCount-1) = ObjCaract.Numero
		    if ObjCaract.Numero = Numero then Pop_CaractNom.ListIndex=Numero
		    
		  loop until not ObjCaract.Charge_Suivant
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_PopImgFlag(Numero as Int64 = - 1)
		  Dim ObjImgFlag as Class_ImgFlag
		  Dim element   as string
		  
		  ObjImgFlag             = new  Class_ImgFlag
		  ObjImgFlag.DBaseID     = App.MainDB
		  ObjImgFlag.DBaseSource = "SELECT * FROM IMGFLAG"
		  
		  Pop_ImgFlagNom.DeleteAllRows
		  Pop_ImgFlagNom.AddRow("Indefini")
		  Pop_ImgFlagNom.RowTag(Pop_ImgFlagNom.ListCount - 1) = 0
		  Pop_ImgFlagNom.ListIndex = 0
		  
		  if not ObjImgFlag.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if not ObjImgFlag.Charge_Premier then
		  end if
		  
		  do
		    
		    element = ObjImgFlag.Nom
		    
		    Pop_ImgFlagNom.AddRow(element)
		    Pop_ImgFlagNom.RowTag(Pop_ImgFlagNom.ListCount-1) = ObjImgFlag.Numero
		    if ObjImgFlag.Numero = Numero then
		      Pop_ImgFlagNom.ListIndex=(Pop_ImgFlagNom.ListCount-1)
		    end if
		    
		    
		  loop until not ObjImgFlag.Charge_Suivant
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Function Detect_Modif() As Boolean
		  
		  if not(VarRes_Code               = Txt_Code.Text                            ) then return true
		  if not(VarRes_Nom                = Txt_Nom.Text                             ) then return true
		  if not(VarRes_Actif              = Bool2OuiNon(Chk_Actif.Value)             ) then return true
		  if not(VarRes_StockGest          = Bool2OuiNon(Chk_StockGest.Value)         ) then return true
		  if not(Data_NiveauNomencl        = ArticleActuel.NclNiveau                  ) then return true
		  if not(Data_NumeroNomencl        = ArticleActuel.NclParent                  ) then return true
		  
		  
		  if not(AccessMode_Data="ADD") then
		    if  not(VarRes_Description = TAr_Description.Text ) then return True
		  else
		    if trim(TAr_Description.Text).Len>0 then return true
		  end if
		  
		  
		  if Pag_GenCode.Value=1 then
		    If not(  _
		      VarRes_NumGencode  = Txt_NumGencode.Text    and _
		      VarRes_InfoGenCode = Txt_InfoGenCode.Text    _
		      ) then
		      return true
		    end if
		  end if
		  
		  
		  if Pag_Caract.Value=1 then
		    If not(  _
		      VarRes_CaractNom = Pop_CaractNom.Text         and _
		      VarRes_CaractValeur = TAr_CaractValeur.Text    _
		      ) then
		      return true
		    end if
		  end if
		  
		  
		  
		  If AccessMode_Data="MODIF" and Caract_Tab.Tab_EstModif   then return true
		  If AccessMode_Data="MODIF" and GenCode_Tab.Tab_EstModif  then return true
		  If AccessMode_Data="MODIF" and VarAchat_Tab.Tab_EstModif then return true
		  If AccessMode_Data="MODIF" and VarVente_Tab.Tab_EstModif then return true
		  
		  return false
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjet()
		  ArticleActuel.Numero             =  CDbl(Txt_Code.Text)
		  ArticleActuel.Nom                =  Txt_Nom.Text
		  ArticleActuel.NclNiveau          =  Data_NiveauNomencl
		  ArticleActuel.NclParent          =  Data_NumeroNomencl
		  ArticleActuel.Actif              =  Bool2OuiNon(Chk_Actif.Value)
		  ArticleActuel.Description        =  TAr_Description.Text
		  ArticleActuel.StockGest          =  Bool2OuiNon(Chk_StockGest.Value)
		  
		  EcranVersObjetImg
		  
		  
		  Synchro_VarRes
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EcranVersObjetImg()
		  Dim i as Integer
		  
		  For i =0 to (Lst_Img.ListCount - 1)
		    Img_Tab.NumArt       = ArticleActuel.Numero
		    Img_Tab.NumImg       = Lst_Img.Cell(i,0).Val
		    Img_Tab.FichNom      = Lst_Img.Cell(i,1)
		    Img_Tab.FichPath     = Lst_Img.Cell(i,2)
		    Img_Tab.ImgFlag      = Lst_Img.Cell(i,3).Val
		    Img_Tab.Commentaires = Lst_Img.Cell(i,4)
		    Img_Tab.Tab_Modifier(ArticleActuel.Numero,Img_Tab.NumImg)
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Enable_Formulaire(VraiFaux as Boolean)
		  Grb_Identification.Enabled=VraiFaux
		  Grb_Gencode.Enabled=VraiFaux
		  Grb_Caract.Enabled=VraiFaux
		  Grb_Description.Enabled=VraiFaux
		  
		  LBTN_AddCondAchat.Enabled=VraiFaux
		  LBTN_DelCondAchat.Enabled=VraiFaux
		  LBTN_ModifCondAchat.Enabled=VraiFaux
		  
		  LBTN_AddCondVente.Enabled=VraiFaux
		  LBTN_DelCondVente.Enabled=VraiFaux
		  LBTN_ModifCondVente.Enabled=VraiFaux
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenCode_TypeSaisie(OpeGenCode as String)
		  if OpeGenCode ="ADD" then
		    Txt_NumGencode.Text  = ""
		    Txt_InfoGenCode.Text = ""
		  end if
		  
		  if OpeGenCode ="MOD" then
		    if Lst_GenCode.SelCount >0 then
		      Txt_NumGencode.Text  = Lst_GenCode.Cell(Lst_GenCode.ListIndex,0)
		      Txt_InfoGenCode.Text = Lst_GenCode.Cell(Lst_GenCode.ListIndex,1)
		    else
		      MsgBox "Selectionnez un gencode dans la liste pour le modifier."
		      exit sub
		    end if
		  end if
		  
		  VarRes_NumGencode            =   Txt_NumGencode.Text
		  VarRes_InfoGenCode          =    Txt_InfoGenCode.Text
		  
		  
		  GenCode_TypeAcces = OpeGenCode
		  Pag_GenCode.Value = 1
		  
		  Txt_NumGencode.SetFocus
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcran()
		  Dim i as Integer
		  
		  Txt_Code.Text                               = str(ArticleActuel.Numero)
		  Txt_Nom.Text                                = ArticleActuel.Nom
		  Chk_Actif.Value                             = OuiNon2Bool(ArticleActuel.Actif)
		  TAr_Description.Text                        = ArticleActuel.Description
		  Chk_StockGest.Value                         = OuiNon2Bool(ArticleActuel.StockGest)
		  
		  
		  
		  Data_NiveauNomencl = ArticleActuel.NclNiveau
		  Data_NumeroNomencl = ArticleActuel.NclParent
		  
		  if ArticleActuel.BLOCAGE="O" then
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
		  
		  
		  
		  ObjetVersEcranGencode
		  ObjetVersEcranCaract
		  ObjetVersEcranImg
		  ObjetVersEcranVarAchat
		  ObjetVersEcranVarVente
		  
		  Synchro_VarRes
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranCaract()
		  Lst_Caract.DeleteAllRows
		  
		  Caract_Tab.TempArtCaract.DBaseSource="SELECT * FROM "+Caract_Tab.TempArtCaract.Table
		  
		  if not Caract_Tab.TempArtCaract.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if Caract_Tab.TempArtCaract.Charge_Premier then
		    
		    do
		      
		      Lst_Caract.AddRow str(Caract_Tab.TempArtCaract.NumCaract)
		      Lst_Caract.Cell(Lst_Caract.LastIndex,1) =  str(Caract_Tab.TempArtCaract.Nom         )
		      Lst_Caract.Cell(Lst_Caract.LastIndex,2) =  str(Caract_Tab.TempArtCaract.Valeur      )
		      
		      if not Caract_Tab.TempArtCaract.Charge_Suivant then
		        exit do
		      end if
		      
		      
		    Loop
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranGencode()
		  Lst_GenCode.DeleteAllRows
		  
		  GenCode_Tab.TempGenCode.DBaseSource="SELECT * FROM "+GenCode_Tab.TempGenCode.Table
		  
		  if not GenCode_Tab.TempGenCode.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if GenCode_Tab.TempGenCode.Charge_Premier then
		    
		    do
		      
		      Lst_GenCode.AddRow str(GenCode_Tab.TempGenCode.CodBar)
		      Lst_GenCode.Cell(Lst_GenCode.LastIndex,1) =  str(GenCode_Tab.TempGenCode.Inform )
		      
		      if not GenCode_Tab.TempGenCode.Charge_Suivant then
		        exit do
		      end if
		      
		    Loop
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranImg()
		  Lst_Img.DeleteAllRows
		  
		  Img_Tab.TempArtImg.DBaseSource="SELECT * FROM "+Img_Tab.TempArtImg.Table
		  
		  if not Img_Tab.TempArtImg.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if Img_Tab.TempArtImg.Charge_Premier then
		    
		    do
		      
		      Lst_Img.AddRow str(Img_Tab.TempArtImg.NumImg)
		      Lst_Img.Cell(Lst_Img.LastIndex,1) =  str(Img_Tab.TempArtImg.FichNom       )
		      Lst_Img.Cell(Lst_Img.LastIndex,2) =  str(Img_Tab.TempArtImg.FichPath      )
		      Lst_Img.Cell(Lst_Img.LastIndex,3) =  str(Img_Tab.TempArtImg.ImgFlag       )
		      Lst_Img.Cell(Lst_Img.LastIndex,4) =  str(Img_Tab.TempArtImg.Commentaires  )
		      if not Img_Tab.TempArtImg.Charge_Suivant then
		        exit do
		      end if
		      
		    Loop
		    Lst_Img.ListIndex=0
		    Apercu_Image
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranVarAchat()
		  Dim MonService as  Class_Service
		  Dim MemoTrie   as  Integer
		  MonService = new Class_Service
		  
		  MemoTrie = Lst_VarAchat.SortedColumn
		  
		  Lst_VarAchat.DeleteAllRows
		  
		  VarAchat_Tab.TempVarAchat.DBaseSource="SELECT * FROM "+VarAchat_Tab.TempVarAchat.Table
		  
		  if not VarAchat_Tab.TempVarAchat.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if VarAchat_Tab.TempVarAchat.Charge_Premier then
		    
		    do
		      
		      Lst_VarAchat.AddRow str(VarAchat_Tab.TempVarAchat.Numero)
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,1) =  MonService.Serv_RetourneChamp("NOM","FOURNISSEUR","NUMERO",VarAchat_Tab.TempVarAchat.NumFourn)
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,2) =  MonService.Serv_RetourneChamp("NOMABREG","UNITMESURE" ,"NUMERO",VarAchat_Tab.TempVarAchat.UnitAchat)
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,3) =  str(VarAchat_Tab.TempVarAchat.Condit           )
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,4) =  str(VarAchat_Tab.TempVarAchat.PrixAchatHT      )
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,5) =  str(VarAchat_Tab.TempVarAchat.PrixAchatTTC     )
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,6) =  str(VarAchat_Tab.TempVarAchat.DateDeb.ShortDate)
		      Lst_VarAchat.Cell(Lst_VarAchat.LastIndex,7) =  str(VarAchat_Tab.TempVarAchat.DateFin.ShortDate)
		      
		      if not VarAchat_Tab.TempVarAchat.Charge_Suivant then
		        Lst_VarAchat.SortedColumn = MemoTrie
		        Lst_VarAchat.Sort
		        exit do
		      end if
		      
		    Loop
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetVersEcranVarVente()
		  Dim MonService as  Class_Service
		  Dim MemoTrie   as  Integer
		  MonService = new Class_Service
		  
		  MemoTrie = Lst_VarVente.SortedColumn
		  
		  Lst_VarVente.DeleteAllRows
		  
		  VarVente_Tab.TempVarVente.DBaseSource="SELECT * FROM "+VarVente_Tab.TempVarVente.Table
		  
		  if not VarVente_Tab.TempVarVente.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if VarVente_Tab.TempVarVente.Charge_Premier then
		    
		    do
		      
		      Lst_VarVente.AddRow str(VarVente_Tab.TempVarVente.Numero)
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,1) =  MonService.Serv_RetourneChamp("NOMABREG","UNITMESURE" ,"NUMERO",VarVente_Tab.TempVarVente.UnitVente)
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,2) =  str(VarVente_Tab.TempVarVente.Condit           )
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,3) =  str(VarVente_Tab.TempVarVente.PrixVenteHT      )
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,4) =  str(VarVente_Tab.TempVarVente.PrixVenteTTC     )
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,5) =  str(VarVente_Tab.TempVarVente.DateDeb.ShortDate)
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,6) =  str(VarVente_Tab.TempVarVente.DateFin.ShortDate)
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,7) =  VarVente_Tab.TempVarVente.Promo
		      Lst_VarVente.Cell(Lst_VarVente.LastIndex,8) =  VarVente_Tab.TempVarVente.Obsolete
		      if not VarVente_Tab.TempVarVente.Charge_Suivant then
		        Lst_VarVente.SortedColumn = MemoTrie
		        Lst_VarVente.Sort
		        exit do
		      end if
		      
		    Loop
		    
		  end if
		  
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
		  //Memorisation des variables de reserve
		  VarRes_Code                  =  str(ArticleActuel.Numero)
		  VarRes_NclParent             =  str(ArticleActuel.NclParent)
		  VarRes_Nom                   =  ArticleActuel.Nom
		  VarRes_Description           =  ArticleActuel.Description
		  VarRes_Actif                 =  ArticleActuel.Actif
		  VarRes_StockGest             =  ArticleActuel.StockGest
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Touche_Valide(key as String) As Boolean
		  if key=chr(13)  then return true
		  if key=chr(3)    then return true
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Valide_Caract()
		  
		  if trim(Pop_CaractNom.Text).Len=0 then
		    MsgBox "Le nom de la caractéristique doit obligatoirement être renseigné"
		    exit sub
		  end if
		  
		  if  trim(TAr_CaractValeur.Text).Len=0  then
		    MsgBox "Pour valider une caractéristique vous devez obligatoirement saisir une valeur"
		    exit sub
		  end if
		  
		  
		  if Caract_TypeAcces="ADD" then
		    
		    Caract_Tab.Champs.NumArt      = ArticleActuel.Numero
		    Caract_Tab.Champs.NumCaract   = Pop_CaractNom.RowTag(Pop_CaractNom.ListIndex)
		    Caract_Tab.Champs.Valeur      = TAr_CaractValeur.Text
		    Caract_Tab.Champs.Operation   = Caract_TypeAcces
		    
		    Caract_Tab.Tab_Ajouter
		    
		    Lst_Caract.AddRow str(Caract_Tab.Champs.NumCaract)
		    
		    Lst_Caract.Cell(Lst_Caract.LastIndex,1) = Pop_CaractNom.Text
		    Lst_Caract.Cell(Lst_Caract.LastIndex,2) = Caract_Tab.Champs.Valeur
		    
		  end if
		  
		  
		  if Caract_TypeAcces="MOD" then
		    
		    Caract_Tab.Champs.NumArt      = ArticleActuel.Numero
		    Caract_Tab.Champs.NumCaract   = Pop_CaractNom.RowTag(Pop_CaractNom.ListIndex)
		    Caract_Tab.Champs.Valeur      = TAr_CaractValeur.Text
		    Caract_Tab.Champs.Operation   = Caract_TypeAcces
		    
		    Caract_Tab.Tab_Modifier(ArticleActuel.Numero,Lst_Caract.Cell(Lst_Caract.ListIndex,0).CDbl)
		    
		    Lst_Caract.Cell(Lst_Caract.ListIndex,0) = Pop_CaractNom.RowTag(Pop_CaractNom.ListIndex)
		    Lst_Caract.Cell(Lst_Caract.ListIndex,1) = Pop_CaractNom.Text
		    Lst_Caract.Cell(Lst_Caract.ListIndex,2) = Caract_Tab.Champs.Valeur
		    
		  end if
		  
		  Pag_Caract.Value=0
		  Lst_Caract.SetFocus
		  
		End Sub
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

	#tag Method, Flags = &h0
		Sub Valide_GenCode()
		  
		  if trim(Txt_NumGencode.Text).Len = 0 then
		    MsgBox "Le numéro du code barre doit obligatoirement être renseigné"
		    exit sub
		  end if
		  
		  if GenCode_TypeAcces="ADD" then
		    
		    GenCode_Tab.Champs.CodBar       = Txt_NumGencode.Text
		    GenCode_Tab.Champs.NumArt       = ArticleActuel.Numero
		    GenCode_Tab.Champs.Inform       = Txt_InfoGenCode.Text
		    
		    if GenCode_Tab.Tab_Ajouter then
		      Lst_GenCode.AddRow str(GenCode_Tab.Champs.CodBar)
		      Lst_GenCode.Cell(Lst_GenCode.LastIndex,1) = GenCode_Tab.Champs.Inform
		      Pag_GenCode.Value=0
		      Lst_GenCode.SetFocus
		      exit sub
		    end if
		    
		  end if
		  
		  
		  if GenCode_TypeAcces="MOD" then
		    
		    GenCode_Tab.Champs.CodBar       = Txt_NumGencode.Text
		    GenCode_Tab.Champs.NumArt       = ArticleActuel.Numero
		    GenCode_Tab.Champs.Inform       = Txt_InfoGenCode.Text
		    GenCode_Tab.Champs.Operation    = GenCode_TypeAcces
		    
		    if GenCode_Tab.Tab_Modifier(Lst_GenCode.Cell(Lst_GenCode.ListIndex,0)) then
		      Lst_GenCode.Cell(Lst_GenCode.ListIndex,0) = GenCode_Tab.Champs.CodBar
		      Lst_GenCode.Cell(Lst_GenCode.ListIndex,1) = Txt_InfoGenCode.Text
		      Pag_GenCode.Value=0
		      Lst_GenCode.SetFocus
		      exit sub
		    end if
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Valide_LigneVarAchat()
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if PermArticleFich.Interoge_Acces("Win_VarAchatFich","W",true)  then
		    Action_ModifVarAchat
		  else
		    if PermArticleFich.Interoge_Acces("Win_VarAchatFich","R",false)  then
		      Action_ConsultVarAchat
		    end if
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Valide_LigneVarVente()
		  dim PermArticleFich as Class_AccesObjet
		  
		  PermArticleFich = new Class_AccesObjet
		  
		  if PermArticleFich.Interoge_Acces("Win_VarVenteFich","W",true)  then
		    Action_ModifVarVente
		  else
		    if PermArticleFich.Interoge_Acces("Win_VarVenteFich","R",false)  then
		      Action_ConsultVarVente
		    end if
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Verif_TypeImage(NomImage as String = "") As Boolean
		  if right(NomImage.Lowercase,4)=".jpg" then return true
		  if right(NomImage.Lowercase,5)=".jpeg" then return true
		  if right(NomImage.Lowercase,4)=".gif" then return true
		  if right(NomImage.Lowercase,4)=".bmp" then return true
		  if right(NomImage.Lowercase,4)=".png" then return true
		  
		  return false
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AccesPerm_Data As Class_AccesObjet
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected AccessMode_Data As String = "MOD"
	#tag EndProperty

	#tag Property, Flags = &h0
		ArticleActuel As Class_Article
	#tag EndProperty

	#tag Property, Flags = &h0
		Caract_Tab As Class_TabArtCaract
	#tag EndProperty

	#tag Property, Flags = &h0
		Caract_TypeAcces As String = "MODIF"
	#tag EndProperty

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
		GenCode_Tab As Class_TabGenCode
	#tag EndProperty

	#tag Property, Flags = &h0
		GenCode_TypeAcces As String = "MODIF"
	#tag EndProperty

	#tag Property, Flags = &h0
		Img_Tab As Class_TabArtImg
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceWindowName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		VarAchat_Tab As Class_TabVarAchat
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Actif As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_CaractNom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_CaractValeur As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Code As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Description As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_InfoGenCode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NclNiveau As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NclParent As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Nom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_NumGencode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_Stock As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_StockAlertMax As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_StockAlertMaxGest As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_StockAlertMin As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_StockAlertMinGest As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarRes_StockGest As String
	#tag EndProperty

	#tag Property, Flags = &h0
		VarVente_Tab As Class_TabVarVente
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_ArticleFich", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events LBTN_OK
	#tag Event
		Sub Action()
		  Dim BolVoid as Boolean
		  
		  if Valide_Formulaire then
		    
		    EcranVersObjet
		    
		    If AccessMode_Data="MODIF" then
		      ArticleActuel.DBase_Update
		    end if
		    
		    If AccessMode_Data="ADD"   then
		      ArticleActuel.DBase_Create
		      Caract_Tab.Tab_AffecteArticleTemp(ArticleActuel.Numero)
		      Img_Tab.Tab_AffecteArticleTemp(ArticleActuel.Numero)
		      GenCode_Tab.Tab_AffecteArticleTemp(ArticleActuel.Numero)
		      VarAchat_Tab.Tab_AffecteArticleTemp(ArticleActuel.Numero)
		      VarVente_Tab.Tab_AffecteArticleTemp(ArticleActuel.Numero)
		    end if
		    
		    if SourceWindowName="Win_ArticleLst" then
		      BolVoid = Win_ArticleLst.Page_Lire
		    end if
		    
		    
		    
		    Caract_Tab.Base_Sauve
		    Img_Tab.Base_Sauve
		    GenCode_Tab.Base_Sauve
		    VarAchat_Tab.Base_Sauve
		    VarVente_Tab.Base_Sauve
		    
		    ForceExit=true
		    self.close
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
#tag Events LBTN_BLOCAGE
	#tag Event
		Sub Action()
		  if me.Icon=lock_32X then
		    me.Icon=unlock_32X
		    if AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      ArticleActuel.BLOCAGE="N"
		      Enable_Formulaire(True)
		    end if
		  else
		    me.Icon=lock_32X
		    If AccesPerm_Data.Blocage="O" And AccesPerm_Data.ModeAcces="W" then
		      ArticleActuel.BLOCAGE="O"
		      Enable_Formulaire(False)
		    end if
		  end if
		  
		End Sub
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
#tag Events Chk_StockGest
	#tag Event
		Sub Action()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_Caract
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2 = 0 then
		    g.ForeColor = &cFFFFFF // white color
		  else
		    g.ForeColor =  &cF0F0F0 // gray color
		  end if
		  g.FillRect 0,0, g.Width, g.Height
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Caract_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    Caract_TypeSaisie("MOD")
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_CaractCancel
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  If not(  _
		    VarRes_CaractNom             =    Pop_CaractNom.Text        and _
		    VarRes_CaractValeur          =    TAr_CaractValeur.Text         _
		    ) then
		    
		    RepUser=MsgBox("Abandonner la saisie de la caractéristique ?",52)
		    
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		  end if
		  
		  Pag_Caract.Value=0
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_CaractOK
	#tag Event
		Sub Action()
		  If Pop_CaractNom.ListIndex>0 then
		    Valide_Caract
		  else
		    MsgBox "Veuillez choisir un type de caracteristique dans la liste"
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddCaract
	#tag Event
		Sub Action()
		  Caract_TypeSaisie("ADD")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelCaract
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  if Lst_Caract.SelCount >0 then
		    RepUser=MsgBox("Supprimer cette caractéristique de la liste ?"+EndOfLine+"Ces modifications ne seront enregistrées qu'à la validation de la fiche article",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    Caract_Tab.Tab_Supprime(Lst_Caract.Cell(Lst_Caract.ListIndex,0).CDbl)
		    Lst_Caract.RemoveRow(Lst_Caract.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ModifCaract
	#tag Event
		Sub Action()
		  Caract_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_GenCode
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2 = 0 then
		    g.ForeColor = &cFFFFFF // white color
		  else
		    g.ForeColor =  &cF0F0F0 // gray color
		  end if
		  g.FillRect 0,0, g.Width, g.Height
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  GenCode_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    GenCode_TypeSaisie("MOD")
		  end if
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_NumGencode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    Txt_InfoGenCode.SetFocus
		    return True
		  end if
		  return App.Valide_TxtNumKeydown(me,Key,True)
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Txt_InfoGenCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if  Touche_Valide(Key) then
		    LBTN_GenCodeOK.SetFocus
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_GenCodeOK
	#tag Event
		Sub Action()
		  Valide_GenCode
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_GenCodeCancel
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  If not(  _
		    VarRes_NumGencode        =    Txt_NumGencode.Text       and _
		    VarRes_InfoGenCode       =    Txt_InfoGenCode.Text          _
		    ) then
		    
		    RepUser=MsgBox("Abandonner la saisie du gencode ?",52)
		    
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		  end if
		  
		  Pag_GenCode.Value=0
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddGenCode
	#tag Event
		Sub Action()
		  GenCode_TypeSaisie("ADD")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ModifGenCode
	#tag Event
		Sub Action()
		  GenCode_TypeSaisie("MOD")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelGenCode
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  if Lst_GenCode.SelCount >0 then
		    RepUser=MsgBox("Supprimer ce gencode de la liste ?"+EndOfLine+"Ces modifications ne seront enregistrées qu'à la validation de la fiche article",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    GenCode_Tab.Tab_Supprime(Lst_GenCode.Cell(Lst_GenCode.ListIndex,0))
		    Lst_GenCode.RemoveRow(Lst_GenCode.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddImg
	#tag Event
		Sub Action()
		  dim dlog as OpenDialog
		  dim file as folderItem
		  Dim reponse As integer
		  
		  
		  
		  
		  // Crée une boite de dialogue de type creation de fichier
		  dlog = New OpenDialog
		  dlog.PromptText = "Selection d'une image"
		  dlog.Filter="jpg;jpeg;png;gif;bmp"
		  file = dlog.ShowModal
		  
		  // Dans le cas ou l'utilisateur annule le choix d'un fichier
		  if file = NIL then
		    exit sub
		  end
		  
		  Img_Tab.NumArt    = ArticleActuel.Numero
		  Img_Tab.FichNom   = file.Name
		  Img_Tab.FichPath  = file.NativePath
		  Img_Tab.ImageBlob = file.OpenAsPicture
		  
		  Img_Tab.Tab_Ajouter
		  
		  Lst_Img.AddRow str(Img_Tab.TempArtImg.NumImg)
		  
		  Lst_Img.Cell(Lst_Img.LastIndex,1) = Img_Tab.FichNom
		  Lst_Img.Cell(Lst_Img.LastIndex,2) = Img_Tab.FichPath
		  
		  Lst_Img.ListIndex=Lst_Img.LastIndex
		  Apercu_Image
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelImg
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  Dim Position as Integer
		  
		  
		  if Lst_Img.SelCount >0 then
		    RepUser=MsgBox("Supprimer cette image de la liste ?"+EndOfLine+"Ces modifications ne seront enregistrées qu'à la validation de la fiche article",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    Position=Lst_Img.ListIndex
		    
		    Img_Tab.Tab_Supprime(Lst_Img.Cell(Lst_Img.ListIndex,0).CDbl)
		    Lst_Img.RemoveRow(Lst_Img.ListIndex)
		    IWell_Photo.Image=nil
		  end if
		  
		  if Lst_Img.ListCount>0 then
		    if Lst_Img.ListCount>Position then
		      Lst_Img.ListIndex=Position
		    else
		      Lst_Img.ListIndex=Position-1
		    end if
		    Apercu_Image
		  end if
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_ImgInfo
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2 = 0 then
		    g.ForeColor = &cFFFFFF // white color
		  else
		    g.ForeColor =  &cF0F0F0 // gray color
		  end if
		  g.FillRect 0,0, g.Width, g.Height
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  ShowURL Lst_Img.Cell(Lst_Img.ListIndex,2)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_Img
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2 = 0 then
		    g.ForeColor = &cFFFFFF // white color
		  else
		    g.ForeColor =  &cF0F0F0 // gray color
		  end if
		  g.FillRect 0,0, g.Width, g.Height
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Change()
		  Apercu_Image
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TAr_ImgCommentaire
	#tag Event
		Sub TextChange()
		  if Lst_Img.SelCount>0 then
		    Lst_Img.Cell(Lst_Img.ListIndex,4)=me.Text
		    Img_Tab.Commentaires = me.Text
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Pop_ImgFlagNom
	#tag Event
		Sub Change()
		  if Lst_Img.SelCount>0 then
		    Lst_Img.Cell(Lst_Img.ListIndex,3)=me.RowTag(me.ListIndex)
		    Img_Tab.ImgFlag=me.RowTag(me.ListIndex)
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_ExploreNomencl
	#tag Event
		Sub Action()
		  Win_NomenclArtSel.Show
		  Win_NomenclArtSel.SourceWindowName=AccessWindow_ID
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_Nomencl
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  if row mod 2 = 0 then
		    g.ForeColor = &cFFFFFF // white color
		  else
		    g.ForeColor =  &cF0F0F0 // gray color
		  end if
		  g.FillRect 0,0, g.Width, g.Height
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ModifCondAchat
	#tag Event
		Sub Action()
		  Action_ModifVarAchat
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelCondAchat
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  if Lst_VarAchat.SelCount >0 then
		    RepUser=MsgBox("Supprimer cette condition d'achat de la liste ?"+EndOfLine+"Ces modification ne seront enregistré qu'à la validation de la fiche article",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    VarAchat_Tab.Tab_Supprime(Lst_VarAchat.Cell(Lst_VarAchat.ListIndex,0).CDbl)
		    Lst_VarAchat.RemoveRow(Lst_VarAchat.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddCondAchat
	#tag Event
		Sub Action()
		  Action_AddVarAchat
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_VarAchat
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
		    Valide_LigneVarAchat
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Valide_LigneVarAchat
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CompareRows(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  Dim Date1 as New Date
		  Dim Date2 as New Date
		  Dim NumVoid as Boolean
		  
		  
		  
		  
		  
		  // Tri des Colonnes numeriques
		  if column=0 or column=3 or column=4 or column=5 then
		    If Val(Me.Cell(row1,column))> Val(Me.cell(row2,column)) then
		      result=1
		    else
		      result=-1
		    End if
		    Return True  //Informe RB d'utiliser le trie exprime par ce code
		  end if
		  
		  // Tri des Colonnes dates
		  if column=6 or column=7 then
		    
		    
		    NumVoid = ParseDate(Me.Cell(row1,column),Date1)
		    NumVoid = ParseDate(Me.Cell(row2,column),Date2)
		    result  = Date1.Operator_Compare(Date2)
		    
		    Return True  //Informe RB d'utiliser le trie exprime par ce code
		  end if
		  
		  //Pour les colonnes chaines de caractere pas besoin de code
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Lst_VarAchat.ColumnAlignment(4)=Listbox.AlignDecimal
		  Lst_VarAchat.ColumnAlignment(5)=Listbox.AlignDecimal
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_ModifCondVente
	#tag Event
		Sub Action()
		  Action_ModifVarVente
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_DelCondVente
	#tag Event
		Sub Action()
		  Dim RepUser as Integer
		  
		  if Lst_VarVente.SelCount >0 then
		    RepUser=MsgBox("Supprimer cette condition de vente de la liste ?"+EndOfLine+"Ces modification ne seront enregistré qu'à la validation de la fiche article",52)
		    if RepUser=7 then // Si User repond non
		      exit sub
		    end if
		    
		    VarVente_Tab.Tab_Supprime(Lst_VarVente.Cell(Lst_VarVente.ListIndex,0).CDbl)
		    Lst_VarVente.RemoveRow(Lst_VarVente.ListIndex)
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_AddCondVente
	#tag Event
		Sub Action()
		  Action_AddVarVente
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Lst_VarVente
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
		Sub DoubleClick()
		  Valide_LigneVarVente
		  
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
		Name="Caract_TypeAcces"
		Visible=false
		Group="Behavior"
		InitialValue="MODIF"
		Type="String"
		EditorType="MultiLineEditor"
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
		Name="GenCode_TypeAcces"
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
		Name="VarRes_Actif"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_CaractNom"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_CaractValeur"
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
		Name="VarRes_Description"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_InfoGenCode"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_NclNiveau"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_NclParent"
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
		Name="VarRes_NumGencode"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_Stock"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_StockAlertMax"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_StockAlertMaxGest"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_StockAlertMin"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_StockAlertMinGest"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VarRes_StockGest"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
