.class public final Le/a/c/c/a/t;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1b

    const/16 v1, 0x1c

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "CREATE TABLE IF NOT EXISTS `feedback` \n(`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,\n`created_at` INTEGER NOT NULL,\n`feedback_type` TEXT NOT NULL,\n`feedback_value` TEXT NOT NULL,\n`entity_id` INTEGER NOT NULL,\n`sender` TEXT,\n`body` TEXT NOT NULL,\n`parser_output` TEXT,\n`categorizer_output` TEXT )"

    const-string v2, "CREATE INDEX IF NOT EXISTS `index_entity_id`\nON `feedback` (`entity_id`)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
