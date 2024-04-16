import gi
gi.require_version('Gtk', '3.0')
from gi.repository import Gtk

class MyApp:

    def __init__(self):
        self.status_icon = Gtk.StatusIcon.new_from_file("/home/alex/brightnesscontrol/assets/brightness.png")
        self.status_icon.connect("popup-menu", self.on_popup_menu)
        self.status_icon.set_tooltip_text("My Application")

    def on_popup_menu(self, status_icon, button, time):
        menu = Gtk.Menu()

        option_100 = Gtk.MenuItem(label="100")
        option_100.connect("activate", self.on_option_selected, "100")
        menu.append(option_100)

        option_95 = Gtk.MenuItem(label="95")
        option_95.connect("activate", self.on_option_selected, "95")
        menu.append(option_95)

        option_90 = Gtk.MenuItem(label="90")
        option_90.connect("activate", self.on_option_selected, "90")
        menu.append(option_90)
        
        option_85 = Gtk.MenuItem(label="85")
        option_85.connect("activate", self.on_option_selected, "85")
        menu.append(option_85)
        
        option_80 = Gtk.MenuItem(label="80")
        option_80.connect("activate", self.on_option_selected, "80")
        menu.append(option_80)
        
        option_75 = Gtk.MenuItem(label="75")
        option_75.connect("activate", self.on_option_selected, "75")
        menu.append(option_75)
        
        option_70 = Gtk.MenuItem(label="70")
        option_70.connect("activate", self.on_option_selected, "70")
        menu.append(option_70)
        
        option_65 = Gtk.MenuItem(label="65")
        option_65.connect("activate", self.on_option_selected, "65")
        menu.append(option_65)

        option_60 = Gtk.MenuItem(label="60")
        option_60.connect("activate", self.on_option_selected, "60")
        menu.append(option_60)

        option_55 = Gtk.MenuItem(label="55")
        option_55.connect("activate", self.on_option_selected, "55")
        menu.append(option_55)

        option_50 = Gtk.MenuItem(label="50")
        option_50.connect("activate", self.on_option_selected, "50")
        menu.append(option_50)

        option_45 = Gtk.MenuItem(label="45")
        option_45.connect("activate", self.on_option_selected, "45")
        menu.append(option_45)

        option_40 = Gtk.MenuItem(label="40")
        option_40.connect("activate", self.on_option_selected, "40")
        menu.append(option_40)

        option_35 = Gtk.MenuItem(label="35")
        option_35.connect("activate", self.on_option_selected, "35")
        menu.append(option_35)

        option_30 = Gtk.MenuItem(label="30")
        option_30.connect("activate", self.on_option_selected, "30")
        menu.append(option_30)

        option_25 = Gtk.MenuItem(label="25")
        option_25.connect("activate", self.on_option_selected, "25")
        menu.append(option_25)

        option_20 = Gtk.MenuItem(label="20")
        option_20.connect("activate", self.on_option_selected, "20")
        menu.append(option_20)

        option_15 = Gtk.MenuItem(label="15")
        option_15.connect("activate", self.on_option_selected, "15")
        menu.append(option_15)

        option_10 = Gtk.MenuItem(label="10")
        option_10.connect("activate", self.on_option_selected, "10")
        menu.append(option_10)

        option_5 = Gtk.MenuItem(label="5")
        option_5.connect("activate", self.on_option_selected, "5")
        menu.append(option_5)

        option_4 = Gtk.MenuItem(label="4")
        option_4.connect("activate", self.on_option_selected, "4")
        menu.append(option_4)
        
        option_3 = Gtk.MenuItem(label="3")
        option_3.connect("activate", self.on_option_selected, "3")
        menu.append(option_3)
        
        option_2 = Gtk.MenuItem(label="2")
        option_2.connect("activate", self.on_option_selected, "2")
        menu.append(option_2)
        
        option_1 = Gtk.MenuItem(label="1")
        option_1.connect("activate", self.on_option_selected, "1")
        menu.append(option_1)

        option_0 = Gtk.MenuItem(label="0")
        option_0.connect("activate", self.on_option_selected, "0")
        menu.append(option_0)

        quit_item = Gtk.MenuItem(label="Quit")
        quit_item.connect("activate", self.quit)
        menu.append(quit_item)

        menu.show_all()
        menu.popup(None, None, None, None, button, time)

    def on_option_selected(self, widget, option):
        file_path = "/home/alex/brightnesscontrol/assets/brightness"
        with open(file_path, "w") as file:
            file.write(f"{option}")

    def quit(self, widget):
        Gtk.main_quit()

if __name__ == "__main__":
    Gtk.init(None)
    app = MyApp()
    Gtk.main()
