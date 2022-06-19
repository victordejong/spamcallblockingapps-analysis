.class public final Le/a/m0/b1/n/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "db"

    const-string v1, "\n            UPDATE msg_participants\n            SET filter_action =\n                CASE (SELECT rule FROM filters WHERE value = normalized_destination AND wildcard_type = 0)\n                    WHEN 0 THEN 1\n                    WHEN 1 THEN 2\n                    ELSE 0\n                END\n            "

    const-string v2, "\n            UPDATE msg_conversations\n            SET blacklist_count = (\n                SELECT COUNT()\n                FROM msg_participants\n                WHERE _id IN (SELECT participant_id FROM msg_conversation_participants WHERE conversation_id = msg_conversations._id)\n                    AND filter_action=1\n            )\n            "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
