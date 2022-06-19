.class public final Le/a/m0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$f;


# instance fields
.field public final a:Le/a/b0/q/z;

.field public final b:Le/a/m0/c1/i0;


# direct methods
.method public constructor <init>(Le/a/b0/q/z;Le/a/m0/c1/i0;)V
    .locals 1

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threadStatsCalculator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/n0;->a:Le/a/b0/q/z;

    iput-object p2, p0, Le/a/m0/n0;->b:Le/a/m0/c1/i0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/Long;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const-string p2, "msg_participants"

    const-string p3, "_id"

    const-string v1, "type = ? AND normalized_destination = ?"

    .line 2
    invoke-static {p1, p2, p3, v1, v0}, Le/a/p5/s0/g;->U0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJ)I
    .locals 1

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual {v0, p3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " = ?"

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 p6, 0x1

    new-array p6, p6, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p6, p5

    invoke-virtual {p1, p2, v0, p3, p6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v0, p4

    const-string v1, "provider"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "helper"

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "uri"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "values"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    .line 1
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "values.getAsInteger(ParticipantTable.TYPE)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "normalized_destination"

    .line 2
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "values.getAsString(Parti\u2026e.NORMALIZED_DESTINATION)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tc_im_peer_id"

    .line 3
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "im_business_state"

    .line 4
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "im_business_feature_flags"

    .line 5
    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-nez v3, :cond_1

    const/16 v2, 0x2b

    .line 6
    invoke-static {v5, v2, v15, v14}, Ls1/f0/v;->W(Ljava/lang/CharSequence;CZI)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid normalized phone number: "

    invoke-static {v1, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v2, "provider.database"

    invoke-static {v14, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "msg_im_users"

    const/4 v15, 0x3

    const/4 v10, 0x1

    if-ne v3, v15, :cond_3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v5, v10, v15

    const-string v15, "normalized_number"

    move/from16 p3, v3

    const-string v3, "im_peer_id = ? AND normalized_number NOT NULL"

    .line 9
    invoke-static {v14, v2, v15, v3, v10}, Le/a/p5/s0/g;->X0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11
    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v3

    move v3, v10

    move v15, v3

    goto :goto_2

    :cond_2
    move v15, v10

    goto :goto_1

    :cond_3
    move/from16 p3, v3

    const/4 v15, 0x0

    :goto_1
    move/from16 v3, p3

    :goto_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object v5, v1, v15

    const-string v10, "msg_participants"

    const-string v4, "_id"

    const-string v15, "normalized_destination = ?"

    .line 12
    invoke-static {v14, v10, v4, v15, v1}, Le/a/p5/s0/g;->U0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v15, "helper.getContentUri(participantId)"

    const-string v4, "_id = ?"

    if-eqz v1, :cond_e

    .line 13
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 14
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-nez v3, :cond_6

    if-eqz v7, :cond_5

    .line 15
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_6

    .line 16
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v11, :cond_7

    const/4 v5, -0x1

    .line 17
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v5, :cond_7

    .line 18
    invoke-virtual {v2, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    if-eqz v13, :cond_8

    .line 19
    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    :cond_8
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 21
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 22
    invoke-virtual {v14, v10, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez v3, :cond_c

    if-eqz v7, :cond_a

    .line 23
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_c

    const/4 v2, 0x3

    .line 24
    invoke-virtual {v9, v14, v2, v7}, Le/a/m0/n0;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v3, "msg_messages"

    const-string v5, "participant_id"

    move-wide v7, v0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v13, v4

    move-object v4, v5

    move-wide v5, v11

    move-wide/from16 p3, v7

    .line 25
    invoke-virtual/range {v1 .. v8}, Le/a/m0/n0;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJ)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 26
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v14, v10, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v1, v0, [Ljava/lang/String;

    .line 27
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "\n    SELECT conversation_id\n    FROM msg_conversation_participants\n    GROUP BY conversation_id\n    HAVING participant_id = ? AND COUNT() == 1\n"

    invoke-static {v14, v2, v1}, Le/a/p5/s0/g;->D0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 28
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v14, v2, v0}, Le/a/p5/s0/g;->D0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v3, "msg_conversation_participants"

    const-string v4, "participant_id"

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide v5, v11

    move-wide/from16 v7, p3

    .line 30
    invoke-virtual/range {v1 .. v8}, Le/a/m0/n0;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJ)I

    goto :goto_7

    .line 31
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v3, "msg_messages"

    const-string v4, "conversation_id"

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v8}, Le/a/m0/n0;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;JJ)I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 32
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "msg_conversation_participants"

    const-string v4, "conversation_id = ?"

    .line 33
    invoke-virtual {v14, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "msg_conversations"

    invoke-virtual {v14, v1, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 35
    :goto_7
    iget-object v0, v9, Le/a/m0/n0;->b:Le/a/m0/c1/i0;

    invoke-virtual {v0, v14}, Le/a/m0/c1/i0;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_8

    :cond_c
    move-wide/from16 p3, v0

    :cond_d
    :goto_8
    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    .line 36
    invoke-virtual {v1, v2, v3}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_e
    move-object/from16 v1, p2

    move-object v13, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_10

    if-eq v3, v4, :cond_10

    const/4 v8, 0x3

    if-eq v3, v8, :cond_f

    const/4 v8, 0x0

    goto :goto_9

    :cond_f
    new-array v8, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v8, v11

    const-string v11, "\n    SELECT aggregated_contact_id\n    FROM raw_contact\n    WHERE contact_im_id = ? AND contact_im_id IS NOT NULL\n    LIMIT 1\n"

    .line 37
    invoke-static {v14, v11, v8}, Le/a/p5/s0/g;->D0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    goto :goto_9

    :cond_10
    const/4 v8, 0x0

    new-array v11, v4, [Ljava/lang/String;

    aput-object v5, v11, v8

    const-string v8, "\n    SELECT r.aggregated_contact_id\n    FROM data d\n    LEFT JOIN raw_contact r ON r._id = d.data_raw_contact_id\n    WHERE d.data1 = ? AND d.data_type = 4\n    LIMIT 1\n"

    .line 38
    invoke-static {v14, v8, v11}, Le/a/p5/s0/g;->D0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    :goto_9
    if-eqz v8, :cond_11

    const-string v11, "aggregated_contact_id"

    .line 39
    invoke-virtual {v0, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_11
    if-eqz v3, :cond_12

    if-eq v3, v4, :cond_12

    const/4 v8, 0x3

    if-ne v3, v8, :cond_18

    :cond_12
    const-string v8, "wildcard_type = "

    .line 40
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->NONE:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    iget v11, v11, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->type:I

    const-string v12, " AND value = ? COLLATE NOCASE"

    invoke-static {v8, v11, v12}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const-string v11, "filters"

    const-string v12, "rule"

    .line 41
    invoke-static {v14, v11, v12, v8, v4}, Le/a/p5/s0/g;->T0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 42
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v8, 0x1

    if-nez v4, :cond_13

    const/4 v4, 0x1

    goto :goto_a

    :cond_13
    if-ne v4, v8, :cond_15

    const/4 v4, 0x2

    goto :goto_a

    :cond_14
    const/4 v8, 0x1

    :cond_15
    const/4 v4, 0x0

    .line 43
    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "filter_action"

    invoke-virtual {v0, v11, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const-string v8, "topspammers"

    const-string v11, "count"

    const-string v12, "value = ? COLLATE NOCASE"

    .line 44
    invoke-static {v14, v8, v11, v12, v4}, Le/a/p5/s0/g;->T0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_16

    const/4 v8, 0x1

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    .line 45
    :goto_b
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v11, "is_top_spammer"

    invoke-virtual {v0, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v4, :cond_17

    .line 46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_c

    :cond_17
    const/4 v4, 0x0

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v8, "top_spam_score"

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_18
    if-nez v3, :cond_1b

    .line 47
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    const/4 v3, 0x1

    :goto_e
    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const-string v4, "im_peer_id"

    const-string v5, "normalized_number = ?"

    .line 48
    invoke-static {v14, v2, v4, v5, v3}, Le/a/p5/s0/g;->X0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 49
    invoke-virtual {v0, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    if-eqz v7, :cond_1d

    .line 50
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_f

    :cond_1c
    const/4 v2, 0x0

    goto :goto_10

    :cond_1d
    :goto_f
    const/4 v2, 0x1

    :goto_10
    if-nez v2, :cond_1e

    const/4 v2, 0x3

    .line 51
    invoke-virtual {v9, v14, v2, v7}, Le/a/m0/n0;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 52
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v14, v10, v0, v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 53
    invoke-virtual {v1, v2, v3}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1e
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 54
    :try_start_0
    invoke-virtual {v14, v10, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_11

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 55
    invoke-static {v4}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    move-wide v4, v2

    :goto_11
    cmp-long v0, v4, v2

    if-eqz v0, :cond_1f

    .line 56
    invoke-virtual {v1, v4, v5}, Le/a/b0/i/e/a;->a(J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "helper.getContentUri(id)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 57
    :cond_1f
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Can\'t insert participant"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
