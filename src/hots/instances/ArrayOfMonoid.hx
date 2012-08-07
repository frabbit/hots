package hots.instances;

import hots.classes.Monoid;
import hots.classes.MonoidAbstract;
import hots.extensions.ArrayOfs;



class ArrayOfMonoid<T> extends MonoidAbstract<ArrayOf<T>>
{
  public function new () super(ArrayOfSemigroup.get())
  
  
  override public inline function empty ():ArrayOf<T> 
  {
    return ArrayOfs.empty();
  }

}
