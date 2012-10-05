package hots.instances;
import hots.classes.Show;
import hots.instances.ImListShow;
import scuts.core.extensions.ImLists;
import scuts.core.types.ImList;

class ImListShow<T> implements Show<ImList<T>> 
{

  private var showT:Show<T>;
  
  public function new (showT:Show<T>) 
  {
    this.showT = showT;
  }
  
  public function show (v:ImList<T>):String 
  {
    return ImLists.toString(v, showT.show);
  }
}