namespace VzyatkiVRF.Models {
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.Data.Entity;
    using System.Collections.Generic;
    using System.Linq;
    using System.ComponentModel.DataAnnotations.Schema;

    public class VzyatkiContext : DbContext {
        // Контекст настроен для использования строки подключения "Model" из файла конфигурации  
        // приложения (App.config или Web.config). По умолчанию эта строка подключения указывает на базу данных 
        // "VzyatkiVRF.Models.Model" в экземпляре LocalDb. 
        // 
        // Если требуется выбрать другую базу данных или поставщик базы данных, измените строку подключения "Model" 
        // в файле конфигурации приложения.
        public VzyatkiContext ()
            : base("name=Vzyatki") {
        }

        // Добавьте DbSet для каждого типа сущности, который требуется включить в модель. Дополнительные сведения 
        // о настройке и использовании модели Code First см. в статье http://go.microsoft.com/fwlink/?LinkId=390109.

        public virtual DbSet<Complaint> Complaints { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
    }

    public class Complaint {
        [Key]
        public int ComplaintID { get; set; }
        [MaxLength(100)]
        public string Title { get; set; }
        public int BrideSize { get; set; }
        [MaxLength(2000)]
        public string Text { get; set; }
        public DateTime Date { get; set; }
        public bool Checked { get; set; }
        [ForeignKey("Category")]
        public int CategoryId { get; set; }
        public virtual Category Category { get; set; }
    }

    public class Category {
        [Key]
        public int CategoryID { get; set; }
        public string CategoryName { get; set; }
        public virtual List<Complaint> Complaints { get; set; }
    }
}