.class public final Le/a/q/g/i$a;
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
    .locals 3

    const-string v0, "db"

    const-string v1, "\n                    CREATE TABLE IF NOT EXISTS `contact_feedback_timestamp_table` (\n                    `_id` INTEGER NOT NULL, \n                    `contact_id` INTEGER NOT NULL, \n                    `feedback_timestamp` INTEGER NOT NULL, PRIMARY KEY(`_id`))\n                    "

    const-string v2, "\n                    CREATE UNIQUE INDEX IF NOT EXISTS `index_contact_feedback_timestamp_table_contact_id` \n                    ON `contact_feedback_timestamp_table` (`contact_id`)\n                    "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
