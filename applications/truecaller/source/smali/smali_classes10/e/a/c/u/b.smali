.class public final Le/a/c/u/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/u/a;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/a0/e;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/a0/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionDataSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/u/b;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/u/b;->b:Le/a/c/a0/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/models/InsightsDomain;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    instance-of v1, p1, Lcom/truecaller/insights/models/InsightsDomain$a;

    if-nez v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    const/16 v2, 0x1e

    .line 3
    invoke-virtual {v1, v2}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object v1

    const-string v2, "DateTime.now().minusDays\u2026NCILIATION_LIMIT_IN_DAYS)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v5, v1, Lw3/b/a/e0/e;->a:J

    .line 5
    move-object v1, p1

    check-cast v1, Lcom/truecaller/insights/models/InsightsDomain$a;

    invoke-virtual {v1}, Lcom/truecaller/insights/models/InsightsDomain$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v3, 0x0

    .line 8
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v1, v3

    const/4 v3, 0x1

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    .line 9
    :goto_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    .line 10
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 11
    iget-object v3, p0, Le/a/c/u/b;->a:Le/a/c/c/d/d0;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain;->getSender()Ljava/lang/String;

    move-result-object v4

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Le/a/c/c/d/d0;->N(Ljava/lang/String;JLjava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/r/j/b;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/u/b;->b:Le/a/c/a0/e;

    check-cast v0, Le/a/c/a0/f;

    .line 2
    iget-object v0, v0, Le/a/c/a0/f;->a:Le/a/c/c/d/g;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Le/a/c/r/j/b;

    .line 6
    invoke-static {v2}, Le/a/c/p/a;->N2(Le/a/c/r/j/b;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p2}, Le/a/c/c/d/g;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Lcom/truecaller/insights/models/InsightsDomain;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/InsightsDomain;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/insights/models/InsightsDomain;

    .line 3
    new-instance v10, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;-><init>(JJLjava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->setParentId(J)V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/insights/models/InsightsDomain;->getMsgId()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->setChildId(J)V

    const-string v0, "RECONCILIATION_LINK"

    .line 6
    invoke-virtual {v10, v0}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->setLinkType(Ljava/lang/String;)V

    .line 7
    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/c/u/b;->a:Le/a/c/c/d/d0;

    invoke-virtual {p1, p3}, Le/a/c/c/d/d0;->P(Ljava/util/List;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
