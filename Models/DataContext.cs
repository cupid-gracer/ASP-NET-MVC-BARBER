using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using MySql.Data.EntityFramework;
using System.Data.Entity.ModelConfiguration.Conventions;
using asp_net_backend.Models.API;

namespace asp_net_backend.Models
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class DataContext: DbContext
    {

        public DataContext() : base("MySqlConnection") //This 'DefaultConnection' should be equal to the connection string name on Web.config.
        {
            this.Configuration.ValidateOnSaveEnabled = false;
        }

        public DbSet<Users> Users { get; set; }
        public DbSet<Barbers> Barbers{ get; set; }
        public DbSet<Book> Books{ get; set; }
        public DbSet<Service> Services { get; set; }
        public DbSet<BookComment> BookComments { get; set; }
        public DbSet<Register> Registers { get; set; }
        public DbSet<Book_Setting> BookSettings { get; set; }
        public DbSet<Cuts> Cuts { get; set; }
        public DbSet<Location> Locations { get; set; }
        public DbSet<Review> Reviews { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
}
