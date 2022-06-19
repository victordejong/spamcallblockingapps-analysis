.class public final Le/a/m0/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Ls1/f0/h;

.field public final b:Le/a/b0/e/r/a;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/b0/e/r/a;Le/a/u3/g;)V
    .locals 1

    const-string v0, "accountSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/k0;->b:Le/a/b0/e/r/a;

    iput-object p2, p0, Le/a/m0/k0;->c:Le/a/u3/g;

    .line 2
    new-instance p1, Ls1/f0/h;

    const-string p2, "\\+?[\\d\\s()-]+"

    invoke-direct {p1, p2}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/m0/k0;->a:Ls1/f0/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n              SELECT null                                                                                        as conversation_id,\n                     0                                                                                           as conversation_hidden_number,\n                     IFNULL(a.contact_name, \'\')                                                            as name_sorting,\n                     IFNULL(LENGTH(a.contact_name) || \'|\' || a.contact_name, \'0|\')                   as names_group,\n                     IFNULL(a.contact_phonebook_id, \'\')                                                    as phonebook_ids_grouped,\n                     IFNULL(a.contact_source, \'\')                                                          as source_group,\n                     IFNULL(a.contact_spam_score, 0)                                                       as spam_score_grouped,\n                     IFNULL(a.contact_spam_type, \'\')                                                       as spam_type_grouped,\n                     0                                                                                           as top_spam_grouped,\n                     0                                                                                           as filter_action_grouped,\n                     0                                                                                           as participant_type_grouped,\n                     a.contact_image_url                                                                   as image_uri,\n                     LENGTH(d.data1) || \'|\' || d.data1 as numbers_group,\n                     i.im_peer_id                                                                as im_id,\n                     i.registration_timestamp                                                    as im_registration_timestamp,\n                     0                                                                                           as date_sorting,\n                     CASE\n                        WHEN ? AND i.im_peer_id IS NOT NULL THEN 0\n                        ELSE 1 END                                                          as transport_type,\n                     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "                                                                    as group_sorting,\n                     NULL                                                                                        as im_group_id,\n                     NULL                                                                                        as im_group_title,\n                     NULL                                                                                        as im_group_avatar,\n                     3                                                                      as conversation_preferred_transport,\n                     IFNULL(p.im_business_state, -1)                as participant_im_business_state\n              FROM data d\n                     LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n                     LEFT JOIN aggregated_contact a on a._id = r.aggregated_contact_id\n                     LEFT JOIN msg_im_users i ON i.normalized_number = d.data1\n                     LEFT JOIN msg_participants p ON p.aggregated_contact_id = a._id\n              WHERE d.data_type = 4 AND d.data8 IS NOT NULL\n        "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    .line 4
    :goto_0
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 4
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "provider"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "helper"

    move-object/from16 v4, p2

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "query_type"

    .line 1
    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "new_conversation"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const-string v5, "filter"

    .line 2
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "im_enabled"

    .line 3
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz p6, :cond_2

    .line 4
    invoke-static/range {p6 .. p6}, Le/q/f/a/d/a;->i3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    const-string v8, "conversation_type"

    .line 5
    invoke-virtual {v1, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "exclude_im_group_roles"

    .line 6
    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-static {v9}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const-string v10, "exclude_hidden_conversations"

    .line 7
    invoke-virtual {v1, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 8
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x285c6d3b

    const-string v13, "GROUP BY numbers_group"

    const-string v14, " AND participant_im_business_state != 1 "

    const/4 v15, 0x1

    if-eq v11, v12, :cond_9

    const v1, 0xd1440c2

    if-eq v11, v1, :cond_5

    goto/16 :goto_c

    .line 10
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "mms_group_type"

    .line 11
    invoke-static {v8, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v15

    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_7

    const-string v1, "\n            CASE\n               WHEN i.im_peer_id IS NOT NULL THEN 2\n               ELSE 4 END\n        "

    goto :goto_6

    :cond_7
    const/4 v1, 0x4

    .line 12
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    :goto_6
    invoke-virtual {v0, v10, v1, v6, v7}, Le/a/m0/k0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/util/List;)V

    const-string v1, "im_group_type"

    .line 14
    invoke-static {v8, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " AND i.im_peer_id IS NOT NULL "

    .line 15
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, v0, Le/a/m0/k0;->b:Le/a/b0/e/r/a;

    const-string v6, "profileNumber"

    invoke-interface {v1, v6}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v8, " AND i.normalized_number != ? "

    .line 17
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_8
    iget-object v1, v0, Le/a/m0/k0;->c:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 20
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_9
    const-string v8, "forward"

    .line 21
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "SELECT * FROM (\n"

    .line 22
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n    SELECT  *\n    FROM    ( \n        SELECT c._id                                                                                              as conversation_id,\n             c.hidden_number                                                                                      as conversation_hidden_number,\n             GROUP_CONCAT(COALESCE(a.contact_name, ig.title, \'\'), \'|\')                                  as name_sorting,\n             GROUP_CONCAT(IFNULL(LENGTH(a.contact_name) || \'|\' || a.contact_name, \'0|\'), \'\')                          as names_group,\n             GROUP_CONCAT(IFNULL(a.contact_phonebook_id, -1), \'|\')                                                          as phonebook_ids_grouped,\n             GROUP_CONCAT(IFNULL(a.contact_source, -1), \'|\')                                                                as source_group,\n             GROUP_CONCAT(IFNULL(a.contact_spam_score, 0), \'|\')                                                             as spam_score_grouped,\n             GROUP_CONCAT(IFNULL(a.contact_spam_type, 0), \'|\')                                                              as spam_type_grouped,\n             GROUP_CONCAT(IFNULL(p.is_top_spammer, 0), \'|\')                                                        as top_spam_grouped,\n             GROUP_CONCAT(IFNULL(p.filter_action, 0), \'|\')                                                         as filter_action_grouped,\n             GROUP_CONCAT(IFNULL(p.type, 0), \'|\')                                                                  as participant_type_grouped,        \n             a.contact_image_url                                                                                            as image_uri,\n             GROUP_CONCAT(LENGTH(p.normalized_destination) || \'|\' || p.normalized_destination, \'\')  as numbers_group,\n             null                                                                                                                 as im_id,\n             null                                                                                                                 as im_registration_timestamp,\n             ts.date_sorting                                                                                             as date_sorting,\n             CASE\n               WHEN c.tc_group_id IS NULL AND (NOT ? OR c.type == 1\n                   OR COUNT(p.tc_im_peer_id) == 0) THEN 1\n               ELSE 0 END                                                                                        as transport_type,\n             0                                                                                                  as group_sorting,\n             c.tc_group_id                                                                                        as im_group_id,\n             ig.title                                                                                         as im_group_title,\n             ig.avatar                                                                                        as im_group_avatar,\n             c.preferred_transport                                                                       as conversation_preferred_transport,\n             p.im_business_state                                                                     as participant_im_business_state\n        FROM msg_conversations c\n        \n             INNER JOIN msg_conversation_participants cp ON cp.conversation_id = c._id\n             INNER JOIN msg_thread_stats ts ON ts.conversation_id = c._id\n             INNER JOIN msg_participants p ON p._id = cp.participant_id\n             LEFT JOIN aggregated_contact a ON a._id = p.aggregated_contact_id\n             LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id\n             WHERE (\n    ts.filter = 1\n        AND p.type NOT IN (1, 5)\n        AND (c.tc_group_id IS NULL OR ig.roles != 0 AND (ig.roles & ?) = 0)\n        AND (? OR c.tc_group_id IS NULL)\n)\n                AND c.outgoing_messages_only_count > 0\n         GROUP BY c._id\n         ORDER BY ts.date_sorting  DESC\n         LIMIT ?\n\n      )\n    "

    .line 23
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "0"

    const-string v11, "1"

    if-eqz v6, :cond_a

    move-object v12, v11

    goto :goto_7

    :cond_a
    move-object v12, v8

    .line 24
    :goto_7
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_b

    move-object v12, v11

    goto :goto_8

    :cond_b
    move-object v12, v8

    .line 26
    :goto_8
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v12, 0xa

    .line 27
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v12, v0, Le/a/m0/k0;->c:Le/a/u3/g;

    invoke-virtual {v12}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v12

    invoke-interface {v12}, Le/a/u3/b;->isEnabled()Z

    move-result v12

    const-string v15, " AND conversation_hidden_number = 0"

    if-eqz v12, :cond_c

    const-string v12, "WHERE participant_im_business_state != 1"

    .line 29
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_d

    .line 30
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_c
    if-eqz v1, :cond_d

    const-string v12, " WHERE conversation_hidden_number = 0"

    .line 31
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_9
    const-string v12, "\nUNION\n"

    .line 32
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n             SELECT c._id                                                                                         as conversation_id,\n             c.hidden_number                                                                                      as conversation_hidden_number,\n             GROUP_CONCAT(COALESCE(a.contact_name, ig.title, \'\'), \'|\')                                  as name_sorting,\n             GROUP_CONCAT(IFNULL(LENGTH(a.contact_name) || \'|\' || a.contact_name, \'0|\'), \'\')                          as names_group,\n             GROUP_CONCAT(IFNULL(a.contact_phonebook_id, -1), \'|\')                                                          as phonebook_ids_grouped,\n             GROUP_CONCAT(IFNULL(a.contact_source, -1), \'|\')                                                                as source_group,\n             GROUP_CONCAT(IFNULL(a.contact_spam_score, 0), \'|\')                                                             as spam_score_grouped,\n             GROUP_CONCAT(IFNULL(a.contact_spam_type, 0), \'|\')                                                              as spam_type_grouped,\n             GROUP_CONCAT(IFNULL(p.is_top_spammer, 0), \'|\')                                                        as top_spam_grouped,\n             GROUP_CONCAT(IFNULL(p.filter_action, 0), \'|\')                                                         as filter_action_grouped,\n             GROUP_CONCAT(IFNULL(p.type, 0), \'|\')                                                                  as participant_type_grouped,        \n             a.contact_image_url                                                                                            as image_uri,\n             GROUP_CONCAT(LENGTH(p.normalized_destination) || \'|\' || p.normalized_destination, \'\')  as numbers_group,\n             null                                                                                                                 as im_id,\n             null                                                                                                                 as im_registration_timestamp,\n             ts.date_sorting                                                                                             as date_sorting,\n             CASE\n               WHEN c.tc_group_id IS NULL AND (NOT ? OR c.type == 1\n                   OR COUNT(p.tc_im_peer_id) == 0) THEN 1\n               ELSE 0 END                                                                                        as transport_type,\n            \n             1                                                                                                   as group_sorting,\n             c.tc_group_id                                                                                        as im_group_id,\n             ig.title                                                                                         as im_group_title,\n             ig.avatar                                                                                        as im_group_avatar,\n             c.preferred_transport                                                                         as conversation_preferred_transport,\n             p.im_business_state                                                                       as participant_im_business_state\n      FROM msg_conversations c\n             INNER JOIN msg_conversation_participants cp ON cp.conversation_id = c._id\n             INNER JOIN msg_thread_stats ts ON ts.conversation_id = c._id\n             INNER JOIN msg_participants p ON p._id = cp.participant_id\n             LEFT JOIN aggregated_contact a ON a._id = p.aggregated_contact_id\n             LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id\n             WHERE \n    ts.filter = 1\n        AND p.type NOT IN (1, 5)\n        AND (c.tc_group_id IS NULL OR ig.roles != 0 AND (ig.roles & ?) = 0)\n        AND (? OR c.tc_group_id IS NULL)\n\n    "

    .line 33
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_e

    move-object v3, v11

    goto :goto_a

    :cond_e
    move-object v3, v8

    .line 34
    :goto_a
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_f

    move-object v3, v11

    goto :goto_b

    :cond_f
    move-object v3, v8

    .line 36
    :goto_b
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_10

    .line 37
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_10
    iget-object v1, v0, Le/a/m0/k0;->c:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 39
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v1, "\n     AND c._id NOT IN (   \n        SELECT c._id                                                                                              as conversation_id\n        FROM msg_conversations c\n        \n             INNER JOIN msg_conversation_participants cp ON cp.conversation_id = c._id\n             INNER JOIN msg_thread_stats ts ON ts.conversation_id = c._id\n             INNER JOIN msg_participants p ON p._id = cp.participant_id\n             LEFT JOIN aggregated_contact a ON a._id = p.aggregated_contact_id\n             LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id\n             WHERE (\n    ts.filter = 1\n        AND p.type NOT IN (1, 5)\n        AND (c.tc_group_id IS NULL OR ig.roles != 0 AND (ig.roles & ?) = 0)\n        AND (? OR c.tc_group_id IS NULL)\n)\n                AND c.outgoing_messages_only_count > 0\n         GROUP BY c._id\n         ORDER BY ts.date_sorting  DESC\n         LIMIT ?\n\n        )\n    "

    .line 40
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_12

    move-object v8, v11

    .line 42
    :cond_12
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "GROUP BY c._id"

    .line 44
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1, v6, v7}, Le/a/m0/k0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/util/List;)V

    .line 47
    iget-object v1, v0, Le/a/m0/k0;->c:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 48
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_13
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n)"

    .line 50
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_14
    :goto_c
    new-array v1, v15, [Ljava/lang/String;

    const-string v3, "Unknown query type "

    .line 51
    invoke-static {v3, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v1, v6

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->fail([Ljava/lang/String;)V

    :cond_15
    :goto_d
    if-eqz v5, :cond_1f

    .line 52
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    .line 53
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "\nAND\n"

    .line 54
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_16
    const-string v1, "\nWHERE\n"

    .line 55
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    const-string v1, "(("

    .line 56
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    sget-object v14, Le/a/m0/l0;->a:Ljava/util/List;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 58
    new-instance v1, Le/a/m0/j0;

    invoke-direct {v1, v7, v5}, Le/a/m0/j0;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v21, 0x1e

    const-string v15, " OR "

    move-object/from16 v20, v1

    invoke-static/range {v14 .. v21}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 60
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 61
    invoke-static {v5, v1, v6, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_17

    goto :goto_10

    .line 62
    :cond_17
    :try_start_0
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-object v3, v6

    :goto_f
    if-eqz v3, :cond_18

    .line 63
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v1

    .line 64
    sget-object v8, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    .line 65
    invoke-virtual {v1, v3, v8}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 66
    :cond_18
    iget-object v3, v0, Le/a/m0/k0;->a:Ls1/f0/h;

    invoke-virtual {v3, v5}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 67
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v5}, Le/a/m0/k0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_19
    :goto_10
    move-object v1, v6

    :goto_11
    const-string v3, " OR numbers_group LIKE ?"

    const/16 v8, 0x25

    if-eqz v1, :cond_1a

    .line 68
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 70
    :cond_1a
    iget-object v1, v0, Le/a/m0/k0;->b:Le/a/b0/e/r/a;

    const-string v9, "profileCountryIso"

    invoke-interface {v1, v9}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v9, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_12

    :cond_1b
    move-object v1, v6

    .line 71
    :goto_12
    :try_start_1
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v9

    invoke-virtual {v9, v5, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Le/m/f/a/e; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    move-object v1, v6

    :goto_13
    if-eqz v1, :cond_1c

    .line 72
    iget-wide v5, v1, Le/m/f/a/o;->d:J

    .line 73
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    .line 74
    :cond_1c
    iget-object v1, v0, Le/a/m0/k0;->a:Ls1/f0/h;

    invoke-virtual {v1, v5}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 75
    invoke-virtual {v0, v5}, Le/a/m0/k0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_1d
    :goto_14
    if-eqz v6, :cond_1e

    .line 76
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_15
    const-string v1, ") "

    .line 78
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\") \")"

    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    :cond_1f
    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    const-string v1, "\nORDER BY group_sorting, date_sorting DESC, name_sorting COLLATE NOCASE;\n"

    .line 80
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Conversation destinations query.\nArgs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nQuery:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 83
    invoke-interface {v7, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v4, p8

    .line 84
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "provider.database.rawQue\u2026ay(), cancellationSignal)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
