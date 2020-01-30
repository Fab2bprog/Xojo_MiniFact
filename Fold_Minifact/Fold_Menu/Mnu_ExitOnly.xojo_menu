#tag Menu
Begin Menu Mnu_ExitOnly
   Begin MenuItem WindowMenu
      SpecialMenu = 0
      Value = "Options"
      Index = -2147483648
      Text = "Options"
      AutoEnabled = True
      AutoEnable = True
      Visible = True
      Begin MenuItem Ite_InfoAcces
         SpecialMenu = 0
         Value = "Info autorisations"
         Index = -2147483648
         Text = "Info autorisations"
         ShortcutKey = "I"
         Shortcut = "Cmd+Shift+I"
         MenuModifier = True
         AltMenuModifier = True
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
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
End
#tag EndMenu
