import h2d.Bitmap;
import h2d.Object;

class Text
{
  private var font:h2d.Font;
  private var tf:h2d.Text;
  private var parent:Object;

  public function new( parent:Object, ?fontname:String)
  {
   font = hxd.res.DefaultFont.get();
   tf = new h2d.Text(font);
   this.parent = parent;
   parent.addChild(tf);
  }

  public function print( text:String, x:Int,y:Int)
  {
    tf.text = text;
    tf.textAlign = Center;
    tf.x = x;
    tf.y = y;
  }
}


class Main extends hxd.App {
  
  var text:Text;
  var str:String = "";

  public static function main() {
    new Main();
  }

  override function init() {
    trace("debug me");
    var ma_map = [
      "key1" => "value1",
      "key2" => "value2"
    ];

    text = new Text( s2d);
        
    // ensure to have some haxe4 sugar syntax, to be sure to compile
    // with the correct compiler if you have multiple configurations.
    // (see readme for setup details)
    for (k=>v in ma_map) {
      str = str + k + " " + v + "\n";
    }
  }

  override function update(dt) {
    text.print(str, 100,10);
  }

}
