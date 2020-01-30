#tag Menu
Begin Menu Mnu_Liste
   Begin MenuItem WindowMenu
      SpecialMenu = 0
      Value = "Fenetre"
      Index = -2147483648
      Text = "Fenetre"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin QuitMenuItem Ite_Exit
         SpecialMenu = 0
         Value = "Quitter Fenêtre"
         Index = -2147483648
         Text = "Quitter Fenêtre"
         ShortcutKey = "Esc"
         Shortcut = "Esc"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
   Begin MenuItem ExportMenu
      SpecialMenu = 0
      Value = "Export"
      Index = -2147483648
      Text = "Export"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Ite_ExportXML
         SpecialMenu = 0
         Value = "XML"
         Index = -2147483648
         Text = "XML"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Ite_ExportCSV
         SpecialMenu = 0
         Value = "CSV"
         Index = -2147483648
         Text = "CSV"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin MenuItem Ite_ExportExcel
         SpecialMenu = 0
         Value = "Excel"
         Index = -2147483648
         Text = "Excel"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
