.class public final Ls1/a/a/a/v0/d/a/g0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/g0/d$a;,
        Ls1/a/a/a/v0/d/a/g0/d$b;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/d0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/d;)V
    .locals 1

    const-string v0, "javaResolverSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/d;->a:Ls1/a/a/a/v0/d/a/d0/d;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/l0;Ls1/z/b/l;ILs1/a/a/a/v0/d/a/g0/v;)Ls1/a/a/a/v0/d/a/g0/d$b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/l0;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/a/a/a/v0/d/a/g0/e;",
            ">;I",
            "Ls1/a/a/a/v0/d/a/g0/v;",
            ")",
            "Ls1/a/a/a/v0/d/a/g0/d$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    invoke-static/range {p4 .. p4}, Ls1/a/a/a/v0/d/a/g0/x;->b(Ls1/a/a/a/v0/d/a/g0/v;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Ls1/a/a/a/v0/d/a/g0/d$b;

    invoke-direct {v2, v1, v6, v5}, Ls1/a/a/a/v0/d/a/g0/d$b;-><init>(Ls1/a/a/a/v0/m/l0;IZ)V

    return-object v2

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    invoke-interface {v4}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v4

    if-eqz v4, :cond_1b

    const-string v7, "constructor.declarationD\u2026pleResult(this, 1, false)"

    .line 4
    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/d/a/g0/e;

    .line 6
    invoke-static/range {p4 .. p4}, Ls1/a/a/a/v0/d/a/g0/x;->b(Ls1/a/a/a/v0/d/a/g0/v;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v4}, Ls1/a/a/a/v0/d/a/g0/x;->a(Ljava/lang/Object;)Ls1/a/a/a/v0/d/a/g0/c;

    move-result-object v4

    goto/16 :goto_2

    .line 7
    :cond_1
    instance-of v8, v4, Ls1/a/a/a/v0/b/e;

    if-nez v8, :cond_2

    invoke-static {v4}, Ls1/a/a/a/v0/d/a/g0/x;->a(Ljava/lang/Object;)Ls1/a/a/a/v0/d/a/g0/c;

    move-result-object v4

    goto/16 :goto_2

    .line 8
    :cond_2
    sget-object v8, Ls1/a/a/a/v0/a/p/d;->a:Ls1/a/a/a/v0/a/p/d;

    .line 9
    iget-object v9, v7, Ls1/a/a/a/v0/d/a/g0/e;->b:Ls1/a/a/a/v0/d/a/g0/f;

    if-nez v9, :cond_3

    goto/16 :goto_1

    .line 10
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v6, :cond_4

    goto/16 :goto_1

    .line 11
    :cond_4
    sget-object v9, Ls1/a/a/a/v0/d/a/g0/v;->b:Ls1/a/a/a/v0/d/a/g0/v;

    if-ne v3, v9, :cond_7

    move-object v9, v4

    check-cast v9, Ls1/a/a/a/v0/b/e;

    invoke-virtual {v8, v9}, Ls1/a/a/a/v0/a/p/d;->c(Ls1/a/a/a/v0/b/e;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 12
    invoke-virtual {v8, v9}, Ls1/a/a/a/v0/a/p/d;->a(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/e;

    move-result-object v4

    .line 13
    new-instance v8, Ls1/a/a/a/v0/d/a/g0/c;

    sget-object v9, Ls1/a/a/a/v0/d/a/g0/x;->b:Ls1/a/a/a/v0/d/a/g0/b;

    invoke-direct {v8, v4, v9}, Ls1/a/a/a/v0/d/a/g0/c;-><init>(Ljava/lang/Object;Ls1/a/a/a/v0/b/f1/h;)V

    goto :goto_0

    .line 14
    :cond_5
    sget-object v9, Ls1/a/a/a/v0/d/a/g0/v;->a:Ls1/a/a/a/v0/d/a/g0/v;

    if-ne v3, v9, :cond_7

    move-object v9, v4

    check-cast v9, Ls1/a/a/a/v0/b/e;

    invoke-virtual {v8, v9}, Ls1/a/a/a/v0/a/p/d;->b(Ls1/a/a/a/v0/b/e;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v4, "mutable"

    .line 15
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v9}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v8

    .line 17
    sget-object v10, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    .line 18
    sget-object v10, Ls1/a/a/a/v0/a/p/c;->j:Ljava/util/HashMap;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/f/b;

    if-eqz v8, :cond_6

    .line 19
    invoke-static {v9}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v4

    invoke-virtual {v4, v8}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v4

    const-string v8, "descriptor.builtIns.getB\u2026Name(oppositeClassFqName)"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v8, Ls1/a/a/a/v0/d/a/g0/c;

    sget-object v9, Ls1/a/a/a/v0/d/a/g0/x;->b:Ls1/a/a/a/v0/d/a/g0/b;

    invoke-direct {v8, v4, v9}, Ls1/a/a/a/v0/d/a/g0/c;-><init>(Ljava/lang/Object;Ls1/a/a/a/v0/b/f1/h;)V

    :goto_0
    move-object v4, v8

    goto :goto_2

    .line 21
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Given class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " collection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_7
    :goto_1
    invoke-static {v4}, Ls1/a/a/a/v0/d/a/g0/x;->a(Ljava/lang/Object;)Ls1/a/a/a/v0/d/a/g0/c;

    move-result-object v4

    .line 23
    :goto_2
    iget-object v8, v4, Ls1/a/a/a/v0/d/a/g0/c;->a:Ljava/lang/Object;

    .line 24
    check-cast v8, Ls1/a/a/a/v0/b/h;

    .line 25
    iget-object v4, v4, Ls1/a/a/a/v0/d/a/g0/c;->b:Ls1/a/a/a/v0/b/f1/h;

    .line 26
    invoke-interface {v8}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v10

    const-string v9, "enhancedClassifier.typeConstructor"

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v11, p3, 0x1

    if-eqz v4, :cond_8

    move v12, v6

    goto :goto_3

    :cond_8
    move v12, v5

    .line 27
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v13

    .line 28
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v15, v5

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v15, 0x1

    if-ltz v15, :cond_c

    .line 30
    check-cast v16, Ls1/a/a/a/v0/m/y0;

    .line 31
    invoke-interface/range {v16 .. v16}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v18

    if-eqz v18, :cond_9

    add-int/lit8 v11, v11, 0x1

    .line 32
    invoke-interface {v8}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v5

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/b/w0;

    invoke-static {v5}, Ls1/a/a/a/v0/m/f1;->m(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v5

    goto :goto_7

    .line 33
    :cond_9
    invoke-interface/range {v16 .. v16}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-virtual {v5}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v11}, Ls1/a/a/a/v0/d/a/g0/d;->b(Ls1/a/a/a/v0/m/i1;Ls1/z/b/l;I)Ls1/a/a/a/v0/d/a/g0/d$a;

    move-result-object v5

    if-nez v12, :cond_b

    .line 34
    iget-boolean v12, v5, Ls1/a/a/a/v0/d/a/g0/d$a;->c:Z

    if-eqz v12, :cond_a

    goto :goto_5

    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    move v12, v6

    .line 35
    :goto_6
    iget v6, v5, Ls1/a/a/a/v0/d/a/g0/d$a;->b:I

    add-int/2addr v11, v6

    .line 36
    invoke-virtual {v5}, Ls1/a/a/a/v0/d/a/g0/d$a;->a()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ls1/a/a/a/v0/m/y0;->c()Ls1/a/a/a/v0/m/j1;

    move-result-object v6

    const-string v2, "arg.projectionKind"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/w0;

    invoke-static {v5, v6, v2}, Ls1/a/a/a/v0/f/d;->w0(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/j1;Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/y0;

    move-result-object v5

    .line 37
    :goto_7
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p2

    move/from16 v15, v17

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    .line 38
    :cond_c
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v1, 0x0

    throw v1

    .line 39
    :cond_d
    invoke-static/range {p4 .. p4}, Ls1/a/a/a/v0/d/a/g0/x;->b(Ls1/a/a/a/v0/d/a/g0/v;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/g0/x;->a(Ljava/lang/Object;)Ls1/a/a/a/v0/d/a/g0/c;

    move-result-object v2

    goto :goto_a

    .line 40
    :cond_e
    iget-object v2, v7, Ls1/a/a/a/v0/d/a/g0/e;->a:Ls1/a/a/a/v0/d/a/g0/h;

    if-nez v2, :cond_f

    goto :goto_8

    .line 41
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v3, 0x1

    if-eq v2, v3, :cond_10

    .line 42
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/d/a/g0/x;->a(Ljava/lang/Object;)Ls1/a/a/a/v0/d/a/g0/c;

    move-result-object v2

    goto :goto_a

    .line 43
    :cond_10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    new-instance v3, Ls1/a/a/a/v0/d/a/g0/c;

    sget-object v5, Ls1/a/a/a/v0/d/a/g0/x;->a:Ls1/a/a/a/v0/d/a/g0/b;

    invoke-direct {v3, v2, v5}, Ls1/a/a/a/v0/d/a/g0/c;-><init>(Ljava/lang/Object;Ls1/a/a/a/v0/b/f1/h;)V

    goto :goto_9

    .line 45
    :cond_11
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46
    new-instance v3, Ls1/a/a/a/v0/d/a/g0/c;

    sget-object v5, Ls1/a/a/a/v0/d/a/g0/x;->a:Ls1/a/a/a/v0/d/a/g0/b;

    invoke-direct {v3, v2, v5}, Ls1/a/a/a/v0/d/a/g0/c;-><init>(Ljava/lang/Object;Ls1/a/a/a/v0/b/f1/h;)V

    :goto_9
    move-object v2, v3

    .line 47
    :goto_a
    iget-object v3, v2, Ls1/a/a/a/v0/d/a/g0/c;->a:Ljava/lang/Object;

    .line 48
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 49
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/g0/c;->b:Ls1/a/a/a/v0/b/f1/h;

    if-nez v12, :cond_13

    if-eqz v2, :cond_12

    goto :goto_b

    :cond_12
    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v5, 0x1

    :goto_c
    sub-int v6, v11, p3

    if-nez v5, :cond_14

    .line 50
    new-instance v2, Ls1/a/a/a/v0/d/a/g0/d$b;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v6, v5}, Ls1/a/a/a/v0/d/a/g0/d$b;-><init>(Ls1/a/a/a/v0/m/l0;IZ)V

    return-object v2

    :cond_14
    const/4 v5, 0x0

    const/4 v8, 0x3

    new-array v8, v8, [Ls1/a/a/a/v0/b/f1/h;

    .line 51
    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v5, 0x1

    aput-object v4, v8, v5

    const/4 v4, 0x2

    aput-object v2, v8, v4

    .line 52
    invoke-static {v8}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 53
    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1a

    if-eq v8, v5, :cond_15

    .line 54
    new-instance v5, Ls1/a/a/a/v0/b/f1/k;

    invoke-static {v4}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ls1/a/a/a/v0/b/f1/k;-><init>(Ljava/util/List;)V

    move-object v9, v5

    goto :goto_d

    .line 55
    :cond_15
    invoke-static {v4}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/f1/h;

    move-object v9, v4

    :goto_d
    const/4 v13, 0x0

    const/16 v4, 0x10

    move-object v11, v14

    move v12, v3

    move v14, v4

    .line 56
    invoke-static/range {v9 .. v14}, Ls1/a/a/a/v0/m/f0;->g(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/m/v0;Ljava/util/List;ZLs1/a/a/a/v0/m/l1/e;I)Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    .line 57
    iget-boolean v4, v7, Ls1/a/a/a/v0/d/a/g0/e;->c:Z

    if-eqz v4, :cond_17

    .line 58
    iget-object v4, v0, Ls1/a/a/a/v0/d/a/g0/d;->a:Ls1/a/a/a/v0/d/a/d0/d;

    invoke-interface {v4}, Ls1/a/a/a/v0/d/a/d0/d;->a()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    .line 59
    invoke-static {v3, v4}, Ls1/a/a/a/v0/m/o0;->c(Ls1/a/a/a/v0/m/l0;Z)Ls1/a/a/a/v0/m/l0;

    move-result-object v3

    goto :goto_e

    .line 60
    :cond_16
    new-instance v4, Ls1/a/a/a/v0/d/a/g0/g;

    invoke-direct {v4, v3}, Ls1/a/a/a/v0/d/a/g0/g;-><init>(Ls1/a/a/a/v0/m/l0;)V

    move-object v3, v4

    :cond_17
    :goto_e
    if-eqz v2, :cond_18

    .line 61
    iget-boolean v2, v7, Ls1/a/a/a/v0/d/a/g0/e;->d:Z

    if-eqz v2, :cond_18

    const/4 v5, 0x1

    goto :goto_f

    :cond_18
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_19

    .line 62
    invoke-static {v1, v3}, Ls1/a/a/a/v0/f/d;->d4(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object v3

    .line 63
    :cond_19
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/d$b;

    const-string v2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Ls1/a/a/a/v0/m/l0;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v6, v2}, Ls1/a/a/a/v0/d/a/g0/d$b;-><init>(Ls1/a/a/a/v0/m/l0;IZ)V

    return-object v1

    .line 64
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "At least one Annotations object expected"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    move v2, v6

    .line 65
    new-instance v3, Ls1/a/a/a/v0/d/a/g0/d$b;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Ls1/a/a/a/v0/d/a/g0/d$b;-><init>(Ls1/a/a/a/v0/m/l0;IZ)V

    return-object v3
.end method

.method public final b(Ls1/a/a/a/v0/m/i1;Ls1/z/b/l;I)Ls1/a/a/a/v0/d/a/g0/d$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/i1;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/a/a/a/v0/d/a/g0/e;",
            ">;I)",
            "Ls1/a/a/a/v0/d/a/g0/d$a;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance p2, Ls1/a/a/a/v0/d/a/g0/d$a;

    invoke-direct {p2, p1, v2, v1}, Ls1/a/a/a/v0/d/a/g0/d$a;-><init>(Ls1/a/a/a/v0/m/e0;IZ)V

    return-object p2

    .line 2
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/m/y;

    if-eqz v0, :cond_6

    .line 3
    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/m/y;

    .line 4
    iget-object v3, v0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    .line 5
    sget-object v4, Ls1/a/a/a/v0/d/a/g0/v;->a:Ls1/a/a/a/v0/d/a/g0/v;

    invoke-virtual {p0, v3, p2, p3, v4}, Ls1/a/a/a/v0/d/a/g0/d;->a(Ls1/a/a/a/v0/m/l0;Ls1/z/b/l;ILs1/a/a/a/v0/d/a/g0/v;)Ls1/a/a/a/v0/d/a/g0/d$b;

    move-result-object v3

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

    .line 7
    sget-object v4, Ls1/a/a/a/v0/d/a/g0/v;->b:Ls1/a/a/a/v0/d/a/g0/v;

    invoke-virtual {p0, v0, p2, p3, v4}, Ls1/a/a/a/v0/d/a/g0/d;->a(Ls1/a/a/a/v0/m/l0;Ls1/z/b/l;ILs1/a/a/a/v0/d/a/g0/v;)Ls1/a/a/a/v0/d/a/g0/d$b;

    move-result-object p2

    .line 8
    iget p3, v3, Ls1/a/a/a/v0/d/a/g0/d$a;->b:I

    iget v0, p2, Ls1/a/a/a/v0/d/a/g0/d$a;->b:I

    .line 9
    iget-boolean p3, v3, Ls1/a/a/a/v0/d/a/g0/d$a;->c:Z

    if-nez p3, :cond_1

    iget-boolean p3, p2, Ls1/a/a/a/v0/d/a/g0/d$a;->c:Z

    if-eqz p3, :cond_2

    :cond_1
    move v1, v2

    .line 10
    :cond_2
    iget-object p3, v3, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    .line 11
    invoke-static {p3}, Ls1/a/a/a/v0/f/d;->o1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object p3, p2, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    .line 13
    invoke-static {p3}, Ls1/a/a/a/v0/f/d;->o1(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p3

    :goto_0
    if-nez v1, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    instance-of p1, p1, Ls1/a/a/a/v0/d/a/d0/o/k;

    if-eqz p1, :cond_5

    new-instance p1, Ls1/a/a/a/v0/d/a/d0/o/k;

    .line 15
    iget-object v0, v3, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    iget-object p2, p2, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    .line 16
    invoke-direct {p1, v0, p2}, Ls1/a/a/a/v0/d/a/d0/o/k;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V

    goto :goto_1

    .line 17
    :cond_5
    iget-object p1, v3, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    iget-object p2, p2, Ls1/a/a/a/v0/d/a/g0/d$b;->d:Ls1/a/a/a/v0/m/l0;

    .line 18
    invoke-static {p1, p2}, Ls1/a/a/a/v0/m/f0;->c(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 19
    :goto_1
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->d4(Ls1/a/a/a/v0/m/i1;Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/i1;

    move-result-object p1

    .line 20
    :goto_2
    new-instance p2, Ls1/a/a/a/v0/d/a/g0/d$a;

    .line 21
    iget p3, v3, Ls1/a/a/a/v0/d/a/g0/d$a;->b:I

    .line 22
    invoke-direct {p2, p1, p3, v1}, Ls1/a/a/a/v0/d/a/g0/d$a;-><init>(Ls1/a/a/a/v0/m/e0;IZ)V

    goto :goto_3

    .line 23
    :cond_6
    instance-of v0, p1, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_7

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    sget-object v0, Ls1/a/a/a/v0/d/a/g0/v;->c:Ls1/a/a/a/v0/d/a/g0/v;

    invoke-virtual {p0, p1, p2, p3, v0}, Ls1/a/a/a/v0/d/a/g0/d;->a(Ls1/a/a/a/v0/m/l0;Ls1/z/b/l;ILs1/a/a/a/v0/d/a/g0/v;)Ls1/a/a/a/v0/d/a/g0/d$b;

    move-result-object p2

    :goto_3
    return-object p2

    :cond_7
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
