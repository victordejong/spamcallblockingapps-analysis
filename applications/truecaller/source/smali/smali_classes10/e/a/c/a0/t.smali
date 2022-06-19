.class public final Le/a/c/a0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/s;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/t;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/a0/t;->b:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public a(JILe/a/c/a0/r;Ls1/w/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
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

    move-object/from16 v0, p5

    instance-of v1, v0, Le/a/c/a0/t$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/a0/t$a;

    iget v2, v1, Le/a/c/a0/t$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/a0/t$a;->e:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/a0/t$a;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Le/a/c/a0/t$a;-><init>(Le/a/c/a0/t;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/a0/t$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/c/a0/t$a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v7, :cond_1

    iget v4, v1, Le/a/c/a0/t$a;->m:I

    iget-wide v6, v1, Le/a/c/a0/t$a;->l:J

    iget-object v9, v1, Le/a/c/a0/t$a;->k:Ljava/lang/Object;

    check-cast v9, Ljava/util/Iterator;

    iget-object v10, v1, Le/a/c/a0/t$a;->j:Ljava/lang/Object;

    check-cast v10, Ljava/util/Collection;

    iget-object v11, v1, Le/a/c/a0/t$a;->i:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    iget-object v12, v1, Le/a/c/a0/t$a;->h:Ljava/lang/Object;

    check-cast v12, Le/a/c/a0/r;

    iget-object v13, v1, Le/a/c/a0/t$a;->g:Ljava/lang/Object;

    check-cast v13, Le/a/c/a0/t;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v19

    move/from16 v20, v8

    move-object v8, v3

    move v3, v4

    move-object v4, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move/from16 v9, v20

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v4, v1, Le/a/c/a0/t$a;->m:I

    iget-wide v6, v1, Le/a/c/a0/t$a;->l:J

    iget-object v9, v1, Le/a/c/a0/t$a;->h:Ljava/lang/Object;

    check-cast v9, Le/a/c/a0/r;

    iget-object v10, v1, Le/a/c/a0/t$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/a0/t;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v4, v1, Le/a/c/a0/t$a;->m:I

    iget-wide v6, v1, Le/a/c/a0/t$a;->l:J

    iget-object v9, v1, Le/a/c/a0/t$a;->h:Ljava/lang/Object;

    check-cast v9, Le/a/c/a0/r;

    iget-object v10, v1, Le/a/c/a0/t$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/a0/t;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v4, p4

    move-object v10, v2

    move-object v6, v3

    move-object v7, v5

    move/from16 v3, p3

    move-object v5, v1

    move-wide/from16 v0, p1

    :goto_1
    if-eqz v4, :cond_6

    .line 4
    iget-object v9, v4, Le/a/c/a0/r;->a:Lw3/b/a/b;

    .line 5
    iget-wide v14, v9, Lw3/b/a/e0/e;->a:J

    .line 6
    iget-object v9, v4, Le/a/c/a0/r;->b:Lw3/b/a/b;

    .line 7
    iget-wide v12, v9, Lw3/b/a/e0/e;->a:J

    .line 8
    iget-object v11, v10, Le/a/c/a0/t;->a:Le/a/c/c/d/d0;

    iput-object v10, v5, Le/a/c/a0/t$a;->g:Ljava/lang/Object;

    iput-object v4, v5, Le/a/c/a0/t$a;->h:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/a0/t$a;->i:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/a0/t$a;->j:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/a0/t$a;->k:Ljava/lang/Object;

    iput-wide v0, v5, Le/a/c/a0/t$a;->l:J

    iput v3, v5, Le/a/c/a0/t$a;->m:I

    iput v8, v5, Le/a/c/a0/t$a;->e:I

    move-wide/from16 v16, v12

    move-wide v12, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v11 .. v18}, Le/a/c/c/d/d0;->I(JJJLs1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_5

    return-object v6

    :cond_5
    move-object/from16 v19, v4

    move v4, v3

    move-object v3, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move-wide/from16 v21, v0

    move-object v1, v5

    move-object v5, v7

    move-object/from16 v0, v20

    move-wide/from16 v6, v21

    :goto_2
    check-cast v0, Ljava/util/List;

    goto :goto_4

    .line 9
    :cond_6
    iget-object v9, v10, Le/a/c/a0/t;->a:Le/a/c/c/d/d0;

    iput-object v10, v5, Le/a/c/a0/t$a;->g:Ljava/lang/Object;

    iput-object v4, v5, Le/a/c/a0/t$a;->h:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/a0/t$a;->i:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/a0/t$a;->j:Ljava/lang/Object;

    iput-object v7, v5, Le/a/c/a0/t$a;->k:Ljava/lang/Object;

    iput-wide v0, v5, Le/a/c/a0/t$a;->l:J

    iput v3, v5, Le/a/c/a0/t$a;->m:I

    const/4 v11, 0x2

    iput v11, v5, Le/a/c/a0/t$a;->e:I

    invoke-virtual {v9, v0, v1, v3, v5}, Le/a/c/c/d/d0;->H(JILs1/w/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_7

    return-object v6

    :cond_7
    move-object/from16 v19, v4

    move v4, v3

    move-object v3, v6

    move-object/from16 v20, v9

    move-object/from16 v9, v19

    move-wide/from16 v21, v0

    move-object v1, v5

    move-object v5, v7

    move-object/from16 v0, v20

    move-wide/from16 v6, v21

    .line 10
    :goto_3
    check-cast v0, Ljava/util/List;

    .line 11
    :goto_4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object/from16 v19, v12

    move-object v12, v0

    move-object/from16 v20, v5

    move-object v5, v1

    move-wide v0, v6

    move-object v7, v3

    move v3, v4

    move-object/from16 v6, v20

    move-object v4, v9

    move-object/from16 v9, v19

    move-object/from16 v21, v11

    move-object v11, v10

    move-object/from16 v10, v21

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 13
    check-cast v13, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 14
    iget-object v14, v11, Le/a/c/a0/t;->b:Le/a/c/w/o0/g;

    iput-object v11, v5, Le/a/c/a0/t$a;->g:Ljava/lang/Object;

    iput-object v4, v5, Le/a/c/a0/t$a;->h:Ljava/lang/Object;

    iput-object v12, v5, Le/a/c/a0/t$a;->i:Ljava/lang/Object;

    iput-object v10, v5, Le/a/c/a0/t$a;->j:Ljava/lang/Object;

    iput-object v9, v5, Le/a/c/a0/t$a;->k:Ljava/lang/Object;

    iput-wide v0, v5, Le/a/c/a0/t$a;->l:J

    iput v3, v5, Le/a/c/a0/t$a;->m:I

    const/4 v15, 0x3

    iput v15, v5, Le/a/c/a0/t$a;->e:I

    .line 15
    invoke-static {v13, v14, v6, v5}, Le/a/m0/a1$k;->G1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/w/o0/g;Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v7, :cond_8

    return-object v7

    :cond_8
    move-wide/from16 v19, v0

    move-object v1, v6

    move-object v0, v13

    move-object v13, v11

    move-object v11, v10

    move-object v10, v9

    move v9, v8

    move-object v8, v7

    move-wide/from16 v6, v19

    .line 16
    :goto_6
    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain;

    if-eqz v0, :cond_9

    .line 17
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    move-wide/from16 v19, v6

    move-object v6, v1

    move-wide/from16 v0, v19

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v13

    goto :goto_5

    .line 18
    :cond_a
    check-cast v10, Ljava/util/List;

    new-array v6, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v13, "InfoCard Flow: getDomainsForConversation: "

    const-string v14, "infocardPdos size - "

    .line 19
    invoke-static {v13, v14}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 20
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", infocardDomains size: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v9

    .line 21
    invoke-static {v6}, Le/a/c/h/l/b;->a([Ljava/lang/String;)V

    .line 22
    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_c

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    move-object v10, v11

    move-object/from16 v19, v7

    move-object v7, v6

    move-object/from16 v6, v19

    goto/16 :goto_1

    :cond_c
    :goto_7
    return-object v10
.end method
