.class public final Le/a/m0/c1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    const-string p2, "start_date"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p4, "end_date"

    .line 2
    invoke-virtual {p3, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string p4, "\n            date BETWEEN ? AND ? AND\n            classification != 1 AND \n            transport != 5 AND\n            (status & 2) = 0 AND\n            (status & 1) = 0\n        "

    const-string p6, "\n            SELECT COUNT() as count FROM msg_messages \n                WHERE "

    const-string p7, " AND category = 3 AND conversation_id IN (\n                        SELECT _id\n                            FROM (\n                                \n    SELECT \n        c._id AS _id,  \n        c.type AS type,  \n        c.tc_group_id AS tc_group_id, \n        c.has_outgoing_messages AS outgoing_message_count, \n        c.white_list_count AS white_list_count, \n        c.blacklist_count AS blacklist_count, \n        c.top_spammer_count AS top_spammer_count, \n        c.phonebook_count AS phonebook_count, \n        c.split_criteria AS split_criteria, \n        ts.latest_message_id AS latest_message_id, \n        ts.unread_messages_count AS unread_messages_count,  \n        ts.marked_unread AS marked_unread, \n        ts.filter AS filter, \n        COUNT(a.contact_spam_type) > 0 AS is_spam\n        \n    FROM msg_conversations c \n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id \n        LEFT JOIN msg_participants p on cp.participant_id = p._id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id \n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n\n                                WHERE ts.filter = 3 AND split_criteria = 1\n                                GROUP BY cp.conversation_id\n                            )\n                            WHERE "

    const-string p8, "\n                        )    \n        "

    .line 3
    invoke-static {p6, p4, p7, p5, p8}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    const-string p8, " AND conversation_id IN (\n                        SELECT _id\n                            FROM (\n                                \n    SELECT \n        c._id AS _id,  \n        c.type AS type,  \n        c.tc_group_id AS tc_group_id, \n        c.has_outgoing_messages AS outgoing_message_count, \n        c.white_list_count AS white_list_count, \n        c.blacklist_count AS blacklist_count, \n        c.top_spammer_count AS top_spammer_count, \n        c.phonebook_count AS phonebook_count, \n        c.split_criteria AS split_criteria, \n        ts.latest_message_id AS latest_message_id, \n        ts.unread_messages_count AS unread_messages_count,  \n        ts.marked_unread AS marked_unread, \n        ts.filter AS filter, \n        COUNT(a.contact_spam_type) > 0 AS is_spam\n        \n    FROM msg_conversations c \n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id \n        LEFT JOIN msg_participants p on cp.participant_id = p._id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id \n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n\n                                WHERE split_criteria = 0\n                                GROUP BY cp.conversation_id\n                            )\n                            WHERE "

    const-string v0, "\n                        )\n        "

    .line 4
    invoke-static {p6, p4, p8, p5, v0}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 5
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p5, "\n               SELECT SUM(count) as count FROM (\n                   "

    const-string p6, "\n                      UNION ALL\n                   "

    const-string p8, "\n                )\n            "

    .line 6
    invoke-static {p5, p7, p6, p4, p8}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p2, p5, p6

    const/4 p6, 0x1

    aput-object p3, p5, p6

    const/4 p6, 0x2

    aput-object p2, p5, p6

    const/4 p2, 0x3

    aput-object p3, p5, p2

    .line 7
    invoke-virtual {p1, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026tDate, endDate)\n        )"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "End date is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start date is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Spam tab conversations selection is required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
