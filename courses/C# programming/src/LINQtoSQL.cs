using System;
using System.Collections.Generic;

namespace src.LINQtoSQL
{
    public static class SomeClass
    {
        public static IEnumerable<TP> SelectMany<TS, TP>(this IEnumerable<TS> self, Func<TS, IEnumerable<TP>> produce)
        {
            var res = new List<TP>();
            foreach(var element in self) 
            {
                foreach(var procResElem in produce(element)) 
                {
                    res.Add(procResElem);
                }
            }
            return res;
        }

        public static System.Collections.Generic.IEnumerable<T> Concat<T>(System.Collections.Generic.IEnumerable<T> first, System.Collections.Generic.IEnumerable<T>  second)
        {
            foreach(var elem in first) 
            {
                yield return elem;
            }
            foreach(var elem in second) 
            {
                yield return elem;
            }
        }

        public static System.Collections.Generic.IEnumerable<TResult> Zip<TL, TR, TResult>(System.Collections.Generic.IEnumerable<TL> left, System.Collections.Generic.IEnumerable<TR> right, Func<TL, TR, TResult> glue)
        {
            var leftEnumerator = left.GetEnumerator();
            var rightEnumerator = right.GetEnumerator();
            try 
            {
                while(leftEnumerator.MoveNext() && rightEnumerator.MoveNext()) 
                {
                    yield return glue(leftEnumerator.Current, rightEnumerator.Current);
                }
            }
            finally 
            {
                leftEnumerator.Dispose();
                rightEnumerator.Dispose();
            }
        }

    }
}