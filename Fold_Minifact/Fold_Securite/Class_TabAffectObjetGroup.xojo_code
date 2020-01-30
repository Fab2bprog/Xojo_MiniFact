#tag Class
Protected Class Class_TabAffectObjetGroup
	#tag Method, Flags = &h0
		Sub Constructor()
		  Dim OrdreSql as string
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_OBJETGROUP"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = "CREATE  TEMPORARY TABLE   TEMP_OBJETGROUP( " +_
		  " OBJETID       VARCHAR    ,             " +_
		  " NUMGROUP      BIGINT     ,             " +_
		  " NOMGROUP      VARCHAR(50),             " +_
		  " MODEACCES     VARCHAR(3) ,             " +_
		  " BLOCAGE       VARCHAR(3) ,             " +_
		  " SRCRECORD     VARCHAR(3) ,             " +_
		  "PRIMARY KEY (OBJETID, NUMGROUP ASC)    " +_
		  ")                                       "
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function NomGroupe(Numero as int64 = - 1) As String
		  Dim OrdreSql as string
		  Dim rs as RecordSet
		  Dim Nom as String
		  
		  OrdreSql = "  SELECT NOM FROM USERGROUP WHERE NUMERO= " + str(Numero)
		  
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    Nom = rs.Field("NOM").Value
		  end if
		  
		  return Nom
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetGroup_SauveGroupe()
		  Dim OrdreSql as string
		  
		  OrdreSql = "  DELETE FROM OBJETGROUP   " +_
		  "  WHERE  OBJETID IN (SELECT DISTINCT OBJETID FROM TEMP_OBJETGROUP) "
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    
		    OrdreSql = " INSERT OR REPLACE  INTO  OBJETGROUP(     " +_
		    " OBJETID      ,                           " +_
		    " NUMGROUP     ,                           " +_
		    " MODEACCES    ,                           " +_
		    " BLOCAGE                                  " +_
		    " )                                        " +_
		    " SELECT OBJETID      ,                    " +_
		    "        NUMGROUP     ,                    " +_
		    "        MODEACCES    ,                    " +_
		    "        BLOCAGE                           " +_
		    "        FROM TEMP_OBJETGROUP              "
		    
		    
		    App.MainDB.SQLExecute(OrdreSql)
		    
		    If App.MainDB.error then
		      MsgBox App.MainDB.errormessage
		    else
		      App.MainDB.SQLExecute ("Commit")
		    end if
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetGroup_TempCharge()
		  Dim OrdreSql1 as string
		  Dim OrdreSql2 as string
		  Dim rs as RecordSet
		  Dim NumGroup as Int64
		  
		  OrdreSql1 = "  INSERT OR REPLACE  INTO  TEMP_OBJETGROUP(  " +_
		  " OBJETID      ,                           " +_
		  " NUMGROUP     ,                           " +_
		  " MODEACCES    ,                           " +_
		  " BLOCAGE      ,                           " +_
		  " SRCRECORD                                " +_
		  " )                                        " +_
		  " SELECT OBJETID      ,                    " +_
		  "        NUMGROUP     ,                    " +_
		  "        MODEACCES    ,                    " +_
		  "        BLOCAGE      ,                    " +_
		  "       'INI'                              " +_
		  "        FROM OBJETGROUP                   " +_
		  " WHERE  OBJETID ='"+ObjetID+"'"
		  
		  App.MainDB.SQLExecute(OrdreSql1)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  OrdreSql1 = " SELECT NUMGROUP FROM TEMP_OBJETGROUP"
		  
		  rs=App.MainDB.SQLSelect(OrdreSql1)
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if rs.RecordCount=0 then exit Sub
		  
		  rs.MoveFirst
		  do until rs.EOF
		    NumGroup  = rs.Field("NUMGROUP").Value
		    
		    OrdreSql2 = " UPDATE TEMP_OBJETGROUP SET NOMGROUP= '"+ NomGroupe(NumGroup) +"' WHERE  NUMGROUP = "+str(NumGroup)
		    App.MainDB.SQLExecute(OrdreSql2)
		    If App.MainDB.error then
		      MsgBox App.MainDB.errormessage
		    Else
		      App.MainDB.SQLExecute ("Commit")
		    end if
		    
		    rs.MoveNext
		    
		  loop
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ObjetGroup_TempSupprime(NumGroup as Int64)
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM TEMP_OBJETGROUP WHERE NUMGROUP="+str(NumGroup)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Ajouter(Numero as Int64)
		  Dim OrdreSql as string
		  
		  OrdreSql = "  INSERT OR IGNORE  INTO  TEMP_OBJETGROUP(  " +_
		  " OBJETID      ,                           " +_
		  " NUMGROUP     ,                           " +_
		  " NOMGROUP     ,                           " +_
		  " MODEACCES    ,                           " +_
		  " BLOCAGE      ,                           " +_
		  " SRCRECORD                                " +_
		  " )                                        " +_
		  " SELECT '"+ObjetID+"'  ,                    " +_
		  "        NUMERO       ,                    " +_
		  "        NOM          ,                    " +_
		  "       'W'           ,                    " +_
		  "       'O'            ,                    " +_
		  "       'ADD'                              " +_
		  "        FROM USERGROUP                    " +_
		  " WHERE  NUMERO ="+str(Numero)
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs       as RecordSet
		  Dim OrdreSql as String
		  Dim resultat as Integer
		  
		  // Examine modification des USER
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM OBJETGROUP,TEMP_OBJETGROUP      " +_
		  "  WHERE                                                                      " +_
		  "           OBJETGROUP.OBJETID              =  TEMP_OBJETGROUP.OBJETID        " +_
		  "       AND OBJETGROUP.NUMGROUP             =  TEMP_OBJETGROUP.NUMGROUP       " +_
		  "       AND (       OBJETGROUP.MODEACCES      <>  TEMP_OBJETGROUP.MODEACCES   " +_
		  "             OR    OBJETGROUP.BLOCAGE        <>  TEMP_OBJETGROUP.BLOCAGE     " +_
		  "        )        "
		  
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
		  
		  
		  
		  //Examine si affectation groupe
		  OrdreSql = "  SELECT COUNT(*) AS NOUVEAU FROM TEMP_OBJETGROUP LEFT JOIN OBJETGROUP " +_
		  "       ON     OBJETGROUP.OBJETID           =  TEMP_OBJETGROUP.OBJETID  " +_
		  "       AND OBJETGROUP.NUMGROUP             =  TEMP_OBJETGROUP.NUMGROUP " +_
		  "  WHERE    OBJETGROUP.NUMGROUP IS NULL                                 "
		  
		  
		  
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
		  
		  
		  
		  // Examine si desaffectation groupe
		  OrdreSql = "  SELECT COUNT(*) AS SUPPRIME FROM OBJETGROUP LEFT JOIN TEMP_OBJETGROUP " +_
		  "       ON     OBJETGROUP.OBJETID           =  TEMP_OBJETGROUP.OBJETID          " +_
		  "       AND    OBJETGROUP.NUMGROUP          =  TEMP_OBJETGROUP.NUMGROUP         " +_
		  "     WHERE    TEMP_OBJETGROUP.NUMGROUP IS NULL                                 " +_
		  "       AND    OBJETGROUP.OBJETID ='"+ObjetID+"'"
		  
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


	#tag Property, Flags = &h0
		ObjetGroup As Int64 = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		ObjetID As String
	#tag EndProperty


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
			Name="ObjetID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="ObjetGroup"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
