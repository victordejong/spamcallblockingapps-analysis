.class public final Ln3/e/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ln3/e/c/c;


# instance fields
.field public final a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

.field public b:Ln3/e/b/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/e/c/c;

    invoke-direct {v0}, Ln3/e/c/c;-><init>()V

    sput-object v0, Ln3/e/c/c;->c:Ln3/e/c/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;

    invoke-direct {v0}, Landroidx/camera/lifecycle/LifecycleCameraRepository;-><init>()V

    iput-object v0, p0, Ln3/e/c/c;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ln3/e/c/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ln3/e/b/p0;->m:Ljava/lang/Object;

    const-string v0, "Context must not be null."

    .line 3
    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Ln3/e/b/p0;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Ln3/e/b/p0;->o:Ln3/e/b/q0$b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 6
    :goto_0
    invoke-static {}, Ln3/e/b/p0;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 8
    :try_start_1
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9
    :catch_0
    :try_start_2
    invoke-static {}, Ln3/e/b/p0;->f()Lcom/google/common/util/concurrent/ListenableFuture;

    move-object v4, v6

    goto :goto_1

    :catch_1
    move-exception p0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected thread interrupt. Should not be possible since future is already complete."

    invoke-direct {v1, v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    if-nez v4, :cond_5

    if-nez v1, :cond_4

    .line 11
    invoke-static {p0}, Ln3/e/b/p0;->b(Landroid/content/Context;)Ln3/e/b/q0$b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    sget-object v4, Ln3/e/b/p0;->o:Ln3/e/b/q0$b;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const-string v3, "CameraX has already been configured. To use a different configuration, shutdown() must be called."

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 13
    sput-object v1, Ln3/e/b/p0;->o:Ln3/e/b/q0$b;

    .line 14
    invoke-interface {v1}, Ln3/e/b/q0$b;->getCameraXConfig()Ln3/e/b/q0;

    move-result-object v1

    sget-object v2, Ln3/e/b/q0;->w:Ln3/e/b/j1/j0$a;

    invoke-interface {v1, v2, v6}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 16
    sput v1, Ln3/e/b/y0;->a:I

    goto :goto_3

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX is not configured properly. The most likely cause is you did not include a default implementation in your build such as \'camera-camera2\'."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4
    :goto_3
    invoke-static {p0}, Ln3/e/b/p0;->d(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Ln3/e/b/p0;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 20
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    sget-object p0, Ln3/e/c/a;->a:Ln3/e/c/a;

    .line 22
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 23
    new-instance v1, Ln3/e/b/j1/t1/c/f;

    invoke-direct {v1, p0}, Ln3/e/b/j1/t1/c/f;-><init>(Ln3/c/a/c/a;)V

    .line 24
    new-instance p0, Ln3/e/b/j1/t1/c/c;

    invoke-direct {p0, v1, v4}, Ln3/e/b/j1/t1/c/c;-><init>(Ln3/e/b/j1/t1/c/b;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 25
    invoke-interface {v4, p0, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p0

    :catchall_0
    move-exception p0

    .line 26
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method


# virtual methods
.method public varargs a(Ln3/v/b0;Ln3/e/b/m0;[Ln3/e/b/g1;)Ln3/e/b/h0;
    .locals 12

    .line 1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->t()V

    .line 2
    iget-object p2, p2, Ln3/e/b/m0;->a:Ljava/util/LinkedHashSet;

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    array-length p2, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p2, :cond_1

    aget-object v4, p3, v2

    .line 5
    iget-object v4, v4, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    .line 6
    invoke-interface {v4, v3}, Ln3/e/b/j1/r1;->t(Ln3/e/b/m0;)Ln3/e/b/m0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, v3, Ln3/e/b/m0;->a:Ljava/util/LinkedHashSet;

    .line 8
    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/e/b/k0;

    .line 9
    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    new-instance p2, Ln3/e/b/m0;

    invoke-direct {p2, v0}, Ln3/e/b/m0;-><init>(Ljava/util/LinkedHashSet;)V

    .line 11
    iget-object v0, p0, Ln3/e/c/c;->b:Ln3/e/b/p0;

    .line 12
    iget-object v0, v0, Ln3/e/b/p0;->a:Ln3/e/b/j1/c0;

    .line 13
    invoke-virtual {v0}, Ln3/e/b/j1/c0;->a()Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Ln3/e/b/m0;->a(Ljava/util/LinkedHashSet;)Ljava/util/LinkedHashSet;

    move-result-object p2

    .line 14
    new-instance v0, Ln3/e/b/k1/c$b;

    invoke-direct {v0, p2}, Ln3/e/b/k1/c$b;-><init>(Ljava/util/LinkedHashSet;)V

    .line 15
    iget-object v2, p0, Ln3/e/c/c;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 16
    iget-object v4, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 17
    :try_start_0
    iget-object v2, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    .line 18
    new-instance v5, Ln3/e/c/b;

    invoke-direct {v5, p1, v0}, Ln3/e/c/b;-><init>(Ln3/v/b0;Ln3/e/b/k1/c$b;)V

    .line 19
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/lifecycle/LifecycleCamera;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 20
    iget-object v2, p0, Ln3/e/c/c;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 21
    iget-object v5, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter v5

    .line 22
    :try_start_1
    iget-object v2, v2, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    array-length v4, p3

    move v5, v1

    :goto_2
    const/4 v6, 0x1

    if-ge v5, v4, :cond_5

    aget-object v7, p3, v5

    .line 24
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 25
    iget-object v10, v9, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter v10

    .line 26
    :try_start_2
    iget-object v11, v9, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v11}, Ln3/e/b/k1/c;->l()Ljava/util/List;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v11, Ljava/util/ArrayList;

    :try_start_3
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_2

    if-ne v9, v0, :cond_3

    goto :goto_3

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Use case %s already bound to a different lifecycle."

    new-array p3, v6, [Ljava/lang/Object;

    aput-object v7, p3, v1

    .line 28
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 29
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-nez v0, :cond_b

    .line 30
    iget-object v0, p0, Ln3/e/c/c;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    new-instance v2, Ln3/e/b/k1/c;

    iget-object v4, p0, Ln3/e/c/c;->b:Ln3/e/b/p0;

    .line 31
    iget-object v5, v4, Ln3/e/b/p0;->h:Ln3/e/b/j1/x;

    if-eqz v5, :cond_a

    .line 32
    iget-object v4, v4, Ln3/e/b/p0;->i:Ln3/e/b/j1/s1;

    if-eqz v4, :cond_9

    .line 33
    invoke-direct {v2, p2, v5, v4}, Ln3/e/b/k1/c;-><init>(Ljava/util/LinkedHashSet;Ln3/e/b/j1/x;Ln3/e/b/j1/s1;)V

    .line 34
    iget-object p2, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter p2

    .line 35
    :try_start_5
    iget-object v4, v2, Ln3/e/b/k1/c;->e:Ln3/e/b/k1/c$b;

    .line 36
    new-instance v5, Ln3/e/c/b;

    invoke-direct {v5, p1, v4}, Ln3/e/c/b;-><init>(Ln3/v/b0;Ln3/e/b/k1/c$b;)V

    .line 37
    iget-object v4, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    move v1, v6

    :cond_6
    const-string v4, "LifecycleCamera already exists for the given LifecycleOwner and set of cameras"

    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->o(ZLjava/lang/Object;)V

    .line 38
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v1

    check-cast v1, Ln3/v/c0;

    .line 39
    iget-object v1, v1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 40
    sget-object v4, Ln3/v/u$b;->a:Ln3/v/u$b;

    if-eq v1, v4, :cond_8

    .line 41
    new-instance v1, Landroidx/camera/lifecycle/LifecycleCamera;

    invoke-direct {v1, p1, v2}, Landroidx/camera/lifecycle/LifecycleCamera;-><init>(Ln3/v/b0;Ln3/e/b/k1/c;)V

    .line 42
    invoke-virtual {v2}, Ln3/e/b/k1/c;->l()Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    check-cast p1, Ljava/util/ArrayList;

    :try_start_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 43
    invoke-virtual {v1}, Landroidx/camera/lifecycle/LifecycleCamera;->j()V

    .line 44
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->d(Landroidx/camera/lifecycle/LifecycleCamera;)V

    .line 45
    monitor-exit p2

    move-object v0, v1

    goto :goto_4

    .line 46
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Trying to create LifecycleCamera with destroyed lifecycle."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 47
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    .line 48
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CameraX not initialized yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CameraX not initialized yet."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_b
    :goto_4
    array-length p1, p3

    if-nez p1, :cond_c

    goto :goto_5

    .line 51
    :cond_c
    iget-object p1, p0, Ln3/e/c/c;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 52
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 53
    invoke-virtual {p1, v0, v3, p2}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a(Landroidx/camera/lifecycle/LifecycleCamera;Ln3/e/b/h1;Ljava/util/Collection;)V

    :goto_5
    return-object v0

    :catchall_2
    move-exception p1

    .line 54
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 55
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1
.end method

.method public c()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->t()V

    .line 2
    iget-object v0, p0, Ln3/e/c/c;->a:Landroidx/camera/lifecycle/LifecycleCameraRepository;

    .line 3
    iget-object v1, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

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

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCameraRepository$a;

    .line 5
    iget-object v4, v0, Landroidx/camera/lifecycle/LifecycleCameraRepository;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/lifecycle/LifecycleCamera;

    .line 6
    iget-object v4, v3, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v5, v3, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v5}, Ln3/e/b/k1/c;->l()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln3/e/b/k1/c;->m(Ljava/util/Collection;)V

    .line 8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v3}, Landroidx/camera/lifecycle/LifecycleCamera;->c()Ln3/v/b0;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/camera/lifecycle/LifecycleCameraRepository;->f(Ln3/v/b0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 11
    :cond_0
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
