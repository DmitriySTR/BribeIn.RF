namespace VzyatkiVRF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SampleMigrations : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Complaints", "Category_CategoryID", "dbo.Categories");
            DropIndex("dbo.Complaints", new[] { "Category_CategoryID" });
            RenameColumn(table: "dbo.Complaints", name: "Category_CategoryID", newName: "CategoryId");
            AlterColumn("dbo.Complaints", "CategoryId", c => c.Int(nullable: false));
            CreateIndex("dbo.Complaints", "CategoryId");
            AddForeignKey("dbo.Complaints", "CategoryId", "dbo.Categories", "CategoryID", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Complaints", "CategoryId", "dbo.Categories");
            DropIndex("dbo.Complaints", new[] { "CategoryId" });
            AlterColumn("dbo.Complaints", "CategoryId", c => c.Int());
            RenameColumn(table: "dbo.Complaints", name: "CategoryId", newName: "Category_CategoryID");
            CreateIndex("dbo.Complaints", "Category_CategoryID");
            AddForeignKey("dbo.Complaints", "Category_CategoryID", "dbo.Categories", "CategoryID");
        }
    }
}
