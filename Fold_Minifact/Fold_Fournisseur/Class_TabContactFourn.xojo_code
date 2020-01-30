#tag Class
Protected Class Class_TabContactFourn
	#tag Method, Flags = &h0
		Sub Base_Charge()
		  
		  Contact.DBaseSource=" SELECT * FROM CONTACTFOURN WHERE NUMFOURN = "+str(Fourn)
		  
		  if not Self.Contact.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  if Contact.Charge_Premier then
		    
		    do
		      
		      TempContact.NumContact     = Contact.NumContact
		      TempContact.Nom            = Contact.Nom
		      TempContact.Fonction       = Contact.Fonction
		      TempContact.Email          = Contact.Email
		      TempContact.TelBureau      = Contact.TelBureau
		      TempContact.TelPortable    = Contact.TelPortable
		      TempContact.Fax            = Contact.Fax
		      
		      TempContact.DBase_Create(Fourn)
		      
		      if not Contact.Charge_Suivant then
		        exit do
		      end if
		      
		    loop
		    
		  end if
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Base_Sauve()
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM CONTACTFOURN WHERE NUMFOURN  =  " + str(Fourn)
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  
		  OrdreSql = " INSERT OR REPLACE INTO CONTACTFOURN(NUMFOURN   ,      "+_
		  "                                NUMCONTACT  ,      "+_
		  "                                NOM         ,      "+_
		  "                                FONCTION    ,      "+_
		  "                                EMAIL       ,      "+_
		  "                                TELBUREAU   ,      "+_
		  "                                TELPORTABLE ,      "+_
		  "                                FAX                "+_
		  "                                )                  "+_
		  "      SELECT  NUMFOURN  ,                         "+_
		  "              NUMCONTACT ,                         "+_
		  "              NOM        ,                         "+_
		  "              FONCTION   ,                         "+_
		  "              EMAIL      ,                         "+_
		  "              TELBUREAU  ,                         "+_
		  "              TELPORTABLE,                         "+_
		  "              FAX                                  "+_
		  "              FROM TEMP_CONTACTFOURN                    "+_
		  "              ORDER BY NUMFOURN,NUMCONTACT        "
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Contact= new Class_ContactFourn
		  TempContact=new Class_ContactFourn
		  
		  Dim OrdreSql as string
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_CONTACTFOURN"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = "CREATE TEMPORARY TABLE  TEMP_CONTACTFOURN  ( " +_
		  " NUMFOURN  BIGINT NOT NULL,           " +_
		  " NUMCONTACT  BIGINT NOT NULL,          " +_
		  " NOM  VARCHAR(100),                    " +_
		  " FONCTION  VARCHAR(50),                " +_
		  " EMAIL  VARCHAR(50),                   " +_
		  " TELBUREAU  VARCHAR(20),               " +_
		  " TELPORTABLE  VARCHAR(20),             " +_
		  " FAX  VARCHAR(20)    ,                 " +_
		  " PRIMARY KEY (NUMFOURN, NUMCONTACT)   " +_
		  " ) "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  TempContact.DBaseID=App.MainDB
		  TempContact.DBaseSource="SELECT * FROM TEMP_CONTACTFOURN"
		  TempContact.TableContact="TEMP_CONTACTFOURN"
		  
		  Contact.DBaseID=App.MainDB
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_AffecteFournTemp(numcli as Integer)
		  Dim OrdreSql as string
		  
		  OrdreSql = "UPDATE TEMP_CONTACTFOURN SET NUMFOURN="+str(numcli)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Ajouter()
		  TempContact.NumContact     = Champs.Numero
		  TempContact.Nom            = Champs.Nom
		  TempContact.Fonction       = Champs.Fonction
		  TempContact.Email          = Champs.Email
		  TempContact.TelBureau      = Champs.TelBureau
		  TempContact.TelPortable    = Champs.TelPortable
		  TempContact.Fax            = Champs.Fax
		  
		  TempContact.DBase_Create(Fourn)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs as RecordSet
		  Dim OrdreSql as String
		  Dim resultat    as Integer
		  
		  // Examine modification des contact
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM CONTACTFOURN,TEMP_CONTACTFOURN   " +_
		  "  WHERE                                                             " +_
		  "  CONTACTFOURN.NUMFOURN         =   TEMP_CONTACTFOURN.NUMFOURN        AND   " +_
		  "  CONTACTFOURN.NUMCONTACT        =   TEMP_CONTACTFOURN.NUMCONTACT             " +_
		  "  AND ( CONTACTFOURN.NOM           <>  TEMP_CONTACTFOURN.NOM            OR    " +_
		  "        CONTACTFOURN.FONCTION      <>  TEMP_CONTACTFOURN.FONCTION       OR    " +_
		  "        CONTACTFOURN.EMAIL         <>  TEMP_CONTACTFOURN.EMAIL          OR    " +_
		  "        CONTACTFOURN.TELBUREAU     <>  TEMP_CONTACTFOURN.TELBUREAU      OR    " +_
		  "        CONTACTFOURN.TELPORTABLE   <>  TEMP_CONTACTFOURN.TELPORTABLE    OR    " +_
		  "        CONTACTFOURN.FAX           <>  TEMP_CONTACTFOURN.FAX                  " +_
		  "       )                                                            "
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("DIFFERENCE").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  //Examine si creation contact
		  OrdreSql = " SELECT               " +_
		  " count(*) AS NOUVEAU  " +_
		  " FROM                 " +_
		  " TEMP_CONTACTFOURN         " +_
		  " LEFT JOIN CONTACTFOURN ON CONTACTFOURN.NUMFOURN  = TEMP_CONTACTFOURN.NUMFOURN   " +_
		  "                  AND CONTACTFOURN.NUMCONTACT = TEMP_CONTACTFOURN.NUMCONTACT  " +_
		  " WHERE                        " +_
		  " CONTACTFOURN.NUMCONTACT IS NULL   "
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("NOUVEAU").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  
		  //Examine si Suppression contact
		  OrdreSql = " SELECT               " +_
		  " count(*) AS SUPPRIME  " +_
		  " FROM                 " +_
		  " CONTACTFOURN         " +_
		  " LEFT JOIN TEMP_CONTACTFOURN ON TEMP_CONTACTFOURN.NUMFOURN  = CONTACTFOURN.NUMFOURN   " +_
		  "                       AND TEMP_CONTACTFOURN.NUMCONTACT = CONTACTFOURN.NUMCONTACT  " +_
		  " WHERE                                                                   " +_
		  "        TEMP_CONTACTFOURN.NUMCONTACT IS NULL                                  " +_
		  " AND    CONTACTFOURN.NUMFOURN       ="+str(Fourn)
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    resultat       = rs.Field("SUPPRIME").Value
		    if resultat>0 then
		      return true
		    end if
		  end if
		  
		  
		  
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Modifier(Numero as int64)
		  
		  TempContact.NumContact     = Champs.Numero
		  TempContact.Nom            = Champs.Nom
		  TempContact.Fonction       = Champs.Fonction
		  TempContact.Email          = Champs.Email
		  TempContact.TelBureau      = Champs.TelBureau
		  TempContact.TelPortable    = Champs.TelPortable
		  TempContact.Fax            = Champs.Fax
		  
		  TempContact.DBase_Update(Champs.Numero)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Supprime(Numero as int64)
		  TempContact.DBase_Delete(Numero)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Champs As LigneContact
	#tag EndProperty

	#tag Property, Flags = &h0
		Contact As Class_ContactFourn
	#tag EndProperty

	#tag Property, Flags = &h0
		Fourn As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		TempContact As Class_ContactFourn
	#tag EndProperty


	#tag Structure, Name = LigneContact, Flags = &h21, Attributes = \"StructureAlignment \x3D 1"
		Numero as int64
		  Nom as String * 100
		  Fonction as string * 100
		  EMail as string * 50
		  TelBureau as string *30
		  TelPortable as string *30
		  Fax as string*30
		  Operation as string * 5
		SourceInfo as string*5
	#tag EndStructure


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fourn"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
