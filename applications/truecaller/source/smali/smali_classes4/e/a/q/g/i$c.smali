.class public final Le/a/q/g/i$c;
.super Ln3/c0/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/q/g/i;
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

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\n                DROP TABLE IF EXISTS `comment_feedback_table`;\n                "

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n                DROP INDEX IF EXISTS `index_comment_feedback_table_phone_number`;\n                "

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n                CREATE TABLE IF NOT EXISTS `comment_feedback_table` \n                (`_id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \n                `creation_timestamp` INTEGER NOT NULL,\n                `phone_number` TEXT NOT NULL, \n                `text_body` TEXT NOT NULL,\n                `source` TEXT NOT NULL, \n                `sync_state` TEXT NOT NULL, \n                `anonymous` INTEGER NOT NULL,                \n                UNIQUE(`phone_number`) ON CONFLICT REPLACE)\n                "

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "\n                CREATE UNIQUE INDEX IF NOT EXISTS `index_comment_feedback_table_phone_number` \n                ON `comment_feedback_table` (`phone_number`)\n                "

    .line 4
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method
