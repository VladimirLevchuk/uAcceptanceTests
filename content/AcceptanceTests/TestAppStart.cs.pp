using $rootnamespace$.TestTools;
using NUnit.Framework;

namespace $rootnamespace$.AcceptanceTests
{
    [SetUpFixture]
    public class TestAppStart
    {
        private static TestEnvironment CurrenTestEnvironment { get; set; }

        TestEnvironment _environment;

        [SetUp]
        public void BeforeAll()
        {
            _environment = new TestEnvironment();
            CurrenTestEnvironment = _environment;
            _environment.Startup();
        }

        [TearDown]
        public void AfterAll()
        {
            _environment.Shutdown();
            CurrenTestEnvironment = null;
        }

        public static bool TestEnironmentConfigured
        {
            get { return CurrenTestEnvironment != null; }
        }
    }
}
