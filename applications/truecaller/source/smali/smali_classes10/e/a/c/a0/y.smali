.class public final Le/a/c/a0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/x;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/w/o0/g;

.field public final c:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/w/o0/g;Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/y;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/a0/y;->b:Le/a/c/w/o0/g;

    iput-object p3, p0, Le/a/c/a0/y;->c:Le/a/c/b/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;JILe/a/c/a0/r;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Le/a/c/a0/r;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    instance-of v3, v2, Le/a/c/a0/y$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/a0/y$a;

    iget v4, v3, Le/a/c/a0/y$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/a0/y$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/a0/y$a;

    invoke-direct {v3, v0, v2}, Le/a/c/a0/y$a;-><init>(Le/a/c/a0/y;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/a0/y$a;->d:Ljava/lang/Object;

    sget-object v13, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v3, Le/a/c/a0/y$a;->e:I

    const/4 v5, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/4 v12, 0x4

    if-eqz v4, :cond_5

    if-eq v4, v14, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v15, :cond_2

    if-ne v4, v12, :cond_1

    iget-object v1, v3, Le/a/c/a0/y$a;->j:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v4, v3, Le/a/c/a0/y$a;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v3, Le/a/c/a0/y$a;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/a0/y;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v2

    move-object v2, v1

    move v1, v12

    goto/16 :goto_7

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Le/a/c/a0/y$a;->j:Ljava/lang/Object;

    iget-object v4, v3, Le/a/c/a0/y$a;->i:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v3, Le/a/c/a0/y$a;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/a0/y;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v2

    move-object v2, v1

    move v1, v12

    goto/16 :goto_5

    :cond_3
    iget-object v1, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/c/a0/y;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v2, v1

    move v1, v12

    goto :goto_2

    :cond_4
    iget-object v1, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/c/a0/y;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v2, v1

    move v1, v12

    goto :goto_1

    :cond_5
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 4
    iget-object v2, v1, Le/a/c/a0/r;->a:Lw3/b/a/b;

    .line 5
    iget-wide v8, v2, Lw3/b/a/e0/e;->a:J

    .line 6
    iget-object v1, v1, Le/a/c/a0/r;->b:Lw3/b/a/b;

    .line 7
    iget-wide v10, v1, Lw3/b/a/e0/e;->a:J

    .line 8
    iget-object v4, v0, Le/a/c/a0/y;->a:Le/a/c/c/d/d0;

    iput-object v0, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    iput v14, v3, Le/a/c/a0/y$a;->e:I

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move v1, v12

    move-object v12, v3

    invoke-virtual/range {v4 .. v12}, Le/a/c/c/d/d0;->L(Ljava/util/List;JJJLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_6

    return-object v13

    :cond_6
    move-object v4, v2

    move-object v2, v0

    :goto_1
    check-cast v4, Ljava/util/List;

    goto :goto_3

    :cond_7
    move v1, v12

    .line 9
    iget-object v4, v0, Le/a/c/a0/y;->a:Le/a/c/c/d/d0;

    iput-object v0, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    iput v5, v3, Le/a/c/a0/y$a;->e:I

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Le/a/c/c/d/d0;->K(Ljava/util/List;JILs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v13, :cond_8

    return-object v13

    :cond_8
    move-object v4, v2

    move-object v2, v0

    .line 10
    :goto_2
    check-cast v4, Ljava/util/List;

    .line 11
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v6, v2

    :cond_9
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 13
    iget-object v8, v6, Le/a/c/a0/y;->b:Le/a/c/w/o0/g;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    iput-object v6, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/a0/y$a;->h:Ljava/lang/Object;

    iput-object v4, v3, Le/a/c/a0/y$a;->i:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/a0/y$a;->j:Ljava/lang/Object;

    iput v15, v3, Le/a/c/a0/y$a;->e:I

    move-object/from16 p1, v8

    move-object/from16 p2, v7

    move/from16 p3, v9

    move-object/from16 p4, v3

    move/from16 p5, v10

    move-object/from16 p6, v11

    invoke-static/range {p1 .. p6}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_a

    return-object v13

    :cond_a
    :goto_5
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 14
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 16
    :cond_b
    check-cast v5, Ljava/util/List;

    .line 17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v2

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 20
    iget-object v7, v6, Le/a/c/a0/y;->b:Le/a/c/w/o0/g;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v9

    iput-object v6, v3, Le/a/c/a0/y$a;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/a0/y$a;->h:Ljava/lang/Object;

    iput-object v4, v3, Le/a/c/a0/y$a;->i:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/a0/y$a;->j:Ljava/lang/Object;

    iput v1, v3, Le/a/c/a0/y$a;->e:I

    invoke-interface {v7, v8, v9, v3}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v13, :cond_d

    return-object v13

    :cond_d
    :goto_7
    const/4 v8, 0x0

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 21
    invoke-static {v2, v8, v7, v14}, Le/a/m0/a1$k;->s1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 22
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 23
    :cond_e
    check-cast v5, Ljava/util/List;

    return-object v5
.end method

.method public final b(Ljava/util/List;Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Lw3/b/a/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/a0/y$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/a0/y$b;

    iget v1, v0, Le/a/c/a0/y$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/y$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/y$b;

    invoke-direct {v0, p0, p3}, Le/a/c/a0/y$b;-><init>(Le/a/c/a0/y;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/a0/y$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/y$b;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/c/a0/y$b;->k:Ljava/lang/Object;

    iget-object p2, v0, Le/a/c/a0/y$b;->j:Ljava/lang/Object;

    check-cast p2, Ljava/util/Iterator;

    iget-object v2, v0, Le/a/c/a0/y$b;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    iget-object v3, v0, Le/a/c/a0/y$b;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v5, v0, Le/a/c/a0/y$b;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/a0/y;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a0/y$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/a0/y;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/c/a0/y;->a:Le/a/c/c/d/d0;

    invoke-virtual {p2}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object p2

    const-string v2, "startDate.toDate()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Le/a/c/a0/y;->c:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->e()I

    move-result v2

    iput-object p0, v0, Le/a/c/a0/y$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/a0/y$b;->e:I

    invoke-virtual {p3, p1, p2, v2, v0}, Le/a/c/c/d/d0;->M(Ljava/util/List;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p3, Ljava/util/List;

    .line 6
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Ls1/k;

    const/4 p2, 0x0

    .line 7
    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 p2, 0x0

    .line 8
    invoke-direct {p1, p3, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 9
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, p3

    move-object v11, v2

    move-object v2, p2

    move-object p2, v11

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    check-cast v6, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 11
    iget-object v5, p1, Le/a/c/a0/y;->b:Le/a/c/w/o0/g;

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    iput-object p1, v0, Le/a/c/a0/y$b;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/a0/y$b;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/a0/y$b;->i:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a0/y$b;->j:Ljava/lang/Object;

    iput-object p3, v0, Le/a/c/a0/y$b;->k:Ljava/lang/Object;

    iput v4, v0, Le/a/c/a0/y$b;->e:I

    move-object v8, v0

    invoke-static/range {v5 .. v10}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v11, v5

    move-object v5, p1

    move-object p1, p3

    move-object p3, v11

    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 12
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 13
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object p1, v5

    goto :goto_2

    .line 14
    :cond_8
    check-cast v2, Ljava/util/List;

    .line 15
    new-instance p1, Ls1/k;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    .line 16
    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 17
    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public c(Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw3/b/a/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/a0/y$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/a0/y$c;

    iget v1, v0, Le/a/c/a0/y$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/a0/y$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/a0/y$c;

    invoke-direct {v0, p0, p2}, Le/a/c/a0/y$c;-><init>(Le/a/c/a0/y;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/a0/y$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/a0/y$c;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Le/a/c/a0/y$c;->j:I

    iget-object v2, v0, Le/a/c/a0/y$c;->i:Ljava/lang/Object;

    check-cast v2, Lw3/b/a/b;

    iget-object v3, v0, Le/a/c/a0/y$c;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v5, v0, Le/a/c/a0/y$c;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/a0/y;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/c/a0/y$c;->i:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Le/a/c/a0/y$c;->h:Ljava/lang/Object;

    check-cast v2, Lw3/b/a/b;

    iget-object v5, v0, Le/a/c/a0/y$c;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/a0/y;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v12, p2

    move-object p2, p1

    move-object p1, v2

    move-object v2, v12

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string v6, "Bank"

    const-string v7, "Bill"

    const-string v8, "Travel"

    const-string v9, "Delivery"

    const-string v10, "OTP"

    const-string v11, "Event"

    .line 4
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 6
    iget-object v2, p0, Le/a/c/a0/y;->a:Le/a/c/c/d/d0;

    iput-object p0, v0, Le/a/c/a0/y$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/a0/y$c;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/a0/y$c;->i:Ljava/lang/Object;

    iput v5, v0, Le/a/c/a0/y$c;->e:I

    invoke-virtual {v2, p2, v0}, Le/a/c/c/d/d0;->w(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    :goto_1
    check-cast v2, Ljava/util/Date;

    if-eqz v2, :cond_8

    invoke-static {v2}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v2

    move v12, v3

    move-object v3, p2

    move p2, v12

    .line 7
    :goto_2
    iput-object v5, v0, Le/a/c/a0/y$c;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/c/a0/y$c;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/c/a0/y$c;->i:Ljava/lang/Object;

    iput p2, v0, Le/a/c/a0/y$c;->j:I

    iput v4, v0, Le/a/c/a0/y$c;->e:I

    invoke-virtual {v5, v3, p1, v0}, Le/a/c/a0/y;->b(Ljava/util/List;Lw3/b/a/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move v12, p2

    move-object p2, p1

    move p1, v12

    :goto_3
    check-cast p2, Ls1/k;

    .line 8
    iget-object v6, p2, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 10
    iget-object p2, p2, Ls1/k;->b:Ljava/lang/Object;

    .line 11
    check-cast p2, Lw3/b/a/b;

    add-int/2addr p1, v6

    if-eqz p2, :cond_7

    .line 12
    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move-object v12, p2

    move p2, p1

    move-object p1, v12

    goto :goto_2

    .line 13
    :cond_7
    :goto_4
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2

    .line 14
    :cond_8
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object p1
.end method
