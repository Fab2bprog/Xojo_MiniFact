#tag Class
Protected Class MiniFact
Inherits Application
	#tag Event
		Sub Open()
		  Accorde_Anonymous
		  
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function Ite_APropos() As Boolean Handles Ite_APropos.Action
			
			Win_Licence.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Article() As Boolean Handles Ite_Article.Action
			Win_ArticleLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_BordRecepLst() As Boolean Handles Ite_BordRecepLst.Action
			Win_BordRecepLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_CaractArticle() As Boolean Handles Ite_CaractArticle.Action
			Win_CaractLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Client() As Boolean Handles Ite_Client.Action
			Win_ClientLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_CodePostal() As Boolean Handles Ite_CodePostal.Action
			Win_CodePostalLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_CopyRightAuthor() As Boolean Handles Ite_CopyRightAuthor.Action
			Dim machaine As String
			machaine = xtkwt32uaz3
			
			machaine=machaine.ReplaceAll("_","")
			machaine=machaine.ReplaceAll(":","")
			machaine=machaine.ReplaceAll("!","")
			machaine=machaine.ReplaceAll("x","")
			machaine=machaine.ReplaceAll(";","")
			machaine=machaine.ReplaceAll("-","")
			machaine=machaine.ReplaceAll("#","")
			machaine=machaine.ReplaceAll("Z","")
			machaine=machaine.ReplaceAll(".","")
			machaine=machaine.ReplaceAll(",","")
			MsgBox(machaine)
			
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Depot() As Boolean Handles Ite_Depot.Action
			
			Win_DepotLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_FactureAdd() As Boolean Handles Ite_FactureAdd.Action
			Win_FactureFich.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_FactureLst() As Boolean Handles Ite_FactureLst.Action
			Win_FactureLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Fournisseur() As Boolean Handles Ite_Fournisseur.Action
			
			Win_FournLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Licence() As Boolean Handles Ite_Licence.Action
			
			Win_LicenceChange.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_ModeRegl() As Boolean Handles Ite_ModeRegl.Action
			
			Win_ModePaiementLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_MoyRegl() As Boolean Handles Ite_MoyRegl.Action
			Win_MoyPaiementLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Nomenclature() As Boolean Handles Ite_Nomenclature.Action
			Win_NomenclArtGest.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Observ() As Boolean Handles Ite_Observ.Action
			Win_ObservFich.Show
			Return True
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_SecurGroup() As Boolean Handles Ite_SecurGroup.Action
			Win_SecurGoupLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_SecurObjet() As Boolean Handles Ite_SecurObjet.Action
			Win_SecurObjetLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_SecurUser() As Boolean Handles Ite_SecurUser.Action
			Win_SecurUserLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Societe() As Boolean Handles Ite_Societe.Action
			Win_SocieteFich.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_Stock() As Boolean Handles Ite_Stock.Action
			Win_StockArtLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_TVA() As Boolean Handles Ite_TVA.Action
			
			Win_TaxevaLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function Ite_UnitMesure() As Boolean Handles Ite_UnitMesure.Action
			Win_UnitMesureLst.Show
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub Accorde_Anonymous()
		  MyLogUserInfo.Numero=-1
		  MyLogUserInfo.Nom="Anonymous"
		  MyLogUserInfo.Password="Anonymous"
		  MyLogUserInfo.NumGroupe=-1
		  MyLogUserInfo.NomGroupe="Anonymous"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseDatabaseFile()
		  
		  
		  Dim message as string
		  
		  if not (MainDB_Etat="CLOSE") then
		    message =  "Fermeture de la base  : "+EndOfLine+MainDB.DatabaseFile.Name
		    MainDB.Close
		    MsgBox message
		    MainDB=new REALSQLDatabase
		    MainDB_Etat="CLOSE"
		  else
		    MsgBox "Aucune base ouverte !"
		  end if
		  
		  Exception err as NilObjectException
		    MainDB_Etat="CLOSE"
		    MsgBox "Erreur : aucune base ouverte !"
		    
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateDatabaseFile() As Boolean
		  Dim MonRealDBDico as new Class_RealDBDico
		  
		  // Create the database file
		  if MainDB.CreateDatabaseFile = false then
		    // Error While Creating the Database
		    MsgBox "Erreur base de donnée" + EndOfLine + EndOfLine + "impossible de créer la base de donnée"
		    return false
		  end if
		  
		  MonRealDBDico.DBaseID=App.MainDB
		  MonRealDBDico.Initialise_Base
		  
		  return App.OpenDatabaseFile
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisplayDatabaseError(doRollback as boolean)
		  MsgBox "Erreur base de donnée : " + str(MainDB.ErrorCode) + EndOfLine + EndOfLine + MainDB.ErrorMessage
		  
		  
		  // Fait un RoolBack si demandé
		  if doRollback then
		    MainDB.rollback
		  end
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InfoUserObjet(UserID as string = "", UserGroup as String = "", UserRight as string = "", UserObjetID as string = "")
		  Dim PermClientFich as Class_AccesObjet
		  Dim RepObjet as string
		  
		  PermClientFich = new Class_AccesObjet
		  
		  if UserRight="" then
		    RepObjet  = PermClientFich.Verif_Acces(UserObjetID)
		    UserRight = PermClientFich.LibModeAcces
		  end if
		  
		  MsgBox  "Vous etes identifie en tant que : "+MyLogUserInfo.Nom+EndOfLine+_
		  "Vous etes membre du groupe d'utilisateur : "+MyLogUserInfo.NomGroupe+EndOfLine+_
		  "Vos droits sur cette fenetre sont de type : "+UserRight+EndOfLine+_
		  "L'identifiant de cette fenetre est : "+UserObjetID+EndOfLine+_
		  "Le fichier de donnee est : "+MainDB.DatabaseFile.NativePath+EndOfLine
		  
		  Exception err as NilObjectException
		    MsgBox "Erreur : Aucune information "
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function OpenDatabaseFile() As Boolean
		  
		  if MainDB.Connect = true then
		    MainDB_Etat="OPEN"
		    
		    Win_SecurPassword.Show
		    if Win_SecurPassword.AccessQuery_User(AccessWindow_ID) then
		    end if
		    
		    return true
		    
		  else
		    MsgBox "Echec de l'ouverture de la base : "+EndOfLine+MainDB.DatabaseFile.Name
		    return false
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RequeteSql(OrdreSql as String) As Boolean
		  
		  MainDB.SQLExecute (OrdreSql)
		  
		  If MainDB.error then
		    MsgBox MainDB.errormessage
		    Return false
		  Else
		    MainDB.SQLExecute ("Commit")
		    Return true
		  end if
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SuperRound(nombre as double, nbrdec as Integer) As Double
		  Dim i as Int64
		  Dim multipli as int64
		  
		  multipli=1
		  
		  for i=1 to nbrdec
		    multipli = 10 * multipli
		  next i
		  
		  nombre = nombre * multipli
		  nombre = round(nombre)
		  nombre = nombre/multipli
		  
		  return nombre
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Valide_TxtDateLostFocus(byref ChampCible as TextField, SilentMode As Boolean = False) As Boolean
		  
		  Dim MaDate as New Date
		  Dim TestValide as Boolean
		  
		  if trim(ChampCible.Text).Len=0 then
		    ChampCible.Text=""
		    ChampCible.TextColor=&c000000
		    return True
		  end if
		  
		  TestValide=ParseDate(ChampCible.Text,MaDate)
		  If not TestValide then
		    if not SilentMode then
		      MsgBox "La date saisie est invalide"
		    end if
		    ChampCible.TextColor=&cFF0000
		    ChampCible.SetFocus
		    return false
		  End if
		  
		  ChampCible.Text=MaDate.ShortDate
		  ChampCible.TextColor=&c000000
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Valide_TxtNumKeydown(byref ChampCible as TextField, Key as string, EstEntier as Boolean = false) As Boolean
		  
		  if IsNumeric( Key ) then
		    
		    // Dans le cas où on tente d'ecrire un nombre avant le signe moins le curseur est placé à la fin du ChampCible
		    if ChampCible.SelStart=0 and ChampCible.SelLength=0 and left(ChampCible.Text,1)="-"  then
		      ChampCible.SelStart=ChampCible.Text.Len
		    end if
		    
		    // Tout les chiffres doivent pourvoir etre entré
		    return false
		    
		  end if
		  
		  // Gestion du cas où la personne voudrait saisir des decimal dans un champ de type entier
		  if Key = SymbDecimal and EstEntier then
		    return true
		  end if
		  
		  
		  //Gestion des cas ou la personne tape le symbole decimal en tout premier
		  if ( Key = SymbDecimal ) and ( InStr( ChampCible.Text, SymbDecimal ) = 0 )  then
		    
		    if ChampCible.Text.Len = 0 or ChampCible.SelLength=ChampCible.Text.Len then
		      ChampCible.Text="0"
		      ChampCible.SelStart=ChampCible.Text.Len
		    end if
		    
		    if ChampCible.Text= "-" then
		      ChampCible.Text="-0"
		      ChampCible.SelStart=ChampCible.Text.Len
		    end if
		    
		    return false
		    
		  end if
		  
		  
		  // Autorise certaines clef comme les touches backspaces et delete
		  if ASC( Key ) < 32 or  ASC( Key ) =127 then
		    return false
		  end if
		  
		  
		  //Gestion du signe moins
		  if ASC( Key ) = 45 then
		    
		    if ChampCible.Text.Len >0 then
		      
		      if left(ChampCible.Text,1)="-"  then
		        // Tansformation d'un nombre negatif en nombre positif
		        ChampCible.Text=right(ChampCible.Text,ChampCible.Text.Len - 1 )
		      else
		        // Transformation d'un nombre positif en negatif
		        ChampCible.Text="-"+ChampCible.Text
		      end if
		      
		    else
		      ChampCible.text= "-"
		    end if
		    
		    //On place le curseur à la fin
		    ChampCible.SelStart=ChampCible.Text.Len
		    
		  end if
		  
		  
		  
		  // Tout ce qui n'a pas été permis est interdit
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Valide_TxtNumLostFocus(byref ChampCible as TextField, EstEntier as Boolean = false, Precision as integer = 0, ValMin as Double = - 9999999999999, ValMax as Double = 9999999999999, ValDefaut as double = 0) As Boolean
		  Dim MyNbr as Double
		  
		  // Netoyage des espaces et tabulations qui pourrait resulter d'un copier coller malheureux
		  ChampCible.Text=ReplaceAll(ChampCible.Text," ","")
		  ChampCible.Text=ReplaceAll(ChampCible.Text,chr(9),"")
		  
		  
		  // Dans le cas ou le champ est vide et qu'une valeur par defaut a été definie
		  if ChampCible.Text.Len=0  then
		    ChampCible.Text=str(ValDefaut)
		    return true
		  end if
		  
		  // Si le champ est entier et qu'une valeur decimale a été introduite on arrondie a l'entier inferieur
		  if EstEntier then
		    ChampCible.Text=str(floor(ChampCible.Text.CDbl))
		    return true
		  end if
		  
		  MyNbr = ChampCible.Text.CDbl
		  
		  //Dans le cas ou l'utilisateur à saisie plus de decimal qu'il n'en faut on arrondie la valeur
		  if Precision > 0 then
		    MyNbr = SuperRound(ChampCible.Text.CDbl,precision)
		  end if
		  
		  // Cas ou l'utilisateur à depassé les valeur min ou max
		  if MyNbr<ValMin then
		    MsgBox "La valeur que vous avez saisie ("+str(MyNbr)+") etant inferieure à la valeur minimale autorisée ("+str(ValMin)+"), "+EndOfLine+_
		    "le programme à attribué au champ la valeur minimale"
		    ChampCible.Text = str(ValMin)
		    return false
		  end if
		  
		  if MyNbr>ValMax then
		    MsgBox "La valeur que vous avez saisie ("+str(MyNbr)+") etant superieure à la valeur maximale autorisée ("+str(ValMax)+"), "+EndOfLine+_
		    "le programme à attribué au champ la valeur maximale"
		    ChampCible.Text = str(ValMax)
		    return false
		  end if
		  
		  
		  //Tout ce qui n'a pas été interdit est permis
		  ChampCible.Text=str(MyNbr)
		  return true
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		MainDB As REALSQLDatabase
	#tag EndProperty

	#tag Property, Flags = &h0
		MainDB_Etat As String = "CLOSE"
	#tag EndProperty

	#tag Property, Flags = &h0
		MyLogUserInfo As LogUserInfo
	#tag EndProperty


	#tag Constant, Name = AccessWindow_ID, Type = String, Dynamic = False, Default = \"AppMiniFact", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"Effacer", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"Effacer"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Effacer"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"Quitter", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Quitter"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant

	#tag Constant, Name = SymbDecimal, Type = String, Dynamic = False, Default = \".", Scope = Public
		#Tag Instance, Platform = Mac Carbon PEF, Language = Default, Definition  = \"\x2C"
		#Tag Instance, Platform = Mac Carbon Mach-O, Language = Default, Definition  = \"\x2C"
		#Tag Instance, Platform = Mac Classic, Language = Default, Definition  = \"\x2C"
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"\x2C"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"."
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"."
	#tag EndConstant

	#tag Constant, Name = xtkwt32uaz3, Type = String, Dynamic = False, Default = \"ZZ##\x2C#C:;.Z\x2C##Z\x2C#Z.#;;\x2CO::---xPx\x2C#Z#Z#:\x2C:Yx!#Z#.R-#-Z\x2CZ.-xIxG;\x2C#.#x-;--\x2C;!H_##\x2C#_x!#\x2CTx!_!\rZZF:#Z#.\x2C#A!;\x2C;;x-.-!Bx_#..._\x2CZ_!!--#.R\x2C::x--#\x2C.#-\x2C-Ix!C--\x2C-xE#x_;;.:  :  :\x2CzG#:A---\x2C__!.xZR:::x..-__--!Cx\x2C!:!!::\x2C...Ix##\x2C#ZZAx \t\x2CZZ.ZZ.AZ;:Ux-\x2C--!TZ.Zx.H!#xO#\x2C#x---R::#x OZ:;FZx T:H-Z-#-.....xI!xS#Z# xS:OZx--;Z#;FxTxW-####-....-xA!!xRx--Ex_ \rZB:.##;Z;.;#O:!x--._-_-RxN!;;: T.....:!!;;##H;;;--xE#x _2::##...:3_ F:#!!;;!!;!!xxx_E___Z###\x2C____xZ!!BxR#.\x2CZ#Z---xU_\x2C_xA--\x2CxZRxY _Z##\x2C#1:!!__!9x---!!___x_xZ#x!!7:::#xZ\x2CZ3\x2C__ I!N\x2CZ.#\x2C#x;;:_ B:#\x2C#!!:\x2C....:A#--x\x2C;;S--#xT:\x2C:xI-##\x2C-x\x2CA...x C:Z!;!##\x2CZ!;;;O\x2C!!..x\x2CZZ##\x2C#Rx\x2C!-Z-SxI\x2C#Z#!Zx---C:xA!Zx ;;; F:RZ\x2C##x---Ax;!;;\x2CN..;xZ--##ZZ\x2C#.ZCxEx__  E:!\x2C:!Z.#;Z;;.x.U\x2C#--Z!\x2CxR\x2Cx#Z.Z::\x2C\x2C:O--;;.;;-\x2Cx\x2CP!#..#Z\x2C#\x2C:::.:x\x2CE\x2Cx._Z_\r\r", Scope = Public
	#tag EndConstant


	#tag Structure, Name = LogUserInfo, Flags = &h0, Attributes = \"StructureAlignment \x3D 1"
		Numero as Int64
		  Password as String*20
		  Nom as String*50
		  NumGroupe as Int64
		NomGroupe as String*50
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="MainDB_Etat"
			Visible=false
			Group="Behavior"
			InitialValue="CLOSE"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
