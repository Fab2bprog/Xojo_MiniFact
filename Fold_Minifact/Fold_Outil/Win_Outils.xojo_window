#tag Window
Begin Window Win_Outils
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   HasBackColor    =   False
   HasFullScreenButton=   False
   Height          =   540
   ImplicitInstance=   True
   LiveResize      =   "False"
   MacProcID       =   0
   MaxHeight       =   540
   MaximizeButton  =   False
   MaxWidth        =   830
   MenuBar         =   1257748479
   MenuBarVisible  =   True
   MinHeight       =   540
   MinimizeButton  =   False
   MinWidth        =   830
   Placement       =   0
   Resizeable      =   False
   Title           =   " OUTILS REPARATION"
   Visible         =   True
   Width           =   830
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
      Left            =   770
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
      Top             =   480
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   40
   End
   Begin TabPanel TabPanel1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   463
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Panels          =   ""
      Scope           =   "0"
      SmallTabs       =   False
      TabDefinition   =   "Affectation valeur par defaut\rReparation base"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   14
      Transparent     =   True
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   787
      Begin GroupBox GroupBox3
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Sous Famille : Affecter une sous famille à tout les articles qui n'en n'ont pas"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   105
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   63
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   338
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   712
         Begin Label Lab_SoFam
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
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   73
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   370
            Transparent     =   True
            Underline       =   False
            Value           =   "Sous famille"
            Visible         =   True
            Width           =   109
         End
         Begin PopupMenu Pop_SoFam
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
            InitialParent   =   "GroupBox3"
            InitialValue    =   ""
            Italic          =   False
            Left            =   295
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            SelectedRowIndex=   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   370
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   275
         End
         Begin PushButton BTN_SOUSFAM
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "AFFECTER SOUS FAMILLE"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   22
            Index           =   -2147483648
            InitialParent   =   "GroupBox3"
            Italic          =   False
            Left            =   557
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MacButtonStyle  =   "0"
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   409
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   203
         End
      End
      Begin GroupBox GroupBox2
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Unite de mesure : Affecter une unité de mesure à tout les articles qui n'en n'ont pas"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   106
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   63
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   209
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   712
         Begin Label Lab_UnitAchat
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
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   73
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Multiline       =   False
            Scope           =   "0"
            Selectable      =   False
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            TextAlignment   =   "0"
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   241
            Transparent     =   True
            Underline       =   False
            Value           =   "Unité Mesure"
            Visible         =   True
            Width           =   157
         End
         Begin PopupMenu Pop_Unit
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
            InitialParent   =   "GroupBox2"
            InitialValue    =   ""
            Italic          =   False
            Left            =   292
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            SelectedRowIndex=   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   241
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   275
         End
         Begin PushButton BTN_UNITMESURE
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "AFFECTER UNITE DE MESURE"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   22
            Index           =   -2147483648
            InitialParent   =   "GroupBox2"
            Italic          =   False
            Left            =   557
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MacButtonStyle  =   "0"
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   284
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   203
         End
      End
      Begin GroupBox GroupBox1
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "TVA : Affecter un Taux à tout les articles sans TVA."
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   98
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   63
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   86
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   712
         Begin PopupMenu Pop_Tva
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
            InitialParent   =   "GroupBox1"
            InitialValue    =   ""
            Italic          =   False
            Left            =   292
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            Scope           =   "0"
            SelectedRowIndex=   0
            TabIndex        =   0
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   113
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   468
         End
         Begin Label Lab_Tva
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
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   73
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
            Top             =   113
            Transparent     =   True
            Underline       =   False
            Value           =   "Taux TVA"
            Visible         =   True
            Width           =   109
         End
         Begin PushButton BTN_TVA
            AllowAutoDeactivate=   True
            Bold            =   False
            Cancel          =   False
            Caption         =   "AFFECTER TVA"
            Default         =   False
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   22
            Index           =   -2147483648
            InitialParent   =   "GroupBox1"
            Italic          =   False
            Left            =   557
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MacButtonStyle  =   "0"
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   1
            TabStop         =   True
            Tooltip         =   ""
            Top             =   153
            Transparent     =   True
            Underline       =   False
            Visible         =   True
            Width           =   203
         End
      End
      Begin GroupBox GroupBox4
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "REPARATION DE LA BASE (ATTENTION FAIRE OBLIGATOIREMENT UNE COPIE DE SAUVEGARDE AVANT ! )"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   134
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   56
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   "0"
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   178
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   712
         Begin BevelButton LBTN_REPARBASE
            AllowAutoDeactivate=   True
            AllowFocus      =   False
            BackgroundColor =   &c00000000
            BevelStyle      =   "0"
            Bold            =   False
            ButtonStyle     =   "0"
            Caption         =   "REPARATION BASE"
            CaptionAlignment=   "3"
            CaptionDelta    =   0
            CaptionPosition =   "1"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            HasBackgroundColor=   False
            Height          =   59
            Icon            =   677505023
            IconAlignment   =   "0"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   137
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   0
            TabPanelIndex   =   2
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   205
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   209
         End
         Begin BevelButton LBTN_OPTIMISEBASE
            AllowAutoDeactivate=   True
            AllowFocus      =   False
            BackgroundColor =   &c00000000
            BevelStyle      =   "0"
            Bold            =   False
            ButtonStyle     =   "0"
            Caption         =   "OPTIMISER BASE"
            CaptionAlignment=   "3"
            CaptionDelta    =   0
            CaptionPosition =   "1"
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            HasBackgroundColor=   False
            Height          =   59
            Icon            =   228182015
            IconAlignment   =   "0"
            IconDeltaX      =   0
            IconDeltaY      =   0
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   477
            LockBottom      =   False
            LockedInPosition=   False
            LockLeft        =   True
            LockRight       =   False
            LockTop         =   True
            MenuStyle       =   "0"
            MenuValue       =   "0"
            Scope           =   "0"
            TabIndex        =   1
            TabPanelIndex   =   2
            TabStop         =   True
            TextColor       =   &c00000000
            Tooltip         =   ""
            Top             =   205
            Transparent     =   True
            Underline       =   False
            Value           =   False
            Visible         =   True
            Width           =   203
         End
         Begin Label Label1
            AllowAutoDeactivate=   True
            Bold            =   True
            DataField       =   ""
            DataSource      =   ""
            Enabled         =   True
            FontName        =   "System"
            FontSize        =   0.0
            FontUnit        =   0
            Height          =   20
            Index           =   -2147483648
            InitialParent   =   "GroupBox4"
            Italic          =   False
            Left            =   66
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
            TextAlignment   =   "2"
            TextColor       =   &cFF000000
            Tooltip         =   ""
            Top             =   282
            Transparent     =   True
            Underline       =   False
            Value           =   "EN CAS DE REPARATION VEUILLEZ VERIFIER APRES L'OPERATION L'INTEGRITE DE VOS DONNEES"
            Visible         =   True
            Width           =   687
         End
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

	#tag Event
		Sub Open()
		  Def_PopTVA
		  Def_PopUnit
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_Exit() As Boolean Handles Ite_Exit.Action
			Win_Outils.Close
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
		Sub Def_PopTVA()
		  Dim ObjTaxeva as Class_Taxeva
		  Dim element as string
		  
		  ObjTaxeva = new  Class_Taxeva
		  ObjTaxeva.DBaseID     = App.MainDB
		  ObjTaxeva.DBaseSource = "SELECT * FROM TVADESC"
		  
		  Pop_Tva.DeleteAllRows
		  Pop_Tva.AddRow("Indefini")
		  Pop_Tva.RowTag(Pop_Tva.ListCount-1) = 0
		  Pop_Tva.ListIndex = 0
		  
		  
		  if not ObjTaxeva.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if not ObjTaxeva.Charge_Premier then
		  end if
		  
		  do
		    
		    element ="No : "+str(ObjTaxeva.Numero)+" | Taux : "+str(ObjTaxeva.Taux)+"% : "+ ObjTaxeva.Nom
		    
		    Pop_Tva.AddRow(element)
		    Pop_Tva.RowTag(Pop_Tva.ListCount-1) = ObjTaxeva.Numero
		    
		  loop until not ObjTaxeva.Charge_Suivant
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Def_PopUnit()
		  Dim ObjUnite as Class_UnitMesure
		  Dim element as string
		  
		  ObjUnite = new  Class_UnitMesure
		  ObjUnite.DBaseID     = App.MainDB
		  ObjUnite.DBaseSource = "SELECT * FROM UNITMESURE"
		  
		  Pop_Unit.DeleteAllRows
		  Pop_Unit.AddRow("Indefini")
		  Pop_Unit.RowTag(Pop_Unit.ListCount-1) = 0
		  Pop_Unit.ListIndex = 0
		  
		  
		  if not ObjUnite.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  if not ObjUnite.Charge_Premier then
		  end if
		  
		  do
		    
		    element ="No : "+str(ObjUnite.Numero)+" | "+ ObjUnite.Nom
		    
		    Pop_Unit.AddRow(element)
		    Pop_Unit.RowTag(Pop_Unit.ListCount-1) = ObjUnite.Numero
		    
		  loop until not ObjUnite.Charge_Suivant
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"Win_Outils", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events LBTN_CANCEL
	#tag Event
		Sub Action()
		  self.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_SOUSFAM
	#tag Event
		Sub Action()
		  dim RepUser  as Integer
		  dim numero   as Int64
		  dim OrdreSql as string
		  
		  if Pop_SoFam.ListIndex = 0 then
		    MsgBox "Pour utiliser cette fonction selectionnez obligatoirement une sous famille !"
		    exit sub
		  end if
		  
		  RepUser=MsgBox("Appliquer cette sous familles aux articles sans sous famille ?" ,52)
		  If  RepUser=7 then
		    exit sub  //User repond non
		  end if
		  
		  numero = CDbl(Pop_SoFam.RowTag(Pop_SoFam.ListIndex))
		  
		  OrdreSql="UPDATE ARTICLE SET NCLSOFAM="+str(numero)+"  WHERE NCLSOFAM=0 OR NCLSOFAM IS NULL "
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  MsgBox "Application de la sous famille sur les articles terminee avec succes"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_UNITMESURE
	#tag Event
		Sub Action()
		  dim RepUser  as Integer
		  dim numero   as Int64
		  dim OrdreSql as string
		  
		  if Pop_Unit.ListIndex = 0 then
		    MsgBox "Pour utiliser cette fonction selectionnez obligatoirement une unité de mesure !"
		    exit sub
		  end if
		  
		  RepUser=MsgBox("Appliquer cette unité de mesure aux articles sans unités de mesure ?" ,52)
		  If  RepUser=7 then
		    exit sub  //User repond non
		  end if
		  
		  numero = CDbl(Pop_Unit.RowTag(Pop_Unit.ListIndex))
		  
		  OrdreSql="UPDATE VARACHAT SET UNITACHAT="+str(numero)+"  WHERE UNITACHAT=0 OR UNITACHAT IS NULL "
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  OrdreSql="UPDATE VARVENTE SET UNITVENTE="+str(numero)+"  WHERE UNITVENTE=0 OR UNITVENTE IS NULL "
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  MsgBox "Application de l'unite de mesure sur les conditions commerciales d'achat et de vente terminee avec succes"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BTN_TVA
	#tag Event
		Sub Action()
		  Dim MonService as  Class_Service
		  dim RepUser  as Integer
		  dim numero   as Int64
		  dim TauxTVA  as Double
		  dim OrdreSql as string
		  
		  if Pop_Tva.ListIndex = 0 then
		    MsgBox "Pour utiliser cette fonction selectionnez obligatoirement une TVA !"
		    exit sub
		  end if
		  
		  
		  RepUser=MsgBox("Appliquer cette TVA aux articles sans TVA ?" ,52)
		  If  RepUser=7 then
		    exit sub  //User repond non
		  end if
		  
		  
		  numero = CDbl(Pop_Tva.RowTag(Pop_Tva.ListIndex))
		  
		  MonService = new Class_Service
		  TauxTVA = MonService.Serv_RetourneChamp("TAUX","TVADESC","NUMERO",numero).CDbl
		  
		  
		  OrdreSql="UPDATE VARACHAT SET NUMTVA="+str(numero)+", PRIXACHATTTC = PRIXACHATHT * (1+("+str(TauxTVA)+"/100))   WHERE NUMTVA=0 OR NUMTVA IS NULL  "
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  OrdreSql="UPDATE VARVENTE SET NUMTVA="+str(numero)+", PRIXVENTETTC = PRIXVENTEHT * (1+("+str(TauxTVA)+"/100))   WHERE NUMTVA=0 OR NUMTVA IS NULL  "
		  if not app.RequeteSql(OrdreSql) then
		    exit sub
		  end if
		  
		  MsgBox "Operation sur la TVA terminee avec succes"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_REPARBASE
	#tag Event
		Sub Action()
		  dim RepUser  as Integer
		  dim OrdreSql as string
		  
		  RepUser=MsgBox("ETES VOUS SUR DE VOULOIR EXECUTER LES OPERATIONS DE REPARATION DE LA BASE ( ET D'AVOIR PROCEDE A UNE SAUVEGARDE DE LA BASE... ) ?"+EndOfLine+"Cette operation peut prendre du temps " ,52)
		  If  RepUser=7 then
		    exit sub  //User repond non
		  end if
		  
		  OrdreSql="VACUUM "
		  if not app.RequeteSql(OrdreSql) then
		    MsgBox "ATTENTION ERREUR CRITIQUE : VERIFIEZ INTEGRITE DE VOS DONNEES, BASE CORROMPUE , CHERCHEZ VOS SAUVEGARDES "
		    exit sub
		  end if
		  
		  
		  MsgBox "Operation terminee, verifiez l'integrite de vos donnees"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LBTN_OPTIMISEBASE
	#tag Event
		Sub Action()
		  dim RepUser  as Integer
		  dim OrdreSql as string
		  
		  RepUser=MsgBox("ETES VOUS SUR DE VOULOIR EXECUTER LES OPERATIONS D'OPTIMISATION DE LA BASE ( ET D'AVOIR PROCEDE A UNE SAUVEGARDE DE LA BASE... ) ?"+EndOfLine+"Cette operation peut prendre du temps "  ,52)
		  If  RepUser=7 then
		    exit sub  //User repond non
		  end if
		  
		  OrdreSql="REINDEX "
		  if not app.RequeteSql(OrdreSql) then
		    MsgBox "ATTENTION ERREUR CRITIQUE : VERIFIEZ INTEGRITE DE VOS DONNEES, BASE CORROMPUE , CHERCHEZ VOS SAUVEGARDES "
		    exit sub
		  end if
		  
		  MsgBox "Operation terminee, verifiez l'integrite de vos donnees"
		  
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
#tag EndViewBehavior
