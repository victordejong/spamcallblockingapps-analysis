.class public final Le/a/c/g/y/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/g/y/h;


# instance fields
.field public a:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public final d:Le/a/q2/a;

.field public final e:Le/a/c/c0/a;

.field public final f:Le/a/c/g/y/b;

.field public final g:Le/a/c/b/e;

.field public final h:Le/a/c/b/j;

.field public final i:Le/a/c/s/a/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/c/c0/a;Le/a/c/g/y/b;Le/a/c/b/e;Le/a/c/b/j;Le/a/c/s/a/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsReader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsEnvironmentHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorizerRestAdapter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/g/y/i;->d:Le/a/q2/a;

    iput-object p2, p0, Le/a/c/g/y/i;->e:Le/a/c/c0/a;

    iput-object p3, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    iput-object p4, p0, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    iput-object p5, p0, Le/a/c/g/y/i;->h:Le/a/c/b/j;

    iput-object p6, p0, Le/a/c/g/y/i;->i:Le/a/c/s/a/a;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/a/c/g/y/i;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget p1, p0, Le/a/c/g/y/i;->c:I

    check-cast v0, Le/a/c/g/y/g;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ids"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, v0, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {v0, v1, p1}, Le/a/c/c/d/p;->i(Ljava/util/List;I)V

    return-void
.end method

.method public b(ILjava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Le/a/c/g/a0/m;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    sget-object v4, Ls1/s;->a:Ls1/s;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v6, v3, Le/a/c/g/y/i$e;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Le/a/c/g/y/i$e;

    iget v7, v6, Le/a/c/g/y/i$e;->e:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Le/a/c/g/y/i$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v6, Le/a/c/g/y/i$e;

    invoke-direct {v6, v0, v3}, Le/a/c/g/y/i$e;-><init>(Le/a/c/g/y/i;Ls1/w/d;)V

    :goto_0
    iget-object v3, v6, Le/a/c/g/y/i$e;->d:Ljava/lang/Object;

    .line 1
    iget v7, v6, Le/a/c/g/y/i$e;->e:I

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    iget v1, v6, Le/a/c/g/y/i$e;->i:I

    iget-object v2, v6, Le/a/c/g/y/i$e;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v6, Le/a/c/g/y/i$e;->g:Ljava/lang/Object;

    check-cast v5, Le/a/c/g/y/i;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    iput-object v0, v6, Le/a/c/g/y/i$e;->g:Ljava/lang/Object;

    iput-object v2, v6, Le/a/c/g/y/i$e;->h:Ljava/lang/Object;

    iput v1, v6, Le/a/c/g/y/i$e;->i:I

    iput v8, v6, Le/a/c/g/y/i$e;->e:I

    check-cast v3, Le/a/c/g/y/g;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    move-object/from16 v10, p3

    invoke-static {v10, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 8
    check-cast v10, Le/a/c/g/a0/m;

    .line 9
    new-instance v11, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;

    invoke-interface {v10}, Le/a/c/g/a0/m;->getWord()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Le/a/c/g/a0/m;->getProbability()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Le/a/c/g/y/g;->c(Ljava/util/List;)Lcom/truecaller/insights/categorizer/KeywordMeta;

    move-result-object v10

    invoke-direct {v11, v12, v10}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;-><init>(Ljava/lang/String;Lcom/truecaller/insights/categorizer/KeywordMeta;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v9, 0x2

    new-array v9, v9, [Lcom/truecaller/insights/models/states/InsightState;

    const/4 v10, 0x0

    .line 10
    new-instance v15, Lcom/truecaller/insights/models/states/InsightState;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v23, 0x0

    const-string v12, "INSIGHTS.CATEGORIZER"

    move-object v11, v15

    move-object v8, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v23

    invoke-direct/range {v11 .. v17}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 11
    iget-object v11, v3, Le/a/c/g/y/g;->a:Le/m/e/k;

    new-instance v12, Lcom/truecaller/insights/categorizer/model/MetaParam;

    invoke-direct {v12, v1, v2}, Lcom/truecaller/insights/categorizer/model/MetaParam;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v12}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 12
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v11}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    aput-object v8, v9, v10

    .line 13
    new-instance v8, Lcom/truecaller/insights/models/states/InsightState;

    const-string v17, "INSIGHTS.CATEGORIZER.VERSION"

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 14
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 15
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v10}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    const/4 v10, 0x1

    aput-object v8, v9, v10

    .line 16
    invoke-static {v9}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 17
    iget-object v3, v3, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {v3, v7, v8, v6}, Le/a/c/c/d/p;->k(Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    if-ne v3, v5, :cond_5

    return-object v5

    :cond_5
    move-object v5, v0

    .line 18
    :goto_3
    iput-object v2, v5, Le/a/c/g/y/i;->b:Ljava/util/List;

    .line 19
    iput v1, v5, Le/a/c/g/y/i;->c:I

    return-object v4
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/c/g/a0/m;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    iget-object v1, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    check-cast v1, Le/a/c/g/y/g;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Le/a/c/g/a0/m;

    .line 6
    new-instance v4, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;

    invoke-interface {v3}, Le/a/c/g/a0/m;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Le/a/c/g/a0/m;->getProbability()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Le/a/c/g/y/g;->c(Ljava/util/List;)Lcom/truecaller/insights/categorizer/KeywordMeta;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;-><init>(Ljava/lang/String;Lcom/truecaller/insights/categorizer/KeywordMeta;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v1, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {p1, v2, p2}, Le/a/c/c/d/p;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/g/y/i;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "meta"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/g/y/i;->b:Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    iget v1, p0, Le/a/c/g/y/i;->c:I

    check-cast v0, Le/a/c/g/y/g;

    invoke-virtual {v0, v1, p1, p2}, Le/a/c/g/y/g;->b(ILjava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    iget v1, p0, Le/a/c/g/y/i;->c:I

    check-cast v0, Le/a/c/g/y/g;

    .line 2
    iget-object v0, v0, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {v0, v1, p1}, Le/a/c/c/d/p;->b(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/c/g/y/i;->c:I

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    iget v1, p0, Le/a/c/g/y/i;->c:I

    check-cast v0, Le/a/c/g/y/g;

    .line 2
    iget-object v0, v0, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {v0, v1}, Le/a/c/c/d/p;->j(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Le/a/c/g/a0/a;
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/a/c/g/y/i;->a:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    check-cast v0, Le/a/c/g/y/g;

    .line 3
    iget-object v0, v0, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {v0}, Le/a/c/c/d/p;->d()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;

    .line 7
    new-instance v3, Lcom/truecaller/insights/categorizer/model/WordProbImpl;

    invoke-virtual {v2}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/truecaller/insights/models/categorizer/CategorizerWordProb;->getProbability()Lcom/truecaller/insights/categorizer/KeywordMeta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/insights/categorizer/KeywordMeta;->toVector()Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/truecaller/insights/categorizer/model/WordProbImpl;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;

    iget-object v2, p0, Le/a/c/g/y/i;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    iget v3, p0, Le/a/c/g/y/i;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v0

    :cond_1
    const-string v0, "meta"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DB is not setup properly with categorizer model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/f<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    check-cast p1, Le/a/c/g/y/g;

    .line 2
    iget-object p1, p1, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {p1}, Le/a/c/c/d/p;->c()Landroid/database/Cursor;

    move-result-object p1

    .line 3
    new-instance v0, Le/a/c/g/y/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/c/g/y/c;-><init>(Landroid/database/Cursor;Ls1/w/d;)V

    .line 4
    new-instance v2, Lq3/a/x2/d1;

    invoke-direct {v2, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 5
    new-instance v0, Le/a/c/g/y/d;

    invoke-direct {v0, p1, v1}, Le/a/c/g/y/d;-><init>(Landroid/database/Cursor;Ls1/w/d;)V

    .line 6
    new-instance p1, Lq3/a/x2/s;

    invoke-direct {p1, v2, v0}, Lq3/a/x2/s;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/g/y/i$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/g/y/i$b;

    iget v1, v0, Le/a/c/g/y/i$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/i$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/i$b;

    invoke-direct {v0, p0, p1}, Le/a/c/g/y/i$b;-><init>(Le/a/c/g/y/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/g/y/i$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/i$b;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    iget-object v0, v0, Le/a/c/g/y/i$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/c/g/y/i;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Le/a/c/g/y/i$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/g/y/i;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    iput-object p0, v0, Le/a/c/g/y/i$b;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/c/g/y/i$b;->e:I

    check-cast p1, Le/a/c/g/y/g;

    invoke-virtual {p1, v0}, Le/a/c/g/y/g;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_2
    check-cast p1, Lcom/truecaller/insights/categorizer/model/MetaParam;

    if-eqz p1, :cond_7

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/MetaParam;->getVersion()I

    move-result v3

    invoke-virtual {v2}, Le/a/c/g/y/i;->m()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 7
    iput-object v2, v0, Le/a/c/g/y/i$b;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/c/g/y/i$b;->e:I

    invoke-virtual {v2, v0}, Le/a/c/g/y/i;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 8
    :cond_6
    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/MetaParam;->getMeta()Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Le/a/c/g/y/i;->b:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/insights/categorizer/model/MetaParam;->getVersion()I

    move-result p1

    iput p1, v2, Le/a/c/g/y/i;->c:I

    goto :goto_4

    .line 10
    :cond_7
    iget-object p1, v2, Le/a/c/g/y/i;->h:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->O()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    iput-object v2, v0, Le/a/c/g/y/i$b;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/g/y/i$b;->e:I

    invoke-virtual {v2, v0}, Le/a/c/g/y/i;->p(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 12
    :cond_8
    iput-object v2, v0, Le/a/c/g/y/i$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/g/y/i$b;->e:I

    invoke-virtual {v2, v0}, Le/a/c/g/y/i;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 13
    :goto_4
    iput-boolean v6, v2, Le/a/c/g/y/i;->a:Z

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public l(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/f<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/g/y/i;->f:Le/a/c/g/y/b;

    check-cast p1, Le/a/c/g/y/g;

    .line 2
    iget-object p1, p1, Le/a/c/g/y/g;->c:Le/a/c/c/d/p;

    invoke-interface {p1}, Le/a/c/c/d/p;->f()Landroid/database/Cursor;

    move-result-object p1

    .line 3
    new-instance v0, Le/a/c/g/y/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/c/g/y/e;-><init>(Landroid/database/Cursor;Ls1/w/d;)V

    .line 4
    new-instance v2, Lq3/a/x2/d1;

    invoke-direct {v2, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 5
    new-instance v0, Le/a/c/g/y/f;

    invoke-direct {v0, p1, v1}, Le/a/c/g/y/f;-><init>(Landroid/database/Cursor;Ls1/w/d;)V

    .line 6
    new-instance p1, Lq3/a/x2/s;

    invoke-direct {p1, v2, v0}, Lq3/a/x2/s;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    return-object p1
.end method

.method public final m()I
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    invoke-interface {v0}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8a2

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2

    const/16 v2, 0x95a

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa52

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SE"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    const-string v1, "KE"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "EG"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x4

    :cond_3
    :goto_0
    return v3
.end method

.method public final n(JI)V
    .locals 2

    .line 1
    invoke-static {}, Le/a/l5/a/f2;->a()Le/a/l5/a/f2$b;

    move-result-object v0

    const-string v1, "on_first_install"

    .line 2
    invoke-virtual {v0, v1}, Le/a/l5/a/f2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 3
    invoke-virtual {v0, p1, p2}, Le/a/l5/a/f2$b;->c(J)Le/a/l5/a/f2$b;

    const-string p1, "categorizer"

    .line 4
    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const/4 p1, -0x1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    int-to-long p1, p3

    .line 6
    invoke-virtual {v0, p1, p2}, Le/a/l5/a/f2$b;->h(J)Le/a/l5/a/f2$b;

    .line 7
    iget-object p1, p0, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    invoke-interface {p1}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-string p1, "model"

    .line 8
    invoke-virtual {v0, p1}, Le/a/l5/a/f2$b;->g(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 9
    invoke-virtual {v0}, Le/a/l5/a/f2$b;->a()Le/a/l5/a/f2;

    move-result-object p1

    .line 10
    iget-object p2, p0, Le/a/c/g/y/i;->d:Le/a/q2/a;

    const-string p3, "it"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final o(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/g/y/i$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/g/y/i$a;

    iget v1, v0, Le/a/c/g/y/i$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/g/y/i$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/g/y/i$a;

    invoke-direct {v0, p0, p1}, Le/a/c/g/y/i$a;-><init>(Le/a/c/g/y/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/g/y/i$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/g/y/i$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Le/a/c/g/y/i;->m()I

    move-result p1

    .line 5
    iget-object v2, p0, Le/a/c/g/y/i;->e:Le/a/c/c0/a;

    iget-object v4, p0, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    invoke-interface {v4}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v4

    check-cast v2, Le/a/c/c0/b;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "country"

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 8
    :try_start_0
    iget-object v6, v2, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    .line 9
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x8a2

    if-eq v7, v8, :cond_5

    const/16 v8, 0x95a

    if-eq v7, v8, :cond_4

    const/16 v8, 0xa52

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "SE"

    .line 10
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "categorizer/categorizer_se.json"

    goto :goto_2

    :cond_4
    const-string v7, "KE"

    .line 11
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "categorizer/categorizer_kenya.json"

    goto :goto_2

    :cond_5
    const-string v7, "EG"

    .line 12
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "categorizer/categorizer_eg.json"

    goto :goto_2

    :cond_6
    :goto_1
    const-string v4, "categorizer/categorizer.json"

    .line 13
    :goto_2
    invoke-interface {v6, v4}, Le/a/c/c0/m;->b(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v6, v2, Le/a/c/c0/b;->a:Le/m/e/k;

    const-class v7, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;

    invoke-virtual {v6, v4, v7}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "gson.fromJson(bufferedRe\u2026zerModelImpl::class.java)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/truecaller/insights/categorizer/model/CategorizerModelImpl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    iget-object v2, v2, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v2, v4}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    .line 16
    invoke-interface {v6}, Le/a/c/g/a0/a;->getVersion()I

    move-result v2

    if-lt v2, p1, :cond_7

    .line 17
    invoke-interface {v6}, Le/a/c/g/a0/a;->getVersion()I

    move-result p1

    invoke-interface {v6}, Le/a/c/g/a0/a;->getMeta()Ljava/util/List;

    move-result-object v2

    invoke-interface {v6}, Le/a/c/g/a0/a;->getProbabilities()Ljava/util/List;

    move-result-object v4

    iput v3, v0, Le/a/c/g/y/i$a;->e:I

    invoke-virtual {p0, p1, v2, v4, v0}, Le/a/c/g/y/i;->b(ILjava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 18
    :cond_7
    sget-object v0, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Gradle seed version "

    const-string v3, " cannot be smaller than asset seed version"

    .line 20
    invoke-static {v2, p1, v3}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, v1, v5}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 23
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    move-object v5, v4

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 24
    :goto_4
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    move-object v4, v5

    .line 25
    :goto_6
    iget-object v0, v2, Le/a/c/c0/b;->b:Le/a/c/c0/m;

    invoke-interface {v0, v4}, Le/a/c/c0/m;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public final p(Ls1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/c/g/y/i$c;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/c/g/y/i$c;

    iget v2, v1, Le/a/c/g/y/i$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/c/g/y/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/c/g/y/i$c;

    invoke-direct {v1, p0, p1}, Le/a/c/g/y/i$c;-><init>(Le/a/c/g/y/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/c/g/y/i$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/c/g/y/i$c;->e:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-wide v5, v1, Le/a/c/g/y/i$c;->i:J

    iget-object v3, v1, Le/a/c/g/y/i$c;->h:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;

    iget-object v7, v1, Le/a/c/g/y/i$c;->g:Ljava/lang/Object;

    check-cast v7, Le/a/c/g/y/i;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_3
    iget-object v3, v1, Le/a/c/g/y/i$c;->g:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Le/a/c/g/y/i;

    :try_start_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    new-instance p1, Le/a/c/g/y/i$d;

    invoke-direct {p1, p0}, Le/a/c/g/y/i$d;-><init>(Le/a/c/g/y/i;)V

    iput-object p0, v1, Le/a/c/g/y/i$c;->g:Ljava/lang/Object;

    iput v6, v1, Le/a/c/g/y/i$c;->e:I

    invoke-static {p1, v1}, Le/a/m0/a1$k;->t(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p1, v2, :cond_5

    return-object v2

    :cond_5
    move-object v7, p0

    :goto_1
    :try_start_3
    check-cast p1, Ls1/k;

    .line 5
    iget-object v3, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast v3, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;

    .line 7
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 9
    invoke-static {v3}, Le/a/c/p/a;->E1(Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 10
    invoke-virtual {v3}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/categorizerseed/Data;->getModelVersion()I

    move-result p1

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object v6

    invoke-virtual {v6}, Lcom/truecaller/insights/models/categorizerseed/Vectors;->getMeta()Ljava/util/List;

    move-result-object v6

    .line 13
    invoke-virtual {v3}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object v10

    invoke-virtual {v10}, Lcom/truecaller/insights/models/categorizerseed/Data;->getVectors()Lcom/truecaller/insights/models/categorizerseed/Vectors;

    move-result-object v10

    invoke-virtual {v10}, Lcom/truecaller/insights/models/categorizerseed/Vectors;->getProbabilities()Ljava/util/List;

    move-result-object v10

    .line 14
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v10, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 16
    check-cast v12, Lcom/truecaller/insights/models/categorizerseed/Probability;

    .line 17
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v13, Le/a/c/g/y/j;

    invoke-direct {v13, v12}, Le/a/c/g/y/j;-><init>(Lcom/truecaller/insights/models/categorizerseed/Probability;)V

    .line 19
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_6
    iput-object v7, v1, Le/a/c/g/y/i$c;->g:Ljava/lang/Object;

    iput-object v3, v1, Le/a/c/g/y/i$c;->h:Ljava/lang/Object;

    iput-wide v8, v1, Le/a/c/g/y/i$c;->i:J

    iput v5, v1, Le/a/c/g/y/i$c;->e:I

    .line 21
    invoke-virtual {v7, p1, v6, v11, v1}, Le/a/c/g/y/i;->b(ILjava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    return-object v2

    :cond_7
    move-wide v5, v8

    .line 22
    :goto_3
    invoke-virtual {v3}, Lcom/truecaller/insights/models/categorizerseed/CategorizerSeedServiceModel;->getData()Lcom/truecaller/insights/models/categorizerseed/Data;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/insights/models/categorizerseed/Data;->getModelVersion()I

    move-result p1

    invoke-virtual {v7, v5, v6, p1}, Le/a/c/g/y/i;->n(JI)V

    goto :goto_5

    :cond_8
    const-string p1, "Valid response cannot have null vectors field"

    .line 23
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_1
    move-exception p1

    move-object v7, p0

    .line 24
    :goto_4
    sget-object v3, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, p1, v5}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 26
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Le/a/l5/a/f2;->a()Le/a/l5/a/f2$b;

    move-result-object p1

    const-string v3, "on_download_error"

    .line 28
    invoke-virtual {p1, v3}, Le/a/l5/a/f2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-wide/16 v8, 0x0

    .line 29
    invoke-virtual {p1, v8, v9}, Le/a/l5/a/f2$b;->c(J)Le/a/l5/a/f2$b;

    const-string v3, "categorizer"

    .line 30
    invoke-virtual {p1, v3}, Le/a/l5/a/f2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const/4 v3, -0x1

    .line 31
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/a/l5/a/f2$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-wide/16 v8, -0x1

    .line 32
    invoke-virtual {p1, v8, v9}, Le/a/l5/a/f2$b;->h(J)Le/a/l5/a/f2$b;

    .line 33
    iget-object v3, v7, Le/a/c/g/y/i;->g:Le/a/c/b/e;

    invoke-interface {v3}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Le/a/l5/a/f2$b;->f(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    const-string v3, "model"

    .line 34
    invoke-virtual {p1, v3}, Le/a/l5/a/f2$b;->g(Ljava/lang/CharSequence;)Le/a/l5/a/f2$b;

    .line 35
    invoke-virtual {p1}, Le/a/l5/a/f2$b;->a()Le/a/l5/a/f2;

    move-result-object p1

    .line 36
    iget-object v3, v7, Le/a/c/g/y/i;->d:Le/a/q2/a;

    const-string v6, "it"

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 37
    iput-object v5, v1, Le/a/c/g/y/i$c;->g:Ljava/lang/Object;

    iput-object v5, v1, Le/a/c/g/y/i$c;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/c/g/y/i$c;->e:I

    invoke-virtual {v7, v1}, Le/a/c/g/y/i;->o(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    return-object v2

    :cond_9
    :goto_5
    return-object v0
.end method
