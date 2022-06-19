.class public final Le/a/m0/c1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/u3/g;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u3/g;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/c1/y;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/m0/c1/y;->b:Le/a/u3/g;

    iput-boolean p3, p0, Le/a/m0/c1/y;->c:Z

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uri"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p4, -0x1

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p6, "filter"

    .line 2
    invoke-virtual {p3, p6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_3

    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string p6, "split_criteria"

    .line 3
    invoke-virtual {p3, p6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string p6, "limit"

    .line 4
    invoke-virtual {p3, p6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 5
    invoke-static {p3}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    const-string p6, " LIMIT "

    invoke-static {p6, p3}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    const-string p6, "status & 2 = 0 "

    .line 7
    invoke-static {p6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object v0, p0, Le/a/m0/c1/y;->b:Le/a/u3/g;

    iget-boolean v1, p0, Le/a/m0/c1/y;->c:Z

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->b(Le/a/u3/g;ZIIZI)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 8
    new-instance p7, Lw3/b/a/b;

    invoke-direct {p7}, Lw3/b/a/b;-><init>()V

    invoke-virtual {p7}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object p7

    const-string p8, "DateTime().withTimeAtStartOfDay()"

    invoke-static {p7, p8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide p7, p7, Lw3/b/a/e0/e;->a:J

    .line 10
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            SELECT m.*, p._id AS participant_id, p.type AS me_participant_type, p.tc_im_peer_id AS me_participant_im_id, p.raw_destination AS me_participant_raw_destination, p.normalized_destination AS me_participant_normalized_destination, p.country_code AS me_participant_country_code, p.aggregated_contact_id AS me_participant_aggregated_contact_id, p.filter_action AS me_participant_filter_action, p.is_top_spammer AS me_participant_is_top_spammer, p.top_spam_score AS me_participant_top_spam_score, p.im_business_state AS me_participant_im_business_state, a.contact_name AS me_participant_name, a.contact_image_url AS me_participant_image_url, a.contact_source AS me_participant_source, IFNULL(a.contact_badges, 0) AS me_participant_badges, a.contact_company AS me_participant_company_name, a.contact_search_time AS me_participant_search_time, IFNULL(a.contact_phonebook_id, -1) AS me_participant_phonebook_id, a.tc_id AS me_participant_tc_id, MAX(IFNULL(a.contact_spam_score, 0), p.top_spam_score) AS me_participant_spam_score, a.contact_spam_type AS me_participant_spam_type, a.contact_premium_level AS me_participant_premium_level, a.cache_control AS me_participant_cache_control, ig.title AS me_group_title, ig.avatar AS me_group_avatar, GROUP_CONCAT(e._id, \'|\') AS me_entities_id, GROUP_CONCAT(e.entity_type, \'|\') AS me_entities_type, GROUP_CONCAT(LENGTH(e.type) || \'|\' || e.type, \"\") AS me_entities_mime_type, GROUP_CONCAT(LENGTH(e.entity_info1) || \'|\' || e.entity_info1, \"\") AS entity_info1, GROUP_CONCAT(LENGTH(e.entity_info2) || \'|\' || e.entity_info2, \"\") AS entity_info2, GROUP_CONCAT(LENGTH(e.entity_info3) || \'|\' || e.entity_info3, \"\") AS entity_info3, GROUP_CONCAT(LENGTH(e.entity_info4) || \'|\' || e.entity_info4, \"\") AS entity_info4, GROUP_CONCAT(LENGTH(e.entity_info5) || \'|\' || e.entity_info5, \"\") AS entity_info5, GROUP_CONCAT(LENGTH(e.entity_info6) || \'|\' || e.entity_info6, \"\") AS entity_info6, GROUP_CONCAT(LENGTH(e.entity_info7) || \'|\' || e.entity_info7, \"\") AS entity_info7, rm.status AS re_message_status, ra.contact_name AS re_participant_name, rp.normalized_destination AS re_participant_normalized_address, rp.type AS re_participant_type, GROUP_CONCAT(re._id, \'|\') AS re_entities_id, GROUP_CONCAT(re.entity_type, \'|\') AS re_entities_type, GROUP_CONCAT(LENGTH(re.type) || \'|\' || re.type, \"\") AS re_entities_mime_type, GROUP_CONCAT(LENGTH(re.entity_info1) || \'|\' || re.entity_info1, \"\") AS re_entity_info1, GROUP_CONCAT(LENGTH(re.entity_info2) || \'|\' || re.entity_info2, \"\") AS re_entity_info2, GROUP_CONCAT(LENGTH(re.entity_info3) || \'|\' || re.entity_info3, \"\") AS re_entity_info3, GROUP_CONCAT(LENGTH(re.entity_info4) || \'|\' || re.entity_info4, \"\") AS re_entity_info4, GROUP_CONCAT(LENGTH(re.entity_info5) || \'|\' || re.entity_info5, \"\") AS re_entity_info5, GROUP_CONCAT(LENGTH(re.entity_info6) || \'|\' || re.entity_info6, \"\") AS re_entity_info6 \n\n            FROM (\n                    SELECT \n                    *,\n                    count() as grouped_by_day_count,\n                    0 as grouped_by_minute_count,\n                    MIN(date) AS group_start_date,\n                    MAX(date) AS group_end_date\n                        FROM msg_messages  \n                        WHERE \n                            conversation_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND date<"

    const-string v3, "\n                        GROUP BY (CASE WHEN group_id_day=-1 THEN _id ELSE group_id_day END)\n                        \n                        UNION\n                        \n                    SELECT \n                    *,\n                    0 as grouped_by_day_count,\n                    count() as grouped_by_minute_count,\n                    MIN(date) AS group_start_date,\n                    MAX(date) AS group_end_date\n                        FROM msg_messages  \n                        WHERE \n                            conversation_id = "

    invoke-static {v0, v2, p7, p8, v3}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 13
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " AND date>="

    const-string p5, "\n                        GROUP BY (CASE WHEN group_id_minute=-1 THEN _id ELSE group_id_minute END)\n                        \n                ORDER BY sequence_number DESC, date DESC, _id DESC\n            ) m \n\n            JOIN msg_entities e ON m._id = e.message_id LEFT JOIN msg_participants p ON p._id = m.participant_id LEFT JOIN aggregated_contact a ON p.aggregated_contact_id = a._id LEFT JOIN msg_messages rm ON rm._id = m.reply_to_msg_id LEFT JOIN msg_entities re ON rm._id = re.message_id LEFT JOIN msg_participants rp ON rp._id = rm.participant_id LEFT JOIN aggregated_contact ra ON ra._id = rp.aggregated_contact_id LEFT JOIN msg_conversations c ON m.conversation_id = c._id LEFT JOIN msg_im_group_info ig ON ig.im_group_id = c.tc_group_id \n            GROUP BY m._id\n            ORDER BY sequence_number DESC, date DESC, _id DESC\n            "

    invoke-static {v0, p4, p7, p8, p5}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n        "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 15
    invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p3, p0, Le/a/m0/c1/y;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 17
    iget-object p2, p2, Le/a/b0/i/e/a;->j:Landroid/net/Uri;

    .line 18
    invoke-interface {p1, p3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    const-string p2, "cursor"

    .line 19
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
