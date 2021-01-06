namespace src.SpareParts
{
    public static class SomeClass 
    {
        public static bool CompareWithEpsilon(this double self, double reference, double epsilon) 
        {
            return System.Math.Abs(self - reference) <= epsilon;
        }
    }

}