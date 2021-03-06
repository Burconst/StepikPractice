namespace src.IEnum
{
    public static class SomeClass 
    {
        private static void Display<T>(System.Collections.Generic.IEnumerable<T> values) where T : class
        {
            var enumerator = values.GetEnumerator();
            try {
                int i = 0;
                while((i<10) && enumerator.MoveNext()) 
                {
                    if (enumerator.Current != null) 
                    {
                        System.Console.Write(enumerator.Current.ToString());
                    }
                    i++;
                }
            } 
            finally
            {
                if (enumerator is System.IDisposable) 
                {
                    ((System.IDisposable)enumerator).Dispose();
                }
            }
        }
    }
}