.class public final Le/a/a/g/j0/b0;
.super Le/a/a/g/e;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/a0;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/g/e;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public N0()Le/a/a/g/l0/f;
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "numbers_group"

    .line 1
    invoke-static {v0, v1}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "readComposedStrings(stri\u2026y.PHONE_NUMBERS_GROUPED))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "names_group"

    .line 2
    invoke-static {v0, v2}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v2, "readComposedStrings(stri\u2026ionsQuery.NAMES_GROUPED))"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "phonebook_ids_grouped"

    .line 3
    invoke-static {v0, v2}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "source_group"

    .line 4
    invoke-static {v0, v3}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "spam_score_grouped"

    .line 5
    invoke-static {v0, v4}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, "top_spam_grouped"

    .line 6
    invoke-static {v0, v5}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    const-string v7, "filter_action_grouped"

    .line 7
    invoke-static {v0, v7}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const-string v8, "spam_type_grouped"

    .line 8
    invoke-static {v0, v8}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const-string v8, "participant_type_grouped"

    .line 9
    invoke-static {v0, v8}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 10
    move-object v9, v1

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object v11, v6

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ne v9, v12, :cond_0

    move v9, v13

    goto :goto_0

    :cond_0
    move v9, v14

    :goto_0
    new-array v12, v14, [Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_1

    move v9, v13

    goto :goto_1

    :cond_1
    move v9, v14

    :goto_1
    new-array v11, v14, [Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_2

    move v9, v13

    goto :goto_2

    :cond_2
    move v9, v14

    :goto_2
    new-array v11, v14, [Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_3

    move v9, v13

    goto :goto_3

    :cond_3
    move v9, v14

    :goto_3
    new-array v11, v14, [Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 14
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_4

    move v9, v13

    goto :goto_4

    :cond_4
    move v9, v14

    :goto_4
    new-array v11, v14, [Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 15
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_5

    move v9, v13

    goto :goto_5

    :cond_5
    move v9, v14

    :goto_5
    new-array v11, v14, [Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 16
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ne v9, v11, :cond_6

    move v9, v13

    goto :goto_6

    :cond_6
    move v9, v14

    :goto_6
    new-array v11, v14, [Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    const-string v9, "conversation_id"

    .line 17
    invoke-static {v0, v9}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "conversation_hidden_number"

    .line 18
    invoke-static {v0, v11}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    if-ne v11, v13, :cond_7

    move v11, v13

    goto :goto_7

    :cond_7
    move v11, v14

    .line 19
    :goto_7
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 21
    check-cast v12, Ljava/lang/String;

    .line 22
    new-instance v14, Lcom/truecaller/data/entity/Number;

    .line 23
    invoke-direct {v14, v12, v13}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {v15, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_8

    :cond_8
    const-string v1, "im_id"

    .line 25
    invoke-static {v0, v1}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v12, "im_registration_timestamp"

    .line 26
    invoke-static {v0, v12}, Le/a/p5/s0/g;->F0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    .line 27
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 29
    check-cast v14, Ljava/lang/String;

    .line 30
    invoke-static {v14}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gez v20, :cond_a

    const/16 v20, 0x1

    goto :goto_a

    :cond_a
    const/16 v20, 0x0

    :goto_a
    if-nez v20, :cond_b

    goto :goto_b

    :cond_b
    move-object v14, v13

    :goto_b
    if-eqz v14, :cond_9

    .line 31
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 32
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 34
    check-cast v14, Ljava/lang/String;

    .line 35
    invoke-static {v14}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v20

    if-gez v20, :cond_e

    const/16 v20, 0x1

    goto :goto_d

    :cond_e
    const/16 v20, 0x0

    :goto_d
    if-nez v20, :cond_f

    goto :goto_e

    :cond_f
    move-object v14, v13

    :goto_e
    if-eqz v14, :cond_d

    .line 36
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 37
    :cond_10
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/String;

    .line 40
    invoke-static {v4}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v20

    if-gez v20, :cond_12

    const/16 v20, 0x1

    goto :goto_10

    :cond_12
    const/16 v20, 0x0

    :goto_10
    if-nez v20, :cond_13

    goto :goto_11

    :cond_13
    move-object v4, v13

    :goto_11
    if-eqz v4, :cond_11

    .line 41
    invoke-interface {v14, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 42
    :cond_14
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 44
    check-cast v5, Ljava/lang/String;

    .line 45
    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_13

    :cond_16
    const/4 v5, 0x0

    :goto_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_14

    :cond_17
    move-object v5, v13

    :goto_14
    if-eqz v5, :cond_15

    .line 46
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 47
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    invoke-static {v7}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v20

    if-gez v20, :cond_1a

    const/16 v20, 0x1

    goto :goto_16

    :cond_1a
    const/16 v20, 0x0

    :goto_16
    if-nez v20, :cond_1b

    goto :goto_17

    :cond_1b
    move-object v7, v13

    :goto_17
    if-eqz v7, :cond_19

    .line 51
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1c
    const-string v3, "image_uri"

    .line 52
    invoke-static {v0, v3}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v3, "date_sorting"

    .line 53
    invoke-static {v0, v3}, Le/a/p5/s0/g;->F0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v20

    const-string v3, "transport_type"

    .line 54
    invoke-static {v0, v3}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v22

    .line 55
    invoke-virtual/range {p0 .. p0}, Le/a/a/g/j0/b0;->getGroupId()I

    move-result v23

    const-string v3, "im_group_id"

    .line 56
    invoke-static {v0, v3}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v3, "im_group_title"

    .line 57
    invoke-static {v0, v3}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v3, "im_group_avatar"

    .line 58
    invoke-static {v0, v3}, Le/a/p5/s0/g;->G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 59
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 61
    check-cast v7, Ljava/lang/String;

    .line 62
    invoke-static {v7}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 63
    invoke-interface {v13, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1e
    const-string v3, "conversation_preferred_transport"

    .line 64
    invoke-static {v0, v3}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v26

    .line 65
    new-instance v28, Le/a/a/g/l0/f;

    move-object/from16 v3, v28

    move-object/from16 v17, v4

    move-object v4, v9

    move-object/from16 v29, v5

    move v5, v11

    move-object v7, v12

    move-object v8, v2

    move-object v9, v14

    move-object/from16 v11, v17

    move-object/from16 v12, v29

    move-object/from16 v14, v16

    move-object/from16 v16, v1

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v27

    invoke-direct/range {v3 .. v26}, Le/a/a/g/l0/f;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v28
.end method

.method public getGroupId()I
    .locals 1

    const-string v0, "group_sorting"

    .line 1
    invoke-static {p0, v0}, Le/a/p5/s0/g;->r0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
