.class public final Le/a/c/w/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/m;


# instance fields
.field public final a:Le/a/c/c/d/m;

.field public final b:Le/a/c/w/i;

.field public final c:Le/a/c/a0/e;

.field public final d:Le/a/c/f/j/a;

.field public final e:Le/a/c/f/h;

.field public final f:Le/a/c/w/o0/g;

.field public final g:Le/a/c/w/n0;

.field public final h:Le/a/c/b/j;

.field public final i:Le/a/c/h/e;

.field public final j:Le/a/c/w/b0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/m;Le/a/c/w/i;Le/a/c/a0/e;Le/a/c/f/j/a;Le/a/c/f/h;Le/a/c/w/o0/g;Le/a/c/w/n0;Le/a/c/b/j;Le/a/c/h/e;Le/a/c/w/b0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "businessInsightsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionDataSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionBinder"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiSchemaBinder"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "travelRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otpRepository"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/n;->a:Le/a/c/c/d/m;

    iput-object p2, p0, Le/a/c/w/n;->b:Le/a/c/w/i;

    iput-object p3, p0, Le/a/c/w/n;->c:Le/a/c/a0/e;

    iput-object p4, p0, Le/a/c/w/n;->d:Le/a/c/f/j/a;

    iput-object p5, p0, Le/a/c/w/n;->e:Le/a/c/f/h;

    iput-object p6, p0, Le/a/c/w/n;->f:Le/a/c/w/o0/g;

    iput-object p7, p0, Le/a/c/w/n;->g:Le/a/c/w/n0;

    iput-object p8, p0, Le/a/c/w/n;->h:Le/a/c/b/j;

    iput-object p9, p0, Le/a/c/w/n;->i:Le/a/c/h/e;

    iput-object p10, p0, Le/a/c/w/n;->j:Le/a/c/w/b0;

    return-void
.end method

.method public static final b(Le/a/c/w/n;Ljava/util/Map;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/insights/models/InsightsDomain;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/r/j/b;

    const/4 v4, 0x1

    .line 7
    invoke-virtual {p0, v3, v1, v4}, Le/a/c/w/n;->d(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/insights/models/InsightsDomain;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 12
    :cond_2
    iget-object v3, p0, Le/a/c/w/n;->e:Le/a/c/f/h;

    invoke-static {v2, v3, v1}, Le/a/c/p/a;->q3(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/f/h;Ljava/util/List;)Le/a/c/q/j;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    new-instance p0, Le/a/c/w/o;

    invoke-direct {p0}, Le/a/c/w/o;-><init>()V

    invoke-static {p1, p0}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Le/a/c/w/n;Ljava/util/Map;Z)Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/insights/models/InsightsDomain;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/r/j/b;

    .line 7
    invoke-virtual {p0, v3, v1, p2}, Le/a/c/w/n;->d(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, p0, Le/a/c/w/n;->e:Le/a/c/f/h;

    invoke-static {v1, v2, v0}, Le/a/c/p/a;->q3(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/f/h;Ljava/util/List;)Le/a/c/q/j;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    new-instance p0, Le/a/c/w/p;

    invoke-direct {p0}, Le/a/c/w/p;-><init>()V

    invoke-static {p1, p0}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(ILw3/b/a/p;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lw3/b/a/p;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/InsightsDomain$a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "showForLast"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/w/n;->a:Le/a/c/c/d/m;

    invoke-virtual {p2}, Lw3/b/a/p;->j()Ljava/util/Date;

    move-result-object p2

    const-string v1, "showForLast.toDate()"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Le/a/c/c/d/m;->a(Ljava/util/Date;)Lq3/a/x2/f;

    move-result-object p2

    .line 2
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p2

    .line 3
    new-instance v0, Le/a/c/w/n$d;

    invoke-direct {v0, p2, p0, p1}, Le/a/c/w/n$d;-><init>(Lq3/a/x2/f;Le/a/c/w/n;I)V

    return-object v0
.end method

.method public final d(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Le/a/c/r/j/b;",
            "Z)",
            "Ljava/util/List<",
            "Le/a/c/r/j/a;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    const-string v0, "reminders_page"

    goto :goto_0

    :cond_0
    const-string v0, "insights_tab"

    :goto_0
    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p0, Le/a/c/w/n;->d:Le/a/c/f/j/a;

    invoke-virtual {p3, p1, p2, v0}, Le/a/c/f/j/a;->a(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 4
    check-cast p3, Le/a/c/r/j/a;

    .line 5
    instance-of v0, p3, Le/a/c/r/j/a$c;

    if-eqz v0, :cond_1

    .line 6
    sget-object p3, Le/a/c/r/j/a$d;->c:Le/a/c/r/j/a$d;

    .line 7
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    iget p3, p2, Le/a/c/r/j/b;->d:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    .line 9
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_2

    .line 10
    :cond_3
    iget-object p3, p0, Le/a/c/w/n;->d:Le/a/c/f/j/a;

    invoke-virtual {p3, p1, p2, v0}, Le/a/c/f/j/a;->a(Lcom/truecaller/insights/models/InsightsDomain;Le/a/c/r/j/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    :cond_4
    :goto_2
    return-object p2
.end method

.method public final e()Le/a/c/q/f;
    .locals 16

    .line 1
    new-instance v12, Le/a/c/q/f;

    .line 2
    sget-object v0, Le/a/c/w/q;->e:Lw3/b/a/q;

    .line 3
    invoke-virtual {v0}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v1

    const-string v2, "BILLS_START_DATE.toDateTime()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v3, v1, Lw3/b/a/e0/e;->a:J

    .line 5
    sget-object v1, Le/a/c/w/q;->d:Lw3/b/a/q;

    .line 6
    invoke-virtual {v1}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v5

    const-string v6, "BILLS_END_DATE.toDateTime()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-wide v7, v5, Lw3/b/a/e0/e;->a:J

    .line 8
    sget-object v9, Lcom/truecaller/insights/insightsui/LoadDirection;->AFTER:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 9
    new-instance v10, Le/a/c/q/i;

    invoke-virtual {v0}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v0

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v13, v0, Lw3/b/a/e0/e;->a:J

    .line 11
    invoke-virtual {v1}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v0

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 13
    invoke-direct {v10, v13, v14, v0, v1}, Le/a/c/q/i;-><init>(JJ)V

    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe0

    move-object v0, v12

    move-wide v2, v3

    move-wide v4, v7

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    .line 14
    invoke-direct/range {v0 .. v11}, Le/a/c/q/f;-><init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;I)V

    return-object v12
.end method

.method public r()Lq3/a/x2/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/c/q/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/w/n;->j:Le/a/c/w/b0;

    .line 2
    sget-object v1, Le/a/c/w/q;->f:Lw3/b/a/q;

    .line 3
    iget-object v2, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 4
    invoke-virtual {v2}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v2

    .line 5
    iget-wide v3, v1, Lw3/b/a/q;->a:J

    .line 6
    invoke-virtual {v2, v3, v4}, Lw3/b/a/c;->c(J)I

    move-result v8

    .line 7
    new-instance v2, Ljava/util/Date;

    .line 8
    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 9
    invoke-virtual {v3}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object v3

    .line 10
    iget-wide v4, v1, Lw3/b/a/q;->a:J

    .line 11
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v3

    add-int/lit16 v6, v3, -0x76c

    .line 12
    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 13
    invoke-virtual {v3}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object v3

    .line 14
    iget-wide v4, v1, Lw3/b/a/q;->a:J

    .line 15
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    .line 16
    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 17
    invoke-virtual {v3}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object v3

    .line 18
    iget-wide v4, v1, Lw3/b/a/q;->a:J

    .line 19
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v9

    .line 20
    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 21
    invoke-virtual {v3}, Lw3/b/a/a;->C()Lw3/b/a/c;

    move-result-object v3

    .line 22
    iget-wide v4, v1, Lw3/b/a/q;->a:J

    .line 23
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v10

    .line 24
    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 25
    invoke-virtual {v3}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object v3

    .line 26
    iget-wide v4, v1, Lw3/b/a/q;->a:J

    .line 27
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v11

    move-object v5, v2

    .line 28
    invoke-direct/range {v5 .. v11}, Ljava/util/Date;-><init>(IIIIII)V

    .line 29
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 30
    iget-object v5, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 31
    invoke-virtual {v5}, Lw3/b/a/a;->A()Lw3/b/a/c;

    move-result-object v5

    .line 32
    iget-wide v6, v1, Lw3/b/a/q;->a:J

    .line 33
    invoke-virtual {v5, v6, v7}, Lw3/b/a/c;->c(J)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 34
    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 35
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 36
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 37
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 38
    invoke-static {v4}, Lw3/b/a/q;->e(Ljava/util/Calendar;)Lw3/b/a/q;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Lw3/b/a/e0/g;->d(Lw3/b/a/b0;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 40
    :goto_0
    invoke-virtual {v2, v1}, Lw3/b/a/e0/g;->d(Lw3/b/a/b0;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v5, 0xea60

    add-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 42
    invoke-static {v4}, Lw3/b/a/q;->e(Ljava/util/Calendar;)Lw3/b/a/q;

    move-result-object v2

    goto :goto_0

    .line 43
    :cond_0
    :goto_1
    invoke-virtual {v2, v1}, Lw3/b/a/e0/g;->d(Lw3/b/a/b0;)Z

    move-result v2

    const-wide/16 v5, 0x3e8

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 45
    invoke-static {v4}, Lw3/b/a/q;->e(Ljava/util/Calendar;)Lw3/b/a/q;

    move-result-object v2

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    add-long/2addr v1, v5

    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v2, v1}, Lw3/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 49
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    int-to-long v7, v3

    sub-long/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    invoke-static {v2}, Lw3/b/a/q;->e(Ljava/util/Calendar;)Lw3/b/a/q;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v1}, Lw3/b/a/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v4, v2

    .line 52
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "OTP_START_DATE.toDate()"

    .line 53
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/a/c/w/d0;

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "startDate"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v3, v0, Le/a/c/w/d0;->a:Le/a/c/a0/u;

    check-cast v3, Le/a/c/a0/v;

    .line 56
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v4, v3, Le/a/c/a0/v;->a:Le/a/c/c/d/d0;

    invoke-virtual {v4, v1}, Le/a/c/c/d/d0;->C(Ljava/util/Date;)Lq3/a/x2/f;

    move-result-object v4

    .line 58
    new-instance v5, Le/a/c/a0/w;

    invoke-direct {v5, v4, v3}, Le/a/c/a0/w;-><init>(Lq3/a/x2/f;Le/a/c/a0/v;)V

    .line 59
    iget-object v0, v0, Le/a/c/w/d0;->a:Le/a/c/a0/u;

    check-cast v0, Le/a/c/a0/v;

    .line 60
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, v0, Le/a/c/a0/v;->b:Le/a/c/c/d/g;

    sget-object v2, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTP"

    invoke-interface {v0, v1, v2, v3}, Le/a/c/c/d/g;->b(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object v0

    .line 62
    new-instance v1, Le/a/c/w/c0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/c/w/c0;-><init>(Ls1/w/d;)V

    .line 63
    new-instance v2, Lq3/a/x2/w0;

    invoke-direct {v2, v5, v0, v1}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 64
    new-instance v0, Le/a/c/w/n$a;

    invoke-direct {v0, v2, p0}, Le/a/c/w/n$a;-><init>(Lq3/a/x2/f;Le/a/c/w/n;)V

    return-object v0
.end method

.method public u(Z)Lq3/a/x2/f;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/j;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/c/w/n;->h:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->W()Z

    move-result v2

    const-string v3, "input"

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, v0, Le/a/c/w/n;->b:Le/a/c/w/i;

    invoke-virtual/range {p0 .. p0}, Le/a/c/w/n;->e()Le/a/c/q/f;

    move-result-object v4

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, v2, Le/a/c/w/i;->a:Le/a/c/a0/p;

    invoke-interface {v3, v4}, Le/a/c/a0/p;->a(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v3

    .line 5
    new-instance v4, Le/a/c/w/h;

    invoke-direct {v4, v3, v2}, Le/a/c/w/h;-><init>(Lq3/a/x2/f;Le/a/c/w/i;)V

    .line 6
    iget-object v2, v0, Le/a/c/w/n;->g:Le/a/c/w/n0;

    if-eqz v1, :cond_0

    .line 7
    sget-object v3, Le/a/c/w/q;->c:Lw3/b/a/q;

    .line 8
    invoke-virtual {v3}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v3

    const-string v5, "TRAVEL_START_DATE_INNER_PAGE.toDateTime()"

    goto :goto_0

    .line 9
    :cond_0
    sget-object v3, Le/a/c/w/q;->b:Lw3/b/a/q;

    .line 10
    invoke-virtual {v3}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v3

    const-string v5, "TRAVEL_START_DATE.toDateTime()"

    :goto_0
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v8, v3, Lw3/b/a/e0/e;->a:J

    .line 12
    sget-object v3, Le/a/c/w/q;->a:Lw3/b/a/q;

    .line 13
    invoke-virtual {v3}, Lw3/b/a/q;->i()Lw3/b/a/b;

    move-result-object v3

    const-string v5, "TRAVEL_END_DATE.toDateTime()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v10, v3, Lw3/b/a/e0/e;->a:J

    .line 15
    new-instance v3, Le/a/c/q/f;

    const/4 v7, 0x1

    .line 16
    sget-object v12, Lcom/truecaller/insights/insightsui/LoadDirection;->AFTER:Lcom/truecaller/insights/insightsui/LoadDirection;

    .line 17
    new-instance v13, Le/a/c/q/i;

    invoke-direct {v13, v8, v9, v10, v11}, Le/a/c/q/i;-><init>(JJ)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe0

    move-object v6, v3

    .line 18
    invoke-direct/range {v6 .. v17}, Le/a/c/q/f;-><init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;I)V

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "loadConfig"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v5, v2, Le/a/c/w/n0;->a:Le/a/c/a0/c0;

    check-cast v5, Le/a/c/a0/d0;

    invoke-virtual {v5, v3}, Le/a/c/a0/d0;->a(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object v3

    .line 21
    new-instance v5, Le/a/c/w/m0;

    invoke-direct {v5, v3, v2}, Le/a/c/w/m0;-><init>(Lq3/a/x2/f;Le/a/c/w/n0;)V

    .line 22
    new-instance v2, Le/a/c/w/n$f;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Le/a/c/w/n$f;-><init>(Le/a/c/w/n;ZLs1/w/d;)V

    .line 23
    new-instance v1, Lq3/a/x2/w0;

    invoke-direct {v1, v4, v5, v2}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    goto :goto_1

    .line 24
    :cond_1
    iget-object v2, v0, Le/a/c/w/n;->b:Le/a/c/w/i;

    invoke-virtual/range {p0 .. p0}, Le/a/c/w/n;->e()Le/a/c/q/f;

    move-result-object v4

    .line 25
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v3, v2, Le/a/c/w/i;->a:Le/a/c/a0/p;

    invoke-interface {v3, v4}, Le/a/c/a0/p;->a(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v3

    .line 27
    new-instance v4, Le/a/c/w/h;

    invoke-direct {v4, v3, v2}, Le/a/c/w/h;-><init>(Lq3/a/x2/f;Le/a/c/w/i;)V

    .line 28
    new-instance v2, Le/a/c/w/n$e;

    invoke-direct {v2, v4, v0, v1}, Le/a/c/w/n$e;-><init>(Lq3/a/x2/f;Le/a/c/w/n;Z)V

    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method public v(Le/a/c/q/f;)Lq3/a/x2/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/q/f;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/q/j;",
            ">;>;"
        }
    .end annotation

    const-string v0, "loadConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/w/n;->h:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->W()Z

    move-result v1

    const-string v2, "input"

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Le/a/c/w/n;->b:Le/a/c/w/i;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, v1, Le/a/c/w/i;->a:Le/a/c/a0/p;

    invoke-interface {v2, p1}, Le/a/c/a0/p;->a(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v2

    .line 5
    new-instance v3, Le/a/c/w/g;

    invoke-direct {v3, v2, v1}, Le/a/c/w/g;-><init>(Lq3/a/x2/f;Le/a/c/w/i;)V

    .line 6
    iget-object v1, p0, Le/a/c/w/n;->g:Le/a/c/w/n0;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, v1, Le/a/c/w/n0;->a:Le/a/c/a0/c0;

    check-cast v0, Le/a/c/a0/d0;

    invoke-virtual {v0, p1}, Le/a/c/a0/d0;->a(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 9
    new-instance v0, Le/a/c/w/l0;

    invoke-direct {v0, p1, v1}, Le/a/c/w/l0;-><init>(Lq3/a/x2/f;Le/a/c/w/n0;)V

    .line 10
    new-instance p1, Le/a/c/w/n$c;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Le/a/c/w/n$c;-><init>(Le/a/c/w/n;Ls1/w/d;)V

    .line 11
    new-instance v1, Lq3/a/x2/w0;

    invoke-direct {v1, v3, v0, p1}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Le/a/c/w/n;->b:Le/a/c/w/i;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Le/a/c/w/i;->a:Le/a/c/a0/p;

    invoke-interface {v1, p1}, Le/a/c/a0/p;->a(Le/a/c/q/f;)Lq3/a/x2/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 15
    new-instance v1, Le/a/c/w/g;

    invoke-direct {v1, p1, v0}, Le/a/c/w/g;-><init>(Lq3/a/x2/f;Le/a/c/w/i;)V

    .line 16
    new-instance p1, Le/a/c/w/n$b;

    invoke-direct {p1, v1, p0}, Le/a/c/w/n$b;-><init>(Lq3/a/x2/f;Le/a/c/w/n;)V

    move-object v1, p1

    :goto_0
    return-object v1
.end method
