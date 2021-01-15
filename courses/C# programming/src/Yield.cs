namespace src.Yield
{
    public static class SomeClass
    {
        public static System.Collections.Generic.IEnumerable<long> Even()
        {
            long i = 0;
            while (true) 
            {
                yield return i;
                i+=2;
            }
        }

    }
}