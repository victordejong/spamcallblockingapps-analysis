.class public Lcom/hiya/stingray/q/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/q/b/s$g;
    }
.end annotation


# instance fields
.field private a:Lcom/hiya/stingray/q/b/a0;

.field private b:Lcom/hiya/stingray/q/b/u;

.field private c:Lcom/hiya/stingray/q/b/k;

.field private d:Lcom/hiya/stingray/q/d/a;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/q/b/a0;Lcom/hiya/stingray/q/b/u;Lcom/hiya/stingray/q/b/k;Lcom/hiya/stingray/q/d/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/s;->a:Lcom/hiya/stingray/q/b/a0;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/q/b/s;->b:Lcom/hiya/stingray/q/b/u;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/q/b/s;->c:Lcom/hiya/stingray/q/b/k;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/q/b/s;->d:Lcom/hiya/stingray/q/d/a;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/q/b/s;Ljava/util/Map;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/s;->g(Ljava/util/Map;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/hiya/stingray/q/b/s;Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/q/b/s;->m(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/q/b/s;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/q/b/s;->l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/hiya/stingray/q/b/s;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/q/b/s;->n(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/hiya/stingray/q/b/s;)Lcom/hiya/stingray/q/b/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/b/s;->b:Lcom/hiya/stingray/q/b/u;

    return-object p0
.end method

.method static synthetic f(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/s$g;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/s;->i(Lcom/hiya/stingray/q/b/s$g;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private g(Ljava/util/Map;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/q/c/d$b;",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->h(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/b/s$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/b/s$f;-><init>(Lcom/hiya/stingray/q/b/s;)V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/b/s$e;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/q/b/s$e;-><init>(Lcom/hiya/stingray/q/b/s;Ljava/util/Map;)V

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private i(Lcom/hiya/stingray/q/b/s$g;)Li/c/b0/b/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/q/b/s$g;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/b/s;->d:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->n()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/hiya/stingray/q/b/s$g;->d:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 2
    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->a(Lcom/hiya/stingray/q/b/s$g;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->a(Lcom/hiya/stingray/q/b/s$g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/q/b/s;->c:Lcom/hiya/stingray/q/b/k;

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->a(Lcom/hiya/stingray/q/b/s$g;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->b(Lcom/hiya/stingray/q/b/s$g;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/hiya/stingray/q/b/k;->b(Ljava/util/List;IJ)Li/c/b0/b/v;

    move-result-object v2

    .line 4
    iget-boolean v3, p1, Lcom/hiya/stingray/q/b/s$g;->c:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/hiya/stingray/q/b/s;->a:Lcom/hiya/stingray/q/b/a0;

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->a(Lcom/hiya/stingray/q/b/s$g;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->b(Lcom/hiya/stingray/q/b/s$g;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/hiya/stingray/q/b/a0;->e(Ljava/util/List;IJ)Li/c/b0/b/v;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/hiya/stingray/q/b/s;->c:Lcom/hiya/stingray/q/b/k;

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->b(Lcom/hiya/stingray/q/b/s$g;)I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/hiya/stingray/q/b/k;->e(IJ)Li/c/b0/b/v;

    move-result-object v2

    .line 7
    iget-boolean v3, p1, Lcom/hiya/stingray/q/b/s$g;->c:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/hiya/stingray/q/b/s;->a:Lcom/hiya/stingray/q/b/a0;

    invoke-static {p1}, Lcom/hiya/stingray/q/b/s$g;->b(Lcom/hiya/stingray/q/b/s$g;)I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/hiya/stingray/q/b/a0;->d(IJ)Li/c/b0/b/v;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    .line 9
    :goto_0
    iget-boolean v1, p1, Lcom/hiya/stingray/q/b/s$g;->e:Z

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Lcom/hiya/stingray/q/b/s$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/b/s$b;-><init>(Lcom/hiya/stingray/q/b/s;)V

    invoke-virtual {v2, v0, v1}, Li/c/b0/b/v;->zipWith(Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/b/s$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/b/s$a;-><init>(Lcom/hiya/stingray/q/b/s;)V

    .line 11
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Lcom/hiya/stingray/q/b/s$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/b/s$c;-><init>(Lcom/hiya/stingray/q/b/s;)V

    invoke-virtual {v2, v0, v1}, Li/c/b0/b/v;->zipWith(Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    .line 13
    :goto_1
    new-instance v1, Lcom/hiya/stingray/q/b/s$d;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/q/b/s$d;-><init>(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/s$g;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private j(Ljava/util/List;)Lcom/google/common/collect/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;)",
            "Lcom/google/common/collect/g<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/q/c/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g;->D()Lcom/google/common/collect/g;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/e;

    .line 3
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v3, v1}, Lcom/google/common/collect/g;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic k(Lcom/hiya/stingray/q/c/e;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private l(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/f;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/a;

    .line 3
    invoke-static {}, Lcom/hiya/stingray/q/c/d;->k()Lcom/hiya/stingray/q/c/d$b;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->n(I)Lcom/hiya/stingray/q/c/d$b;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/hiya/stingray/q/c/d$b;->l(J)Lcom/hiya/stingray/q/c/d$b;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->p(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->s(Z)Lcom/hiya/stingray/q/c/d$b;

    .line 8
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->u(I)Lcom/hiya/stingray/q/c/d$b;

    .line 9
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/q/c/d$b;->m(I)Lcom/hiya/stingray/q/c/d$b;

    .line 10
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/d$b;->k()Lcom/hiya/stingray/q/c/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/q/c/f;

    .line 12
    invoke-static {}, Lcom/hiya/stingray/q/c/d;->k()Lcom/hiya/stingray/q/c/d$b;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->n(I)Lcom/hiya/stingray/q/c/d$b;

    .line 14
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/q/c/d$b;->l(J)Lcom/hiya/stingray/q/c/d$b;

    .line 15
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->p(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->s(Z)Lcom/hiya/stingray/q/c/d$b;

    .line 17
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->c()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/q/c/d$b;->t(I)Lcom/hiya/stingray/q/c/d$b;

    .line 18
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/d$b;->k()Lcom/hiya/stingray/q/c/d;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private m(Ljava/util/List;Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/a;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/f;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/q/c/d$b;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/a;

    .line 3
    invoke-static {}, Lcom/hiya/stingray/q/c/d;->k()Lcom/hiya/stingray/q/c/d$b;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->n(I)Lcom/hiya/stingray/q/c/d$b;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/hiya/stingray/q/c/d$b;->l(J)Lcom/hiya/stingray/q/c/d$b;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->p(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->s(Z)Lcom/hiya/stingray/q/c/d$b;

    .line 8
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->u(I)Lcom/hiya/stingray/q/c/d$b;

    .line 9
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/q/c/d$b;->m(I)Lcom/hiya/stingray/q/c/d$b;

    .line 10
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/q/c/f;

    .line 12
    invoke-static {}, Lcom/hiya/stingray/q/c/d;->k()Lcom/hiya/stingray/q/c/d$b;

    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->n(I)Lcom/hiya/stingray/q/c/d$b;

    .line 14
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/hiya/stingray/q/c/d$b;->l(J)Lcom/hiya/stingray/q/c/d$b;

    .line 15
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->p(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->s(Z)Lcom/hiya/stingray/q/c/d$b;

    .line 17
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/q/c/d$b;->t(I)Lcom/hiya/stingray/q/c/d$b;

    .line 18
    invoke-virtual {p2}, Lcom/hiya/stingray/q/c/f;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private n(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/hiya/stingray/q/c/d$b;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/b/s;->j(Ljava/util/List;)Lcom/google/common/collect/g;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/c/d$b;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/common/collect/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/collect/g;->B(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/e;

    .line 9
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/hiya/stingray/q/c/d$b;->r(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;

    .line 10
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/hiya/stingray/q/c/d$b;->q(Ljava/util/Map;)Lcom/hiya/stingray/q/c/d$b;

    new-array v4, v4, [Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/e;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v4}, Lcom/google/common/collect/t0;->f([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/q/c/d$b;->o(Ljava/util/Set;)Lcom/hiya/stingray/q/c/d$b;

    goto :goto_2

    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    .line 13
    sget-object v3, Lcom/hiya/stingray/q/b/d;->a:Lcom/hiya/stingray/q/b/d;

    .line 14
    invoke-static {v1, v3}, Lcom/google/common/collect/a0;->d(Ljava/lang/Iterable;Lcom/google/common/base/n;)Ljava/lang/Iterable;

    move-result-object v3

    sget-object v4, Lcom/hiya/stingray/q/b/i;->f:Lcom/hiya/stingray/q/b/i;

    invoke-static {v3, v4}, Lcom/google/common/collect/a0;->h(Ljava/lang/Iterable;Lcom/google/common/base/g;)Ljava/lang/Iterable;

    move-result-object v3

    .line 15
    invoke-static {}, Lcom/google/common/collect/g0;->e()Ljava/util/HashMap;

    move-result-object v4

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/q/c/e;

    .line 17
    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 18
    invoke-virtual {v5}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v2, v4}, Lcom/hiya/stingray/q/c/d$b;->q(Ljava/util/Map;)Lcom/hiya/stingray/q/c/d$b;

    .line 20
    invoke-static {v3}, Lcom/google/common/collect/t0;->d(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/q/c/d$b;->o(Ljava/util/Set;)Lcom/hiya/stingray/q/c/d$b;

    .line 21
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/d$b;->k()Lcom/hiya/stingray/q/c/d;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public h()Lcom/hiya/stingray/q/b/s$g;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/b/s$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hiya/stingray/q/b/s$g;-><init>(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/s$a;)V

    return-object v0
.end method
