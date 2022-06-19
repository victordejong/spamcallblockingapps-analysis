.class public final Le/a/c/c/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/f/g;


# instance fields
.field public final a:Le/a/c/c/d/d0;

.field public final b:Le/a/c/c/f/n;

.field public final c:Le/a/c/c/d/s;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d0;Le/a/c/c/f/n;Le/a/c/c/d/s;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "pdoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateUseCases"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enrichmentDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    iput-object p2, p0, Le/a/c/c/f/h;->b:Le/a/c/c/f/n;

    iput-object p3, p0, Le/a/c/c/f/h;->c:Le/a/c/c/d/s;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    const-string v0, "SYNTHETIC"

    const-string v1, "SYNTHETIC_SELF_TRANSFER"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Offers"

    const-string v2, "OTP"

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p2, p1, v0, v1}, Le/a/c/c/d/d0;->u(Ljava/util/Date;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    .line 5
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {p1}, Le/a/c/c/d/d0;->m()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/a/c/c/d/d0;->E(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {p2, p1}, Le/a/c/c/d/d0;->R(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)J

    move-result-wide p1

    .line 2
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method

.method public e(Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    const-string v0, "Offers"

    const-string v1, "OTP"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "SYNTHETIC"

    const-string v2, "SYNTHETIC_SELF_TRANSFER"

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p3, p1, p2, v0, v1}, Le/a/c/c/d/d0;->l(Ljava/util/Date;ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "DUPLICATE"

    .line 2
    invoke-virtual {p2, p1, v0}, Le/a/c/c/d/d0;->a(Ljava/util/Set;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {p2, p1}, Le/a/c/c/d/d0;->q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {v0, p1, p2, p3}, Le/a/c/c/d/d0;->D(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Le/a/c/c/f/h$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/c/f/h$a;

    iget v1, v0, Le/a/c/c/f/h$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/c/f/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/c/f/h$a;

    invoke-direct {v0, p0, p1}, Le/a/c/c/f/h$a;-><init>(Le/a/c/c/f/h;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/c/f/h$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/c/f/h$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/c/c/f/h$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/c/c/f/h;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    iput-object p0, v0, Le/a/c/c/f/h$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/c/c/f/h$a;->e:I

    invoke-virtual {p1, v0}, Le/a/c/c/d/d0;->j0(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Le/a/c/c/f/h;->b:Le/a/c/c/f/n;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/c/c/f/h$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/c/c/f/h$a;->e:I

    invoke-interface {p1, v0}, Le/a/c/c/f/n;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j(Lcom/truecaller/insights/models/pdo/ParsedDataObject;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
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

    check-cast v0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

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
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->setParentId(J)V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->setChildId(J)V

    const-string v0, "HARD_LINK"

    .line 6
    invoke-virtual {v10, v0}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->setLinkType(Ljava/lang/String;)V

    .line 7
    invoke-interface {p3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {p1, p3}, Le/a/c/c/d/d0;->P(Ljava/util/List;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public k(JJLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    const-string v5, "HARD_LINK"

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Le/a/c/c/d/d0;->x(JJLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    const-string v0, "SYNTHETIC"

    const-string v1, "SYNTHETIC_SELF_TRANSFER"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Offers"

    const-string v2, "OTP"

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p3, p1, v0, p2, v1}, Le/a/c/c/d/d0;->p(Ljava/util/Date;Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Locale.US"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Le/a/c/c/d/d0;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
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

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {p2, p1}, Le/a/c/c/d/d0;->S(Ljava/util/List;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public o(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    const-string v0, "SYNTHETIC"

    const-string v1, "SYNTHETIC_SELF_TRANSFER"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Offers"

    const-string v2, "OTP"

    .line 3
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-virtual {p2, p1, v0, v1}, Le/a/c/c/d/d0;->t(Ljava/util/Date;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    .line 5
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public p(Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/h;->a:Le/a/c/c/d/d0;

    invoke-virtual {p2, p1}, Le/a/c/c/d/d0;->F(Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
