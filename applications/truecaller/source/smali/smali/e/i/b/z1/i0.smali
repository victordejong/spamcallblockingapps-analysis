.class public final Le/i/b/z1/i0;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final c:Le/i/b/z1/e0;

.field public final d:Le/i/b/i2/g;

.field public final e:Le/i/b/s2/f;


# direct methods
.method public constructor <init>(Le/i/b/z1/e0;Le/i/b/i2/g;Le/i/b/s2/f;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildConfigWrapper"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    iput-object p1, p0, Le/i/b/z1/i0;->c:Le/i/b/z1/e0;

    iput-object p2, p0, Le/i/b/z1/i0;->d:Le/i/b/i2/g;

    iput-object p3, p0, Le/i/b/z1/i0;->e:Le/i/b/s2/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/i/b/z1/i0;->c:Le/i/b/z1/e0;

    iget-object v1, p0, Le/i/b/z1/i0;->e:Le/i/b/s2/f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Le/i/b/z1/u;->a(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Le/i/b/z1/i0;->b(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    check-cast v0, Ljava/util/LinkedHashMap;

    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    iget-object v3, p0, Le/i/b/z1/i0;->d:Le/i/b/i2/g;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/i/b/z1/d0;

    const-string v5, "/csm"

    .line 7
    invoke-virtual {v3, v5, v4}, Le/i/b/i2/g;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 9
    :cond_1
    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v1}, Le/i/b/z1/i0;->c(Ljava/util/Collection;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 11
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0, v1}, Le/i/b/z1/i0;->c(Ljava/util/Collection;)V

    :cond_3
    throw v0
.end method

.method public final b(Ljava/util/Collection;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/i/b/z1/x;",
            ">;)",
            "Ljava/util/Map<",
            "Le/i/b/z1/d0;",
            "Ljava/util/Collection<",
            "Le/i/b/z1/x;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/i/b/z1/i0;->e:Le/i/b/s2/f;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "4.4.0"

    const-string v2, "buildConfigWrapper.sdkVersion"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    move-object v5, v4

    check-cast v5, Le/i/b/z1/x;

    .line 5
    invoke-virtual {v5}, Le/i/b/z1/x;->e()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0xeb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 6
    :goto_1
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 10
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 16
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "it.key"

    invoke-static {v6, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/i/b/z1/x;

    .line 19
    invoke-virtual {v8}, Le/i/b/z1/x;->d()Ljava/lang/String;

    move-result-object v9

    .line 20
    invoke-virtual {v8}, Le/i/b/z1/x;->g()Ljava/lang/Integer;

    move-result-object v10

    .line 21
    invoke-virtual {v8}, Le/i/b/z1/x;->h()Z

    move-result v11

    .line 22
    new-instance v12, Le/i/b/z1/r;

    invoke-direct {v12, v9, v10, v11}, Le/i/b/z1/r;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 23
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 24
    invoke-virtual {v8}, Le/i/b/z1/x;->c()Ljava/lang/Long;

    move-result-object v9

    .line 25
    invoke-virtual {v8}, Le/i/b/z1/x;->b()Ljava/lang/Long;

    move-result-object v10

    .line 26
    invoke-static {v9, v10}, Le/i/b/z1/d0$a;->b(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v15

    .line 27
    invoke-virtual {v8}, Le/i/b/z1/x;->a()Ljava/lang/Long;

    move-result-object v9

    .line 28
    invoke-virtual {v8}, Le/i/b/z1/x;->b()Ljava/lang/Long;

    move-result-object v10

    .line 29
    invoke-static {v9, v10}, Le/i/b/z1/d0$a;->b(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v19

    .line 30
    new-instance v9, Le/i/b/z1/q;

    .line 31
    invoke-virtual {v8}, Le/i/b/z1/x;->i()Z

    move-result v16

    .line 32
    invoke-virtual {v8}, Le/i/b/z1/x;->f()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v17, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v20}, Le/i/b/z1/q;-><init>(Ljava/util/List;Ljava/lang/Long;ZJLjava/lang/Long;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 34
    :cond_3
    new-instance v5, Le/i/b/z1/p;

    invoke-direct {v5, v7, v1, v6}, Le/i/b/z1/p;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    .line 35
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_4
    return-object v3
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Le/i/b/z1/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/z1/x;

    .line 2
    iget-object v1, p0, Le/i/b/z1/i0;->c:Le/i/b/z1/e0;

    invoke-interface {v1, v0}, Le/i/b/z1/u;->a(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
