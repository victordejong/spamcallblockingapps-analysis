.class public final Le/a/i/d0/d0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/d0/d;


# instance fields
.field public a:Le/a/i/d0/d0/b;

.field public final b:Le/a/i/d0/d0/f;


# direct methods
.method public constructor <init>(Le/a/i/d0/d0/f;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "internalAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d0/e;->b:Le/a/i/d0/d0/f;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/d0/d0/b;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/i/d0/d0/e;->a:Le/a/i/d0/d0/b;

    return-void
.end method

.method public b(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)V
    .locals 6

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/d0/d0/e;->a:Le/a/i/d0/d0/b;

    if-eqz v1, :cond_2

    .line 2
    iget-object v2, p0, Le/a/i/d0/d0/e;->b:Le/a/i/d0/d0/f;

    check-cast v2, Le/a/i/d0/d0/g;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v2, Le/a/i/d0/d0/g;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 5
    iget-object v3, v0, Le/a/u3/g;->v5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x153

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object p1, Le/a/i/d0/v;->d:Le/a/i/d0/v;

    invoke-virtual {v1, p1}, Le/a/i/d0/d0/b;->a(Le/a/i/c/b/a;)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Le/a/i/d0/d0/g;->a(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)Lcom/truecaller/ads/mediation/google/ServerParams;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object p1

    .line 10
    sget-object v3, Lcom/truecaller/ads/AdLayoutTypeX;->SMALL:Lcom/truecaller/ads/AdLayoutTypeX;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 12
    sget-object v5, Le/a/i/c/d/l;->n:Le/a/i/c/d/l$b;

    .line 13
    sget-object v5, Le/a/i/c/d/l;->j:Ls1/d0/i;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    invoke-virtual {v5, p1}, Ls1/d0/i;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    sget-object p1, Le/a/i/c/d/l;->l:Ljava/util/List;

    .line 16
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 17
    :cond_1
    sget-object v3, Lcom/truecaller/ads/AdLayoutTypeX;->ACS_LARGE:Lcom/truecaller/ads/AdLayoutTypeX;

    .line 18
    sget-object p1, Le/a/i/c/d/l;->n:Le/a/i/c/d/l$b;

    .line 19
    sget-object p1, Le/a/i/c/d/l;->k:Ljava/util/List;

    .line 20
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 21
    :goto_0
    new-instance p1, Le/a/i/d0/d0/a;

    invoke-virtual {v2, v4, v0}, Le/a/i/d0/d0/g;->b(Ljava/util/List;Lcom/truecaller/ads/mediation/google/ServerParams;)Le/a/i/c/d/l;

    move-result-object v4

    invoke-direct {p1, v4, v3}, Le/a/i/d0/d0/a;-><init>(Le/a/i/c/d/l;Le/a/i/g;)V

    .line 22
    iget-object v2, v2, Le/a/i/d0/d0/g;->d:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/c/d/a;

    .line 23
    iget-object v3, p1, Le/a/i/d0/d0/a;->a:Le/a/i/c/d/l;

    .line 24
    new-instance v4, Le/a/i/d0/d0/h;

    invoke-direct {v4, v2, p1, v1, v0}, Le/a/i/d0/d0/h;-><init>(Le/a/i/c/d/a;Le/a/i/d0/d0/a;Le/a/i/d0/d0/b;Lcom/truecaller/ads/mediation/google/ServerParams;)V

    const/4 p1, 0x1

    invoke-interface {v2, v3, v4, p1}, Le/a/i/c/d/a;->d(Le/a/i/c/d/l;Le/a/i/c/d/i;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)V
    .locals 6

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/i/d0/d0/e;->a:Le/a/i/d0/d0/b;

    if-eqz v1, :cond_1

    .line 2
    iget-object v2, p0, Le/a/i/d0/d0/e;->b:Le/a/i/d0/d0/f;

    check-cast v2, Le/a/i/d0/d0/g;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v2, Le/a/i/d0/d0/g;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 5
    iget-object v3, v0, Le/a/u3/g;->v5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x153

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object p1, Le/a/i/d0/v;->d:Le/a/i/d0/v;

    invoke-virtual {v1, p1}, Le/a/i/d0/d0/b;->a(Le/a/i/c/b/a;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Le/a/i/d0/d0/g;->a(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)Lcom/truecaller/ads/mediation/google/ServerParams;

    move-result-object p1

    .line 9
    iget-object v0, v2, Le/a/i/d0/d0/g;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c/d/a;

    .line 10
    sget-object v3, Le/a/i/c/d/l;->n:Le/a/i/c/d/l$b;

    .line 11
    sget-object v3, Le/a/i/c/d/l;->m:Ljava/util/List;

    .line 12
    invoke-virtual {v2, v3, p1}, Le/a/i/d0/d0/g;->b(Ljava/util/List;Lcom/truecaller/ads/mediation/google/ServerParams;)Le/a/i/c/d/l;

    move-result-object v3

    .line 13
    new-instance v4, Le/a/i/d0/d0/i;

    invoke-direct {v4, v0, v2, p1, v1}, Le/a/i/d0/d0/i;-><init>(Le/a/i/c/d/a;Le/a/i/d0/d0/g;Lcom/truecaller/ads/mediation/google/ServerParams;Le/a/i/d0/d0/b;)V

    const/4 p1, 0x1

    invoke-interface {v0, v3, v4, p1}, Le/a/i/c/d/a;->d(Le/a/i/c/d/l;Le/a/i/c/d/i;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/i/d0/d0/e;->a:Le/a/i/d0/d0/b;

    .line 2
    iget-object v0, p0, Le/a/i/d0/d0/e;->b:Le/a/i/d0/d0/f;

    check-cast v0, Le/a/i/d0/d0/g;

    .line 3
    iget-object v0, v0, Le/a/i/d0/d0/g;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c/d/a;

    invoke-interface {v0}, Le/a/i/c/d/a;->cancel()V

    return-void
.end method
