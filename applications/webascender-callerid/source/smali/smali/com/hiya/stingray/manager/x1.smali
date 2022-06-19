.class public Lcom/hiya/stingray/manager/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/q/b/u;

.field private b:Lcom/hiya/stingray/t/i1/o;

.field private c:Lcom/hiya/stingray/q/b/k;

.field private d:Lcom/hiya/stingray/q/d/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/t/i1/o;Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/x1;->a:Lcom/hiya/stingray/q/b/u;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/x1;->b:Lcom/hiya/stingray/t/i1/o;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/x1;->c:Lcom/hiya/stingray/q/b/k;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/x1;->d:Lcom/hiya/stingray/q/d/a;

    return-void
.end method

.method static synthetic d(Ljava/util/List;)Lf/h/k/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/c/e;

    .line 3
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/e;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Lcom/google/common/collect/a0;->c(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lf/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Lf/h/k/c;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Ljava/lang/String;Lf/h/k/c;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x1;->c:Lcom/hiya/stingray/q/b/k;

    iget-object v1, p2, Lf/h/k/c;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hiya/stingray/q/c/e;

    .line 2
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/manager/x1;->d:Lcom/hiya/stingray/q/d/a;

    .line 3
    invoke-virtual {v2}, Lcom/hiya/stingray/q/d/a;->n()J

    move-result-wide v2

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/q/b/k;->d(Ljava/util/List;J)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Li/c/b0/b/e0;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/a;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/a;->c()Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/manager/x1;->b:Lcom/hiya/stingray/t/i1/o;

    iget-object v0, p2, Lf/h/k/c;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/hiya/stingray/q/c/e;

    iget-object p2, p2, Lf/h/k/c;->b:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/hiya/stingray/t/i1/o;->c(Lcom/hiya/stingray/q/c/i/c;Ljava/lang/String;Lcom/hiya/stingray/q/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/hiya/stingray/t/j0;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/k0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x1;->a:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/u;->b()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/x1$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/x1$a;-><init>(Lcom/hiya/stingray/manager/x1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMapIterable(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/t/j0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x1;->a:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/u;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/b0;->f:Lcom/hiya/stingray/manager/b0;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/a0;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/a0;-><init>(Lcom/hiya/stingray/manager/x1;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/x1;->a:Lcom/hiya/stingray/q/b/u;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/u;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/lang/String;Lf/h/k/c;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/x1;->e(Ljava/lang/String;Lf/h/k/c;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
