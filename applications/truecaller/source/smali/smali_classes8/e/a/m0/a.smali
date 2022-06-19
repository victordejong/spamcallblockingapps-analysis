.class public final Le/a/m0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/a;->a:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m0/a;->a:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    const-string p1, "\n        type IN (2, 3)\n            AND \n        history_events_count = 0 \n            AND \n        blacklist_count = 0 \n            AND \n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const-string p1, "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0))\n             AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_3

    const-string p1, "\n        type IN (2, 3)\n            AND \n        history_events_count = 0\n            AND \n        blacklist_count = 0 \n            AND \n         \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n            AND\n        latest_message_id IS NOT NULL\n    "

    goto :goto_0

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_4
    const-string p1, "\n        (type NOT IN (2, 3) OR history_events_count > 0)\n            AND\n        blacklist_count = 0 \n            AND\n        \n        (white_list_count > 0 OR outgoing_message_count > 0 OR phonebook_count > 0 OR (top_spammer_count = 0 AND is_spam = 0)) \n    \n             AND\n        latest_message_id IS NOT NULL\n    "

    :goto_0
    return-object p1
.end method

.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    const-string v3, "provider"

    move-object/from16 v13, p1

    invoke-static {v13, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "helper"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const-string v3, "$this$parseId"

    .line 2
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v3, -0x1

    :goto_0
    const-string v5, "participant_addr"

    .line 4
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    const-string v5, "filter"

    .line 5
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    if-eqz v5, :cond_0

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    move-object v9, v5

    goto :goto_1

    :cond_0
    move-object/from16 v9, v23

    :goto_1
    const-string v5, "tcy_inbox"

    .line 6
    invoke-virtual {v1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7
    iget-object v6, v0, Le/a/m0/a;->a:Le/a/u3/g;

    invoke-virtual {v6}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v6

    invoke-interface {v6}, Le/a/u3/b;->isEnabled()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    if-nez v9, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_2

    goto :goto_6

    :cond_2
    :goto_2
    if-nez v9, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    goto :goto_6

    :cond_4
    :goto_3
    if-nez v9, :cond_5

    goto :goto_4

    .line 10
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-nez v6, :cond_7

    const/4 v7, 0x2

    goto :goto_6

    :cond_7
    :goto_5
    move v7, v8

    :goto_6
    const-string v6, " ORDER BY "

    const-string v8, " WHERE "

    if-eqz v5, :cond_b

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM ("

    .line 12
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Le/a/m0/a;->a:Le/a/u3/g;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 p2, v14

    const-wide/16 v13, -0x1

    .line 13
    invoke-static {v5, v7, v9, v13, v14}, Le/a/b0/q/g0;->H(Le/a/u3/g;ILjava/lang/Integer;J)Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Le/a/m0/a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v5, v0, Le/a/m0/a;->a:Le/a/u3/g;

    invoke-virtual {v5}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v7, 0x2

    .line 18
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v13, v0, Le/a/m0/a;->a:Le/a/u3/g;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-wide/16 v11, -0x1

    .line 20
    invoke-static {v13, v7, v14, v11, v12}, Le/a/b0/q/g0;->H(Le/a/u3/g;ILjava/lang/Integer;J)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Le/a/m0/a;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UNION "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_9

    .line 26
    invoke-static {v8, v10, v7}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_9
    move-object/from16 v11, p7

    if-eqz v11, :cond_a

    .line 27
    invoke-static {v6, v11, v7}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 28
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p2

    move-object/from16 v12, p6

    .line 29
    invoke-virtual {v13, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_e

    :cond_b
    move-object v13, v14

    move-object/from16 v24, v12

    move-object v12, v11

    move-object/from16 v11, v24

    const-string v5, "*"

    if-eqz v15, :cond_13

    .line 30
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_c

    goto/16 :goto_b

    :cond_c
    const-string v3, "\n                SELECT "

    .line 31
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3f

    move-object/from16 v2, p4

    move-object v14, v8

    move-object/from16 v8, v16

    move-object/from16 p8, v15

    move-object v15, v9

    move/from16 v9, v17

    .line 32
    invoke-static/range {v2 .. v9}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_d
    move-object v14, v8

    move-object/from16 p8, v15

    move-object v15, v9

    :goto_7
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                FROM ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v2, v0, Le/a/m0/a;->a:Le/a/u3/g;

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    invoke-static {v2, v5, v15, v3, v4}, Le/a/b0/q/g0;->H(Le/a/u3/g;ILjava/lang/Integer;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\n                WHERE _id IN (\n                    SELECT conversation_id\n                    FROM msg_conversation_participants \n                    WHERE conversation_id IN (\n                        SELECT cp.conversation_id\n                        FROM msg_participants p\n                        LEFT JOIN msg_conversation_participants cp\n                            ON cp.participant_id = p._id\n                        WHERE p.normalized_destination IN ("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 34
    sget-object v21, Le/a/m0/a$a;->c:Le/a/m0/a$a;

    const/16 v7, 0x1f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x1f

    move-object/from16 v8, p8

    move-object v15, v8

    invoke-static/range {v15 .. v22}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")\n                            OR p.tc_im_peer_id IN ("

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    sget-object v21, Le/a/m0/a$a;->d:Le/a/m0/a$a;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v22, v7

    invoke-static/range {v15 .. v22}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\n                        GROUP BY conversation_id HAVING count(*) = "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                    )\n                    GROUP BY conversation_id HAVING count(*) = "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                ) "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_e

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_e
    move-object/from16 v2, v23

    :goto_8
    const-string v3, ""

    if-eqz v2, :cond_f

    goto :goto_9

    :cond_f
    move-object v2, v3

    :goto_9
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_10

    const-string v2, "ORDER BY "

    .line 39
    invoke-static {v2, v11}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :cond_10
    if-eqz v23, :cond_11

    move-object/from16 v3, v23

    :cond_11
    const-string v2, "\n            "

    invoke-static {v14, v3, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v8, v8}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v12, :cond_12

    goto :goto_a

    :cond_12
    new-array v5, v4, [Ljava/lang/String;

    move-object v12, v5

    :goto_a
    invoke-static {v3, v12}, Ls1/u/i;->n0(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    .line 41
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 42
    invoke-virtual {v13, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_e

    :cond_13
    :goto_b
    move-object v15, v9

    .line 43
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "SELECT "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_15

    .line 44
    array-length v14, v2

    if-nez v14, :cond_14

    const/4 v14, 0x1

    goto :goto_c

    :cond_14
    const/4 v14, 0x0

    :goto_c
    const/16 v16, 0x1

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_15

    const-string v5, ", "

    .line 45
    invoke-static {v2, v5}, Lw3/c/a/a/a/h;->q([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 46
    :cond_15
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    const-string v2, " FROM ("

    .line 47
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Le/a/m0/a;->a:Le/a/u3/g;

    invoke-static {v5, v7, v15, v3, v4}, Le/a/b0/q/g0;->H(Le/a/u3/g;ILjava/lang/Integer;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_16

    .line 48
    invoke-static {v8, v10, v9}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_16
    if-eqz v11, :cond_17

    .line 49
    invoke-static {v6, v11, v9}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 50
    :cond_17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 51
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_18

    const-string v4, "it"

    .line 52
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_18
    return-object v2
.end method
