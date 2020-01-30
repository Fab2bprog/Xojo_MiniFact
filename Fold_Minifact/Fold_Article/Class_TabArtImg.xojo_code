#tag Class
Protected Class Class_TabArtImg
	#tag Method, Flags = &h0
		Sub Base_Charge()
		  ArtImg.DBaseSource="SELECT * FROM ARTIMG WHERE NUMART = "+str(Article)
		  
		  if not Self.ArtImg.DBaseReqSrc_Exec then
		    exit sub
		  end if
		  
		  
		  if ArtImg.Charge_Premier then
		    
		    do
		      
		      TempArtImg.NumArt         = ArtImg.NumArt
		      TempArtImg.NumImg         = ArtImg.NumImg
		      TempArtImg.FichNom        = ArtImg.FichNom
		      TempArtImg.FichPath       = ArtImg.FichPath
		      TempArtImg.ImgFlag        = ArtImg.ImgFlag
		      TempArtImg.Commentaires   = ArtImg.Commentaires
		      TempArtImg.ImageBlob      = ArtImg.ImageBlob
		      
		      TempArtImg.DBase_Create()
		      
		      if not ArtImg.Charge_Suivant then
		        exit do
		      end if
		      
		    loop
		    
		  end if
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Base_Sauve()
		  Dim OrdreSql as String
		  
		  OrdreSql = " DELETE FROM ARTIMG WHERE NUMART  =  " + str(Article)
		  
		  App.MainDB.SQLexecute(OrdreSql)
		  
		  OrdreSql = " INSERT OR REPLACE INTO ARTIMG(NUMART  ,  " + _
		  "                               NUMIMG          ,  " + _
		  "                               FICHNOM         ,  " + _
		  "                               FICHPATH        ,  " + _
		  "                               IMGFLAG         ,  " + _
		  "                               COMMENTAIRES    ,  " + _
		  "                               BLOCAGE         ,  " + _
		  "                               IMAGEBLOB          " + _
		  "                               )                  " + _
		  "      SELECT  NUMART         ,                    " + _
		  "              NUMIMG         ,                    " + _
		  "              FICHNOM        ,                    " + _
		  "              FICHPATH       ,                    " + _
		  "              IMGFLAG        ,                    " + _
		  "              COMMENTAIRES   ,                    " + _
		  "              BLOCAGE        ,                    " + _
		  "              IMAGEBLOB                           " + _
		  "              FROM TEMP_ARTIMG                    " + _
		  "              ORDER BY NUMART,NUMIMG              "
		  
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
		  Dim OrdreSql as string
		  
		  ArtImg         = new Class_ArtImg
		  ArtImg.DBaseID = App.MainDB
		  
		  TempArtImg = new Class_ArtImg
		  TempArtImg.DBaseID=App.MainDB
		  TempArtImg.DBaseSource="SELECT * FROM TEMP_ARTIMG"
		  TempArtImg.Table="TEMP_ARTIMG"
		  
		  
		  OrdreSql = "DROP TABLE IF EXISTS TEMP_ARTIMG"
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  OrdreSql = " CREATE TEMPORARY TABLE TEMP_ARTIMG(              " + _
		  " NUMART       BIGINT           ,   " + _
		  " NUMIMG       BIGINT           ,   " + _
		  " FICHNOM      VARCHAR(255)     ,   " + _
		  " FICHPATH     VARCHAR(255)     ,   " + _
		  " IMGFLAG      BIGINT           ,   " + _
		  " COMMENTAIRES VARCHAR(255)     ,   " + _
		  " BLOCAGE      VARCHAR(5)       ,   " + _
		  " RSXUSER      BIGINT           ,   " + _
		  " RSXETAT      VARCHAR(5)       ,   " + _
		  " RSXINFO      VARCHAR(15)      ,   " + _
		  " RSXDATE      VARCHAR(15)      ,   " + _
		  " IMAGEBLOB    BLOB             ,   " + _
		  " PRIMARY KEY (NUMART,NUMIMG ASC)   " + _
		  " )                                 "
		  
		  
		  App.MainDB.SQLExecute(OrdreSql)
		  
		  If App.MainDB.error then
		    MsgBox App.MainDB.errormessage
		  Else
		    App.MainDB.SQLExecute ("Commit")
		  end if
		  
		  
		  
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_AffecteArticleTemp(NumArt as Integer)
		  Dim OrdreSql as string
		  
		  OrdreSql = "UPDATE TEMP_ARTIMG SET NUMART="+str(NumArt)
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
		  TempArtImg.NumArt         = NumArt
		  TempArtImg.NumImg         = NumImg
		  TempArtImg.FichNom        = FichNom
		  TempArtImg.FichPath       = FichPath
		  TempArtImg.ImgFlag        = ImgFlag
		  TempArtImg.Commentaires   = Commentaires
		  TempArtImg.ImageBlob      = ImageBlob
		  TempArtImg.DBase_Create()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tab_EstModif() As Boolean
		  Dim rs as RecordSet
		  Dim OrdreSql as String
		  Dim resultat    as Integer
		  
		  // Examine modification des ArtImg
		  OrdreSql = "  SELECT COUNT(*) AS DIFFERENCE FROM ARTIMG,TEMP_ARTIMG       " + _
		  "  WHERE                                                          " + _
		  "  ARTIMG.NUMART         =   TEMP_ARTIMG.NUMART        AND        " + _
		  "  ARTIMG.NUMIMG         =   TEMP_ARTIMG.NUMIMG        AND        " + _
		  "( ARTIMG.NUMART         <>  TEMP_ARTIMG.NUMART        OR         " + _
		  "  ARTIMG.NUMIMG         <>  TEMP_ARTIMG.NUMIMG        OR         " + _
		  "  ARTIMG.FICHNOM        <>  TEMP_ARTIMG.FICHNOM       OR         " + _
		  "  ARTIMG.FICHPATH       <>  TEMP_ARTIMG.FICHPATH      OR         " + _
		  "  ARTIMG.IMGFLAG        <>  TEMP_ARTIMG.IMGFLAG       OR         " + _
		  "  ARTIMG.COMMENTAIRES   <>  TEMP_ARTIMG.COMMENTAIRES  )          "
		  
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
		  
		  //Examine si creation ArtImg
		  OrdreSql = " SELECT                 " +_
		  " count(*) AS NOUVEAU    " +_
		  " FROM                   " +_
		  " TEMP_ARTIMG         " +_
		  " LEFT JOIN ARTIMG ON ARTIMG.NUMART  = TEMP_ARTIMG.NUMART     " +_
		  "                  AND ARTIMG.NUMIMG = TEMP_ARTIMG.NUMIMG  " +_
		  " WHERE                        " +_
		  " ARTIMG.NUMIMG IS NULL   "
		  
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
		  
		  
		  //Examine si Suppression ArtImg
		  OrdreSql = " SELECT               " +_
		  " count(*) AS SUPPRIME " +_
		  " FROM                 " +_
		  " ARTIMG            " +_
		  " LEFT JOIN TEMP_ARTIMG ON TEMP_ARTIMG.NUMART  = ARTIMG.NUMART       " +_
		  "                         AND TEMP_ARTIMG.NUMIMG = ARTIMG.NUMIMG  " +_
		  " WHERE                                                                       " +_
		  "        TEMP_ARTIMG.NUMIMG IS NULL                                     " +_
		  " AND    ARTIMG.NUMART       ="+str(Article)
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
		Sub Tab_Modifier(RefArt as Int64, RefImg as Int64)
		  TempArtImg.NumArt         = RefArt
		  TempArtImg.NumImg         = RefImg
		  TempArtImg.FichNom        = FichNom
		  TempArtImg.FichPath       = FichPath
		  TempArtImg.ImgFlag        = ImgFlag
		  TempArtImg.ImageBlob      = ImageBlob
		  TempArtImg.Commentaires   = Commentaires
		  TempArtImg.ImageBlob      = ImageBlob
		  TempArtImg.DBase_Update(RefArt,RefImg)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Tab_Supprime(Numero as Int64 = 0)
		  TempArtImg.DBase_Delete(Numero)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Article As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		ArtImg As Class_ArtImg
	#tag EndProperty

	#tag Property, Flags = &h0
		BLOCAGE As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Commentaires As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FichNom As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FichPath As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageBlob As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		ImgFlag As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumArt As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		NumImg As Int64
	#tag EndProperty

	#tag Property, Flags = &h0
		Operation As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TempArtImg As Class_ArtImg
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BLOCAGE"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Commentaires"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FichNom"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FichPath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageBlob"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
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
			Name="Operation"
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
			Name="Article"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImgFlag"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumArt"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NumImg"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Int64"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
