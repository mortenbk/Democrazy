using Democrazy.Data.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Democrazy.Data {
    public class Repository<T> : IDisposable, IRepository<T> where T : class {
        private CrazyContext context;
        private bool disposed = false;

        public Repository(CrazyContext context) {
            this.context = context;
        }

        

        protected virtual void Dispose(bool disposing) {
            if (!this.disposed) {
                if (disposing) {
                    context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose() {
            Dispose(true);
            GC.SuppressFinalize(this);
        }
    }
}
