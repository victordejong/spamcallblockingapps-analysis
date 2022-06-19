.class public final Le/a/c/c/a/m;
.super Ln3/c0/f0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x15

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/c0/f0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "database"

    const-string v1, "   CREATE TABLE `action_state` (\n   `id` INTEGER NOT NULL,\n   `message_id` INTEGER NOT NULL UNIQUE,\n   `domain` TEXT NOT NULL,\n   `state` INTEGER NOT NULL,\n   `extra` TEXT NOT NULL,\n`created_at` INTEGER NOT NULL,\n   `last_updated_at` INTEGER NOT NULL,\n   PRIMARY KEY(`id`)\n       )"

    const-string v2, "CREATE UNIQUE INDEX `index_action_state_message_id`\nON action_state(message_id)"

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->u0(Ln3/e0/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
