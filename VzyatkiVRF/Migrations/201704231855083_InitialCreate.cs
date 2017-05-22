namespace VzyatkiVRF.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        CategoryID = c.Int(nullable: false, identity: true),
                        CategoryName = c.String(),
                    })
                .PrimaryKey(t => t.CategoryID);
            
            CreateTable(
                "dbo.Complaints",
                c => new
                    {
                        ComplaintID = c.Int(nullable: false, identity: true),
                        Title = c.String(maxLength: 100),
                        BrideSize = c.Int(nullable: false),
                        Text = c.String(maxLength: 2000),
                        Date = c.DateTime(nullable: false),
                        Checked = c.Boolean(nullable: false),
                        Category_CategoryID = c.Int(),
                    })
                .PrimaryKey(t => t.ComplaintID)
                .ForeignKey("dbo.Categories", t => t.Category_CategoryID)
                .Index(t => t.Category_CategoryID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Complaints", "Category_CategoryID", "dbo.Categories");
            DropIndex("dbo.Complaints", new[] { "Category_CategoryID" });
            DropTable("dbo.Complaints");
            DropTable("dbo.Categories");
        }
    }
}
