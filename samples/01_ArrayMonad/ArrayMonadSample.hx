package ;



import hots.classes.Monad;
import hots.classes.MonadZero;
import hots.In;
import hots.instances.ArrayOfMonad;
import hots.instances.ArrayOfMonadZero;

using hots.extensions.MonadExt;
using hots.macros.Resolver;
using hots.macros.Box;

class ArrayMonadSample 
{

  
  public static function main () 
  {
    var a = [1,2,3].box();
    var b = [3,4,5].box();
    
    var m = a.tc(Monad); // ArrayMonad.get()
    
    var res = m.runDo(
      x <= a,
      y <= b,
      return x + y
    );
    /*
    m.flatMap(a, function (x) {
      return m.flatMap(b, function (y) {
        return m.pure(x + y);
      })
    });
    */
    
    trace(res);
    
    var mz = a.tc(MonadZero);
    
    var res2 = mz.runDo(
      x <= a,
      filter(x > 2),
      y <= b,
      return x + y
    );
    
    trace(res2);
    
  }
  
  
}
