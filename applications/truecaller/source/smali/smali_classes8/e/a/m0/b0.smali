.class public final Le/a/m0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Z


# direct methods
.method public constructor <init>(Le/a/u3/g;Z)V
    .locals 1

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/b0;->a:Le/a/u3/g;

    iput-boolean p2, p0, Le/a/m0/b0;->b:Z

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    const-string v5, "provider"

    move-object/from16 v9, p1

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "helper"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "uri"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "conversation_id"

    .line 1
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v5, "filter"

    .line 2
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "split_criteria"

    .line 3
    invoke-virtual {v1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v6, "\n    SELECT\n        m._id AS message_id,\n        m.date AS message_date,\n        m.status AS message_status,\n        m.transport AS message_transport,\n        m.important AS message_important,\n        m.sequence_number AS message_sequence_number,\n        m.raw_id AS message_raw_message_id,\n        m.info17 AS message_forwarding_id,\n        be._id AS entity_id,\n        be.type AS entity_mime_type,\n        be.entity_info1 AS entity_content,\n        be.entity_info2 AS entity_status,\n        CAST(be.entity_info3 AS INTEGER) AS entity_size,\n        CASE be.entity_type\n             WHEN 1 THEN be.entity_info5\n             WHEN 3 THEN be.entity_info5\n             WHEN 2 THEN be.entity_info5\n             WHEN 7 THEN be.entity_info2\n             ELSE -1\n        END AS entity_width,\n        CASE be.entity_type\n             WHEN 1 THEN be.entity_info6\n             WHEN 3 THEN be.entity_info6\n             WHEN 2 THEN be.entity_info6\n             WHEN 7 THEN be.entity_info3\n             ELSE -1\n        END AS entity_height,\n        CASE be.entity_type\n             WHEN 4 THEN be.entity_info4\n             WHEN 2 THEN be.entity_info7\n             ELSE -1\n        END AS entity_duration,\n        CASE be.entity_type\n             WHEN 1 THEN be.entity_info4\n             WHEN 2 THEN be.entity_info4\n             WHEN 7 THEN be.entity_info5\n             WHEN 6 THEN be.entity_info4\n             ELSE \'\'\n        END AS entity_thumbnail,\n        CASE be.entity_type\n             WHEN 7 THEN be.entity_info4\n             WHEN 5 THEN be.entity_info4\n             ELSE \'\'\n        END AS entity_filename,\n        CASE be.entity_type\n             WHEN 6 THEN be.entity_info5\n             ELSE \'\'\n        END AS entity_vcard_name,\n        CASE be.entity_type\n             WHEN 6 THEN be.entity_info6\n             ELSE -1\n        END AS entity_vcard_contacts_count,\n        CASE be.entity_type\n             WHEN 7 THEN be.entity_info6\n             ELSE \'\'\n        END AS entity_description,\n        CASE be.entity_type\n             WHEN 7 THEN be.entity_info7\n             ELSE \'\'\n        END AS entity_source,\n        te.entity_info1 AS entity_text,\n        ml.link AS entity_link,\n        p.type AS participant_type,\n        p.normalized_destination AS participant_normalized_destination,\n        p.tc_im_peer_id AS participant_peer_id,\n        ac.contact_name AS participant_name\n    FROM msg_entities be\n        LEFT JOIN msg_messages m\n            ON m._id = be.message_id\n        LEFT JOIN msg_entities te\n            ON te.message_id = be.message_id AND\n            te.type = \'text/plain\'\n        LEFT JOIN msg_links ml\n            ON ml.message_id = be.message_id AND\n            be.type = \'text/plain\'\n        LEFT JOIN msg_participants p\n            ON p._id = m.participant_id\n        LEFT JOIN aggregated_contact ac\n            ON ac._id = p.aggregated_contact_id\n    WHERE m.transport IN (2, 0, 1, \n            4, 7)\n        AND m.conversation_id = ?\n"

    .line 4
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    .line 5
    invoke-static {v7}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Le/a/m0/b0;->a:Le/a/u3/g;

    iget-boolean v12, v0, Le/a/m0/b0;->b:Z

    const/4 v13, 0x0

    invoke-static {v8, v12, v5, v1, v13}, Le/a/b0/q/g0;->a(Le/a/u3/g;ZIIZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x29

    if-eqz v3, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v4, :cond_1

    const-string v1, " ORDER BY "

    .line 7
    invoke-static {v1, v4, v6}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v14, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x1

    if-eqz v2, :cond_3

    .line 9
    array-length v1, v2

    if-nez v1, :cond_2

    move v13, v15

    :cond_2
    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_3

    const-string v1, "SELECT "

    .line 10
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x3f

    move-object/from16 v1, p4

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-array v2, v15, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p6, :cond_4

    move-object/from16 v3, p6

    goto :goto_0

    :cond_4
    new-array v3, v4, [Ljava/lang/String;

    :goto_0
    invoke-static {v2, v3}, Ls1/u/i;->t0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    const-string v3, "it"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_5
    return-object v1

    .line 13
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 14
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 15
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
