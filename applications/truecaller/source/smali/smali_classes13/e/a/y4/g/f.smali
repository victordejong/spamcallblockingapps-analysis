.class public final Le/a/y4/g/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y4/g/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/b4/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/b4/a/c;)V
    .locals 1

    const-string v0, "t9Lang"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t9KeyMap"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y4/g/f;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/y4/g/f;->b:Le/a/b4/a/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "originalValue"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    const/4 v4, 0x4

    new-array v4, v4, [C

    .line 1
    fill-array-data v4, :array_0

    const/4 v5, 0x6

    invoke-static {v1, v4, v2, v2, v5}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object v4

    .line 2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 4
    invoke-static {v7}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4, v3}, Ls1/d0/j;->f(II)Ls1/d0/g;

    move-result-object v4

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-virtual {v4}, Ls1/d0/g;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    move-object v7, v4

    check-cast v7, Ls1/d0/h;

    invoke-virtual {v7}, Ls1/d0/h;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    check-cast v7, Ls1/u/z;

    invoke-virtual {v7}, Ls1/u/z;->a()I

    move-result v7

    .line 8
    invoke-static {v5, v7}, Ls1/u/i;->L0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v9, ""

    invoke-static/range {v8 .. v15}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 10
    :cond_3
    sget-object v4, Le/a/b0/k/d;->h:Le/a/b0/k/d;

    .line 11
    sget-object v4, Le/a/b0/k/d;->d:[Ljava/lang/String;

    .line 12
    iget-object v5, v0, Le/a/y4/g/f;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    sget-object v4, Le/a/y4/g/d;->b:Le/a/y4/g/d;

    .line 14
    sget-object v5, Le/a/y4/g/e;->b:Le/a/y4/g/e;

    .line 15
    invoke-virtual {v0, v6, v4, v5}, Le/a/y4/g/f;->b(Ljava/util/List;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/List;

    move-result-object v6

    .line 16
    :cond_4
    sget-object v4, Le/a/b0/k/d;->e:[Ljava/lang/String;

    .line 17
    iget-object v5, v0, Le/a/y4/g/f;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    sget-object v4, Le/a/y4/g/b;->b:Le/a/y4/g/b;

    .line 19
    sget-object v5, Le/a/y4/g/c;->b:Le/a/y4/g/c;

    .line 20
    invoke-virtual {v0, v6, v4, v5}, Le/a/y4/g/f;->b(Ljava/util/List;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/List;

    move-result-object v6

    .line 21
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0x2b

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/String;

    .line 24
    invoke-static {v6}, Le/a/w4/t/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "AccentChars.foldToLowerCaseASCII(it)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    .line 26
    :goto_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/16 v17, 0x0

    if-ge v8, v10, :cond_d

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 27
    iget-object v11, v0, Le/a/y4/g/f;->b:Le/a/b4/a/c;

    .line 28
    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v12

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Character;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v13, v2

    const/16 v14, 0x27

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    aput-object v14, v13, v3

    invoke-static {v13}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v10, v17

    :goto_4
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v10

    invoke-virtual {v11, v10}, Le/a/b4/a/c;->d(C)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    goto :goto_5

    :cond_8
    move-object/from16 v10, v17

    :goto_5
    const/16 v11, 0x30

    new-instance v12, Ls1/d0/c;

    const/16 v13, 0x39

    invoke-direct {v12, v11, v13}, Ls1/d0/c;-><init>(CC)V

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/Character;->charValue()C

    move-result v11

    .line 29
    iget-char v13, v12, Ls1/d0/a;->a:C

    .line 30
    invoke-static {v13, v11}, Ls1/z/c/l;->g(II)I

    move-result v13

    if-gtz v13, :cond_9

    .line 31
    iget-char v12, v12, Ls1/d0/a;->b:C

    .line 32
    invoke-static {v11, v12}, Ls1/z/c/l;->g(II)I

    move-result v11

    if-gtz v11, :cond_9

    move v11, v3

    goto :goto_6

    :cond_9
    move v11, v2

    :goto_6
    if-eqz v11, :cond_a

    move v11, v3

    goto :goto_7

    :cond_a
    move v11, v2

    :goto_7
    if-eqz v11, :cond_b

    goto :goto_8

    :cond_b
    move-object/from16 v10, v17

    :goto_8
    if-eqz v10, :cond_c

    .line 33
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const-string v10, ""

    .line 34
    invoke-static/range {v9 .. v16}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v3

    if-eqz v7, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v6, v17

    :goto_9
    if-eqz v6, :cond_6

    .line 36
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 37
    :cond_f
    invoke-static {v4}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    if-eqz p3, :cond_11

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    move v5, v3

    goto :goto_a

    :cond_10
    move v5, v2

    :goto_a
    if-eqz v5, :cond_11

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_11

    .line 40
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_11

    const-string v1, "+"

    .line 41
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    :cond_11
    return-object v4

    :array_0
    .array-data 2
        0x20s
        0x2ds
        0x40s
        0x2es
    .end array-data
.end method

.method public final b(Ljava/util/List;Ls1/z/b/l;Ls1/z/b/l;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Character;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/String;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 5
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 6
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p2, v6}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    move-object v5, v7

    :goto_2
    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 9
    :try_start_0
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {p3, v5}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    :catchall_0
    if-eqz v7, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 11
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v5, "$this$combineJoining"

    .line 13
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "other"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "separator"

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v6, Le/a/p5/s0/d;

    invoke-direct {v6, v1}, Le/a/p5/s0/d;-><init>(Ljava/lang/String;)V

    const-string v7, "$this$combine"

    .line 15
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "transformer"

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 18
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 20
    invoke-virtual {v6, v7, v10}, Le/a/p5/s0/d;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 21
    :cond_3
    invoke-static {v5, v8}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_5

    :cond_4
    move-object v3, v5

    goto :goto_4

    .line 22
    :cond_5
    invoke-static {v0, v3}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method
