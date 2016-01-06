using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace FacebookATM.Models
{
    public class MtaFaceDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Timeline> Timelines { get; set; }
        public DbSet<Group> Groups { get; set; }

        public MtaFaceDbContext()
            : base("name=MtaFaceDbContext")
        { }

    }
}
