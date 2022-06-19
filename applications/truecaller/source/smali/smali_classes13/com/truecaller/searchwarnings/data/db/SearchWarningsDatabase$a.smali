.class public final Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase$a;
.super Ln3/c0/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/searchwarnings/data/db/SearchWarningsDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `search_warnings` (\n                `_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n                `header` TEXT NOT NULL,\n                `message` TEXT NOT NULL,\n                `backgroundColor` TEXT,\n                `foregroundColor` TEXT,\n                `iconUrl` TEXT \n                )"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n               ALTER TABLE `search_warnings` ADD COLUMN `backgroundColor` TEXT \n            "

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n               ALTER TABLE `search_warnings` ADD COLUMN `foregroundColor` TEXT \n            "

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n               ALTER TABLE `search_warnings` ADD COLUMN `iconUrl` TEXT\n            "

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
