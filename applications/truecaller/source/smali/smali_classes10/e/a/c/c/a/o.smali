.class public final Le/a/c/c/a/o;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x16

    const/16 v1, 0x17

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `reclassified_message`\n (`message_body` TEXT NOT NULL,\n  `from_category` TEXT NOT NULL,\n  `to_category` TEXT NOT NULL,\n  `model_version` INTEGER NOT NULL,\n  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n  `created_at` INTEGER NOT NULL)"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
