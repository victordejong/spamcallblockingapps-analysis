.class public final Le/a/c/i/m/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/m/c;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/i0;

.field public final c:I

.field public final d:Le/a/c/i/i/a;

.field public final e:Le/a/c/i/c/c;

.field public final f:Le/a/c/c/f/n;

.field public final g:Ls1/w/f;

.field public final h:Landroid/content/ContentResolver;

.field public final i:Le/a/c/c/f/k;

.field public final j:Le/a/c/h/i;


# direct methods
.method public constructor <init>(Le/a/c/i/i/a;Le/a/c/i/c/c;Le/a/c/c/f/n;Ls1/w/f;Landroid/content/ContentResolver;Le/a/c/c/f/k;Le/a/c/b/e;Le/a/c/h/i;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "parseManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSyncUseCases"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/m/d;->d:Le/a/c/i/i/a;

    iput-object p2, p0, Le/a/c/i/m/d;->e:Le/a/c/i/c/c;

    iput-object p3, p0, Le/a/c/i/m/d;->f:Le/a/c/c/f/n;

    iput-object p4, p0, Le/a/c/i/m/d;->g:Ls1/w/f;

    iput-object p5, p0, Le/a/c/i/m/d;->h:Landroid/content/ContentResolver;

    iput-object p6, p0, Le/a/c/i/m/d;->i:Le/a/c/c/f/k;

    iput-object p8, p0, Le/a/c/i/m/d;->j:Le/a/c/h/i;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/m/d;->a:Lq3/a/y;

    .line 3
    invoke-interface {p4, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/m/d;->b:Lq3/a/i0;

    .line 4
    invoke-interface {p7}, Le/a/c/b/e;->b()Lcom/truecaller/insights/state/MemoryLevel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    const/16 p1, 0x190

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0x28

    :goto_0
    iput p1, p0, Le/a/c/i/m/d;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    new-instance v0, Le/a/c/i/m/d$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/i/m/d$f;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(ZZLs1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Ljava/lang/Long;",
            "Le/a/c/c/e/b$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/c/i/m/d$g;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/i/m/d$g;

    iget v3, v2, Le/a/c/i/m/d$g;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/i/m/d$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/i/m/d$g;

    invoke-direct {v2, v0, v1}, Le/a/c/i/m/d$g;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/i/m/d$g;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/i/m/d$g;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-wide v3, v2, Le/a/c/i/m/d$g;->j:J

    iget-object v2, v2, Le/a/c/i/m/d$g;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/m/d;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v9, v2, Le/a/c/i/m/d$g;->j:J

    iget-object v4, v2, Le/a/c/i/m/d$g;->h:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v2, Le/a/c/i/m/d$g;->g:Ljava/lang/Object;

    check-cast v6, Le/a/c/i/m/d;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide v9, v2, Le/a/c/i/m/d$g;->j:J

    iget-boolean v4, v2, Le/a/c/i/m/d$g;->i:Z

    iget-object v11, v2, Le/a/c/i/m/d$g;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/i/m/d;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v15, v4

    move-object v4, v1

    move v1, v15

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 5
    iput-object v0, v2, Le/a/c/i/m/d$g;->g:Ljava/lang/Object;

    move/from16 v1, p2

    iput-boolean v1, v2, Le/a/c/i/m/d$g;->i:Z

    iput-wide v9, v2, Le/a/c/i/m/d$g;->j:J

    iput v7, v2, Le/a/c/i/m/d$g;->e:I

    move/from16 v4, p1

    invoke-virtual {v0, v4, v2}, Le/a/c/i/m/d;->c(ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    return-object v3

    :cond_5
    move-object v11, v0

    .line 6
    :goto_1
    check-cast v4, Ljava/lang/String;

    .line 7
    iput-object v11, v2, Le/a/c/i/m/d$g;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/i/m/d$g;->h:Ljava/lang/Object;

    iput-wide v9, v2, Le/a/c/i/m/d$g;->j:J

    iput v6, v2, Le/a/c/i/m/d$g;->e:I

    invoke-virtual {v11, v4, v1, v2}, Le/a/c/i/m/d;->d(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v6, v11

    .line 8
    :goto_2
    iget v1, v6, Le/a/c/i/m/d;->c:I

    iput-object v6, v2, Le/a/c/i/m/d$g;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/i/m/d$g;->h:Ljava/lang/Object;

    iput-wide v9, v2, Le/a/c/i/m/d$g;->j:J

    iput v5, v2, Le/a/c/i/m/d$g;->e:I

    invoke-virtual {v6, v4, v1, v2}, Le/a/c/i/m/d;->g(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    move-object v2, v6

    move-wide v3, v9

    .line 9
    :goto_3
    check-cast v1, Ljava/util/List;

    .line 10
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v5, Le/a/c/i/m/e;

    invoke-direct {v5, v2, v8, v8}, Le/a/c/i/m/e;-><init>(Le/a/c/i/m/d;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v8, v5, v7, v8}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v13, v8

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/c/e/b$a;

    .line 17
    iget v7, v6, Le/a/c/c/e/b$a;->a:I

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget v7, v6, Le/a/c/c/e/b$a;->e:I

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v7, v6, Le/a/c/c/e/b$a;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/c/r/h/h;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .line 23
    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v10, 0x0

    .line 24
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_9
    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/2addr v10, v8

    .line 26
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v11, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 27
    :cond_a
    iget-object v7, v6, Le/a/c/c/e/b$a;->c:Ljava/util/List;

    .line 28
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v13, v6, Le/a/c/c/e/b$a;->d:Ljava/lang/String;

    goto :goto_4

    .line 30
    :cond_b
    invoke-static {v2}, Ls1/u/i;->I0(Ljava/lang/Iterable;)I

    move-result v10

    .line 31
    invoke-static {v2}, Ls1/u/i;->I0(Ljava/lang/Iterable;)I

    move-result v14

    .line 32
    new-instance v1, Le/a/c/c/e/b$a;

    move-object v9, v1

    invoke-direct/range {v9 .. v14}, Le/a/c/c/e/b$a;-><init>(ILjava/util/Map;Ljava/util/List;Ljava/lang/String;I)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 34
    new-instance v2, Ls1/k;

    .line 35
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v5, v6}, Ljava/lang/Long;-><init>(J)V

    .line 36
    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final c(ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/c/i/m/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/c/i/m/d$a;

    iget v1, v0, Le/a/c/i/m/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/m/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/m/d$a;

    invoke-direct {v0, p0, p2}, Le/a/c/i/m/d$a;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/c/i/m/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/m/d$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/c/i/m/d$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/c/i/m/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p1, :cond_5

    .line 4
    iget-object p1, p0, Le/a/c/i/m/d;->f:Le/a/c/c/f/n;

    iput-object p0, v0, Le/a/c/i/m/d$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/i/m/d$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lcom/truecaller/insights/models/states/InsightState;

    invoke-virtual {p2}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 7
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v3, p2

    :cond_5
    return-object v3
.end method

.method public final d(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p3, Le/a/c/i/m/d$b;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/c/i/m/d$b;

    iget v2, v1, Le/a/c/i/m/d$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/m/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/m/d$b;

    invoke-direct {v1, p0, p3}, Le/a/c/i/m/d$b;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/c/i/m/d$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/c/i/m/d$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Le/a/c/i/m/d;->i:Le/a/c/c/f/k;

    iput v4, v1, Le/a/c/i/m/d$b;->e:I

    .line 5
    iget-object p2, p1, Le/a/c/c/f/k;->a:Le/a/c/c/d/d0;

    iget-object p3, p1, Le/a/c/c/f/k;->c:Le/a/c/c/d/s;

    iget-object p1, p1, Le/a/c/c/f/k;->b:Le/a/c/c/d/m0;

    invoke-virtual {p2, p3, p1, v1}, Le/a/c/c/d/d0;->b0(Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final e(Ljava/util/List;Le/a/c/c/e/a;Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq3/a/n0<",
            "Le/a/c/r/h/f;",
            ">;>;",
            "Le/a/c/c/e/a;",
            "Ljava/lang/String;",
            "I",
            "Ls1/w/d<",
            "-",
            "Le/a/c/c/e/b$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Le/a/c/i/m/d$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/c/i/m/d$c;

    iget v2, v1, Le/a/c/i/m/d$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/i/m/d$c;->e:I

    move-object v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/i/m/d$c;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Le/a/c/i/m/d$c;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    :goto_0
    iget-object v0, v1, Le/a/c/i/m/d$c;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v1, Le/a/c/i/m/d$c;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget v3, v1, Le/a/c/i/m/d$c;->k:I

    iget-object v4, v1, Le/a/c/i/m/d$c;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Le/a/c/i/m/d$c;->h:Ljava/lang/Object;

    check-cast v5, Le/a/c/c/e/a;

    iget-object v1, v1, Le/a/c/i/m/d$c;->g:Ljava/lang/Object;

    check-cast v1, Le/a/c/i/m/d;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move v13, v3

    move-object v12, v4

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget v4, v1, Le/a/c/i/m/d$c;->k:I

    iget-object v8, v1, Le/a/c/i/m/d$c;->j:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    iget-object v9, v1, Le/a/c/i/m/d$c;->i:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v1, Le/a/c/i/m/d$c;->h:Ljava/lang/Object;

    check-cast v10, Le/a/c/c/e/a;

    iget-object v11, v1, Le/a/c/i/m/d$c;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/i/m/d;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    move/from16 v4, p4

    move-object v11, v2

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/n0;

    .line 5
    iput-object v11, v1, Le/a/c/i/m/d$c;->g:Ljava/lang/Object;

    iput-object v10, v1, Le/a/c/i/m/d$c;->h:Ljava/lang/Object;

    iput-object v9, v1, Le/a/c/i/m/d$c;->i:Ljava/lang/Object;

    iput-object v8, v1, Le/a/c/i/m/d$c;->j:Ljava/lang/Object;

    iput v4, v1, Le/a/c/i/m/d$c;->k:I

    iput v7, v1, Le/a/c/i/m/d$c;->e:I

    invoke-interface {v0, v1}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    .line 6
    :cond_5
    iget-object v0, v10, Le/a/c/c/e/a;->a:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    iput-object v11, v1, Le/a/c/i/m/d$c;->g:Ljava/lang/Object;

    iput-object v10, v1, Le/a/c/i/m/d$c;->h:Ljava/lang/Object;

    iput-object v9, v1, Le/a/c/i/m/d$c;->i:Ljava/lang/Object;

    iput-object v6, v1, Le/a/c/i/m/d$c;->j:Ljava/lang/Object;

    iput v4, v1, Le/a/c/i/m/d$c;->k:I

    iput v5, v1, Le/a/c/i/m/d$c;->e:I

    invoke-virtual {v10, v1}, Le/a/c/c/e/a;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    move v13, v4

    move-object v12, v9

    move-object v5, v10

    move-object v1, v11

    .line 9
    :goto_2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v0, Le/a/c/i/m/e;

    invoke-direct {v0, v1, v12, v6}, Le/a/c/i/m/e;-><init>(Le/a/c/i/m/d;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v6, v0, v7, v6}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, v5, Le/a/c/c/e/a;->a:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, v5, Le/a/c/c/e/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/c/c;

    .line 15
    instance-of v4, v3, Le/a/c/c/c$a;

    if-eqz v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v1, "parseTransactions"

    .line 16
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 19
    move-object v8, v4

    check-cast v8, Le/a/c/c/c$a;

    .line 20
    iget-object v8, v8, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 21
    iget-object v8, v8, Le/a/c/r/h/f$b;->b:Le/a/c/r/h/h;

    .line 22
    invoke-virtual {v1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_9

    .line 23
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_9
    check-cast v9, Ljava/util/List;

    .line 26
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_a
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/c/r/h/h;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 29
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 30
    :cond_b
    sget-object v4, Le/a/c/r/h/h$h;->a:Le/a/c/r/h/h$h;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_e

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 33
    check-cast v6, Le/a/c/c/c$a;

    .line 34
    iget-object v6, v6, Le/a/c/c/c$a;->a:Le/a/c/r/h/f$b;

    .line 35
    iget-object v6, v6, Le/a/c/r/h/f$b;->d:Le/a/c/r/h/i;

    const-string v8, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.SmsDetailedResponseType.EmptyDetailedResponse"

    .line 36
    invoke-static {v6, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Le/a/c/r/h/i$a;

    .line 37
    iget-object v6, v6, Le/a/c/r/h/i$a;->a:Ljava/lang/Throwable;

    .line 38
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 39
    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Throwable;

    .line 41
    instance-of v8, v8, Lcom/truecaller/log/UnmutedException$InsightsExceptions;

    xor-int/2addr v8, v7

    if-eqz v8, :cond_d

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 42
    :cond_e
    new-instance v1, Le/a/c/c/e/b$a;

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 44
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    if-eqz v6, :cond_f

    move-object v11, v6

    goto :goto_8

    .line 45
    :cond_f
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    move-object v11, v0

    :goto_8
    move-object v8, v1

    .line 46
    invoke-direct/range {v8 .. v13}, Le/a/c/c/e/b$a;-><init>(ILjava/util/Map;Ljava/util/List;Ljava/lang/String;I)V

    .line 47
    iget-object v0, v5, Le/a/c/c/e/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method public final f(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ls1/w/d<",
            "-",
            "Le/a/c/c/e/b$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    instance-of v2, v1, Le/a/c/i/m/d$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/i/m/d$e;

    iget v3, v2, Le/a/c/i/m/d$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/i/m/d$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/i/m/d$e;

    invoke-direct {v2, v15, v1}, Le/a/c/i/m/d$e;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    :goto_0
    move-object v14, v2

    iget-object v1, v14, Le/a/c/i/m/d$e;->d:Ljava/lang/Object;

    sget-object v13, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v14, Le/a/c/i/m/d$e;->e:I

    const/4 v12, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v12, :cond_1

    iget-object v0, v14, Le/a/c/i/m/d$e;->g:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, v15, Le/a/c/i/m/d;->e:Le/a/c/i/c/c;

    invoke-interface {v1}, Le/a/c/i/c/c;->a()Le/a/c/c/e/a;

    move-result-object v20

    .line 6
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    const/4 v10, 0x0

    iput-object v10, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    new-instance v7, Ls1/z/c/a0;

    invoke-direct {v7}, Ls1/z/c/a0;-><init>()V

    const/4 v1, 0x0

    iput v1, v7, Ls1/z/c/a0;->a:I

    .line 8
    iget-object v1, v15, Le/a/c/i/m/d;->h:Landroid/content/ContentResolver;

    .line 9
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    sget-object v3, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 11
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "insights_resync_directory"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v4, "last_id"

    .line 12
    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    if-eqz v2, :cond_4

    const-string v4, "chunk_size"

    .line 13
    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 14
    :cond_4
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v1

    .line 15
    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 16
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v1, :cond_c

    :try_start_1
    const-string v1, "cursor"

    .line 18
    invoke-static {v8, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "message_id"

    invoke-static {v8, v1}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "message_content"

    .line 19
    invoke-static {v8, v1}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, ""

    if-eqz v1, :cond_5

    move-object v5, v1

    goto :goto_2

    :cond_5
    move-object v5, v4

    :goto_2
    :try_start_2
    const-string v1, "message_sender_raw_address"

    .line 20
    invoke-static {v8, v1}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v4

    :goto_3
    const-string v10, "message_date"

    .line 21
    invoke-static {v8, v10}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v16

    const-string v10, "message_conversation_id"

    .line 22
    invoke-static {v8, v10}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v18

    const-string v10, "message_transport"

    .line 23
    invoke-static {v8, v10}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v12, "category"

    .line 24
    invoke-static {v8, v12}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    move-object/from16 p2, v1

    const-string v1, "normalized_address"

    .line 25
    invoke-static {v8, v1}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move-object v4, v1

    :cond_7
    const/4 v1, 0x2

    if-ne v10, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v4, p2

    :goto_4
    const-string v1, "message_sender_name"

    .line 26
    invoke-static {v8, v1}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 27
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 28
    iget v1, v7, Ls1/z/c/a0;->a:I

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v7, Ls1/z/c/a0;->a:I

    .line 29
    iget-object v1, v15, Le/a/c/i/m/d;->j:Le/a/c/h/i;

    if-eqz v1, :cond_b

    invoke-interface {v1, v5}, Le/a/c/h/i;->e(Ljava/lang/String;)Ls1/o;

    move-result-object v1

    if-eqz v1, :cond_b

    move-object/from16 v23, v5

    .line 30
    new-instance v5, Ls1/k;

    move-object/from16 v24, v7

    .line 31
    iget-object v7, v1, Ls1/o;->b:Ljava/lang/Object;

    move-object/from16 v25, v9

    .line 32
    iget-object v9, v1, Ls1/o;->c:Ljava/lang/Object;

    .line 33
    invoke-direct {v5, v7, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v7, 0x64

    if-gt v5, v7, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->isLast()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 35
    :cond_9
    iget-object v5, v15, Le/a/c/i/m/d;->j:Le/a/c/h/i;

    invoke-interface {v5, v6}, Le/a/c/h/i;->d(Ljava/util/List;)V

    .line 36
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_a
    move-object v5, v1

    goto :goto_5

    :cond_b
    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v9

    const/4 v5, 0x0

    .line 37
    :goto_5
    iget-object v9, v15, Le/a/c/i/m/d;->b:Lq3/a/i0;

    .line 38
    sget-object v27, Le/a/c/o/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/16 v28, 0x0

    .line 39
    new-instance v29, Le/a/c/i/m/d$d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v26, 0x0

    move-object/from16 v1, v29

    move-object/from16 v7, v23

    move-object/from16 v23, v6

    move-object v6, v7

    move-object/from16 p2, v24

    move-object/from16 v24, v8

    move-wide/from16 v7, v16

    move/from16 v16, v10

    move-object/from16 v32, v25

    move-object/from16 v25, v9

    move-wide/from16 v9, v18

    move-object/from16 p3, v11

    move/from16 v11, v16

    move-object/from16 v33, v13

    move-object/from16 v13, v22

    move-object v0, v14

    move-object/from16 v14, v26

    move-object/from16 v15, p0

    move-object/from16 v16, v32

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v20

    :try_start_3
    invoke-direct/range {v1 .. v19}, Le/a/c/i/m/d$d;-><init>(JLjava/lang/String;Ls1/o;Ljava/lang/String;JJIILjava/lang/String;Ls1/w/d;Le/a/c/i/m/d;Ls1/z/c/c0;Ls1/z/c/a0;Ljava/util/List;Le/a/c/c/e/a;)V

    const/16 v30, 0x2

    const/16 v31, 0x0

    move-object/from16 v26, v25

    invoke-static/range {v26 .. v31}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v15, p0

    move-object/from16 v7, p2

    move-object v14, v0

    move-object v11, v2

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v32

    move-object/from16 v13, v33

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v24, v8

    :goto_6
    move-object v2, v0

    move-object/from16 v1, v24

    goto :goto_8

    :cond_c
    move-object/from16 p2, v7

    move-object/from16 v24, v8

    move-object/from16 v32, v9

    move-object v2, v11

    move-object/from16 v33, v13

    move-object v0, v14

    .line 40
    :try_start_4
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, v24

    const/4 v3, 0x0

    .line 41
    invoke-static {v1, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object/from16 v1, v32

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v8

    :goto_7
    move-object v2, v0

    :goto_8
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    move-object/from16 p2, v7

    move-object v2, v11

    move-object/from16 v33, v13

    move-object v0, v14

    move-object v1, v9

    .line 42
    :goto_9
    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object/from16 v1, p2

    iget v5, v1, Ls1/z/c/a0;->a:I

    move-object v6, v0

    move-object/from16 v0, p1

    iput-object v0, v6, Le/a/c/i/m/d$e;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, v6, Le/a/c/i/m/d$e;->e:I

    move-object/from16 v1, p0

    move-object/from16 v3, v20

    invoke-virtual/range {v1 .. v6}, Le/a/c/i/m/d;->e(Ljava/util/List;Le/a/c/c/e/a;Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v33

    if-ne v1, v0, :cond_e

    return-object v0

    .line 43
    :cond_e
    :goto_a
    check-cast v1, Le/a/c/c/e/b$a;

    return-object v1
.end method

.method public final g(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/c/c/e/b$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/c/i/m/d$h;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/c/i/m/d$h;

    iget v1, v0, Le/a/c/i/m/d$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/i/m/d$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/i/m/d$h;

    invoke-direct {v0, p0, p3}, Le/a/c/i/m/d$h;-><init>(Le/a/c/i/m/d;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/c/i/m/d$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/i/m/d$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Le/a/c/i/m/d$h;->i:I

    iget-object p2, v0, Le/a/c/i/m/d$h;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    iget-object v2, v0, Le/a/c/i/m/d$h;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/i/m/d;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, p0

    move-object v5, p3

    move p3, p2

    move-object p2, v5

    .line 5
    :goto_1
    iput-object v2, v0, Le/a/c/i/m/d$h;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/c/i/m/d$h;->h:Ljava/lang/Object;

    iput p3, v0, Le/a/c/i/m/d$h;->i:I

    iput v3, v0, Le/a/c/i/m/d$h;->e:I

    invoke-virtual {v2, p1, p3, v0}, Le/a/c/i/m/d;->f(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move v5, p3

    move-object p3, p1

    move p1, v5

    .line 6
    :goto_2
    check-cast p3, Le/a/c/c/e/b$a;

    .line 7
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget v4, p3, Le/a/c/c/e/b$a;->e:I

    .line 9
    iget-object p3, p3, Le/a/c/c/e/b$a;->d:Ljava/lang/String;

    if-ge v4, p1, :cond_4

    return-object p2

    :cond_4
    move-object v5, p3

    move p3, p1

    move-object p1, v5

    goto :goto_1
.end method
