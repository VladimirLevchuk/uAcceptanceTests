using $rootnamespace$.TestTools.Db;
using NUnit.Framework;
using Umbraco.Core;

namespace $rootnamespace$.AcceptanceTests
{
    public class Self_Acceptance
    {
        private DbTableRepository _repo = new DbTableRepository(ApplicationContext.Current.DatabaseContext.Database);

        [Test]
        public void When_Acceptance_Test_Started_Db_Schema_Created()
        {
            _repo.CreateSchema();

            var tables = _repo.GetAll();
            Assert.That(tables.Count > 0);
        }

        [Test]
        public void When_Acceptance_Test_Started_Test_Environment_Is_Configured()
        {
            Assert.That(TestAppStart.TestEnironmentConfigured);
        }

        [TearDown]
        public void Cleanup()
        {
            _repo.DeleteAll();
        }
    }
}