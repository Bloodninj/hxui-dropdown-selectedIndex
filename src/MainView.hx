package ;

import haxe.ui.data.DataSource;
import haxe.ui.events.UIEvent;
import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends VBox {
    public function new() {
        super();
    }

    @:bind(testDropdown, UIEvent.CHANGE)
    private function testDropdown_onChange(e:haxe.ui.events.UIEvent) {
        indexLabel.text = Std.string(testDropdown.selectedIndex);
    }
    
    @:bind(indexButton, MouseEvent.CLICK)
    private function indexButton_onClick(e:haxe.ui.events.UIEvent) {
        testDropdown.selectedIndex = 0;
    }

    @:bind(replaceButton, MouseEvent.CLICK)
    private function replaceButton_onClick(e:haxe.ui.events.UIEvent) {
        var newSource = new DataSource();
        newSource.add("New item #1");
        newSource.add("New item #2");
        newSource.add("New item #3");
        newSource.add("New item #4");
        newSource.add("New item #5");
        testDropdown.selectedIndex = -1;
        testDropdown.dataSource = newSource;
        testDropdown.selectedIndex = 0;
    }


}