package hots.of;

import hots.In;
import hots.Of;
import scuts.core.types.Promise;

abstract PromiseOf<T> => Promise<T>, <= Promise<T>, => Of<Promise<In>, T>, <= Of<Promise<In>, T> {}