.class public final Le/a/c/c/a/a0;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x21

    const/16 v1, 0x22

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "CREATE TABLE IF NOT EXISTS `sender_info` (\n    `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n    `sender` TEXT NOT NULL, \n    `sender_name` TEXT, \n    `sender_type` TEXT, \n    `smart_features_status` TEXT, \n    `grammars_enabled` TEXT NOT NULL)"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_sender` ON `sender_info` (`sender`)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
