.class public final Le/a/c/a0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a0/p;


# instance fields
.field public final a:Le/a/c/c/d/k;

.field public final b:Le/a/c/c/d/g;

.field public final c:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/c/d/k;Le/a/c/c/d/g;Le/a/c/w/o0/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionStateDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a0/q;->a:Le/a/c/c/d/k;

    iput-object p2, p0, Le/a/c/a0/q;->b:Le/a/c/c/d/g;

    iput-object p3, p0, Le/a/c/a0/q;->c:Le/a/c/w/o0/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
            ">;>;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v1

    .line 2
    iget-wide v2, p1, Le/a/c/q/f;->b:J

    .line 3
    invoke-virtual {v1, v2, v3}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/utils/DateFormat;->formatter()Lw3/b/a/i0/b;

    move-result-object v0

    .line 5
    iget-wide v1, p1, Le/a/c/q/f;->c:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lw3/b/a/i0/b;->e(J)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-boolean v0, p1, Le/a/c/q/f;->a:Z

    const-string v1, "endDateString"

    const-string v2, "startDateString"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 8
    iget-object v4, p0, Le/a/c/a0/q;->a:Le/a/c/c/d/k;

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v7, p1, Le/a/c/q/f;->b:J

    .line 10
    iget-wide v9, p1, Le/a/c/q/f;->c:J

    const-string v11, "Bill"

    .line 11
    invoke-interface/range {v4 .. v11}, Le/a/c/c/d/k;->c(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    .line 14
    iget-object v4, p0, Le/a/c/a0/q;->a:Le/a/c/c/d/k;

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-wide v7, p1, Le/a/c/q/f;->b:J

    .line 16
    iget-wide v9, p1, Le/a/c/q/f;->c:J

    const-string v11, "Bill"

    .line 17
    invoke-interface/range {v4 .. v11}, Le/a/c/c/d/k;->a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 19
    :cond_2
    iget-object v4, p0, Le/a/c/a0/q;->a:Le/a/c/c/d/k;

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-wide v7, p1, Le/a/c/q/f;->b:J

    .line 21
    iget-wide v9, p1, Le/a/c/q/f;->c:J

    const-string v11, "Bill"

    .line 22
    invoke-interface/range {v4 .. v11}, Le/a/c/c/d/k;->b(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 23
    new-instance v1, Le/a/c/a0/q$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/c/a0/q$a;-><init>(Le/a/c/a0/q;Ls1/w/d;)V

    invoke-static {p1, v0, v1, v3, v2}, Ls1/a/a/a/v0/f/d;->S0(Lq3/a/x2/f;ILs1/z/b/p;ILjava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public b(JJLs1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$Bill;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Le/a/c/a0/q$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/c/a0/q$b;

    iget v3, v2, Le/a/c/a0/q$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/c/a0/q$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/c/a0/q$b;

    invoke-direct {v2, p0, v1}, Le/a/c/a0/q$b;-><init>(Le/a/c/a0/q;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/c/a0/q$b;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/c/a0/q$b;->e:I

    const/4 v5, 0x1

    const/16 v6, 0xa

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v4, v2, Le/a/c/a0/q$b;->k:Ljava/lang/Object;

    iget-object v7, v2, Le/a/c/a0/q$b;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/Iterator;

    iget-object v8, v2, Le/a/c/a0/q$b;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/Collection;

    iget-object v9, v2, Le/a/c/a0/q$b;->h:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    iget-object v10, v2, Le/a/c/a0/q$b;->g:Ljava/lang/Object;

    check-cast v10, Le/a/c/a0/q;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lw3/b/a/b;

    move-wide v8, p1

    invoke-direct {v1, v8, v9}, Lw3/b/a/b;-><init>(J)V

    .line 5
    iget-object v4, v0, Le/a/c/a0/q;->b:Le/a/c/c/d/g;

    invoke-virtual {v1}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object v1

    const-string v7, "startDateTime.toDate()"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Le/a/c/c/d/g;->f(Ljava/util/Date;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 8
    check-cast v7, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    .line 9
    invoke-virtual {v7}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getEntityId()J

    move-result-wide v10

    .line 10
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 11
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_3
    iget-object v7, v0, Le/a/c/a0/q;->a:Le/a/c/c/d/k;

    const-string v13, "Bill"

    move-wide v8, p1

    move-wide/from16 v10, p3

    .line 13
    invoke-interface/range {v7 .. v13}, Le/a/c/c/d/k;->d(JJLjava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v10, v0

    move-object v9, v1

    move-object v8, v7

    move-object v7, v4

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 16
    iput-object v10, v2, Le/a/c/a0/q$b;->g:Ljava/lang/Object;

    iput-object v9, v2, Le/a/c/a0/q$b;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/c/a0/q$b;->i:Ljava/lang/Object;

    iput-object v7, v2, Le/a/c/a0/q$b;->j:Ljava/lang/Object;

    iput-object v4, v2, Le/a/c/a0/q$b;->k:Ljava/lang/Object;

    iput v5, v2, Le/a/c/a0/q$b;->e:I

    .line 17
    iget-object v11, v10, Le/a/c/a0/q;->c:Le/a/c/w/o0/g;

    invoke-interface {v11, v1, v5, v2}, Le/a/c/w/o0/g;->g(Lcom/truecaller/insights/models/pdo/ParsedDataObject;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    .line 18
    :cond_5
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_6
    check-cast v8, Ljava/util/List;

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v8, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 24
    check-cast v3, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 25
    invoke-static {v9, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_7

    move v4, v5

    .line 26
    :cond_7
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 27
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 28
    move-object v8, v7

    check-cast v8, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    .line 29
    invoke-virtual {v8}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->getEntityId()J

    move-result-wide v10

    .line 30
    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v10, v11}, Ljava/lang/Long;-><init>(J)V

    .line 31
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    const/4 v7, 0x2

    invoke-static {v3, v5, v4, v7}, Le/a/m0/a1$k;->j1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Ljava/util/Map;ZI)Lcom/truecaller/insights/models/InsightsDomain$Bill;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    return-object v1
.end method
