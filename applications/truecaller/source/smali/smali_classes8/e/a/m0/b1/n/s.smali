.class public final Le/a/m0/b1/n/s;
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

    const-string v1, "\n                UPDATE msg_conversations SET type = 2\n                WHERE _id IN (\n                    SELECT\n                        c._id AS _id\n                    FROM msg_conversations c\n                        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id\n                        LEFT JOIN msg_participants p on cp.participant_id = p._id\n                    WHERE c.type = 0 AND (p.normalized_destination GLOB \'*[A-Za-z]*\' OR length(p.normalized_destination) <= 6)\n                )\n            "

    const-string v2, "\n                UPDATE msg_conversations SET split_criteria = CASE \n                    type != 2 OR \n                    phonebook_count OR \n                    white_list_count OR \n                    blacklist_count OR \n                    (top_spammer_count = 1 AND type != 2) OR \n                    has_outgoing_messages OR\n                    tc_group_id IS NOT NULL\n                WHEN 1 THEN 0 ELSE 1 END\n            "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
