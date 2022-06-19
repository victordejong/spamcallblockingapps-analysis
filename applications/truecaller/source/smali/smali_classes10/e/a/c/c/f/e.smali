.class public final Le/a/c/c/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/f/d;


# instance fields
.field public final a:Le/a/c/c/d/i;


# direct methods
.method public constructor <init>(Le/a/c/c/d/i;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analyticsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    return-void
.end method


# virtual methods
.method public a([Le/a/c/r/d/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le/a/c/r/d/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/c/c/f/e$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/c/f/e$a;

    iget v4, v3, Le/a/c/c/f/e$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/c/f/e$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/c/f/e$a;

    invoke-direct {v3, v0, v2}, Le/a/c/c/f/e$a;-><init>(Le/a/c/c/f/e;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/c/f/e$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/c/f/e$a;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Le/a/c/c/f/e$a;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, v3, Le/a/c/c/f/e$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/c/f/e;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v5, v1

    move v9, v6

    :goto_1
    if-ge v9, v5, :cond_4

    aget-object v10, v1, v9

    .line 6
    iget-object v10, v10, Le/a/c/r/d/b;->a:Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    .line 7
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 8
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v9, v1

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    array-length v9, v1

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_5

    aget-object v11, v1, v10

    .line 10
    iget-object v11, v11, Le/a/c/r/d/b;->b:Ljava/util/Map;

    .line 11
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 12
    :cond_5
    iget-object v1, v0, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    iput-object v0, v3, Le/a/c/c/f/e$a;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/c/f/e$a;->h:Ljava/lang/Object;

    iput v8, v3, Le/a/c/c/f/e$a;->e:I

    invoke-virtual {v1, v2, v3}, Le/a/c/c/d/i;->e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    move-object v1, v5

    move-object v5, v0

    .line 13
    :goto_3
    check-cast v2, [Ljava/lang/Long;

    .line 14
    new-instance v9, Ljava/util/ArrayList;

    array-length v10, v2

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    array-length v10, v2

    move v11, v6

    :goto_4
    if-ge v6, v10, :cond_8

    aget-object v12, v2, v6

    .line 16
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v11}, Ljava/lang/Integer;-><init>(I)V

    add-int/2addr v11, v8

    .line 17
    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v24

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 18
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 19
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 21
    new-instance v15, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v16

    check-cast v17, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    const/16 v23, 0x0

    move-object v14, v15

    move-object v8, v15

    move-wide/from16 v15, v24

    invoke-direct/range {v14 .. v23}, Lcom/truecaller/insights/models/analytics/AnalyticsPropertyMapsModel;-><init>(JLjava/lang/String;Ljava/lang/String;JLjava/util/Date;ILs1/z/c/f;)V

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_5

    .line 22
    :cond_7
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v8, 0x1

    goto :goto_4

    .line 23
    :cond_8
    invoke-static {v9}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 24
    iget-object v2, v5, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    const/4 v5, 0x0

    iput-object v5, v3, Le/a/c/c/f/e$a;->g:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/c/f/e$a;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/c/c/f/e$a;->e:I

    invoke-virtual {v2, v1, v3}, Le/a/c/c/d/i;->f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_9

    return-object v4

    .line 25
    :cond_9
    :goto_6
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/c/f/e$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/c/f/e$b;

    iget v1, v0, Le/a/c/c/f/e$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/f/e$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/f/e$b;

    invoke-direct {v0, p0, p1}, Le/a/c/c/f/e$b;-><init>(Le/a/c/c/f/e;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/c/f/e$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/f/e$b;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/c/c/f/e$b;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/c/f/e$b;->h:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    iget-object v4, v0, Le/a/c/c/f/e$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/c/c/f/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Le/a/c/c/f/e$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/c/f/e;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    iput-object p0, v0, Le/a/c/c/f/e$b;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/c/c/f/e$b;->e:I

    invoke-virtual {p1, v0}, Le/a/c/c/d/i;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p1, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    if-eqz p1, :cond_9

    .line 6
    iget-object v5, v2, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;->getCreatedAt()Ljava/util/Date;

    move-result-object v6

    iput-object v2, v0, Le/a/c/c/f/e$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/c/c/f/e$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/c/c/f/e$b;->e:I

    invoke-virtual {v5, v6, v0}, Le/a/c/c/d/i;->g(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_6

    return-object v1

    :cond_6
    move-object v7, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v7

    .line 7
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 8
    iget-object v4, v4, Le/a/c/c/f/e;->a:Le/a/c/c/d/i;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    iput-object p1, v0, Le/a/c/c/f/e$b;->g:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Le/a/c/c/f/e$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/c/c/f/e$b;->e:I

    invoke-virtual {v4, v2, v0}, Le/a/c/c/d/i;->c(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p1

    .line 9
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/insights/models/analytics/AggregratedAnalyticsEvent;->mapToAggregatedAnalyticsEventModel()Lcom/truecaller/insights/models/analytics/AggregatedAnalyticsEventModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object p1

    .line 13
    :cond_9
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method
