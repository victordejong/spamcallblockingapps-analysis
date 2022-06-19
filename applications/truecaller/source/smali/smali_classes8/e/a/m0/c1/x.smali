.class public final Le/a/m0/c1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/c1/x;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    const-string v5, "provider"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "helper"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "uri"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v7, -0x1

    .line 1
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide v9, v7

    .line 2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    cmp-long v7, v9, v7

    const/16 v8, 0x29

    if-nez v7, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    const-string v12, " WHERE "

    .line 4
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    const-string v7, "conversation_id = ?"

    .line 5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_1

    const-string v7, " AND "

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x28

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    .line 9
    invoke-static {v11, v3}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    const-string v2, "filter"

    .line 10
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const-string v7, ""

    const/4 v9, 0x0

    if-nez v2, :cond_3

    move-object v2, v7

    goto :goto_2

    :cond_3
    move v10, v9

    :goto_1
    const/16 v12, 0x25

    if-ge v10, v3, :cond_4

    .line 11
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const-string v10, "WHERE (e.entity_info1 LIKE ? AND e.entity_type = 0)\n                    OR (p.type = 1 \n                    AND (p.normalized_destination LIKE ? OR a.contact_name LIKE ?))\n                "

    .line 12
    invoke-static {v10}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "filename_filter_enabled"

    .line 13
    invoke-virtual {v1, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, " OR (e.entity_info4 LIKE ? AND e.entity_type = 5)"

    .line 15
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v2, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    const-string v10, "im_id"

    .line 17
    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v7

    goto :goto_3

    .line 18
    :cond_6
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "WHERE p.tc_im_peer_id = ?"

    .line 19
    :goto_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v12, 0x1

    if-lez v10, :cond_7

    move v10, v12

    goto :goto_4

    :cond_7
    move v10, v9

    :goto_4
    if-eqz v10, :cond_8

    goto :goto_6

    .line 20
    :cond_8
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v12

    goto :goto_5

    :cond_9
    move v2, v9

    :goto_5
    if-eqz v2, :cond_a

    move-object v2, v1

    goto :goto_6

    :cond_a
    move-object v2, v7

    :goto_6
    if-eqz v4, :cond_b

    const-string v1, " ORDER BY "

    .line 21
    invoke-static {v1, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_b
    move-object v1, v7

    .line 22
    :goto_7
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_c

    move v4, v12

    goto :goto_8

    :cond_c
    move v4, v9

    :goto_8
    if-eqz v4, :cond_d

    move-object v7, v1

    :cond_d
    new-array v4, v3, [Ljava/lang/Object;

    .line 23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v2, v4, v12

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v1, "SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, \'|\') AS me_entities_id, GROUP_CONCAT(e.entity_type, \'|\') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || \'|\' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || \'|\' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || \'|\' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || \'|\' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || \'|\' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || \'|\' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || \'|\' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || \'|\' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, \'|\') AS re_entities_id, GROUP_CONCAT(re.entity_type, \'|\') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || \'|\' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || \'|\' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || \'|\' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || \'|\' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || \'|\' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || \'|\' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || \'|\' || re.entity_info6, \"\") AS re_entity_info6 FROM (SELECT * FROM msg_messages%s) m JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id %sGROUP BY m._id%s"

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v4, v3, v1, v2}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_e

    const-string v2, "SELECT "

    .line 24
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3f

    move-object/from16 v12, p4

    invoke-static/range {v12 .. v19}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    :cond_e
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/String;

    .line 26
    invoke-interface {v11, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v2, p0

    if-eqz v1, :cond_f

    .line 28
    iget-object v3, v2, Le/a/m0/c1/x;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 29
    iget-object v0, v0, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 30
    invoke-interface {v1, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_f
    const-string v0, "cursor"

    .line 31
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
