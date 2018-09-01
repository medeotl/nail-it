/*
* Copyright (c) 2011-2018 Nicomede Fasiello
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Nicomede Fasiello <FasielloN@yahoo.it>
*/

const string GETTEXT_PACKAGE = "...";

public class NailIt : Gtk.Application {

    public NailIt () {
        Object (
            application_id: "com.github.medeotl.nail-it",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Gtk.ApplicationWindow (this);
        main_window.title = _("Nail It");
        main_window.border_width = 12;
        main_window.set_default_size(250, 300);

        var grid = new Gtk.Grid ();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 6;

        var placeholder_label = new Gtk.Label (_("Nail It!"));

        grid.add (placeholder_label);

        main_window.add (grid);
        main_window.show_all ();
    }

    public static int main (string[] args) {
        var app = new NailIt ();
        return app.run (args);
    }
}