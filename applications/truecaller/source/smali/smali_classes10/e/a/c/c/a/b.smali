.class public final Le/a/c/c/a/b;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0xb

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `insights_reminders` (`uniqueRefId` TEXT PRIMARY KEY NOT NULL, `vendorName` TEXT NOT NULL, `due_date` INTEGER NOT NULL, `category` TEXT NOT NULL, `image_url` TEXT, `times_notified` INTEGER NOT NULL DEFAULT 0, `is_dismissed` INTEGER NOT NULL, `meta` TEXT NULL, `created_at` INTEGER NOT NULL)"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_insights_reminders_uniqueRefId` ON `insights_reminders` (`uniqueRefId`)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_insights_reminders_vendorName` ON `insights_reminders` (`vendorName`)"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_insights_reminders_category` ON `insights_reminders` (`category`)"

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
