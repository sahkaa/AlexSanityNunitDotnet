using System;
using DummyLibrary;
using NUnit.Framework;

namespace AlexSanityNunitDotnet
{
    [TestFixture]
    public class DummyClassTests
    {
        [Test]
        public void GetSomeStringTest()
        {
            Assert.AreEqual(new DummyClass().GetSomeString(), "someString");
        }
    }
}