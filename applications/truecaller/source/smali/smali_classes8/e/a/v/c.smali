.class public final Le/a/v/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/y/j;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Le/a/i/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->DETAILS:Lcom/truecaller/ads/AdLayoutTypeX;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v0

    invoke-interface {v0}, Le/a/i/f0/d;->b()Z

    move-result v0

    return v0
.end method

.method public c(Le/a/i/s;)Z
    .locals 1

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/i/f0/d;->c(Le/a/i/s;)Z

    move-result p1

    return p1
.end method

.method public d()Le/a/i/f0/j/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->l()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v0

    const-string v1, "graph.adUnitIdManagerProvider()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Le/a/i/f0/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->l()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->r0()Le/a/i/f0/a;

    move-result-object v0

    const-string v1, "graph.adsAnalytics()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()Le/a/i/c/d/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->l()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->r2()Le/a/i/c/d/a;

    move-result-object v0

    const-string v1, "graph.adRouterAdsProvider()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Le/a/i/s;Le/a/i/m;)V
    .locals 2

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v0

    invoke-interface {v0}, Le/a/i/f0/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Le/a/i/f0/d;->l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Le/a/i/s;)Le/a/i/f0/m/d;
    .locals 8

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Le/m/d/y/n;->J(Le/a/i/f0/d;Le/a/i/s;IZLjava/lang/String;ILjava/lang/Object;)Le/a/i/f0/m/d;

    move-result-object p1

    return-object p1
.end method

.method public i(Le/a/i/s;)V
    .locals 2

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, p1, v1}, Le/a/i/f0/d;->m(Le/a/i/s;Ljava/lang/String;)V

    return-void
.end method

.method public j(Le/a/i/s;Le/a/i/m;)V
    .locals 1

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->k()Le/a/i/f0/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    return-void
.end method

.method public final k()Le/a/i/f0/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/v/c;->l()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v0

    const-string v1, "graph.adsProvider()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l()Le/a/j2;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    const-string v1, "(context.applicationCont\u2026GraphHolder).objectsGraph"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
