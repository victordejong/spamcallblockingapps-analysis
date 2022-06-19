.class public final Lg/g/b/b/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lg/g/b/b/e/a/b;)Lg/g/b/c/f;
    .locals 36

    const-string v0, "$this$toCallerId"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 2
    :goto_0
    invoke-static {}, Lg/g/b/c/i;->values()[Lg/g/b/c/i;

    move-result-object v3

    .line 3
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v8, v3, v6

    .line 4
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    sget-object v8, Lg/g/b/c/i;->UNKNOWN:Lg/g/b/c/i;

    :goto_3
    move-object v10, v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->w()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v11, v0

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v12, v0

    goto :goto_5

    :cond_5
    move-object v12, v2

    .line 8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v13, v0

    goto :goto_6

    :cond_6
    move-object v13, v2

    .line 9
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v14, v0

    goto :goto_7

    :cond_7
    move-object v14, v2

    .line 10
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v15, v0

    goto :goto_8

    :cond_8
    move-object v15, v2

    .line 11
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object/from16 v16, v0

    goto :goto_9

    :cond_9
    move-object/from16 v16, v2

    .line 12
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move-object v0, v2

    .line 13
    :goto_a
    invoke-static {}, Lg/g/b/c/q;->values()[Lg/g/b/c/q;

    move-result-object v3

    .line 14
    array-length v4, v3

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_c

    aget-object v8, v3, v6

    .line 15
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_c

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_c
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_d

    move-object/from16 v17, v8

    goto :goto_d

    .line 16
    :cond_d
    sget-object v0, Lg/g/b/c/q;->UNCERTAIN:Lg/g/b/c/q;

    move-object/from16 v17, v0

    .line 17
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->u()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move-object v0, v2

    .line 18
    :goto_e
    invoke-static {}, Lg/g/b/c/o;->values()[Lg/g/b/c/o;

    move-result-object v3

    .line 19
    array-length v4, v3

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v4, :cond_10

    aget-object v8, v3, v6

    .line 20
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v0, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_10

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_10
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_11

    move-object/from16 v18, v8

    goto :goto_11

    .line 21
    :cond_11
    sget-object v0, Lg/g/b/c/o;->NONE:Lg/g/b/c/o;

    move-object/from16 v18, v0

    .line 22
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    move-object/from16 v19, v0

    goto :goto_12

    :cond_12
    move-object/from16 v19, v2

    .line 23
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object/from16 v20, v0

    goto :goto_13

    :cond_13
    move-object/from16 v20, v2

    .line 24
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object/from16 v21, v0

    goto :goto_14

    :cond_14
    move-object/from16 v21, v2

    .line 25
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    move-object/from16 v22, v0

    goto :goto_15

    :cond_15
    move-object/from16 v22, v2

    .line 26
    :goto_15
    new-instance v0, Lg/g/b/c/e;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    goto :goto_16

    :cond_16
    move-object v3, v2

    .line 28
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->c()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    goto :goto_17

    :cond_17
    move-object v4, v2

    .line 29
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    goto :goto_18

    :cond_18
    move-object v6, v2

    .line 30
    :goto_18
    invoke-direct {v0, v3, v4, v6}, Lg/g/b/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->v()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    move-object/from16 v24, v3

    goto :goto_19

    :cond_19
    move-object/from16 v24, v2

    .line 32
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->t()Ljava/lang/String;

    move-result-object v25

    .line 33
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->n()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide/from16 v26, v3

    goto :goto_1a

    :cond_1a
    const-wide/16 v26, 0x0

    .line 34
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->y()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    goto :goto_1b

    :cond_1b
    move-object v3, v2

    .line 35
    :goto_1b
    invoke-static {}, Lg/g/b/c/r;->values()[Lg/g/b/c/r;

    move-result-object v4

    .line 36
    array-length v6, v4

    const/4 v8, 0x0

    :goto_1c
    if-ge v8, v6, :cond_1d

    aget-object v9, v4, v8

    .line 37
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_1d

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_1d
    const/4 v9, 0x0

    :goto_1d
    if-eqz v9, :cond_1e

    move-object v3, v9

    goto :goto_1e

    .line 38
    :cond_1e
    sget-object v3, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    .line 39
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->r()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide/from16 v29, v6

    goto :goto_1f

    :cond_1f
    const-wide/16 v29, 0x0

    .line 40
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->q()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    move-object/from16 v31, v4

    goto :goto_20

    :cond_20
    move-object/from16 v31, v2

    .line 41
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 42
    invoke-virtual/range {p0 .. p0}, Lg/g/b/b/e/a/b;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object v2, v1

    .line 43
    :cond_21
    invoke-static {}, Lg/g/b/c/d;->values()[Lg/g/b/c/d;

    move-result-object v1

    .line 44
    array-length v6, v1

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v6, :cond_23

    aget-object v8, v1, v7

    .line 45
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v2, v5}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_22

    move-object v7, v8

    goto :goto_22

    :cond_22
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_23
    const/4 v7, 0x0

    :goto_22
    if-eqz v7, :cond_24

    goto :goto_23

    .line 46
    :cond_24
    sget-object v7, Lg/g/b/c/d;->BG_FILE:Lg/g/b/c/d;

    .line 47
    :goto_23
    new-instance v1, Lg/g/b/c/h;

    invoke-direct {v1, v7, v4}, Lg/g/b/c/h;-><init>(Lg/g/b/c/d;Ljava/lang/String;)V

    goto :goto_24

    .line 48
    :cond_25
    new-instance v1, Lg/g/b/c/h;

    const/4 v2, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v4}, Lg/g/b/c/h;-><init>(Lg/g/b/c/d;Ljava/lang/String;ILkotlin/w/c/g;)V

    :goto_24
    move-object/from16 v32, v1

    const/16 v33, 0x0

    const/high16 v34, 0x200000

    const/16 v35, 0x0

    .line 49
    new-instance v1, Lg/g/b/c/f;

    move-object v9, v1

    move-object/from16 v23, v0

    move-object/from16 v28, v3

    invoke-direct/range {v9 .. v35}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    return-object v1
.end method
