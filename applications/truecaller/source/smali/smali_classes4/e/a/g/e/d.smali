.class public final Le/a/g/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/e/a;
.implements Le/a/i/m;


# instance fields
.field public a:Le/a/i/n;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/i/f0/m/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:Ls1/g;

.field public e:Le/a/i/c/a/c;

.field public f:Ljava/lang/Boolean;

.field public g:Lcom/truecaller/data/entity/HistoryEvent;

.field public final h:Le/a/g/e/e;

.field public final i:Le/a/u3/g;

.field public final j:Le/a/g/e/f;

.field public final k:Le/a/i/f0/j/a;


# direct methods
.method public constructor <init>(Le/a/g/e/e;Le/a/u3/g;Le/a/g/e/f;Le/a/i/f0/j/a;)V
    .locals 1
    .param p2    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adsProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdsUnitConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdRequestIdGenerator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    iput-object p2, p0, Le/a/g/e/d;->i:Le/a/u3/g;

    iput-object p3, p0, Le/a/g/e/d;->j:Le/a/g/e/f;

    iput-object p4, p0, Le/a/g/e/d;->k:Le/a/i/f0/j/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/g/e/d;->b:Ljava/util/Map;

    .line 3
    new-instance p1, Le/a/g/e/c;

    invoke-direct {p1, p0}, Le/a/g/e/c;-><init>(Le/a/g/e/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g/e/d;->d:Ls1/g;

    return-void
.end method


# virtual methods
.method public a()Le/a/i/g;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    iget-object v1, p0, Le/a/g/e/d;->g:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Le/a/g/e/d;->e(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v1

    check-cast v0, Le/a/g/b;

    .line 2
    iget-object v2, v0, Le/a/g/b;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Le/a/g/b;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Le/a/g/b;->g:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->N()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-nez v2, :cond_4

    .line 4
    iget-object v2, v0, Le/a/g/b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Le/a/g/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Le/a/g/b;->g:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->K()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->ACS:Lcom/truecaller/ads/AdLayoutTypeX;

    goto :goto_4

    .line 7
    :cond_4
    :goto_3
    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->ACS_LARGE:Lcom/truecaller/ads/AdLayoutTypeX;

    :goto_4
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    check-cast v0, Le/a/g/b;

    .line 2
    iget-object v0, v0, Le/a/g/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Le/a/i/s;
    .locals 1

    iget-object v0, p0, Le/a/g/e/d;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/s;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/e/d;->b:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/m/d;

    invoke-interface {v1}, Le/a/i/f0/m/d;->destroy()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/g/e/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final e(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 1

    .line 1
    iget p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public ed(I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Le/a/g/e/d;->f:Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/g/e/d;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le/a/i/n;->ed(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/g/e/d;->f()V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g/e/d;->i:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->V()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Le/a/g/e/d;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/g/e/d;->e:Le/a/i/c/a/c;

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {v0}, Le/a/i/c/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Roadblock"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Le/a/g/e/d;->f:Ljava/lang/Boolean;

    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    :cond_1
    iget-object v1, p0, Le/a/g/e/d;->a:Le/a/i/n;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Le/a/i/n;->a(Le/a/i/c/a/c;)V

    .line 5
    :cond_2
    invoke-interface {v0}, Le/a/i/c/a/c;->b()Le/a/i/c/a/u;

    move-result-object v0

    sget-object v1, Le/a/i/c/a/u$d;->b:Le/a/i/c/a/u$d;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    check-cast v0, Le/a/g/b;

    invoke-virtual {v0}, Le/a/g/b;->c()Le/a/i/c/d/a;

    move-result-object v0

    const-string v1, "AFTERCALL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/i/c/d/a;->c([Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/a/g/e/d;->e:Le/a/i/c/a/c;

    :cond_4
    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/g/e/d;->c:Z

    .line 2
    iput-boolean p1, p0, Le/a/g/e/d;->c:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {p0}, Le/a/g/e/d;->c()Le/a/i/s;

    move-result-object v1

    check-cast v0, Le/a/g/b;

    invoke-virtual {v0, v1}, Le/a/g/b;->e(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/g/e/d;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/i/n;->onAdLoaded()V

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/g/e/d;->k:Le/a/i/f0/j/a;

    invoke-interface {p1}, Le/a/i/f0/j/a;->reset()V

    :cond_1
    return-void
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/g/e/d;->i:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->A4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x122

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/g/e/d;->g:Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_1

    const-string v2, "it"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Le/a/m0/a1$k;->J0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public i(Lcom/truecaller/data/entity/HistoryEvent;)Z
    .locals 7

    .line 1
    iput-object p1, p0, Le/a/g/e/d;->g:Lcom/truecaller/data/entity/HistoryEvent;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-static {v2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x1

    if-nez v2, :cond_b

    if-eqz p1, :cond_a

    .line 4
    iget-object v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 6
    iget v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 7
    iget-object v2, p0, Le/a/g/e/d;->i:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->T()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v1

    .line 8
    :goto_3
    iget v4, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v1

    :goto_4
    if-eqz v4, :cond_6

    .line 9
    iget-object v4, p0, Le/a/g/e/d;->i:Le/a/u3/g;

    invoke-virtual {v4}, Le/a/u3/g;->U()Le/a/u3/b;

    move-result-object v4

    invoke-interface {v4}, Le/a/u3/b;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_5

    :cond_6
    move v4, v1

    .line 10
    :goto_5
    iget v6, p1, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v6, v5, :cond_7

    move v5, v3

    goto :goto_6

    :cond_7
    move v5, v1

    :goto_6
    if-eqz v5, :cond_8

    if-nez v0, :cond_a

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_8
    if-nez v0, :cond_a

    .line 11
    invoke-virtual {p0, p1}, Le/a/g/e/d;->e(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p1

    if-nez p1, :cond_a

    if-nez v2, :cond_a

    if-eqz v4, :cond_9

    goto :goto_7

    :cond_9
    move p1, v1

    goto :goto_8

    :cond_a
    :goto_7
    move p1, v3

    :goto_8
    if-eqz p1, :cond_b

    .line 12
    iget-object p1, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    check-cast p1, Le/a/g/b;

    .line 13
    iget-object p1, p1, Le/a/g/b;->d:Le/a/i/f0/d;

    invoke-interface {p1}, Le/a/i/f0/d;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    move v1, v3

    :cond_b
    return v1
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Le/a/g/e/d;->f:Ljava/lang/Boolean;

    .line 2
    iget-boolean v0, p0, Le/a/g/e/d;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/g/e/d;->h:Le/a/g/e/e;

    invoke-virtual {p0}, Le/a/g/e/d;->c()Le/a/i/s;

    move-result-object v1

    check-cast v0, Le/a/g/b;

    invoke-virtual {v0, v1}, Le/a/g/b;->e(Le/a/i/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/g/e/d;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/i/n;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/e/d;->a:Le/a/i/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Le/a/i/n;->xe(Le/a/i/f0/m/d;I)V

    :cond_0
    return-void
.end method
