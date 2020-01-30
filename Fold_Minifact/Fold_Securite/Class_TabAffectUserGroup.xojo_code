#tag Class
Protected Class Class_TabAffectUserGroup
	#tag Method, Flags = &h0
		Sub Constructor()
		  Dim OrdreSql as string
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_USER"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = "CREATE TEMPORARY TABLE  TEMP_USER  ( " +_
		  " NUMERO     BIGINT,        " +_
		  "  NOM        VARCHAR(50),  " +_
		  "  PASSWORD   VARCHAR(30),  " +_
		  "  NUMGROUP   BIGINT     ,  " +_
		  "  BLOCAGE    VARCHAR   ,   " +_
		  "  RSXUSER    BIGINT    ,   " +_
		  "  RSXETAT    VARCHAR(3),   " +_
		  " SRCRECORD VARCHAR(3), "+_
		  " PRIMARY KEY (NUMERO ASC)  " +_
		  " ) "
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
		  
		  OrdreSql = "  INSERT OR REPLACE  INTO  TEMP_USER(  " +_
		  "  NUMERO   ,                           " +_
		  "  NOM      ,                           " +_
		  "  PASSWORD ,                           " +_
		  "  NUMGROUP ,                           " +_
		  "  BLOCAGE  ,                           " +_
		  "  RSXUSER  ,                           " +_
		  "  RSXETAT ,                            " +_
		  "  SRCRECORD                            "+_
		  " )                                     " +_
		  " SELECT NUMERO    ,                    " +_
		  "        NOM       ,                    " +_
		  "        PASSWORD  ,                    " +_
		  str(UserGroup)                        + ", "+_
		  "        BLOCAGE   ,                    " +_
		  "        RSXUSER   ,                    " +_
		  "        RSXETAT ,                      " +_
		  "       'ADD'                           " +_
		  "        FROM USER                      " +_
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
		  Dim rs as RecordSet
		  Dim OrdreSql as String
		  Dim resultat    as Integer
		  
		  // Examine modification des USER
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM USER,TEMP_USER   " +_
		  "  WHERE                                                                                                 " +_
		  "            USER.NUMERO            =   TEMP_USER.NUMERO                 " +_
		  "    AND  USER.NUMGROUP    <>  TEMP_USER.NUMGROUP          "
		  
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
		  
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub User_SauveGroupe(ForceGroupe as Int64 = - 1)
		  Dim OrdreSql as String
		  Dim rs as RecordSet
		  Dim rsNumero as int64
		  Dim rsNumGroup as Int64
		  
		  
		  OrdreSql = "  SELECT NUMERO,NUMGROUP FROM TEMP_USER "
		  rs=App.MainDB.SQLSelect(OrdreSql)
		  
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  end if
		  
		  if  not (rs=NIL) then
		    rs.MoveFirst
		    
		    do until rs.EOF
		      rsNumero         = rs.Field("NUMERO").Value
		      
		      if ForceGroupe=-1 then
		        rsNumGroup       = rs.Field("NUMGROUP").Value
		      else
		        rsNumGroup = ForceGroupe
		      end if
		      
		      OrdreSql = "UPDATE USER SET NUMGROUP="+str(rsNumGroup)+" WHERE NUMERO="+str(rsNumero)
		      App.MainDB.SQLExecute(OrdreSql)
		      
		      If  App.MainDB.error then
		        MsgBox App.MainDB.errormessage
		      Else
		        App.MainDB.SQLExecute ("Commit")
		      end if
		      
		      rs.MoveNext
		      
		    loop
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub User_TempCharge()
		  Dim OrdreSql as String
		  
		  OrdreSql = "  INSERT OR REPLACE  INTO  TEMP_USER(  " +_
		  "  NUMERO   ,                           " +_
		  "  NOM      ,                           " +_
		  "  PASSWORD ,                           " +_
		  "  NUMGROUP ,                           " +_
		  "  BLOCAGE  ,                           " +_
		  "  RSXUSER  ,                           " +_
		  "  RSXETAT,                              " +_
		  "  SRCRECORD                         "+_
		  " )                                     " +_
		  " SELECT NUMERO    ,                    " +_
		  "        NOM       ,                    " +_
		  "        PASSWORD  ,                    " +_
		  "        NUMGROUP  ,                    " +_
		  "        BLOCAGE   ,                    " +_
		  "        RSXUSER   ,                    " +_
		  "        RSXETAT ,                       " +_
		  "       'INI'                               " +_
		  "        FROM USER                      " +_
		  " WHERE  NUMGROUP ="+str(UserGroup)
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub User_TempSupprime(Numero as int64)
		  Dim OrdreSql as String
		  
		  // Si l'enregistrement a été chargé initialement on met le groupe a zero pour le sortir de la selection
		  OrdreSql = " UPDATE TEMP_USER SET NUMGROUP=0 WHERE SRCRECORD='INI' AND NUMERO="+str(Numero)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  // Si l'enregistrement a été simplement ajouté puis supprimé par l'utilisateur sans validation de la fenetre, on detruit l'enregistrement pour eviter que l'utilisateur sorte d'un autre groupe existant ailleur.
		  OrdreSql = " DELETE FROM TEMP_USER WHERE SRCRECORD='ADD' AND NUMERO="+str(Numero)
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		UserGroup As Int64 = 0
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
			Name="UserGroup"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
