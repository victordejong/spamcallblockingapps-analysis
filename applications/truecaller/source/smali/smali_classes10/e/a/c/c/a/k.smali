.class public final Le/a/c/c/a/k;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x13

    const/16 v1, 0x14

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n            CREATE TABLE IF NOT EXISTS `tag_results` (\n            `query_name` TEXT NOT NULL,\n            `tags` TEXT NOT NULL, \n            `query_version` INTEGER NOT NULL, \n            `exceptions` TEXT,\n            `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n            `created_at` INTEGER NOT NULL\n              )\n        "

    .line 1
    invoke-static {v0}, Ls1/f0/v;->h0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
