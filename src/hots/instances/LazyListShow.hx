package hots.instances;
import hots.classes.Show;
import scuts.core.extensions.LazyLists;
import scuts.core.types.LazyList;


class LazyListShow<T> implements Show<LazyList<T>> 
{
  private var showT:Show<T>;
  
  public function new (showT:Show<T>) 
  {
    this.showT = showT;
  }
  
  public function show (v:LazyList<T>):String 
  {
    return LazyLists.toString(v, showT.show);
  }
}