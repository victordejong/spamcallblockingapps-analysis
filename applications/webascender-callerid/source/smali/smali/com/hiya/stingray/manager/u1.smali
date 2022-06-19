.class public final Lcom/hiya/stingray/manager/u1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/q/d/a;

.field private final b:Lcom/hiya/stingray/ui/callergrid/j;

.field private final c:Lcom/hiya/stingray/t/i1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/ui/callergrid/j;Lcom/hiya/stingray/t/i1/k;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerGridHelper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerGridMapper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/u1;->a:Lcom/hiya/stingray/q/d/a;

    iput-object p2, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    iput-object p3, p0, Lcom/hiya/stingray/manager/u1;->c:Lcom/hiya/stingray/t/i1/k;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hiya/stingray/manager/u1;->d(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/manager/u1;->h(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/u1;->j(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final d(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    invoke-virtual {v0, p3}, Lcom/hiya/stingray/ui/callergrid/j;->k(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p3

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/u1$a;

    invoke-direct {v0, p0, p2, p4, p1}, Lcom/hiya/stingray/manager/u1$a;-><init>(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p3, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "callerGridHelper.getReal\u2026, it)))\n                }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final h(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/hiya/stingray/q/c/e;

    .line 5
    invoke-virtual {v2}, Lcom/hiya/stingray/q/c/e;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 6
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 10
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/s/b0;->b(I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/q/c/e;

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 18
    invoke-static {v1}, Lkotlin/s/k;->m0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 19
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/e;

    if-eqz v1, :cond_3

    .line 21
    iget-object v2, p0, Lcom/hiya/stingray/manager/u1;->c:Lcom/hiya/stingray/t/i1/k;

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/t/i1/k;->d(Lcom/hiya/stingray/q/c/e;)Lcom/hiya/stingray/t/g0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 24
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/q/c/i/c;

    if-eqz v1, :cond_5

    .line 25
    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/i/c;->Q0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/hiya/stingray/q/c/i/c;->W0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/hiya/stingray/util/t;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    iget-object v2, p0, Lcom/hiya/stingray/manager/u1;->c:Lcom/hiya/stingray/t/i1/k;

    invoke-virtual {v2, v1}, Lcom/hiya/stingray/t/i1/k;->e(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/g0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_6
    return-object v0
.end method

.method private final j(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/hiya/stingray/manager/u1;->c:Lcom/hiya/stingray/t/i1/k;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {v3, v1}, Lcom/hiya/stingray/t/i1/k;->e(Lcom/hiya/stingray/q/c/i/c;)Lcom/hiya/stingray/t/g0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final e()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    new-instance v1, Lcom/hiya/stingray/manager/u1$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u1$b;-><init>(Lcom/hiya/stingray/manager/u1;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/callergrid/j;->e(Lkotlin/w/b/l;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final f()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    sget-object v1, Lcom/hiya/stingray/manager/u1$c;->f:Lcom/hiya/stingray/manager/u1$c;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/callergrid/j;->e(Lkotlin/w/b/l;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/hiya/stingray/ui/callergrid/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    return-object v0
.end method

.method public final i()Lcom/hiya/stingray/q/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->a:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->f()Lcom/hiya/stingray/q/c/c;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/hiya/stingray/q/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->a:Lcom/hiya/stingray/q/d/a;

    return-object v0
.end method

.method public final l(Lcom/hiya/stingray/q/c/c;)Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/q/c/c;",
            ")",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "persistenceDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/c;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/c;->b()Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/util/List;

    .line 7
    invoke-static {v2, v4}, Lkotlin/s/k;->w(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/callergrid/j;->i(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/hiya/stingray/manager/u1$d;

    invoke-direct {v2, p0, p1, v0}, Lcom/hiya/stingray/manager/u1$d;-><init>(Lcom/hiya/stingray/manager/u1;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "callerGridHelper.getCont\u2026os, it)\n                }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final m()Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Lkotlin/l<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/g0;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u1;->b:Lcom/hiya/stingray/ui/callergrid/j;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/callergrid/j;->l()Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/u1$e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/u1$e;-><init>(Lcom/hiya/stingray/manager/u1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "callerGridHelper.getServ\u2026      }\n                }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
