.class public Lcom/hiya/stingray/q/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/hiya/stingray/q/b/v;


# direct methods
.method public constructor <init>(Lh/a;Lcom/hiya/stingray/q/b/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hiya/stingray/q/b/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/n;->a:Lh/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/q/b/n;->b:Lcom/hiya/stingray/q/b/v;

    return-void
.end method

.method private a(JLio/realm/y;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/n$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/stingray/q/b/n$b;-><init>(Lcom/hiya/stingray/q/b/n;J)V

    invoke-virtual {p3, v0}, Lio/realm/y;->Z0(Lio/realm/y$b;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lcom/google/common/base/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/j<",
            "Lcom/hiya/stingray/q/c/i/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/q/b/n;->b:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v2

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    const-class v3, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v2, v3}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v4, p0, Lcom/hiya/stingray/q/b/n;->a:Lh/a;

    .line 5
    invoke-interface {v4}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phone"

    .line 6
    invoke-virtual {v3, v0, p1}, Lio/realm/RealmQuery;->i(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    .line 7
    invoke-virtual {v3}, Lio/realm/RealmQuery;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/q/c/i/b;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v2, p1}, Lio/realm/y;->q0(Lio/realm/e0;)Lio/realm/e0;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/q/c/i/b;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 9
    :goto_1
    invoke-virtual {v2}, Lio/realm/y;->close()V

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p1}, Lcom/google/common/base/j;->e(Ljava/lang/Object;)Lcom/google/common/base/j;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/base/j;->a()Lcom/google/common/base/j;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method c(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/b;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/q/b/n;->b:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/q/b/n;->a:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/y;->d(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    const-class v1, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v0, v1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v1, v2, p1}, Lio/realm/RealmQuery;->s(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;

    .line 7
    invoke-virtual {v1}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lio/realm/y;->u0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/c/i/b;

    .line 11
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/i/b;->P0()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0}, Lio/realm/y;->close()V

    return-object v1

    .line 13
    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/Set;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/i/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/n$a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/q/b/n$a;-><init>(Lcom/hiya/stingray/q/b/n;Ljava/util/Set;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/q/b/n;->b:Lcom/hiya/stingray/q/b/v;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/b/v;->a()Lio/realm/y;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/q/c/i/b;

    .line 4
    invoke-virtual {v4}, Lcom/hiya/stingray/q/c/i/b;->P0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5
    invoke-virtual {v4}, Lcom/hiya/stingray/q/c/i/b;->P0()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/String;

    iget-object v7, p0, Lcom/hiya/stingray/q/b/n;->a:Lh/a;

    .line 6
    invoke-interface {v7}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v1

    .line 7
    invoke-static {v5, v6}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/q/c/i/b;->U0(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v2}, Lio/realm/y;->beginTransaction()V

    new-array v0, v1, [Lio/realm/n;

    .line 9
    invoke-virtual {v2, p1, v0}, Lio/realm/y;->K0(Ljava/lang/Iterable;[Lio/realm/n;)Ljava/util/List;

    .line 10
    invoke-virtual {v2}, Lio/realm/y;->j()V

    .line 11
    const-class p1, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v2, p1}, Lio/realm/y;->A1(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/RealmQuery;->c()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_4

    .line 12
    invoke-direct {p0, v0, v1, v2}, Lcom/hiya/stingray/q/b/n;->a(JLio/realm/y;)V

    .line 13
    :cond_4
    invoke-virtual {v2}, Lio/realm/y;->close()V

    return-void
.end method
