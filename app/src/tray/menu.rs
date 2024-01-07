pub enum TrayMenuItem {
    Restart,
    Settings,
    Exit
}

impl TrayMenuItem {
    pub fn label(&self) -> &str {
        match *self {
            TrayMenuItem::Restart => "Restart",
            TrayMenuItem::Settings => "Settings",
            TrayMenuItem::Exit => "Exit"
        }
    }
}
