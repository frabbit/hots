package hots.instances;
import hots.classes.Functor;
import hots.of.IoOf;
import scuts.core.extensions.Ios;
import scuts.core.types.Io;

using scuts.core.extensions.Ios;
using hots.box.IoBox;

class IoFunctor implements Functor<Io<In>>
{
  public function new () {}
  
  public function map<A,B>(x:IoOf<A>, f:A->B):IoOf<B> 
  {
    return Ios.map(x, f);
  }
}

