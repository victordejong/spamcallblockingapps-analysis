.class public final Le/a/m0/s0;
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
    .locals 0

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    new-array p3, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p5, p3, p4

    const-string p4, "\n            SELECT\n                r._id as im_reaction_id,\n                r.message_id as im_reaction_message_id,\n                r.emoji as im_reaction_emoji,\n                r.from_peer_id as im_reaction_from_peer_id,\n                r.send_date as im_reaction_date,\n                r.status as im_reaction_status,\n\n                m.conversation_id as im_conversation_id,\n                m.status as im_message_status,\n                \n                g.title as im_group_name,\n\n                i.normalized_number as im_participant_number,\n\n                ac.contact_name as im_participant_name,\n                ac.contact_image_url as im_participant_image_url,\n                IFNULL(ac.contact_phonebook_id, -1) as im_participant_phonebook_id\n\n            FROM msg_im_reactions r\n                LEFT JOIN msg_messages m ON m._id = r.message_id\n                LEFT JOIN msg_conversations c ON m.conversation_id = c._id\n                LEFT JOIN msg_im_group_info g ON g.im_group_id = c.tc_group_id\n                LEFT JOIN msg_im_users i ON i.im_peer_id = r.from_peer_id\n                LEFT JOIN data d ON d.data_type = 4\n                   AND d.data1 = i.normalized_number\n                LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n                    OR r.from_peer_id = rc.contact_im_id\n                LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n            WHERE %s\n            GROUP BY r._id\n        "

    const-string p5, "java.lang.String.format(this, *args)"

    .line 1
    invoke-static {p3, p2, p4, p5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p7, :cond_0

    const-string p3, "ORDER BY "

    .line 2
    invoke-static {p2, p3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, p2, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026(sqlQuery, selectionArgs)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Add selection for query: \n            SELECT\n                r._id as im_reaction_id,\n                r.message_id as im_reaction_message_id,\n                r.emoji as im_reaction_emoji,\n                r.from_peer_id as im_reaction_from_peer_id,\n                r.send_date as im_reaction_date,\n                r.status as im_reaction_status,\n\n                m.conversation_id as im_conversation_id,\n                m.status as im_message_status,\n                \n                g.title as im_group_name,\n\n                i.normalized_number as im_participant_number,\n\n                ac.contact_name as im_participant_name,\n                ac.contact_image_url as im_participant_image_url,\n                IFNULL(ac.contact_phonebook_id, -1) as im_participant_phonebook_id\n\n            FROM msg_im_reactions r\n                LEFT JOIN msg_messages m ON m._id = r.message_id\n                LEFT JOIN msg_conversations c ON m.conversation_id = c._id\n                LEFT JOIN msg_im_group_info g ON g.im_group_id = c.tc_group_id\n                LEFT JOIN msg_im_users i ON i.im_peer_id = r.from_peer_id\n                LEFT JOIN data d ON d.data_type = 4\n                   AND d.data1 = i.normalized_number\n                LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n                    OR r.from_peer_id = rc.contact_im_id\n                LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n            WHERE %s\n            GROUP BY r._id\n        "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
