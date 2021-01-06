namespace src.Properties
{
    public class SomeClass
    {
        
        private long _hugeNumber;

        public long HugeNumber 
        {
            get
            {
                System.Console.Write("get! ");
                return _hugeNumber;
            }
            set 
            {
                System.Console.Write("set! ");
                _hugeNumber = value;
            }
        }

    }
}
