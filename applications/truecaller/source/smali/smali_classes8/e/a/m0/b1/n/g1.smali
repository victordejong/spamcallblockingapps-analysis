.class public final Le/a/m0/b1/n/g1;
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

    const-string v1, "\n                UPDATE msg_conversations SET is_spam = (SELECT COUNT(aggregated_contact.contact_spam_type)\n                    FROM aggregated_contact\n                    WHERE aggregated_contact._id IN (SELECT msg_participants.aggregated_contact_id\n                            FROM msg_participants\n                            WHERE msg_participants._id IN (SELECT msg_conversation_participants.participant_id FROM msg_conversation_participants WHERE \nmsg_conversation_participants.conversation_id = msg_conversations._id)))\n            "

    const-string v2, "\n                UPDATE msg_conversations\n                SET split_criteria = CASE\n                WHEN (white_list_count OR blacklist_count OR has_outgoing_messages OR tc_group_id IS NOT NULL OR ((top_spammer_count = 1 OR is_spam = 1) AND type NOT IN (2,3)\n)) = 1 THEN 0\n                WHEN (history_events_count OR type NOT IN (2, 3)\n                    OR phonebook_count)\n                    = 1 THEN 2\n                ELSE 1 END\n            "

    invoke-static {p1, v0, v1, v2}, Le/d/c/a/a;->s0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
