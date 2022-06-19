.class public final Le/a/c/u/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/u/a;

.field public final b:Le/a/c/w/o0/g;

.field public final c:Le/a/c/b/j;


# direct methods
.method public constructor <init>(Le/a/c/u/a;Le/a/c/w/o0/g;Le/a/c/b/j;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "reconcileDataSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/u/c;->a:Le/a/c/u/a;

    iput-object p2, p0, Le/a/c/u/c;->b:Le/a/c/w/o0/g;

    iput-object p3, p0, Le/a/c/u/c;->c:Le/a/c/b/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain;Lcom/truecaller/insights/reconcilation/ReconciliationType;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Lcom/truecaller/insights/reconcilation/ReconciliationType;",
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

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/c/u/c$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/u/c$a;

    iget v3, v2, Le/a/c/u/c$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/u/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/u/c$a;

    invoke-direct {v2, v0, v1}, Le/a/c/u/c$a;-><init>(Le/a/c/u/c;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/u/c$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/u/c$a;->e:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v4, v2, Le/a/c/u/c$a;->j:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    iget-object v6, v2, Le/a/c/u/c$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v8, v2, Le/a/c/u/c$a;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v2, Le/a/c/u/c$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/c/u/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/c/u/c$a;->j:Ljava/lang/Object;

    iget-object v8, v2, Le/a/c/u/c$a;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v2, Le/a/c/u/c$a;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/Collection;

    iget-object v10, v2, Le/a/c/u/c$a;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/u/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v4, v2, Le/a/c/u/c$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/u/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-nez v1, :cond_c

    .line 5
    iget-object v1, v0, Le/a/c/u/c;->a:Le/a/c/u/a;

    iput-object v0, v2, Le/a/c/u/c$a;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/c/u/c$a;->e:I

    move-object/from16 v4, p1

    invoke-interface {v1, v4, v2}, Le/a/c/u/a;->a(Lcom/truecaller/insights/models/InsightsDomain;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v0

    :goto_1
    check-cast v1, Ljava/util/List;

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v16, v8

    move-object v8, v1

    move-object/from16 v1, v16

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    check-cast v10, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 8
    iget-object v9, v4, Le/a/c/u/c;->b:Le/a/c/w/o0/g;

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    iput-object v4, v2, Le/a/c/u/c$a;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/c/u/c$a;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/u/c$a;->i:Ljava/lang/Object;

    iput-object v15, v2, Le/a/c/u/c$a;->j:Ljava/lang/Object;

    iput v6, v2, Le/a/c/u/c$a;->e:I

    move-object v12, v2

    invoke-static/range {v9 .. v14}, Le/a/c/p/a;->F(Le/a/c/w/o0/g;Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_6

    return-object v3

    :cond_6
    move-object v10, v4

    move-object v4, v15

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v1, v9

    move-object v4, v10

    goto :goto_2

    .line 11
    :cond_8
    check-cast v1, Ljava/util/List;

    .line 12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v9, v4

    move-object v8, v6

    move-object v6, v1

    :cond_9
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 14
    move-object v4, v1

    check-cast v4, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 15
    iget-object v1, v9, Le/a/c/u/c;->b:Le/a/c/w/o0/g;

    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v11

    iput-object v9, v2, Le/a/c/u/c$a;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/u/c$a;->h:Ljava/lang/Object;

    iput-object v6, v2, Le/a/c/u/c$a;->i:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/u/c$a;->j:Ljava/lang/Object;

    iput v7, v2, Le/a/c/u/c$a;->e:I

    invoke-interface {v1, v10, v11, v2}, Le/a/c/w/o0/g;->k(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    :cond_a
    :goto_5
    const/4 v10, 0x0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v4, v10, v1, v5}, Le/a/m0/a1$k;->s1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 16
    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_b
    check-cast v8, Ljava/util/List;

    return-object v8

    .line 18
    :cond_c
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public final b(Lcom/truecaller/insights/models/InsightsDomain;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            ">;+",
            "Lcom/truecaller/insights/reconcilation/ReconciliationType;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/u/c$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/u/c$b;

    iget v1, v0, Le/a/c/u/c$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/u/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/u/c$b;

    invoke-direct {v0, p0, p2}, Le/a/c/u/c$b;-><init>(Le/a/c/u/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/u/c$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/u/c$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/c/u/c$b;->g:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/reconcilation/ReconciliationType;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p2, p1, Lcom/truecaller/insights/models/InsightsDomain$a;

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    .line 5
    move-object p2, p1

    check-cast p2, Lcom/truecaller/insights/models/InsightsDomain$a;

    const-string v4, "bank"

    .line 6
    invoke-static {p2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$a;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "credit"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "creditcard"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "card"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$a;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "income"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Lcom/truecaller/insights/models/InsightsDomain$a;->h()Ljava/lang/String;

    move-result-object p2

    const-string v4, "refund"

    invoke-static {p2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v3

    if-eqz p2, :cond_4

    const-string p2, "Credited to card"

    goto :goto_1

    :cond_4
    move-object p2, v2

    :goto_1
    if-eqz p2, :cond_6

    .line 8
    sget-object p2, Lcom/truecaller/insights/reconcilation/ReconciliationType;->PAYMENT_FOR_CREDIT_CARD_BILL:Lcom/truecaller/insights/reconcilation/ReconciliationType;

    .line 9
    iput-object p2, v0, Le/a/c/u/c$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/u/c$b;->e:I

    invoke-virtual {p0, p1, p2, v0}, Le/a/c/u/c;->a(Lcom/truecaller/insights/models/InsightsDomain;Lcom/truecaller/insights/reconcilation/ReconciliationType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    new-instance v0, Ls1/k;

    invoke-direct {v0, p2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_6
    return-object v2
.end method

.method public final c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Ls1/s;->a:Ls1/s;

    instance-of v3, v1, Le/a/c/u/c$c;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Le/a/c/u/c$c;

    iget v4, v3, Le/a/c/u/c$c;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/u/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/u/c$c;

    invoke-direct {v3, v0, v1}, Le/a/c/u/c$c;-><init>(Le/a/c/u/c;Ls1/w/d;)V

    :goto_0
    iget-object v1, v3, Le/a/c/u/c$c;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/u/c$c;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v6, :cond_4

    if-eq v5, v7, :cond_3

    if-ne v5, v8, :cond_2

    iget-object v5, v3, Le/a/c/u/c$c;->h:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/u/c$c;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/u/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :cond_1
    move-object v8, v5

    move-object v10, v6

    goto/16 :goto_8

    .line 2
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object v5, v3, Le/a/c/u/c$c;->i:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v3, Le/a/c/u/c$c;->h:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v8, v3, Le/a/c/u/c$c;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/u/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v11, v5

    move-object v5, v6

    move-object v6, v8

    goto/16 :goto_7

    :cond_4
    iget-object v5, v3, Le/a/c/u/c$c;->i:Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/insights/models/InsightsDomain;

    iget-object v8, v3, Le/a/c/u/c$c;->h:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v10, v3, Le/a/c/u/c$c;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/u/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/c/u/c;->c:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->r()Z

    move-result v1

    if-nez v1, :cond_6

    return-object v2

    .line 5
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 7
    check-cast v8, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    const-string v10, "$this$toDomainSchemaOrNull"

    .line 8
    invoke-static {v8, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x6a3494c6

    const-string v13, "] pdo"

    if-eq v11, v12, :cond_b

    const v12, 0x1f7a5c

    if-eq v11, v12, :cond_a

    const v12, 0x1f9827

    if-eq v11, v12, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v11, "Bill"

    .line 10
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 11
    sget-object v10, Ls1/u/t;->a:Ls1/u/t;

    const/16 v41, 0x0

    const-string v12, "$this$toBillDomainSchema"

    .line 12
    invoke-static {v8, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "actions"

    invoke-static {v10, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v6

    if-nez v10, :cond_9

    .line 14
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v15

    .line 15
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v17

    .line 17
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v18

    .line 18
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v19

    .line 19
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v20

    .line 20
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v21

    .line 21
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v22

    .line 22
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v23

    .line 23
    sget-object v10, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Le/a/c/p/a;->W1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/p;

    move-result-object v24

    .line 24
    sget-object v10, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Le/a/c/p/a;->V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v25

    .line 25
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v26

    .line 26
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v10

    invoke-static {v10}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v27

    .line 27
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v38

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    .line 28
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    const/16 v33, 0x0

    .line 29
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    const/16 v37, 0x0

    .line 30
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v32

    .line 31
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v34

    .line 32
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v35

    const/16 v40, 0x0

    .line 33
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v36

    const/16 v42, 0x0

    const v43, 0x282c000

    const/16 v44, 0x0

    .line 34
    new-instance v8, Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-object v14, v8

    const-string v28, "pending"

    invoke-direct/range {v14 .. v44}, Lcom/truecaller/insights/models/InsightsDomain$Bill;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/p;Lw3/b/a/b;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/b;JLcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;ILs1/z/c/f;)V

    goto/16 :goto_3

    .line 35
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create BillDomain from ["

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string v11, "Bank"

    .line 36
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    invoke-static {v8, v10, v6}, Le/a/m0/a1$k;->g1(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZI)Lcom/truecaller/insights/models/InsightsDomain$a;

    move-result-object v8

    goto/16 :goto_3

    :cond_b
    const-string v11, "Travel"

    .line 37
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v43, 0x0

    const-string v10, "$this$toTravelDomainSchema"

    .line 38
    invoke-static {v8, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v6

    if-nez v10, :cond_c

    .line 40
    new-instance v10, Lcom/truecaller/insights/models/InsightsDomain$f;

    move-object v14, v10

    .line 41
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v15

    .line 42
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v16

    .line 43
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v17

    .line 44
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v18

    .line 45
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v19

    .line 46
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v20

    .line 47
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v21

    .line 48
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v22

    .line 49
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v23

    .line 50
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v24

    .line 51
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v25

    .line 52
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object v26

    .line 53
    sget-object v11, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Le/a/c/p/a;->V1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v27

    .line 54
    sget-object v11, Lcom/truecaller/insights/utils/DateFormat;->H_mm:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Le/a/c/p/a;->X1(Lcom/truecaller/insights/utils/DateFormat;Ljava/lang/String;)Lw3/b/a/r;

    move-result-object v28

    .line 55
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v29

    .line 56
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object v30

    .line 57
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v31

    .line 58
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v32

    .line 59
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v34

    .line 60
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object v35

    const-wide/16 v37, 0x0

    .line 61
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v11}, Le/a/c/p/a;->S2(Ljava/util/Date;)Lw3/b/a/b;

    move-result-object v36

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    .line 62
    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result v39

    const/16 v44, 0x0

    const/high16 v45, 0xba00000

    .line 63
    invoke-direct/range {v14 .. v45}, Lcom/truecaller/insights/models/InsightsDomain$f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Lw3/b/a/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lw3/b/a/b;JIZLe/a/c/r/j/b;Lcom/truecaller/insights/models/DomainOrigin;ZLjava/lang/String;I)V

    move-object v8, v10

    goto :goto_3

    .line 64
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create TravelDomain from ["

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_2
    move-object v8, v9

    :goto_3
    if-eqz v8, :cond_7

    .line 65
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 66
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v10, v0

    move-object v8, v1

    :cond_f
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/truecaller/insights/models/InsightsDomain;

    .line 67
    iput-object v10, v3, Le/a/c/u/c$c;->g:Ljava/lang/Object;

    iput-object v8, v3, Le/a/c/u/c$c;->h:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/u/c$c;->i:Ljava/lang/Object;

    iput v6, v3, Le/a/c/u/c$c;->e:I

    invoke-virtual {v10, v5, v3}, Le/a/c/u/c;->b(Lcom/truecaller/insights/models/InsightsDomain;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_10

    return-object v4

    :cond_10
    :goto_5
    check-cast v1, Ls1/k;

    if-eqz v1, :cond_f

    .line 68
    iget-object v6, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 69
    check-cast v6, Ljava/util/List;

    .line 70
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 71
    check-cast v1, Lcom/truecaller/insights/reconcilation/ReconciliationType;

    .line 72
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v6, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 74
    check-cast v13, Lcom/truecaller/insights/models/InsightsDomain;

    .line 75
    invoke-virtual {v5}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgDateTime()Lw3/b/a/b;

    move-result-object v14

    invoke-virtual {v14}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v14

    const-string v15, "parent.msgDateTime.toDate()"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-nez v15, :cond_11

    .line 78
    new-instance v15, Le/a/c/r/j/b;

    const-wide/16 v16, 0x0

    .line 79
    invoke-virtual {v13}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v18

    .line 80
    invoke-virtual {v13}, Lcom/truecaller/insights/models/InsightsDomain;->getCategory()Ljava/lang/String;

    move-result-object v20

    .line 81
    sget-object v24, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    const/16 v21, 0x2

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xa1

    move-object v13, v15

    move-object/from16 v22, v14

    .line 82
    invoke-direct/range {v15 .. v26}, Le/a/c/r/j/b;-><init>(JJLjava/lang/String;ILjava/util/Date;Ljava/util/Date;Lcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 84
    :cond_11
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 85
    :cond_12
    iget-object v1, v10, Le/a/c/u/c;->a:Le/a/c/u/a;

    iput-object v10, v3, Le/a/c/u/c$c;->g:Ljava/lang/Object;

    iput-object v8, v3, Le/a/c/u/c$c;->h:Ljava/lang/Object;

    iput-object v11, v3, Le/a/c/u/c$c;->i:Ljava/lang/Object;

    iput v7, v3, Le/a/c/u/c$c;->e:I

    invoke-interface {v1, v5, v6, v3}, Le/a/c/u/a;->c(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_13

    return-object v4

    :cond_13
    move-object v5, v8

    move-object v6, v10

    .line 86
    :goto_7
    iget-object v1, v6, Le/a/c/u/c;->a:Le/a/c/u/a;

    iput-object v6, v3, Le/a/c/u/c$c;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/u/c$c;->h:Ljava/lang/Object;

    iput-object v9, v3, Le/a/c/u/c$c;->i:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v3, Le/a/c/u/c$c;->e:I

    invoke-interface {v1, v11, v3}, Le/a/c/u/a;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_1

    return-object v4

    :goto_8
    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_14
    return-object v2
.end method
