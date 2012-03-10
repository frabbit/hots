package hots.extensions;
import hots.classes.Arrow;
import hots.classes.Category;
import hots.COf;
import scuts.core.types.Tup2;


class COfExt 
{
  public static inline function 
  next <A,B,C, Cat>(f:COf<Cat, A, B>, g:COf<Cat, B, C>, cat:Category<Cat>):COf<Cat,A, C> return cat.next(f,g)
  
  public static inline function dot <A,B,C, Cat>(g:COf<Cat, B, C>, f:COf<Cat, A, B>, cat:Category<Cat>):COf<Cat, A, C> return cat.dot(g,f)
  
  public static inline function back <A,B,C, Cat>(g:COf<Cat, B, C>, f:COf<Cat, A, B>, cat:Category<Cat>):COf<Cat,A, C> return cat.back(g,f)
  
  
  
  public static inline function split <B,B1, C,C1,D, AR>(f:COf<AR,B, C>, g:COf<AR, B1, C1>, arr:Arrow<AR>):COf<AR, Tup2<B,B1>, Tup2<C,C1>> return arr.split(f,g)
  
  public static inline function first <B,C,D, AR>(f:COf<AR,B,C>, arr:Arrow<AR>):COf<AR, Tup2<B,D>, Tup2<C,D>> return arr.first(f)
  
  public static inline function second <B,C,D, AR>(f:COf<AR,B, C>, arr:Arrow<AR>):COf<AR, Tup2<D,B>, Tup2<D,C>> return arr.second(f)
    
  public static inline function fanout <B,C, C1, AR>(f:COf<AR,B, C>, g:COf<AR, B, C1>, arr:Arrow<AR>):COf<AR, B, Tup2<C,C1>> return arr.fanout(f,g)
  
  
}