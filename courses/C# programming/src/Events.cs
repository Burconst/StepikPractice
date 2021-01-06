using System;

namespace src.Events
{
    public class SomeClass
    {
        private event Action onEvent;

        public event Action OnEvent 
        {
            add
            {
                System.Console.Write("add!");
                onEvent += value;
            }
            remove 
            {
                System.Console.Write("remove!");
                onEvent -=value;
            }
        }

        public void FireEvent()
        {
            onEvent?.Invoke();
        }
    }
}