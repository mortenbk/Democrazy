using Democrazy.Data.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Democrazy.Data {
    public class UnitOfWork : IDisposable, IUnitOfWork{

        private bool disposed = false;
        private CrazyContext context;

        public UnitOfWork() {
            CreateContext();
        }



        private void CreateContext()
        {
            if(context == null) {
 	            context = new CrazyContext();
            }
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
