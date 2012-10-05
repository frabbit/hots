package hots.of;

import hots.In;
import hots.Of;

import scuts.core.types.Io;

abstract IoOf<T> => Io<T>, <= Io<T>, => Of<Io<In>, T>, <= Of<Io<In>, T> {}