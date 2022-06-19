.class public final Ls1/a/a/a/v0/d/a/d0/n/o;
.super Ls1/a/a/a/v0/d/a/d0/n/s;
.source "SourceFile"


# instance fields
.field public final n:Ls1/a/a/a/v0/d/a/f0/g;

.field public final o:Ls1/a/a/a/v0/d/a/d0/n/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/d/a/d0/n/e;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/d/a/d0/n/s;-><init>(Ls1/a/a/a/v0/d/a/d0/h;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->n:Ls1/a/a/a/v0/d/a/f0/g;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    return-void
.end method


# virtual methods
.method public f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "location"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    return-object p1
.end method

.method public i(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 2
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/d0/n/b;->a()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->Z0(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/o;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ls1/a/a/a/v0/d/a/d0/n/k;->a()Ljava/util/Set;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Ls1/u/u;->a:Ls1/u/u;

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->n:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {p2}, Ls1/a/a/a/v0/d/a/f0/g;->D()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [Ls1/a/a/a/v0/f/e;

    const/4 v0, 0x0

    .line 6
    sget-object v1, Ls1/a/a/a/v0/a/k;->b:Ls1/a/a/a/v0/f/e;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    sget-object v1, Ls1/a/a/a/v0/a/k;->a:Ls1/a/a/a/v0/f/e;

    aput-object v1, p2, v0

    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object p1
.end method

.method public j()Ls1/a/a/a/v0/d/a/d0/n/b;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/a;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->n:Ls1/a/a/a/v0/d/a/f0/g;

    sget-object v2, Ls1/a/a/a/v0/d/a/d0/n/n;->b:Ls1/a/a/a/v0/d/a/d0/n/n;

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/a;-><init>(Ls1/a/a/a/v0/d/a/f0/g;Ls1/z/b/l;)V

    return-object v0
.end method

.method public l(Ljava/util/Collection;Ls1/a/a/a/v0/f/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/q0;",
            ">;",
            "Ls1/a/a/a/v0/f/e;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    invoke-static {v0}, Le/q/f/a/d/a;->Z0(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/d/a/d0/n/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Ls1/a/a/a/v0/c/a/d;->f:Ls1/a/a/a/v0/c/a/d;

    invoke-virtual {v0, p2, v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    :goto_0
    move-object v2, v0

    .line 5
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 6
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 8
    iget-object v5, v0, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 9
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 10
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v6

    move-object v1, p2

    move-object v3, p1

    .line 11
    invoke-static/range {v1 .. v6}, Le/q/f/a/d/a;->F2(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/j/l;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "resolveOverridesForStati\u2026.overridingUtil\n        )"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->n:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Ls1/a/a/a/v0/a/k;->b:Ls1/a/a/a/v0/f/e;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 15
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->s0(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/q0;

    move-result-object p2

    const-string v0, "createEnumValueOfMethod(ownerDescriptor)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/a/k;->a:Ls1/a/a/a/v0/f/e;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 17
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 18
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->t0(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/v0/b/q0;

    move-result-object p2

    const-string v0, "createEnumValuesMethod(ownerDescriptor)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public m(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ls1/a/a/a/v0/d/a/d0/n/o$a;

    invoke-direct {v1, p1}, Ls1/a/a/a/v0/d/a/d0/n/o$a;-><init>(Ls1/a/a/a/v0/f/e;)V

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 4
    sget-object v4, Ls1/a/a/a/v0/d/a/d0/n/q;->a:Ls1/a/a/a/v0/d/a/d0/n/q;

    .line 5
    new-instance v5, Ls1/a/a/a/v0/d/a/d0/n/r;

    invoke-direct {v5, v0, v2, v1}, Ls1/a/a/a/v0/d/a/d0/n/r;-><init>(Ls1/a/a/a/v0/b/e;Ljava/util/Set;Ls1/z/b/l;)V

    .line 6
    invoke-static {v3, v4, v5}, Ls1/a/a/a/v0/f/d;->E0(Ljava/util/Collection;Ls1/a/a/a/v0/o/c;Ls1/a/a/a/v0/o/d;)Ljava/lang/Object;

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 9
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 11
    iget-object v5, v0, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 12
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 13
    invoke-interface {v0}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    .line 14
    invoke-static/range {v1 .. v6}, Le/q/f/a/d/a;->F2(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/j/l;)Ljava/util/Collection;

    move-result-object p1

    const-string v0, "resolveOverridesForStati\u2026ingUtil\n                )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 16
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    move-object v3, v2

    check-cast v3, Ls1/a/a/a/v0/b/k0;

    .line 19
    invoke-virtual {p0, v3}, Ls1/a/a/a/v0/d/a/d0/n/o;->u(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/v0/b/k0;

    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 24
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 27
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    .line 28
    iget-object v6, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 29
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 30
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 31
    iget-object v7, v2, Ls1/a/a/a/v0/d/a/d0/c;->f:Ls1/a/a/a/v0/k/b/p;

    .line 32
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 33
    invoke-interface {v2}, Ls1/a/a/a/v0/m/l1/k;->b()Ls1/a/a/a/v0/j/l;

    move-result-object v8

    move-object v3, p1

    move-object v5, p2

    .line 34
    invoke-static/range {v3 .. v8}, Le/q/f/a/d/a;->F2(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/Collection;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/k/b/p;Ls1/a/a/a/v0/j/l;)Ljava/util/Collection;

    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 36
    :cond_3
    invoke-interface {p2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :goto_2
    return-void
.end method

.method public n(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/y/d;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 2
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {p1}, Ls1/a/a/a/v0/d/a/d0/n/b;->c()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 3
    iget-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/d/a/d0/n/o$b;->b:Ls1/a/a/a/v0/d/a/d0/n/o$b;

    .line 5
    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    sget-object v2, Ls1/a/a/a/v0/d/a/d0/n/q;->a:Ls1/a/a/a/v0/d/a/d0/n/q;

    .line 7
    new-instance v3, Ls1/a/a/a/v0/d/a/d0/n/r;

    invoke-direct {v3, p2, p1, v0}, Ls1/a/a/a/v0/d/a/d0/n/r;-><init>(Ls1/a/a/a/v0/b/e;Ljava/util/Set;Ls1/z/b/l;)V

    .line 8
    invoke-static {v1, v2, v3}, Ls1/a/a/a/v0/f/d;->E0(Ljava/util/Collection;Ls1/a/a/a/v0/o/c;Ls1/a/a/a/v0/o/d;)Ljava/lang/Object;

    return-object p1
.end method

.method public p()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/o;->o:Ls1/a/a/a/v0/d/a/d0/n/e;

    return-object v0
.end method

.method public final u(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/v0/b/k0;
    .locals 3

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v0

    const-string v1, "this.kind"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k0;->e()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "this.overriddenDescriptors"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ls1/a/a/a/v0/b/k0;

    const-string v2, "it"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/d/a/d0/n/o;->u(Ls1/a/a/a/v0/b/k0;)Ls1/a/a/a/v0/b/k0;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/k0;

    return-object p1
.end method
