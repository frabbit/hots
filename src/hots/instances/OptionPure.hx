package hots.instances;

import hots.classes.Pure;
import hots.In;
import hots.of.OptionOf;
import scuts.core.extensions.Options;
import scuts.core.types.Option;

using hots.box.OptionBox;

class OptionPure implements Pure<Option<In>>
{
  public function new () {}
  
  public inline function pure<B>(b:B):OptionOf<B> 
  {
    return Options.pure(b);
  }
  
}