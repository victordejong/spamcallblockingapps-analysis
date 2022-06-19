.class public final Ln3/e/b/k1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/k1/c$a;,
        Ln3/e/b/k1/c$b;,
        Ln3/e/b/k1/c$c;
    }
.end annotation


# instance fields
.field public a:Ln3/e/b/j1/b0;

.field public final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ln3/e/b/j1/b0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/e/b/j1/x;

.field public final d:Ln3/e/b/j1/s1;

.field public final e:Ln3/e/b/k1/c$b;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/e/b/g1;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ln3/e/b/h1;

.field public h:Ln3/e/b/j1/u;

.field public final i:Ljava/lang/Object;

.field public j:Z

.field public k:Ln3/e/b/j1/j0;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashSet;Ln3/e/b/j1/x;Ln3/e/b/j1/s1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Ln3/e/b/j1/b0;",
            ">;",
            "Ln3/e/b/j1/x;",
            "Ln3/e/b/j1/s1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    .line 3
    sget-object v0, Ln3/e/b/j1/v;->a:Ln3/e/b/j1/u;

    .line 4
    iput-object v0, p0, Ln3/e/b/k1/c;->h:Ln3/e/b/j1/u;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Ln3/e/b/k1/c;->j:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Ln3/e/b/k1/c;->k:Ln3/e/b/j1/j0;

    .line 8
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/b0;

    iput-object v0, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ln3/e/b/k1/c;->b:Ljava/util/LinkedHashSet;

    .line 10
    new-instance p1, Ln3/e/b/k1/c$b;

    invoke-direct {p1, v0}, Ln3/e/b/k1/c$b;-><init>(Ljava/util/LinkedHashSet;)V

    iput-object p1, p0, Ln3/e/b/k1/c;->e:Ln3/e/b/k1/c$b;

    .line 11
    iput-object p2, p0, Ln3/e/b/k1/c;->c:Ln3/e/b/j1/x;

    .line 12
    iput-object p3, p0, Ln3/e/b/k1/c;->d:Ln3/e/b/j1/s1;

    return-void
.end method


# virtual methods
.method public a()Ln3/e/b/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-interface {v0}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v0

    return-object v0
.end method

.method public b()Ln3/e/b/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-interface {v0}, Ln3/e/b/j1/b0;->g()Ln3/e/b/j1/w;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/e/b/g1;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/k1/c$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/g1;

    .line 4
    iget-object v4, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "CameraUseCaseAdapter"

    const-string v4, "Attempting to attach already attached UseCase"

    const/4 v5, 0x0

    .line 5
    invoke-static {v3, v4, v5}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Ln3/e/b/k1/c;->h:Ln3/e/b/j1/u;

    .line 8
    check-cast v2, Ln3/e/b/j1/v$a;

    .line 9
    iget-object v2, v2, Ln3/e/b/j1/v$a;->q:Ln3/e/b/j1/s1;

    .line 10
    iget-object v3, p0, Ln3/e/b/k1/c;->d:Ln3/e/b/j1/s1;

    .line 11
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/e/b/g1;

    .line 13
    new-instance v7, Ln3/e/b/k1/c$c;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v2}, Ln3/e/b/g1;->c(ZLn3/e/b/j1/s1;)Ln3/e/b/j1/r1;

    move-result-object v8

    const/4 v9, 0x1

    .line 14
    invoke-virtual {v6, v9, v3}, Ln3/e/b/g1;->c(ZLn3/e/b/j1/s1;)Ln3/e/b/j1/r1;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ln3/e/b/k1/c$c;-><init>(Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)V

    .line 15
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 16
    :cond_2
    :try_start_1
    iget-object v2, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    .line 17
    invoke-interface {v2}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v2

    iget-object v3, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-virtual {p0, v2, v1, v3, v4}, Ln3/e/b/k1/c;->j(Ln3/e/b/j1/z;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-virtual {p0, v2, p1}, Ln3/e/b/k1/c;->n(Ljava/util/Map;Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/g1;

    .line 20
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/k1/c$c;

    .line 21
    iget-object v6, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    iget-object v7, v5, Ln3/e/b/k1/c$c;->a:Ln3/e/b/j1/r1;

    iget-object v5, v5, Ln3/e/b/k1/c$c;->b:Ln3/e/b/j1/r1;

    invoke-virtual {v3, v6, v7, v5}, Ln3/e/b/g1;->i(Ln3/e/b/j1/b0;Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    move-object v5, v2

    check-cast v5, Ljava/util/HashMap;

    :try_start_3
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 23
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v5}, Ln3/e/b/g1;->m(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v5

    iput-object v5, v3, Ln3/e/b/g1;->g:Landroid/util/Size;

    goto :goto_2

    .line 25
    :cond_3
    iget-object p1, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    iget-boolean p1, p0, Ln3/e/b/k1/c;->j:Z

    if-eqz p1, :cond_4

    .line 27
    iget-object p1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-interface {p1, v1}, Ln3/e/b/j1/b0;->h(Ljava/util/Collection;)V

    .line 28
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1;

    .line 29
    invoke-virtual {v1}, Ln3/e/b/g1;->h()V

    goto :goto_3

    .line 30
    :cond_5
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    .line 31
    new-instance v1, Ln3/e/b/k1/c$a;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ln3/e/b/k1/c$a;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/b/k1/c;->j:Z

    if-nez v1, :cond_2

    .line 3
    iget-object v1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    iget-object v2, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ln3/e/b/j1/b0;->h(Ljava/util/Collection;)V

    .line 4
    iget-object v1, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p0, Ln3/e/b/k1/c;->k:Ln3/e/b/j1/j0;

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-interface {v2}, Ln3/e/b/j1/b0;->g()Ln3/e/b/j1/w;

    move-result-object v2

    iget-object v3, p0, Ln3/e/b/k1/c;->k:Ln3/e/b/j1/j0;

    invoke-interface {v2, v3}, Ln3/e/b/j1/w;->d(Ln3/e/b/j1/j0;)V

    .line 7
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v1, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/g1;

    .line 9
    invoke-virtual {v2}, Ln3/e/b/g1;->h()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Ln3/e/b/k1/c;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 11
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 12
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public final j(Ln3/e/b/j1/z;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/z;",
            "Ljava/util/List<",
            "Ln3/e/b/g1;",
            ">;",
            "Ljava/util/List<",
            "Ln3/e/b/g1;",
            ">;",
            "Ljava/util/Map<",
            "Ln3/e/b/g1;",
            "Ln3/e/b/k1/c$c;",
            ">;)",
            "Ljava/util/Map<",
            "Ln3/e/b/g1;",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ln3/e/b/j1/z;->a()Ljava/lang/String;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/g1;

    .line 5
    iget-object v7, v0, Ln3/e/b/k1/c;->c:Ln3/e/b/j1/x;

    .line 6
    iget-object v8, v5, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    invoke-interface {v8}, Ln3/e/b/j1/o0;->h()I

    move-result v8

    .line 7
    iget-object v9, v5, Ln3/e/b/g1;->g:Landroid/util/Size;

    .line 8
    check-cast v7, Ln3/e/a/e/g1;

    .line 9
    iget-object v7, v7, Ln3/e/a/e/g1;->a:Ljava/util/Map;

    .line 10
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/e/a/e/a2;

    if-eqz v7, :cond_0

    .line 11
    invoke-virtual {v7, v8, v9}, Ln3/e/a/e/a2;->i(ILandroid/util/Size;)Ln3/e/b/j1/m1;

    move-result-object v6

    .line 12
    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v6, v5, Ln3/e/b/g1;->g:Landroid/util/Size;

    .line 14
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 16
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/e/b/g1;

    move-object/from16 v8, p4

    .line 18
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/k1/c$c;

    .line 19
    iget-object v10, v9, Ln3/e/b/k1/c$c;->a:Ln3/e/b/j1/r1;

    iget-object v9, v9, Ln3/e/b/k1/c$c;->b:Ln3/e/b/j1/r1;

    move-object/from16 v11, p1

    .line 20
    invoke-virtual {v7, v11, v10, v9}, Ln3/e/b/g1;->f(Ln3/e/b/j1/z;Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)Ln3/e/b/j1/r1;

    move-result-object v9

    .line 21
    invoke-virtual {v4, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 22
    :cond_2
    iget-object v5, v0, Ln3/e/b/k1/c;->c:Ln3/e/b/j1/x;

    new-instance v7, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    check-cast v5, Ln3/e/a/e/g1;

    .line 25
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    const-string v10, "No new use cases to be bound."

    invoke-static {v8, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 27
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln3/e/b/j1/r1;

    .line 29
    invoke-interface {v11}, Ln3/e/b/j1/o0;->h()I

    move-result v11

    new-instance v12, Landroid/util/Size;

    const/16 v13, 0x280

    const/16 v14, 0x1e0

    invoke-direct {v12, v13, v14}, Landroid/util/Size;-><init>(II)V

    .line 30
    iget-object v13, v5, Ln3/e/a/e/g1;->a:Ljava/util/Map;

    .line 31
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ln3/e/a/e/a2;

    if-eqz v13, :cond_3

    .line 32
    invoke-virtual {v13, v11, v12}, Ln3/e/a/e/a2;->i(ILandroid/util/Size;)Ln3/e/b/j1/m1;

    move-result-object v11

    goto :goto_3

    :cond_3
    move-object v11, v6

    .line 33
    :goto_3
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_4
    iget-object v5, v5, Ln3/e/a/e/g1;->a:Ljava/util/Map;

    .line 35
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/a/e/a2;

    if-eqz v5, :cond_43

    .line 36
    invoke-virtual {v5, v8}, Ln3/e/a/e/a2;->a(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 37
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/e/b/j1/r1;

    .line 41
    invoke-interface {v12, v13}, Ln3/e/b/j1/r1;->m(I)I

    move-result v12

    .line 42
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 43
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 44
    :cond_6
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 46
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 47
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_8
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/e/b/j1/r1;

    .line 48
    invoke-interface {v14, v13}, Ln3/e/b/j1/r1;->m(I)I

    move-result v15

    if-ne v11, v15, :cond_8

    .line 49
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 50
    :cond_9
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 52
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/e/b/j1/r1;

    .line 53
    invoke-interface {v12}, Ln3/e/b/j1/o0;->h()I

    move-result v13

    .line 54
    check-cast v12, Ln3/e/b/j1/q0;

    .line 55
    invoke-interface {v12, v6}, Ln3/e/b/j1/q0;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 56
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    .line 57
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v13, :cond_a

    .line 58
    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Landroid/util/Size;

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_c

    .line 59
    invoke-virtual {v5, v6, v13}, Ln3/e/a/e/a2;->b([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v6

    .line 60
    new-instance v14, Ln3/e/a/e/a2$b;

    invoke-direct {v14, v9}, Ln3/e/a/e/a2$b;-><init>(Z)V

    invoke-static {v6, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_c
    if-nez v6, :cond_d

    .line 61
    invoke-virtual {v5, v13}, Ln3/e/a/e/a2;->d(I)[Landroid/util/Size;

    move-result-object v6

    .line 62
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 63
    invoke-interface {v12, v14}, Ln3/e/b/j1/q0;->f(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v14

    .line 64
    invoke-virtual {v5, v13}, Ln3/e/a/e/a2;->d(I)[Landroid/util/Size;

    move-result-object v15

    .line 65
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v0, Ln3/e/a/e/a2$b;

    invoke-direct {v0}, Ln3/e/a/e/a2$b;-><init>()V

    invoke-static {v15, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    if-eqz v14, :cond_e

    .line 66
    invoke-static {v0}, Ln3/e/a/e/a2;->e(Landroid/util/Size;)I

    move-result v15

    .line 67
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v17

    move-object/from16 p1, v0

    mul-int v0, v17, v16

    if-ge v15, v0, :cond_f

    goto :goto_8

    :cond_e
    move-object/from16 p1, v0

    :goto_8
    move-object/from16 v14, p1

    .line 68
    :cond_f
    new-instance v0, Ln3/e/a/e/a2$b;

    const/4 v15, 0x1

    invoke-direct {v0, v15}, Ln3/e/a/e/a2$b;-><init>(Z)V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 69
    invoke-virtual {v5, v12}, Ln3/e/a/e/a2;->f(Ln3/e/b/j1/q0;)Landroid/util/Size;

    move-result-object v0

    .line 70
    sget-object v15, Ln3/e/a/e/a2;->o:Landroid/util/Size;

    move-object/from16 p1, v11

    .line 71
    invoke-static {v15}, Ln3/e/a/e/a2;->e(Landroid/util/Size;)I

    move-result v11

    move-object/from16 p2, v15

    .line 72
    invoke-static {v14}, Ln3/e/a/e/a2;->e(Landroid/util/Size;)I

    move-result v15

    if-ge v15, v11, :cond_10

    .line 73
    sget-object v15, Ln3/e/a/e/a2;->p:Landroid/util/Size;

    goto :goto_9

    :cond_10
    if-eqz v0, :cond_11

    .line 74
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v15

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v16

    mul-int v15, v15, v16

    if-ge v15, v11, :cond_11

    move-object v15, v0

    goto :goto_9

    :cond_11
    move-object/from16 v15, p2

    .line 75
    :goto_9
    array-length v11, v6

    const/16 v16, 0x0

    move-object/from16 v17, v3

    move/from16 v3, v16

    :goto_a
    if-ge v3, v11, :cond_13

    move/from16 v16, v11

    aget-object v11, v6, v3

    move-object/from16 p2, v6

    .line 76
    invoke-static {v11}, Ln3/e/a/e/a2;->e(Landroid/util/Size;)I

    move-result v6

    .line 77
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v18

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v19

    move-object/from16 p3, v14

    mul-int v14, v19, v18

    if-gt v6, v14, :cond_12

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v14

    mul-int/2addr v14, v6

    .line 78
    invoke-static {v15}, Ln3/e/a/e/a2;->e(Landroid/util/Size;)I

    move-result v6

    if-lt v14, v6, :cond_12

    .line 79
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 80
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, p2

    move-object/from16 v14, p3

    move/from16 v11, v16

    goto :goto_a

    .line 81
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_36

    .line 82
    iget-object v3, v5, Ln3/e/a/e/a2;->e:Ln3/e/a/e/k2/e;

    .line 83
    const-class v6, Ln3/e/a/e/k2/p/l;

    .line 84
    invoke-static {v6}, Ln3/e/a/e/k2/p/e;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v6

    check-cast v6, Ln3/e/a/e/k2/p/l;

    const/4 v11, 0x3

    const/4 v13, 0x2

    if-eqz v6, :cond_14

    .line 85
    instance-of v6, v12, Ln3/e/b/j1/e1;

    if-eqz v6, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    .line 86
    :cond_14
    const-class v6, Ln3/e/a/e/k2/p/j;

    .line 87
    invoke-static {v6}, Ln3/e/a/e/k2/p/e;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v6

    check-cast v6, Ln3/e/a/e/k2/p/j;

    if-eqz v6, :cond_15

    goto :goto_b

    .line 88
    :cond_15
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->e0(Ln3/e/a/e/k2/e;)Ln3/e/b/j1/g1;

    move-result-object v3

    const-class v6, Ln3/e/a/e/k2/p/b;

    .line 89
    invoke-virtual {v3, v6}, Ln3/e/b/j1/g1;->a(Ljava/lang/Class;)Ln3/e/b/j1/f1;

    move-result-object v3

    check-cast v3, Ln3/e/a/e/k2/p/b;

    if-eqz v3, :cond_16

    :goto_b
    move v3, v13

    goto :goto_c

    :cond_16
    move v3, v11

    :goto_c
    if-eqz v3, :cond_21

    const/4 v6, 0x1

    if-eq v3, v6, :cond_1f

    if-eq v3, v13, :cond_1e

    if-eq v3, v11, :cond_17

    goto :goto_d

    .line 90
    :cond_17
    invoke-virtual {v5, v12}, Ln3/e/a/e/a2;->f(Ln3/e/b/j1/q0;)Landroid/util/Size;

    move-result-object v3

    .line 91
    invoke-interface {v12}, Ln3/e/b/j1/q0;->q()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 92
    invoke-interface {v12}, Ln3/e/b/j1/q0;->r()I

    move-result v3

    if-eqz v3, :cond_1a

    if-eq v3, v6, :cond_18

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Undefined target aspect ratio: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "SupportedSurfaceCombination"

    const/4 v11, 0x0

    .line 94
    invoke-static {v6, v3, v11}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    .line 95
    :cond_18
    iget-boolean v3, v5, Ln3/e/a/e/a2;->h:Z

    if-eqz v3, :cond_19

    sget-object v3, Ln3/e/a/e/a2;->w:Landroid/util/Rational;

    goto :goto_e

    .line 96
    :cond_19
    sget-object v3, Ln3/e/a/e/a2;->x:Landroid/util/Rational;

    goto :goto_e

    .line 97
    :cond_1a
    iget-boolean v3, v5, Ln3/e/a/e/a2;->h:Z

    if-eqz v3, :cond_1b

    sget-object v3, Ln3/e/a/e/a2;->u:Landroid/util/Rational;

    goto :goto_e

    .line 98
    :cond_1b
    sget-object v3, Ln3/e/a/e/a2;->v:Landroid/util/Rational;

    goto :goto_e

    :cond_1c
    if-eqz v3, :cond_1d

    .line 99
    new-instance v6, Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v6, v11, v3}, Landroid/util/Rational;-><init>(II)V

    goto :goto_f

    :cond_1d
    :goto_d
    const/4 v6, 0x0

    goto :goto_f

    :cond_1e
    const/16 v3, 0x100

    .line 100
    invoke-virtual {v5, v3}, Ln3/e/a/e/a2;->c(I)Landroid/util/Size;

    move-result-object v3

    .line 101
    new-instance v6, Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {v6, v11, v3}, Landroid/util/Rational;-><init>(II)V

    goto :goto_f

    .line 102
    :cond_1f
    iget-boolean v3, v5, Ln3/e/a/e/a2;->h:Z

    if-eqz v3, :cond_20

    sget-object v3, Ln3/e/a/e/a2;->w:Landroid/util/Rational;

    goto :goto_e

    :cond_20
    sget-object v3, Ln3/e/a/e/a2;->x:Landroid/util/Rational;

    goto :goto_e

    .line 103
    :cond_21
    iget-boolean v3, v5, Ln3/e/a/e/a2;->h:Z

    if-eqz v3, :cond_22

    sget-object v3, Ln3/e/a/e/a2;->u:Landroid/util/Rational;

    goto :goto_e

    :cond_22
    sget-object v3, Ln3/e/a/e/a2;->v:Landroid/util/Rational;

    :goto_e
    move-object v6, v3

    :goto_f
    const/4 v3, 0x0

    if-nez v0, :cond_23

    .line 104
    invoke-interface {v12, v3}, Ln3/e/b/j1/q0;->s(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    .line 105
    :cond_23
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    if-nez v6, :cond_25

    .line 107
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v0, :cond_24

    .line 108
    invoke-virtual {v5, v11, v0}, Ln3/e/a/e/a2;->h(Ljava/util/List;Landroid/util/Size;)V

    :cond_24
    move-object/from16 p4, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    goto/16 :goto_17

    .line 109
    :cond_25
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 110
    sget-object v13, Ln3/e/a/e/a2;->u:Landroid/util/Rational;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v13, Ln3/e/a/e/a2;->w:Landroid/util/Rational;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 113
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Rational;

    if-nez v15, :cond_26

    move-object/from16 p4, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    move-object/from16 p2, v9

    move-object/from16 p3, v14

    goto/16 :goto_13

    :cond_26
    move-object/from16 p2, v9

    .line 114
    new-instance v9, Landroid/util/Rational;

    move-object/from16 p3, v14

    .line 115
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    move-object/from16 v16, v4

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v9, v14, v4}, Landroid/util/Rational;-><init>(II)V

    .line 116
    invoke-virtual {v15, v9}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 p4, v2

    move-object/from16 v18, v7

    goto :goto_12

    .line 117
    :cond_27
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v9, v4

    .line 118
    sget-object v4, Ln3/e/a/e/a2;->o:Landroid/util/Size;

    invoke-static {v4}, Ln3/e/a/e/a2;->e(Landroid/util/Size;)I

    move-result v4

    if-lt v9, v4, :cond_2b

    .line 119
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 120
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v9

    .line 121
    new-instance v14, Landroid/util/Rational;

    move-object/from16 p4, v2

    invoke-virtual {v15}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    move-object/from16 v18, v7

    .line 122
    invoke-virtual {v15}, Landroid/util/Rational;->getNumerator()I

    move-result v7

    invoke-direct {v14, v2, v7}, Landroid/util/Rational;-><init>(II)V

    .line 123
    rem-int/lit8 v2, v4, 0x10

    if-nez v2, :cond_29

    rem-int/lit8 v7, v9, 0x10

    if-nez v7, :cond_29

    add-int/lit8 v2, v9, -0x10

    const/4 v7, 0x0

    .line 124
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v4, v15}, Ln3/e/a/e/a2;->g(IILandroid/util/Rational;)Z

    move-result v2

    if-nez v2, :cond_28

    add-int/lit8 v4, v4, -0x10

    .line 125
    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v9, v14}, Ln3/e/a/e/a2;->g(IILandroid/util/Rational;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_28
    :goto_12
    const/4 v2, 0x1

    goto :goto_14

    :cond_29
    if-nez v2, :cond_2a

    .line 126
    invoke-static {v9, v4, v15}, Ln3/e/a/e/a2;->g(IILandroid/util/Rational;)Z

    move-result v2

    goto :goto_14

    .line 127
    :cond_2a
    rem-int/lit8 v2, v9, 0x10

    if-nez v2, :cond_2c

    .line 128
    invoke-static {v4, v9, v14}, Ln3/e/a/e/a2;->g(IILandroid/util/Rational;)Z

    move-result v2

    goto :goto_14

    :cond_2b
    move-object/from16 p4, v2

    move-object/from16 v18, v7

    :cond_2c
    :goto_13
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_2e

    .line 129
    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 130
    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 131
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    move-object v3, v15

    :cond_2e
    move-object/from16 v9, p2

    move-object/from16 v14, p3

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    move-object/from16 v7, v18

    goto/16 :goto_11

    :cond_2f
    move-object/from16 p4, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    move-object/from16 p2, v9

    if-nez v3, :cond_30

    .line 132
    new-instance v2, Landroid/util/Rational;

    .line 133
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Ljava/util/ArrayList;

    .line 134
    invoke-static {v13}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    invoke-virtual {v12, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    const/4 v3, 0x0

    move-object/from16 v9, p2

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    move-object/from16 v7, v18

    goto/16 :goto_10

    :cond_31
    move-object/from16 p4, v2

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    if-eqz v0, :cond_32

    .line 136
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Rational;

    .line 137
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v5, v3, v0}, Ln3/e/a/e/a2;->h(Ljava/util/List;Landroid/util/Size;)V

    goto :goto_15

    .line 138
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    new-instance v2, Ln3/e/a/e/a2$a;

    invoke-direct {v2, v6}, Ln3/e/a/e/a2$a;-><init>(Landroid/util/Rational;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    .line 141
    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    .line 142
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 143
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 144
    :cond_35
    :goto_17
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v2, p4

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v7, v18

    goto/16 :goto_6

    .line 145
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not get supported output size under supported maximum for the format: "

    invoke-static {v1, v13}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    move-object/from16 p4, v2

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v7

    .line 146
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 147
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    goto :goto_18

    :cond_38
    if-eqz v2, :cond_41

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_39

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_39
    const/4 v3, 0x0

    .line 151
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int v4, v2, v4

    move v7, v2

    move v6, v3

    .line 152
    :goto_1a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_3c

    .line 153
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move v11, v3

    :goto_1b
    if-ge v11, v2, :cond_3a

    .line 154
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 155
    rem-int v13, v11, v7

    div-int/2addr v13, v4

    .line 156
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    .line 157
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1b

    .line 158
    :cond_3a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v6, v9, :cond_3b

    add-int/lit8 v7, v6, 0x1

    .line 159
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    div-int v7, v4, v7

    move/from16 v20, v7

    move v7, v4

    move/from16 v4, v20

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 160
    :cond_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v6, v3

    .line 162
    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3d

    .line 163
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Size;

    .line 164
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v10, v18

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/e/b/j1/r1;

    .line 165
    invoke-interface {v9}, Ln3/e/b/j1/o0;->h()I

    move-result v9

    invoke-virtual {v5, v9, v7}, Ln3/e/a/e/a2;->i(ILandroid/util/Size;)Ln3/e/b/j1/m1;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_3d
    move-object/from16 v10, v18

    .line 166
    invoke-virtual {v5, v4}, Ln3/e/a/e/a2;->a(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 167
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/r1;

    .line 168
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 169
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 170
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    move-object/from16 v4, p4

    .line 171
    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_3e
    move-object/from16 v18, v10

    goto :goto_1c

    :cond_3f
    move-object/from16 v4, p4

    .line 172
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/g1;

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    move-object/from16 v3, v17

    .line 175
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_40
    move-object/from16 v3, v17

    goto :goto_20

    .line 176
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to find supported resolutions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    move-object v10, v7

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No supported surface combination is found for camera device - Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".  May be attempting to bind too many use cases. Existing surfaces: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " New configs: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such camera id in supported combination list: "

    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_20
    return-object v3
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/b/k1/c;->j:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v2, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    .line 5
    invoke-interface {v2}, Ln3/e/b/j1/b0;->g()Ln3/e/b/j1/w;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ln3/e/b/j1/w;->f()Ln3/e/b/j1/j0;

    move-result-object v3

    iput-object v3, p0, Ln3/e/b/k1/c;->k:Ln3/e/b/j1/j0;

    .line 7
    invoke-interface {v2}, Ln3/e/b/j1/w;->g()V

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object v1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Ln3/e/b/j1/b0;->i(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Ln3/e/b/k1/c;->j:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 11
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 12
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public l()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/e/b/g1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public m(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/e/b/g1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-interface {v1, p1}, Ln3/e/b/j1/b0;->i(Ljava/util/Collection;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/g1;

    .line 4
    iget-object v3, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-virtual {v2, v3}, Ln3/e/b/g1;->j(Ln3/e/b/j1/b0;)V

    goto :goto_0

    :cond_0
    const-string v3, "CameraUseCaseAdapter"

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to detach non-attached UseCase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 7
    invoke-static {v3, v2, v4}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Ln3/e/b/k1/c;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ln3/e/b/g1;",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/Collection<",
            "Ln3/e/b/g1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/b/k1/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/e/b/k1/c;->g:Ln3/e/b/h1;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    invoke-interface {v1}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v1

    invoke-interface {v1}, Ln3/e/b/j1/z;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v3, v1

    .line 4
    iget-object v1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    .line 5
    invoke-interface {v1}, Ln3/e/b/j1/b0;->g()Ln3/e/b/j1/w;

    move-result-object v1

    invoke-interface {v1}, Ln3/e/b/j1/w;->e()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v1, p0, Ln3/e/b/k1/c;->g:Ln3/e/b/h1;

    .line 6
    iget-object v4, v1, Ln3/e/b/h1;->b:Landroid/util/Rational;

    .line 7
    iget-object v1, p0, Ln3/e/b/k1/c;->a:Ln3/e/b/j1/b0;

    .line 8
    invoke-interface {v1}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v1

    iget-object v5, p0, Ln3/e/b/k1/c;->g:Ln3/e/b/h1;

    .line 9
    iget v5, v5, Ln3/e/b/h1;->c:I

    .line 10
    invoke-interface {v1, v5}, Ln3/e/b/l0;->e(I)I

    move-result v5

    iget-object v1, p0, Ln3/e/b/k1/c;->g:Ln3/e/b/h1;

    .line 11
    iget v6, v1, Ln3/e/b/h1;->a:I

    .line 12
    iget v7, v1, Ln3/e/b/h1;->d:I

    move-object v8, p1

    .line 13
    invoke-static/range {v2 .. v8}, Landroid/support/v4/media/session/MediaSessionCompat;->l(Landroid/graphics/Rect;ZLandroid/util/Rational;IIILjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 14
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    move-object v2, p1

    check-cast v2, Ljava/util/HashMap;

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 16
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1, v2}, Ln3/e/b/g1;->n(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 18
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
