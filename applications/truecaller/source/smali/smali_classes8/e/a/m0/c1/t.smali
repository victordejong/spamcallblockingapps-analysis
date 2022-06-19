.class public final Le/a/m0/c1/t;
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
    .locals 13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string v2, "provider"

    move-object v8, p1

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "helper"

    move-object v3, p2

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ids"

    .line 1
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v5, "?"

    const-string v6, ","

    invoke-static {v5, v6, v2}, Lw3/c/a/a/a/h;->u(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "StringUtils.repeat(\"?\", \",\", ids.size)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 6
    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    .line 8
    invoke-interface {v5, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-object v9, v0

    check-cast v9, [Ljava/lang/String;

    const-string v0, "\n            m._id IN("

    const-string v5, ") AND m.important != 1\n            AND ts.filter = CASE WHEN split_criteria=0 THEN 1 ELSE 2 END \n        "

    .line 10
    invoke-static {v0, v2, v5}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "WHERE "

    const-string v6, " GROUP BY m._id ORDER BY date DESC"

    .line 11
    invoke-static {v5, v0, v6}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "\n    SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, \'|\') AS me_entities_id, GROUP_CONCAT(e.entity_type, \'|\') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || \'|\' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || \'|\' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || \'|\' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || \'|\' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || \'|\' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || \'|\' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || \'|\' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || \'|\' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, \'|\') AS re_entities_id, GROUP_CONCAT(re.entity_type, \'|\') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || \'|\' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || \'|\' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || \'|\' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || \'|\' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || \'|\' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || \'|\' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || \'|\' || re.entity_info6, \"\") AS re_entity_info6 \n    \n    FROM (\n        SELECT * FROM msg_messages m\n        LEFT JOIN msg_conversations c ON c._id = m.conversation_id \n        LEFT JOIN msg_thread_stats ts on ts.conversation_id = c._id AND ts.archived_date == 0 \n        %s\n    ) m \n    \n    JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id \n    GROUP BY m._id\n    \n    ORDER BY date DESC\n"

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v2, v3, v0, v5}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_2

    .line 12
    array-length v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    const-string v0, "SELECT "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v12, 0x3f

    move-object/from16 v0, p4

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v12

    invoke-static/range {v0 .. v7}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM ("

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 13
    :cond_2
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "provider.database.rawQuery(query, args)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 14
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ids are required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
