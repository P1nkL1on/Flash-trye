class MyRectangle extends MovieClip {
	 static var symbolName:String = "__Packages.MyRectangle";
    static var symbolOwner:Function = MyRectangle;
    static var symbolLinked = Object.registerClass(symbolName, symbolOwner);
    
	
    private var __width:Number;
    private var __height:Number;
    public function set width(value:Number) {
        __width = value;
        draw();
    }
	 public function set WWWidth(value:Number) {
        __width = value;
        draw();
    }
    public function get width():Number {
		//trace('required a width '+__width);
        return __width;
    }
    public function set height(value:Number) {
        __height = value;
        draw();
    }
    public function get height():Number {
        return __height;
    }
    public function MyRectangle() {
        trace("created MyRectangle instance");
    }
    public function onLoad():Void {
        trace("loaded");
        __width = (width) ? width : 100;
        __height = (height) ? height : 100;
        draw();
    }
    public function draw():Void {
        clear();
        moveTo(0, 0);
        beginFill(0x000000, 100);
        lineTo(width,0 );
        lineTo(width, height);
        lineTo(0, height);
        lineTo(0, 0);
        endFill();
    }
	public function moveTo1(X, Y): Void{
		this._x = X;
		this._y = Y;
	}
	
	public static function create(container:MovieClip, typer:String,  initObj:Object):MyRectangle{
    container.triggered();
	container.attachMovie(symbolName, "rectangle_mc", container.getNextHighestDepth(), initObj);
    var A:MyRectangle= MyRectangle(container["rectangle_mc"])
	A.onEnterFrame = function (){ this._x += 1; }
	return A;
}
}