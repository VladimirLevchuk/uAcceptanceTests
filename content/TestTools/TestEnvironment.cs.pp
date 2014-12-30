using $rootnamespace$.TestTools.Db;
using Umbraco.Core;

namespace $rootnamespace$.TestTools
{
    public class TestEnvironment
    {
        private readonly TestApplication _application = new TestApplication();
        private DbTableRepository _repo;

        public void Startup()
        {
            _application.Start();
            _repo = new DbTableRepository(ApplicationContext.Current.DatabaseContext.Database);
            // _repo.CreateSchema();
        }

        public void Shutdown()
        {
            // _repo.DeleteAll();
            _application.Finish();
        }
    }
}