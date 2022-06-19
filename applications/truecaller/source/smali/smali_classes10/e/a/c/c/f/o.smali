.class public final Le/a/c/c/f/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/f/n;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/c/c/d/m0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/m0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stateDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/c/c/f/o;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    const-string v0, "INSIGHTS.UPDATES.CLASSIFIER.VERSION"

    invoke-interface {p1, v0}, Le/a/c/c/d/m0;->d(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public b(ILs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/truecaller/insights/models/states/InsightState;

    const-string v1, "INSIGHTS.CATEGORIZER.VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p1, p2}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p2, p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/states/InsightState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "INSIGHTS.RESYNC"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/c/c/f/o;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/states/InsightState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p1, "INSIGHTS.SMS.BILL.REMINDERS"

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/c/f/o;->t(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    iget-object v0, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    const-string v1, "INSIGHTS.LINKING"

    const-string v2, "INSIGHTS.PRUNING"

    .line 2
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1, p1}, Le/a/c/c/d/m0;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/categorizer/model/MetaParam;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    const-string v0, "INSIGHTS.CATEGORIZER"

    invoke-interface {p1, v0}, Le/a/c/c/d/m0;->d(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/c/c/f/o;->a:Le/m/e/k;

    const-class v2, Lcom/truecaller/insights/categorizer/model/MetaParam;

    .line 4
    invoke-virtual {v1, p1, v2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/truecaller/insights/categorizer/model/MetaParam;

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "CategorizerMeta cannot be null"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 8
    sget-object v1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    .line 9
    invoke-virtual {v1, p1, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public g(Lcom/truecaller/insights/models/states/InsightState;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/states/InsightState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p2, p1}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h(Le/a/c/g/a0/f;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/a0/f;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/truecaller/insights/models/states/InsightState;

    const-string v1, "INSIGHTS.UPDATES.CLASSIFIER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 2
    iget-object v0, p0, Le/a/c/c/f/o;->a:Le/m/e/k;

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p1, p2}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p2, p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/a0/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    const-string v0, "INSIGHTS.UPDATES.CLASSIFIER"

    invoke-interface {p1, v0}, Le/a/c/c/d/m0;->d(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/c/f/o;->a:Le/m/e/k;

    const-class v1, Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;

    .line 4
    invoke-virtual {v0, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v1}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CategorizerMeta cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public j(Lcom/truecaller/insights/categorizer/model/MetaParam;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/categorizer/model/MetaParam;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/truecaller/insights/models/states/InsightState;

    const-string v1, "INSIGHTS.CATEGORIZER"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 2
    iget-object v0, p0, Le/a/c/c/f/o;->a:Le/m/e/k;

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p1, p2}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p2, p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    const-string v0, "INSIGHTS.CATEGORIZER.VERSION"

    invoke-interface {p1, v0}, Le/a/c/c/d/m0;->d(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/insights/models/states/InsightState;->getLastUpdatedData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    :cond_0
    return-object v0
.end method

.method public l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/truecaller/insights/models/states/InsightState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 2
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p1, p2}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public m(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/states/InsightState;",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    .line 2
    iget-object p2, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p2, p1}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public n(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/states/InsightState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p1, "INSIGHTS.REMINDERS"

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/c/f/o;->t(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p1

    return-object p1
.end method

.method public o(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/states/InsightState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "INSIGHTS.SENDER.RESOLUTION"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/c/c/f/o;->q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/states/InsightState;",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    .line 2
    iget-object p2, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p2, p1}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public q(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/states/InsightState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p2, p1}, Le/a/c/c/d/m0;->d(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/truecaller/insights/models/states/InsightState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public r(Lcom/truecaller/insights/models/states/InsightState;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/models/states/InsightState;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1
    invoke-static/range {v0 .. v5}, Le/a/m0/a1$k;->J1(Le/a/c/c/f/n;Lcom/truecaller/insights/models/states/InsightState;Ljava/util/Date;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public s(ILs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/truecaller/insights/models/states/InsightState;

    const-string v1, "INSIGHTS.UPDATES.CLASSIFIER.VERSION"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {p1, p2}, Le/a/c/c/d/m0;->b(Lcom/truecaller/insights/models/states/InsightState;)V

    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p2, p1, :cond_0

    return-object p2

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final t(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/c/c/f/o;->b:Le/a/c/c/d/m0;

    invoke-interface {v0, p1}, Le/a/c/c/d/m0;->d(Ljava/lang/String;)Lcom/truecaller/insights/models/states/InsightState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/truecaller/insights/models/states/InsightState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/insights/models/states/InsightState;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    .line 3
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1}, Lw3/b/a/b;-><init>()V

    const/16 v1, 0xa

    .line 4
    invoke-virtual {p1, v1}, Lw3/b/a/b;->y(I)Lw3/b/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/e0/c;->n()Ljava/util/Date;

    move-result-object p1

    const-string v1, "DateTime.now().minusDays\u2026_LOOK_BACK_DAYS).toDate()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedAt(Ljava/util/Date;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcom/truecaller/insights/models/states/InsightState;->setLastUpdatedData(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
