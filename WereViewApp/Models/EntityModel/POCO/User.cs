using System.Collections.Generic;
using WereViewApp.Models.DesignPattern.Interfaces;

namespace WereViewApp.Models.EntityModel {
    public class User:IDevUser {
        public User() {
            Apps = new HashSet<App>();
            CellPhones = new HashSet<CellPhone>();
            FeaturedImages = new HashSet<FeaturedImage>();
            LatestSeenNotifications = new HashSet<LatestSeenNotification>();
            Messages = new HashSet<Message>();
            Messages1 = new HashSet<Message>();
            MessageSeens = new HashSet<MessageSeen>();
            MessageSeens1 = new HashSet<MessageSeen>();
            Reports = new HashSet<Report>();
            Reviews = new HashSet<Review>();
            ReviewLikeDislikes = new HashSet<ReviewLikeDislike>();
            UserPoints = new HashSet<UserPoint>();
        }

        public long UserID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Phone { get; set; }
        public string UserName { get; set; }

        public long TotalEarnedPoints { get; set; }
        public virtual ICollection<App> Apps { get; set; }
        public virtual ICollection<CellPhone> CellPhones { get; set; }
        public virtual ICollection<FeaturedImage> FeaturedImages { get; set; }
        public virtual ICollection<LatestSeenNotification> LatestSeenNotifications { get; set; }
        public virtual ICollection<Message> Messages { get; set; }
        public virtual ICollection<Message> Messages1 { get; set; }
        public virtual ICollection<MessageSeen> MessageSeens { get; set; }
        public virtual ICollection<MessageSeen> MessageSeens1 { get; set; }
        public virtual ICollection<Report> Reports { get; set; }
        public virtual ICollection<Review> Reviews { get; set; }
        public virtual ICollection<ReviewLikeDislike> ReviewLikeDislikes { get; set; }
        public virtual ICollection<UserPoint> UserPoints { get; set; }
    }
}
