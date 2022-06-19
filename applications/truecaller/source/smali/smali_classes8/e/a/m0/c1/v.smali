.class public final Le/a/m0/c1/v;
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
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "provider"

    move-object/from16 v8, p1

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "helper"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    const-string v3, "start_date"

    .line 1
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v3, "end_date"

    .line 2
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "1"

    const-string v0, "\n            date BETWEEN ? AND ? AND\n            transport != 5 AND\n            important != ? AND\n            (status & 2) = 0 AND\n            (status & 1) = 0\n        "

    const-string v3, "ts.archived_date == 0 AND tc_group_id IS NULL"

    const-string v4, "\n            SELECT * FROM msg_messages \n                WHERE "

    const-string v5, " AND category = 3 AND conversation_id IN (\n                        SELECT _id\n                            FROM (\n                                \n    SELECT \n        c._id AS _id,  \n        c.type AS type,  \n        c.tc_group_id AS tc_group_id, \n        c.has_outgoing_messages AS outgoing_message_count, \n        c.white_list_count AS white_list_count, \n        c.blacklist_count AS blacklist_count, \n        c.top_spammer_count AS top_spammer_count, \n        c.phonebook_count AS phonebook_count, \n        c.split_criteria AS split_criteria, \n        ts.filter AS filter, \n        ts.latest_message_id AS latest_message_id, \n        COUNT(a.contact_spam_type) > 0 AS is_spam\n        \n    FROM msg_conversations c \n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id \n        LEFT JOIN msg_participants p on cp.participant_id = p._id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id \n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n\n\n                                WHERE ((ts.filter = 3 AND split_criteria = 1)\n                                OR (ts.filter = 3 AND split_criteria = 2))\n                                AND "

    const-string v6, "\n                                GROUP BY cp.conversation_id\n                            )\n                            WHERE "

    .line 3
    invoke-static {v4, v0, v5, v3, v6}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n                        )    \n        "

    .line 4
    invoke-static {v5, v2, v7}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, " AND conversation_id IN (\n                        SELECT _id\n                            FROM (\n                                \n    SELECT \n        c._id AS _id,  \n        c.type AS type,  \n        c.tc_group_id AS tc_group_id, \n        c.has_outgoing_messages AS outgoing_message_count, \n        c.white_list_count AS white_list_count, \n        c.blacklist_count AS blacklist_count, \n        c.top_spammer_count AS top_spammer_count, \n        c.phonebook_count AS phonebook_count, \n        c.split_criteria AS split_criteria, \n        ts.filter AS filter, \n        ts.latest_message_id AS latest_message_id, \n        COUNT(a.contact_spam_type) > 0 AS is_spam\n        \n    FROM msg_conversations c \n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id \n        LEFT JOIN msg_participants p on cp.participant_id = p._id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id \n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n\n\n                                WHERE split_criteria = 0\n                                AND "

    .line 5
    invoke-static {v4, v0, v7, v3, v6}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n                        )\n        "

    .line 6
    invoke-static {v0, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\n             SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, \'|\') AS me_entities_id, GROUP_CONCAT(e.entity_type, \'|\') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || \'|\' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || \'|\' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || \'|\' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || \'|\' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || \'|\' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || \'|\' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || \'|\' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || \'|\' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, \'|\') AS re_entities_id, GROUP_CONCAT(re.entity_type, \'|\') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || \'|\' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || \'|\' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || \'|\' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || \'|\' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || \'|\' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || \'|\' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || \'|\' || re.entity_info6, \"\") AS re_entity_info6 \n             FROM ("

    const-string v3, " UNION ALL "

    const-string v4, ") m\n             JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id \n             GROUP BY m._id\n             ORDER BY date DESC\n        "

    .line 7
    invoke-static {v2, v5, v3, v0, v4}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v1, :cond_1

    .line 8
    array-length v0, v1

    if-nez v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    xor-int/2addr v0, v14

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v15, 0x3f

    move-object/from16 v0, p4

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v15

    invoke-static/range {v0 .. v7}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "*"

    .line 9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "\n               SELECT "

    const-string v3, " FROM ( "

    const-string v4, " )\n            "

    .line 10
    invoke-static {v2, v0, v3, v12, v4}, Le/d/c/a/a;->E2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    aput-object v9, v2, v13

    aput-object v10, v2, v14

    const/4 v3, 0x2

    aput-object v11, v2, v3

    const/4 v3, 0x3

    aput-object v9, v2, v3

    const/4 v3, 0x4

    aput-object v10, v2, v3

    const/4 v3, 0x5

    aput-object v11, v2, v3

    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "provider.database.rawQue\u2026ate, important)\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End date is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start date is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spam tab conversations selection is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
