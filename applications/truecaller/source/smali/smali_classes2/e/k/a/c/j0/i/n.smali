.class public Le/k/a/c/j0/i/n;
.super Le/k/a/c/j0/d;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/j0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/i;",
            ")",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v6

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p2}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 4
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v6, p2}, Le/k/a/c/b;->X(Le/k/a/c/g0/b;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/k/a/c/j0/b;

    .line 7
    iget-object v0, v2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 8
    invoke-static {p1, v0}, Le/k/a/c/g0/d;->h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    .line 9
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/j0/i/n;->d(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Le/k/a/c/b;Ljava/util/HashMap;)V

    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Le/k/a/c/j0/b;

    const/4 p2, 0x0

    invoke-direct {v2, p3, p2}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    invoke-static {p1, p3}, Le/k/a/c/g0/d;->h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;

    move-result-object v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    move-object v5, v7

    .line 12
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/j0/i/n;->d(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Le/k/a/c/b;Ljava/util/HashMap;)V

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public b(Le/k/a/c/c0/k;Le/k/a/c/g0/c;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            ")",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    new-instance v3, Le/k/a/c/j0/b;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    .line 5
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/j0/i/n;->e(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Ljava/util/Set;Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0, v0, v7, v8}, Le/k/a/c/j0/i/n;->f(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public c(Le/k/a/c/c0/k;Le/k/a/c/g0/i;Le/k/a/c/i;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/i;",
            ")",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    .line 2
    iget-object p3, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    new-instance v3, Le/k/a/c/j0/b;

    const/4 v1, 0x0

    invoke-direct {v3, p3, v1}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 6
    invoke-static {p1, p3}, Le/k/a/c/g0/d;->h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    .line 7
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/j0/i/n;->e(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Ljava/util/Set;Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {v0, p2}, Le/k/a/c/b;->X(Le/k/a/c/g0/b;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/k/a/c/j0/b;

    .line 10
    iget-object v0, v3, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 11
    invoke-static {p1, v0}, Le/k/a/c/g0/d;->h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, v7

    move-object v6, v8

    .line 12
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/j0/i/n;->e(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p3, v7, v8}, Le/k/a/c/j0/i/n;->f(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Le/k/a/c/b;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c;",
            "Le/k/a/c/j0/b;",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/b;",
            "Ljava/util/HashMap<",
            "Le/k/a/c/j0/b;",
            "Le/k/a/c/j0/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/k/a/c/j0/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p4, p1}, Le/k/a/c/b;->Y(Le/k/a/c/g0/c;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Le/k/a/c/j0/b;

    .line 4
    iget-object p2, p2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 5
    invoke-direct {v1, p2, v0}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v1

    .line 6
    :cond_0
    new-instance v0, Le/k/a/c/j0/b;

    .line 7
    iget-object v1, p2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p2}, Le/k/a/c/j0/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/j0/b;

    .line 12
    invoke-virtual {p1}, Le/k/a/c/j0/b;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 14
    :cond_2
    invoke-virtual {p5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p4, p1}, Le/k/a/c/b;->X(Le/k/a/c/g0/b;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Le/k/a/c/j0/b;

    .line 18
    iget-object p2, v2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 19
    invoke-static {p3, p2}, Le/k/a/c/g0/d;->h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;

    move-result-object v1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 20
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/j0/i/n;->d(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Le/k/a/c/b;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public e(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Ljava/util/Set;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g0/c;",
            "Le/k/a/c/j0/b;",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/j0/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Le/k/a/c/j0/b;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Le/k/a/c/b;->Y(Le/k/a/c/g0/c;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Le/k/a/c/j0/b;

    .line 5
    iget-object p2, p2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 6
    invoke-direct {v2, p2, v1}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object p2, v2

    .line 7
    :cond_0
    invoke-virtual {p2}, Le/k/a/c/j0/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p2, Le/k/a/c/j0/b;->c:Ljava/lang/String;

    .line 9
    invoke-interface {p5, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_1
    iget-object p2, p2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 11
    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {v0, p1}, Le/k/a/c/b;->X(Le/k/a/c/g0/b;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Le/k/a/c/j0/b;

    .line 15
    iget-object p2, v2, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 16
    invoke-static {p3, p2}, Le/k/a/c/g0/d;->h(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/g0/c;

    move-result-object v1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 17
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/j0/i/n;->e(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Map;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/j0/b;",
            ">;)",
            "Ljava/util/Collection<",
            "Le/k/a/c/j0/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/k/a/c/j0/b;

    .line 3
    iget-object v1, v1, Le/k/a/c/j0/b;->a:Ljava/lang/Class;

    .line 4
    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Class;

    if-ne p3, p1, :cond_1

    .line 6
    invoke-virtual {p3}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v1, Le/k/a/c/j0/b;

    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p3, v2}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method
