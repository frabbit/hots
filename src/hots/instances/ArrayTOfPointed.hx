package hots.instances;
import hots.classes.Applicative;
import hots.classes.ApplicativeAbstract;
import hots.classes.FunctorAbstract;
import hots.classes.Pointed;
import hots.classes.PointedAbstract;
import hots.instances.ArrayTOfFunctor;
import hots.In;
import hots.Of;
import scuts.core.extensions.ArrayExt;
import hots.classes.Functor;

import scuts.core.extensions.Function1Ext;
import scuts.core.extensions.Function2Ext;

private typedef B = ArrayTBox;



class ArrayTOfPointedImpl<M> extends PointedAbstract<Of<M,Array<In>>> {
  
  var pointedM:Pointed<M>;

  public function new (pointedM:Pointed<M>) 
  {
    super(ArrayTOfFunctor.get(pointedM));
    this.pointedM = pointedM;
  }

  /**
   * aka return, pure
   */
  override public function pure<A>(x:A):ArrayTOf<M,A> {
    return B.box(pointedM.pure([x]));
  }
  

}

typedef ArrayTOfPointed = haxe.macro.MacroType<[hots.macros.TypeClasses.createProvider(ArrayTOfPointedImpl)]>;