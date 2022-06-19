.class public final Ln3/e/a/e/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/b1$d;,
        Ln3/e/a/e/b1$c;,
        Ln3/e/a/e/b1$f;,
        Ln3/e/a/e/b1$e;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/b/j1/p1;

.field public final b:Ln3/e/a/e/k2/k;

.field public final c:Ljava/util/concurrent/Executor;

.field public volatile d:Ln3/e/a/e/b1$e;

.field public final e:Ln3/e/b/j1/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/x0<",
            "Ln3/e/b/j1/b0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ln3/e/a/e/z0;

.field public final g:Ln3/e/a/e/b1$f;

.field public final h:Ln3/e/a/e/c1;

.field public i:Landroid/hardware/camera2/CameraDevice;

.field public j:I

.field public k:Ln3/e/a/e/r1;

.field public l:Ln3/e/b/j1/j1;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public n:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ln3/h/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h/a/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ln3/e/a/e/r1;",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Ln3/e/a/e/b1$c;

.field public final r:Ln3/e/b/j1/d0;

.field public final s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ln3/e/a/e/r1;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ln3/e/a/e/z1;

.field public final u:Ln3/e/a/e/s1;

.field public final v:Ln3/e/a/e/f2$a;

.field public final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/e/a/e/k2/k;Ljava/lang/String;Ln3/e/a/e/c1;Ln3/e/b/j1/d0;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/e/b/n0;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v5, Ln3/e/a/e/b1$e;->a:Ln3/e/a/e/b1$e;

    iput-object v5, v1, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    .line 3
    new-instance v5, Ln3/e/b/j1/x0;

    invoke-direct {v5}, Ln3/e/b/j1/x0;-><init>()V

    iput-object v5, v1, Ln3/e/a/e/b1;->e:Ln3/e/b/j1/x0;

    const/4 v6, 0x0

    .line 4
    iput v6, v1, Ln3/e/a/e/b1;->j:I

    .line 5
    invoke-static {}, Ln3/e/b/j1/j1;->a()Ln3/e/b/j1/j1;

    move-result-object v7

    iput-object v7, v1, Ln3/e/a/e/b1;->l:Ln3/e/b/j1/j1;

    .line 6
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, v1, Ln3/e/a/e/b1;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v1, Ln3/e/a/e/b1;->p:Ljava/util/Map;

    .line 8
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Ln3/e/a/e/b1;->s:Ljava/util/Set;

    .line 9
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v1, Ln3/e/a/e/b1;->w:Ljava/util/Set;

    .line 10
    iput-object v0, v1, Ln3/e/a/e/b1;->b:Ln3/e/a/e/k2/k;

    .line 11
    iput-object v4, v1, Ln3/e/a/e/b1;->r:Ln3/e/b/j1/d0;

    .line 12
    new-instance v7, Ln3/e/b/j1/t1/b/b;

    move-object/from16 v14, p6

    invoke-direct {v7, v14}, Ln3/e/b/j1/t1/b/b;-><init>(Landroid/os/Handler;)V

    .line 13
    new-instance v15, Ln3/e/b/j1/t1/b/d;

    move-object/from16 v8, p5

    invoke-direct {v15, v8}, Ln3/e/b/j1/t1/b/d;-><init>(Ljava/util/concurrent/Executor;)V

    .line 14
    iput-object v15, v1, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v8, Ln3/e/a/e/b1$f;

    invoke-direct {v8, v1, v15, v7}, Ln3/e/a/e/b1$f;-><init>(Ln3/e/a/e/b1;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v8, v1, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    .line 16
    new-instance v8, Ln3/e/b/j1/p1;

    invoke-direct {v8, v2}, Ln3/e/b/j1/p1;-><init>(Ljava/lang/String;)V

    iput-object v8, v1, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    .line 17
    sget-object v8, Ln3/e/b/j1/b0$a;->f:Ln3/e/b/j1/b0$a;

    .line 18
    iget-object v5, v5, Ln3/e/b/j1/x0;->a:Ln3/v/k0;

    .line 19
    new-instance v9, Ln3/e/b/j1/x0$b;

    const/4 v13, 0x0

    invoke-direct {v9, v8, v13}, Ln3/e/b/j1/x0$b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v5, v9}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 21
    new-instance v5, Ln3/e/a/e/s1;

    invoke-direct {v5, v15}, Ln3/e/a/e/s1;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v5, v1, Ln3/e/a/e/b1;->u:Ln3/e/a/e/s1;

    .line 22
    new-instance v8, Ln3/e/a/e/r1;

    invoke-direct {v8}, Ln3/e/a/e/r1;-><init>()V

    iput-object v8, v1, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    .line 23
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ln3/e/a/e/k2/k;->b(Ljava/lang/String;)Ln3/e/a/e/k2/e;

    move-result-object v9

    .line 24
    new-instance v12, Ln3/e/a/e/z0;

    new-instance v11, Ln3/e/a/e/b1$d;

    invoke-direct {v11, v1}, Ln3/e/a/e/b1$d;-><init>(Ln3/e/a/e/b1;)V

    .line 25
    iget-object v10, v3, Ln3/e/a/e/c1;->h:Ln3/e/b/j1/g1;

    move-object v8, v12

    move-object/from16 v16, v10

    move-object v10, v7

    move-object/from16 v17, v11

    move-object v11, v15

    move-object v6, v12

    move-object/from16 v12, v17

    move-object v14, v13

    move-object/from16 v13, v16

    .line 26
    invoke-direct/range {v8 .. v13}, Ln3/e/a/e/z0;-><init>(Ln3/e/a/e/k2/e;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ln3/e/b/j1/w$b;Ln3/e/b/j1/g1;)V

    iput-object v6, v1, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    .line 27
    iput-object v3, v1, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    .line 28
    invoke-virtual {v3, v6}, Ln3/e/a/e/c1;->k(Ln3/e/a/e/z0;)V
    :try_end_0
    .catch Ln3/e/a/e/k2/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    new-instance v6, Ln3/e/a/e/f2$a;

    .line 30
    invoke-virtual/range {p3 .. p3}, Ln3/e/a/e/c1;->j()I

    move-result v13

    move-object v8, v6

    move-object v9, v15

    move-object v10, v7

    move-object/from16 v11, p6

    move-object v12, v5

    invoke-direct/range {v8 .. v13}, Ln3/e/a/e/f2$a;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;Ln3/e/a/e/s1;I)V

    iput-object v6, v1, Ln3/e/a/e/b1;->v:Ln3/e/a/e/f2$a;

    .line 31
    new-instance v3, Ln3/e/a/e/b1$c;

    invoke-direct {v3, v1, v2}, Ln3/e/a/e/b1$c;-><init>(Ln3/e/a/e/b1;Ljava/lang/String;)V

    iput-object v3, v1, Ln3/e/a/e/b1;->q:Ln3/e/a/e/b1$c;

    .line 32
    iget-object v2, v4, Ln3/e/b/j1/d0;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 33
    :try_start_1
    iget-object v5, v4, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera is already registered: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 34
    iget-object v4, v4, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    new-instance v5, Ln3/e/b/j1/d0$a;

    invoke-direct {v5, v14, v15, v3}, Ln3/e/b/j1/d0$a;-><init>(Ln3/e/b/j1/b0$a;Ljava/util/concurrent/Executor;Ln3/e/b/j1/d0$b;)V

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    iget-object v0, v0, Ln3/e/a/e/k2/k;->a:Ln3/e/a/e/k2/k$b;

    invoke-interface {v0, v15, v3}, Ln3/e/a/e/k2/k$b;->a(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void

    :catchall_0
    move-exception v0

    .line 37
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    .line 38
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->L(Ln3/e/a/e/k2/a;)Ln3/e/b/n0;

    move-result-object v0

    throw v0
.end method

.method public static q(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN ERROR"

    return-object p0

    :cond_0
    const-string p0, "ERROR_CAMERA_SERVICE"

    return-object p0

    :cond_1
    const-string p0, "ERROR_CAMERA_DEVICE"

    return-object p0

    :cond_2
    const-string p0, "ERROR_CAMERA_DISABLED"

    return-object p0

    :cond_3
    const-string p0, "ERROR_MAX_CAMERAS_IN_USE"

    return-object p0

    :cond_4
    const-string p0, "ERROR_CAMERA_IN_USE"

    return-object p0

    :cond_5
    const-string p0, "ERROR_NONE"

    return-object p0
.end method


# virtual methods
.method public synthetic a()Ln3/e/b/l0;
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/a0;->b(Ln3/e/b/j1/b0;)Ln3/e/b/l0;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ln3/e/b/i0;
    .locals 1

    invoke-static {p0}, Ln3/e/b/j1/a0;->a(Ln3/e/b/j1/b0;)Ln3/e/b/i0;

    move-result-object v0

    return-object v0
.end method

.method public c(Ln3/e/b/g1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/r;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/r;-><init>(Ln3/e/a/e/b1;Ln3/e/b/g1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()Ln3/e/b/j1/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    return-object v0
.end method

.method public e()Ln3/e/b/j1/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/e/b/j1/c1<",
            "Ln3/e/b/j1/b0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->e:Ln3/e/b/j1/x0;

    return-object v0
.end method

.method public f(Ln3/e/b/g1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/n;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/n;-><init>(Ln3/e/a/e/b1;Ln3/e/b/g1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()Ln3/e/b/j1/w;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    return-object v0
.end method

.method public h(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/e/b/g1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    .line 3
    iget-object v1, v0, Ln3/e/a/e/z0;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget v2, v0, Ln3/e/a/e/z0;->n:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Ln3/e/a/e/z0;->n:I

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1;

    .line 8
    iget-object v2, p0, Ln3/e/a/e/b1;->w:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Ln3/e/a/e/b1;->w:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    :try_start_1
    iget-object v0, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/u;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/u;-><init>(Ln3/e/a/e/b1;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Unable to attach use cases."

    .line 11
    invoke-virtual {p0, v0, p1}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-virtual {p1}, Ln3/e/a/e/z0;->i()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public i(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/e/b/g1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/g1;

    .line 4
    iget-object v2, p0, Ln3/e/a/e/b1;->w:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Ln3/e/a/e/b1;->w:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/k;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/k;-><init>(Ln3/e/a/e/b1;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public j(Ln3/e/b/g1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/w;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/w;-><init>(Ln3/e/a/e/b1;Ln3/e/b/g1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Ln3/e/b/g1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ln3/e/a/e/v;

    invoke-direct {v1, p0, p1}, Ln3/e/a/e/v;-><init>(Ln3/e/a/e/b1;Ln3/e/b/g1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    invoke-virtual {v0}, Ln3/e/b/j1/p1;->a()Ln3/e/b/j1/j1$f;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/e/b/j1/j1$f;->b()Ln3/e/b/j1/j1;

    move-result-object v0

    .line 3
    iget-object v1, v0, Ln3/e/b/j1/j1;->f:Ln3/e/b/j1/g0;

    .line 4
    invoke-virtual {v1}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Ln3/e/b/j1/j1;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    invoke-virtual {v0}, Ln3/e/b/j1/j1;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {v1}, Ln3/e/b/j1/g0;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ln3/e/a/e/z1;

    iget-object v1, p0, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    .line 10
    iget-object v1, v1, Ln3/e/a/e/c1;->b:Ln3/e/a/e/k2/e;

    .line 11
    invoke-direct {v0, v1}, Ln3/e/a/e/z1;-><init>(Ln3/e/a/e/k2/e;)V

    iput-object v0, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 12
    :cond_0
    iget-object v0, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MeteringRepeating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 15
    iget-object v3, v3, Ln3/e/a/e/z1;->b:Ln3/e/b/j1/j1;

    .line 16
    invoke-virtual {v0, v1, v3}, Ln3/e/b/j1/p1;->f(Ljava/lang/String;Ln3/e/b/j1/j1;)V

    .line 17
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 19
    iget-object v2, v2, Ln3/e/a/e/z1;->b:Ln3/e/b/j1/j1;

    .line 20
    invoke-virtual {v0, v1, v2}, Ln3/e/b/j1/p1;->e(Ljava/lang/String;Ln3/e/b/j1/j1;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    if-ne v2, v0, :cond_2

    .line 21
    invoke-virtual {p0}, Ln3/e/a/e/b1;->v()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-lt v2, v0, :cond_3

    .line 22
    invoke-virtual {p0}, Ln3/e/a/e/b1;->v()V

    goto :goto_0

    :cond_3
    const-string v0, "mMeteringRepeating is ATTACHED, SessionConfig Surfaces: "

    const-string v1, ", CaptureConfig Surfaces: "

    .line 23
    invoke-static {v0, v3, v1, v2}, Le/d/c/a/a;->m2(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Camera2CameraImpl"

    .line 24
    invoke-static {v2, v0, v1}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public m(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->e:Ln3/e/a/e/b1$e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->g:Ln3/e/a/e/b1$e;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->f:Ln3/e/a/e/b1$e;

    if-ne v1, v2, :cond_0

    iget v1, v0, Ln3/e/a/e/b1;->j:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const-string v2, "closeCamera should only be called in a CLOSING, RELEASING or REOPENING (with error) state. Current state: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (error: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Ln3/e/a/e/b1;->j:I

    .line 2
    invoke-static {v5}, Ln3/e/a/e/b1;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_4

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_4

    .line 5
    iget-object v1, v0, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    .line 6
    invoke-virtual {v1}, Ln3/e/a/e/c1;->j()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 7
    iget v1, v0, Ln3/e/a/e/b1;->j:I

    if-nez v1, :cond_4

    .line 8
    new-instance v1, Ln3/e/a/e/r1;

    invoke-direct {v1}, Ln3/e/a/e/r1;-><init>()V

    .line 9
    iget-object v2, v0, Ln3/e/a/e/b1;->s:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual/range {p0 .. p1}, Ln3/e/a/e/b1;->w(Z)V

    .line 11
    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    const/16 v3, 0x280

    const/16 v4, 0x1e0

    .line 12
    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 13
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 14
    new-instance v4, Ln3/e/a/e/t;

    invoke-direct {v4, v3, v2}, Ln3/e/a/e/t;-><init>(Landroid/view/Surface;Landroid/graphics/SurfaceTexture;)V

    .line 15
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 16
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 17
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object v6

    .line 18
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v7, Ln3/e/b/j1/b1;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v7, v8}, Ln3/e/b/j1/b1;-><init>(Ljava/util/Map;)V

    .line 20
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v13, Ln3/e/b/j1/s0;

    invoke-direct {v13, v3}, Ln3/e/b/j1/s0;-><init>(Landroid/view/Surface;)V

    .line 25
    invoke-virtual {v2, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const-string v8, "Start configAndClose."

    .line 26
    invoke-virtual {v0, v8, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    new-instance v3, Ln3/e/b/j1/j1;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    new-instance v18, Ln3/e/b/j1/g0;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    invoke-static {v6}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object v9

    .line 30
    sget-object v2, Ln3/e/b/j1/o1;->b:Ln3/e/b/j1/o1;

    .line 31
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    iget-object v5, v7, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 33
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 34
    invoke-virtual {v7, v6}, Ln3/e/b/j1/o1;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 35
    :cond_3
    new-instance v5, Ln3/e/b/j1/o1;

    invoke-direct {v5, v2}, Ln3/e/b/j1/o1;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x0

    move-object/from16 v7, v18

    const/4 v6, 0x1

    move v10, v6

    move-object v6, v12

    move v12, v2

    move-object v2, v13

    move-object v13, v5

    .line 36
    invoke-direct/range {v7 .. v13}, Ln3/e/b/j1/g0;-><init>(Ljava/util/List;Ln3/e/b/j1/j0;ILjava/util/List;ZLn3/e/b/j1/o1;)V

    move-object v12, v3

    move-object v13, v6

    .line 37
    invoke-direct/range {v12 .. v18}, Ln3/e/b/j1/j1;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ln3/e/b/j1/g0;)V

    .line 38
    iget-object v5, v0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    .line 39
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v6, v0, Ln3/e/a/e/b1;->v:Ln3/e/a/e/f2$a;

    invoke-virtual {v6}, Ln3/e/a/e/f2$a;->a()Ln3/e/a/e/f2;

    move-result-object v6

    .line 41
    invoke-virtual {v1, v3, v5, v6}, Ln3/e/a/e/r1;->h(Ln3/e/b/j1/j1;Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/f2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 42
    new-instance v5, Ln3/e/a/e/s;

    invoke-direct {v5, v0, v1, v2, v4}, Ln3/e/a/e/s;-><init>(Ln3/e/a/e/b1;Ln3/e/a/e/r1;Ln3/e/b/j1/k0;Ljava/lang/Runnable;)V

    iget-object v1, v0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v5, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_4

    .line 43
    :cond_4
    invoke-virtual/range {p0 .. p1}, Ln3/e/a/e/b1;->w(Z)V

    .line 44
    :goto_4
    iget-object v1, v0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    .line 45
    iget-object v2, v1, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 46
    iget-object v2, v1, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/g0;

    .line 47
    iget-object v3, v3, Ln3/e/b/j1/g0;->d:Ljava/util/List;

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/e/b/j1/q;

    .line 49
    invoke-virtual {v4}, Ln3/e/b/j1/q;->a()V

    goto :goto_5

    .line 50
    :cond_6
    iget-object v1, v1, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public final n()Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    invoke-virtual {v0}, Ln3/e/b/j1/p1;->a()Ln3/e/b/j1/j1$f;

    move-result-object v0

    invoke-virtual {v0}, Ln3/e/b/j1/j1$f;->b()Ln3/e/b/j1/j1;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ln3/e/b/j1/j1;->b:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    iget-object v0, p0, Ln3/e/a/e/b1;->u:Ln3/e/a/e/s1;

    .line 5
    iget-object v0, v0, Ln3/e/a/e/s1;->f:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ln3/e/a/e/n1;

    invoke-direct {v0}, Ln3/e/a/e/n1;-><init>()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraDevice$StateCallback;

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ln3/e/a/e/m1;

    invoke-direct {v0, v1}, Ln3/e/a/e/m1;-><init>(Ljava/util/List;)V

    :goto_0
    return-object v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0}, Ln3/e/a/e/b1;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "{%s} %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2CameraImpl"

    .line 2
    invoke-static {v0, p1, p2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    sget-object v0, Ln3/e/a/e/b1$e;->e:Ln3/e/a/e/b1$e;

    iget-object v1, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v2, Ln3/e/a/e/b1$e;->g:Ln3/e/a/e/b1$e;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 3
    iget-object v1, p0, Ln3/e/a/e/b1;->p:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 4
    invoke-static {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 5
    iput-object v2, p0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    .line 6
    iget-object v1, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    if-ne v1, v0, :cond_2

    .line 7
    sget-object v0, Ln3/e/a/e/b1$e;->a:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, v0}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Ln3/e/a/e/b1;->b:Ln3/e/a/e/k2/k;

    iget-object v1, p0, Ln3/e/a/e/b1;->q:Ln3/e/a/e/b1$c;

    .line 9
    iget-object v0, v0, Ln3/e/a/e/k2/k;->a:Ln3/e/a/e/k2/k$b;

    invoke-interface {v0, v1}, Ln3/e/a/e/k2/k$b;->d(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 10
    sget-object v0, Ln3/e/a/e/b1$e;->h:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, v0}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 11
    iget-object v0, p0, Ln3/e/a/e/b1;->o:Ln3/h/a/b;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0, v2}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 13
    iput-object v2, p0, Ln3/e/a/e/b1;->o:Ln3/h/a/b;

    :cond_3
    :goto_2
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/e/a/e/b1;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/e/a/e/q;

    invoke-direct {v0, p0}, Ln3/e/a/e/q;-><init>(Ln3/e/a/e/b1;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public s(Z)V
    .locals 11

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    .line 2
    iget-object p1, p1, Ln3/e/a/e/b1$f;->e:Ln3/e/a/e/b1$f$a;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p1, Ln3/e/a/e/b1$f$a;->a:J

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    invoke-virtual {p1}, Ln3/e/a/e/b1$f;->a()Z

    .line 5
    iget-object p1, p0, Ln3/e/a/e/b1;->q:Ln3/e/a/e/b1$c;

    .line 6
    iget-boolean p1, p1, Ln3/e/a/e/b1$c;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 7
    iget-object p1, p0, Ln3/e/a/e/b1;->r:Ln3/e/b/j1/d0;

    .line 8
    iget-object v1, p1, Ln3/e/b/j1/d0;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p1, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/j1/d0$a;

    const-string v3, "Camera must first be registered with registerCamera()"

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "CameraStateRegistry"

    .line 10
    invoke-static {v3}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 11
    iget-object v3, p1, Ln3/e/b/j1/d0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 12
    iget-object v3, p1, Ln3/e/b/j1/d0;->a:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "tryOpenCamera(%s) [Available Cameras: %d, Already Open: %b (Previous state: %s)]"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v5

    iget v9, p1, Ln3/e/b/j1/d0;->e:I

    .line 13
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x2

    .line 14
    iget-object v10, v2, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    .line 15
    invoke-static {v10}, Ln3/e/b/j1/d0;->a(Ln3/e/b/j1/b0$a;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 16
    iget-object v10, v2, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    aput-object v10, v8, v9

    .line 17
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    :cond_1
    iget v3, p1, Ln3/e/b/j1/d0;->e:I

    if-gtz v3, :cond_3

    .line 19
    iget-object v3, v2, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    .line 20
    invoke-static {v3}, Ln3/e/b/j1/d0;->a(Ln3/e/b/j1/b0$a;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    sget-object v3, Ln3/e/b/j1/b0$a;->c:Ln3/e/b/j1/b0$a;

    .line 22
    iput-object v3, v2, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    move v2, v4

    :goto_1
    const-string v3, "CameraStateRegistry"

    .line 23
    invoke-static {v3}, Ln3/e/b/y0;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 24
    iget-object v3, p1, Ln3/e/b/j1/d0;->a:Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, " --> %s"

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v2, :cond_4

    const-string v8, "SUCCESS"

    goto :goto_2

    :cond_4
    const-string v8, "FAIL"

    :goto_2
    aput-object v8, v4, v5

    .line 25
    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CameraStateRegistry"

    .line 27
    iget-object v4, p1, Ln3/e/b/j1/d0;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v3, v4, v0}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {p1}, Ln3/e/b/j1/d0;->b()V

    .line 30
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    goto :goto_4

    .line 31
    :cond_7
    sget-object p1, Ln3/e/a/e/b1$e;->c:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, p1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    const-string p1, "Opening camera."

    .line 32
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :try_start_1
    iget-object p1, p0, Ln3/e/a/e/b1;->b:Ln3/e/a/e/k2/k;

    iget-object v1, p0, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    .line 34
    iget-object v1, v1, Ln3/e/a/e/c1;->a:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    .line 36
    invoke-virtual {p0}, Ln3/e/a/e/b1;->n()Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v3

    .line 37
    iget-object p1, p1, Ln3/e/a/e/k2/k;->a:Ln3/e/a/e/k2/k$b;

    invoke-interface {p1, v1, v2, v3}, Ln3/e/a/e/k2/k$b;->b(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_1
    .catch Ln3/e/a/e/k2/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "Unable to open camera due to "

    .line 38
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    sget-object p1, Ln3/e/a/e/b1$e;->f:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, p1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 41
    iget-object p1, p0, Ln3/e/a/e/b1;->g:Ln3/e/a/e/b1$f;

    invoke-virtual {p1}, Ln3/e/a/e/b1$f;->b()V

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v1, "Unable to open camera due to "

    .line 42
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-virtual {p0, v1, v0}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iget p1, p1, Ln3/e/a/e/k2/a;->a:I

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_8

    goto :goto_3

    .line 45
    :cond_8
    sget-object p1, Ln3/e/a/e/b1$e;->a:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, p1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_9
    :goto_4
    const-string p1, "No cameras available. Waiting for available camera before opening camera."

    .line 47
    invoke-virtual {p0, p1, v0}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    sget-object p1, Ln3/e/a/e/b1$e;->b:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, p1}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    return-void
.end method

.method public t()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v1, Ln3/e/a/e/b1$e;->d:Ln3/e/a/e/b1$e;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    invoke-virtual {v0}, Ln3/e/b/j1/p1;->a()Ln3/e/b/j1/j1$f;

    move-result-object v0

    .line 4
    iget-boolean v4, v0, Ln3/e/b/j1/j1$f;->h:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Ln3/e/b/j1/j1$f;->g:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    const-string v0, "Unable to create capture session due to conflicting configurations"

    .line 5
    invoke-virtual {p0, v0, v1}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    .line 7
    invoke-virtual {v0}, Ln3/e/b/j1/j1$f;->b()Ln3/e/b/j1/j1;

    move-result-object v0

    iget-object v2, p0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Ln3/e/a/e/b1;->v:Ln3/e/a/e/f2$a;

    invoke-virtual {v3}, Ln3/e/a/e/f2$a;->a()Ln3/e/a/e/f2;

    move-result-object v3

    .line 10
    invoke-virtual {v1, v0, v2, v3}, Ln3/e/a/e/r1;->h(Ln3/e/b/j1/j1;Landroid/hardware/camera2/CameraDevice;Ln3/e/a/e/f2;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 11
    new-instance v1, Ln3/e/a/e/b1$b;

    invoke-direct {v1, p0}, Ln3/e/a/e/b1$b;-><init>(Ln3/e/a/e/b1;)V

    iget-object v2, p0, Ln3/e/a/e/b1;->c:Ljava/util/concurrent/Executor;

    .line 12
    new-instance v3, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v3, v0, v1}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {v0, v3, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Ln3/e/a/e/b1;->h:Ln3/e/a/e/c1;

    .line 2
    iget-object v2, v2, Ln3/e/a/e/c1;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Camera@%x[id=%s]"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ln3/e/a/e/r1;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/a/e/r1;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/a/e/r1$c;->h:Ln3/e/a/e/r1$c;

    iget-object v1, p1, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iget-object v2, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v2, p1, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p1, Ln3/e/a/e/r1;->i:Ln3/e/a/d/c;

    .line 5
    invoke-virtual {v2}, Ln3/e/a/d/c;->c()Ln3/e/a/d/c$a;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, v2, Ln3/e/a/d/c$a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/a/d/b;

    .line 8
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {p1, v3}, Ln3/e/a/e/r1;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Ln3/e/a/e/r1;->d(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "CaptureSession"

    const-string v5, "Unable to issue the request before close the capture session"

    .line 11
    invoke-static {v3, v5, v2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :cond_2
    :goto_1
    iget-object v2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Opener shouldn\'t null in state:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    invoke-virtual {v2}, Ln3/e/a/e/f2;->a()Z

    .line 14
    sget-object v2, Ln3/e/a/e/r1$c;->f:Ln3/e/a/e/r1$c;

    iput-object v2, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 15
    iput-object v4, p1, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    goto :goto_2

    .line 16
    :cond_3
    iget-object v2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The Opener shouldn\'t null in state:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    invoke-virtual {v2}, Ln3/e/a/e/f2;->a()Z

    .line 18
    :cond_4
    iput-object v0, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 19
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    iget-object v2, p1, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :try_start_3
    iget-object v1, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    .line 22
    :pswitch_0
    iget-object v0, p1, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_5

    .line 23
    :try_start_4
    invoke-interface {v0}, Ln3/e/a/e/b2;->c()V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p2

    :try_start_5
    const-string v0, "CaptureSession"

    const-string v1, "Unable to abort captures."

    .line 24
    invoke-static {v0, v1, p2}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_5
    :goto_3
    iget-object p2, p1, Ln3/e/a/e/r1;->f:Ln3/e/a/e/b2;

    invoke-interface {p2}, Ln3/e/a/e/b2;->close()V

    .line 26
    :cond_6
    :pswitch_1
    sget-object p2, Ln3/e/a/e/r1$c;->g:Ln3/e/a/e/r1$c;

    iput-object p2, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    .line 27
    iget-object p2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Opener shouldn\'t null in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    invoke-virtual {p2}, Ln3/e/a/e/f2;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 29
    invoke-virtual {p1}, Ln3/e/a/e/r1;->b()V

    goto :goto_4

    .line 30
    :cond_7
    :pswitch_2
    iget-object p2, p1, Ln3/e/a/e/r1;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    if-nez p2, :cond_8

    .line 31
    new-instance p2, Ln3/e/a/e/x;

    invoke-direct {p2, p1}, Ln3/e/a/e/x;-><init>(Ln3/e/a/e/r1;)V

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    iput-object p2, p1, Ln3/e/a/e/r1;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 32
    :cond_8
    iget-object p2, p1, Ln3/e/a/e/r1;->m:Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v2

    goto :goto_5

    .line 33
    :pswitch_3
    iget-object p2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Opener shouldn\'t null in state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p2, p1, Ln3/e/a/e/r1;->e:Ln3/e/a/e/f2;

    invoke-virtual {p2}, Ln3/e/a/e/f2;->a()Z

    .line 35
    :pswitch_4
    iput-object v0, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    goto :goto_4

    .line 36
    :pswitch_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release() should not be possible in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 37
    :goto_4
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 38
    invoke-static {v4}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    :goto_5
    const-string v0, "Releasing session in state "

    .line 39
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0, v4}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    iget-object v0, p0, Ln3/e/a/e/b1;->p:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Ln3/e/a/e/b1$a;

    invoke-direct {v0, p0, p1}, Ln3/e/a/e/b1$a;-><init>(Ln3/e/a/e/b1;Ln3/e/a/e/r1;)V

    .line 43
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 44
    new-instance v1, Ln3/e/b/j1/t1/c/g$d;

    invoke-direct {v1, p2, v0}, Ln3/e/b/j1/t1/c/g$d;-><init>(Ljava/util/concurrent/Future;Ln3/e/b/j1/t1/c/d;)V

    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p2

    :catchall_0
    move-exception p1

    .line 45
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 46
    :cond_9
    :try_start_7
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() should not be possible in state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ln3/e/a/e/r1;->l:Ln3/e/a/e/r1$c;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_1
    move-exception p1

    .line 47
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MeteringRepeating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v3, v0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, v0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/p1$b;

    const/4 v4, 0x0

    .line 6
    iput-boolean v4, v3, Ln3/e/b/j1/p1$b;->b:Z

    .line 7
    iget-boolean v3, v3, Ln3/e/b/j1/p1$b;->c:Z

    if-nez v3, :cond_1

    .line 8
    iget-object v0, v0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ln3/e/b/j1/p1;->g(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "MeteringRepeating clear!"

    const/4 v3, 0x0

    .line 14
    invoke-static {v2, v1, v3}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-object v1, v0, Ln3/e/a/e/z1;->a:Ln3/e/b/j1/k0;

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, Ln3/e/b/j1/k0;->a()V

    .line 17
    :cond_2
    iput-object v3, v0, Ln3/e/a/e/z1;->a:Ln3/e/b/j1/k0;

    .line 18
    iput-object v3, p0, Ln3/e/a/e/b1;->t:Ln3/e/a/e/z1;

    :cond_3
    return-void
.end method

.method public w(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    const-string v0, "Resetting Capture Session"

    .line 3
    invoke-virtual {p0, v0, v1}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    .line 5
    iget-object v1, v0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, v0, Ln3/e/a/e/r1;->g:Ln3/e/b/j1/j1;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v3, v0, Ln3/e/a/e/r1;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 8
    :try_start_1
    iget-object v1, v0, Ln3/e/a/e/r1;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    new-instance v3, Ln3/e/a/e/r1;

    invoke-direct {v3}, Ln3/e/a/e/r1;-><init>()V

    iput-object v3, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    .line 10
    invoke-virtual {v3, v2}, Ln3/e/a/e/r1;->i(Ln3/e/b/j1/j1;)V

    .line 11
    iget-object v2, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    invoke-virtual {v2, v1}, Ln3/e/a/e/r1;->d(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0, v0, p1}, Ln3/e/a/e/b1;->u(Ln3/e/a/e/r1;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public x(Ln3/e/a/e/b1$e;)V
    .locals 9

    .line 1
    sget-object v0, Ln3/e/b/j1/b0$a;->h:Ln3/e/b/j1/b0$a;

    sget-object v1, Ln3/e/b/j1/b0$a;->b:Ln3/e/b/j1/b0$a;

    sget-object v2, Ln3/e/b/j1/b0$a;->c:Ln3/e/b/j1/b0$a;

    const-string v3, "Transitioning camera internal state: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p0, v3, v4}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object p1, v0

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p1, Ln3/e/b/j1/b0$a;->g:Ln3/e/b/j1/b0$a;

    goto :goto_0

    .line 7
    :pswitch_2
    sget-object p1, Ln3/e/b/j1/b0$a;->e:Ln3/e/b/j1/b0$a;

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p1, Ln3/e/b/j1/b0$a;->d:Ln3/e/b/j1/b0$a;

    goto :goto_0

    :pswitch_4
    move-object p1, v2

    goto :goto_0

    :pswitch_5
    move-object p1, v1

    goto :goto_0

    .line 9
    :pswitch_6
    sget-object p1, Ln3/e/b/j1/b0$a;->f:Ln3/e/b/j1/b0$a;

    .line 10
    :goto_0
    iget-object v3, p0, Ln3/e/a/e/b1;->r:Ln3/e/b/j1/d0;

    .line 11
    iget-object v5, v3, Ln3/e/b/j1/d0;->b:Ljava/lang/Object;

    monitor-enter v5

    .line 12
    :try_start_0
    iget v6, v3, Ln3/e/b/j1/d0;->e:I

    const/4 v7, 0x1

    if-ne p1, v0, :cond_1

    .line 13
    iget-object v0, v3, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/d0$a;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v3}, Ln3/e/b/j1/d0;->b()V

    .line 15
    iget-object v0, v0, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    goto :goto_3

    :cond_0
    move-object v0, v4

    goto :goto_3

    .line 16
    :cond_1
    iget-object v0, v3, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/d0$a;

    const-string v8, "Cannot update state of camera which has not yet been registered. Register with CameraAvailabilityRegistry.registerCamera()"

    invoke-static {v0, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->u(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v8, v0, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    .line 18
    iput-object p1, v0, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    if-ne p1, v2, :cond_4

    .line 19
    invoke-static {p1}, Ln3/e/b/j1/d0;->a(Ln3/e/b/j1/b0$a;)Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v8, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v7

    :goto_2
    const-string v2, "Cannot mark camera as opening until camera was successful at calling CameraAvailabilityRegistry.tryOpen()"

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    :cond_4
    if-eq v8, p1, :cond_5

    .line 20
    invoke-virtual {v3}, Ln3/e/b/j1/d0;->b()V

    :cond_5
    move-object v0, v8

    :goto_3
    if-ne v0, p1, :cond_6

    .line 21
    monitor-exit v5

    goto/16 :goto_7

    :cond_6
    if-ge v6, v7, :cond_8

    .line 22
    iget v0, v3, Ln3/e/b/j1/d0;->e:I

    if-lez v0, :cond_8

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v2, v3, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/e/b/j1/d0$a;

    .line 26
    iget-object v6, v6, Ln3/e/b/j1/d0$a;->a:Ln3/e/b/j1/b0$a;

    if-ne v6, v1, :cond_7

    .line 27
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/e/b/j1/d0$a;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    if-ne p1, v1, :cond_9

    .line 28
    iget v0, v3, Ln3/e/b/j1/d0;->e:I

    if-lez v0, :cond_9

    .line 29
    iget-object v0, v3, Ln3/e/b/j1/d0;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/d0$a;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, v4

    .line 30
    :cond_a
    :goto_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_b

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/d0$a;

    .line 32
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :try_start_1
    iget-object v2, v1, Ln3/e/b/j1/d0$a;->b:Ljava/util/concurrent/Executor;

    iget-object v1, v1, Ln3/e/b/j1/d0$a;->c:Ln3/e/b/j1/d0$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ln3/e/b/j1/l;

    invoke-direct {v3, v1}, Ln3/e/b/j1/l;-><init>(Ln3/e/b/j1/d0$b;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    const-string v2, "CameraStateRegistry"

    const-string v3, "Unable to notify camera."

    .line 34
    invoke-static {v2, v3, v1}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 35
    :cond_b
    :goto_7
    iget-object v0, p0, Ln3/e/a/e/b1;->e:Ln3/e/b/j1/x0;

    .line 36
    iget-object v0, v0, Ln3/e/b/j1/x0;->a:Ln3/v/k0;

    .line 37
    new-instance v1, Ln3/e/b/j1/x0$b;

    invoke-direct {v1, p1, v4}, Ln3/e/b/j1/x0$b;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 38
    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 39
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final y(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ln3/e/b/g1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    .line 2
    invoke-virtual {v0}, Ln3/e/b/j1/p1;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/e/b/g1;

    .line 5
    iget-object v4, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ln3/e/b/j1/p1;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    :try_start_0
    iget-object v4, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, v2, Ln3/e/b/g1;->k:Ln3/e/b/j1/j1;

    .line 8
    invoke-virtual {v4, v5, v6}, Ln3/e/b/j1/p1;->f(Ljava/lang/String;Ln3/e/b/j1/j1;)V

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Failed to attach a detached use case"

    .line 10
    invoke-virtual {p0, v2, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "Use cases ["

    .line 12
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", "

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] now ATTACHED"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    invoke-virtual {v0, p1}, Ln3/e/a/e/z0;->p(Z)V

    .line 15
    iget-object v0, p0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    .line 16
    iget-object v2, v0, Ln3/e/a/e/z0;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 17
    :try_start_1
    iget v4, v0, Ln3/e/a/e/z0;->n:I

    add-int/2addr v4, p1

    iput v4, v0, Ln3/e/a/e/z0;->n:I

    .line 18
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 19
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ln3/e/a/e/b1;->l()V

    .line 20
    invoke-virtual {p0}, Ln3/e/a/e/b1;->z()V

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, v0}, Ln3/e/a/e/b1;->w(Z)V

    .line 22
    iget-object v2, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    sget-object v4, Ln3/e/a/e/b1$e;->d:Ln3/e/a/e/b1$e;

    if-ne v2, v4, :cond_4

    .line 23
    invoke-virtual {p0}, Ln3/e/a/e/b1;->t()V

    goto :goto_3

    .line 24
    :cond_4
    iget-object v2, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v5, 0x4

    if-eq v2, v5, :cond_5

    const-string p1, "open() ignored due to being in state: "

    .line 25
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Ln3/e/a/e/b1;->d:Ln3/e/a/e/b1$e;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0, p1, v3}, Ln3/e/a/e/b1;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 27
    :cond_5
    sget-object v2, Ln3/e/a/e/b1$e;->f:Ln3/e/a/e/b1$e;

    invoke-virtual {p0, v2}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 28
    invoke-virtual {p0}, Ln3/e/a/e/b1;->r()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Ln3/e/a/e/b1;->j:I

    if-nez v2, :cond_8

    .line 29
    iget-object v2, p0, Ln3/e/a/e/b1;->i:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    const-string v0, "Camera Device should be open if session close is not complete"

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 30
    invoke-virtual {p0, v4}, Ln3/e/a/e/b1;->x(Ln3/e/a/e/b1$e;)V

    .line 31
    invoke-virtual {p0}, Ln3/e/a/e/b1;->t()V

    goto :goto_3

    .line 32
    :cond_7
    invoke-virtual {p0, v0}, Ln3/e/a/e/b1;->s(Z)V

    .line 33
    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/g1;

    .line 34
    instance-of v1, v0, Ln3/e/b/c1;

    if-eqz v1, :cond_9

    .line 35
    iget-object p1, v0, Ln3/e/b/g1;->g:Landroid/util/Size;

    if-eqz p1, :cond_a

    .line 36
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Rational;-><init>(II)V

    .line 38
    iget-object p1, p0, Ln3/e/a/e/b1;->f:Ln3/e/a/e/z0;

    .line 39
    iput-object v0, p1, Ln3/e/a/e/z0;->g:Landroid/util/Rational;

    :cond_a
    return-void
.end method

.method public z()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/e/a/e/b1;->a:Ln3/e/b/j1/p1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/e/b/j1/j1$f;

    invoke-direct {v1}, Ln3/e/b/j1/j1$f;-><init>()V

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v3, v0, Ln3/e/b/j1/p1;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/j1/p1$b;

    .line 7
    iget-boolean v6, v5, Ln3/e/b/j1/p1$b;->c:Z

    if-eqz v6, :cond_0

    .line 8
    iget-boolean v6, v5, Ln3/e/b/j1/p1$b;->b:Z

    if-eqz v6, :cond_0

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    iget-object v5, v5, Ln3/e/b/j1/p1$b;->a:Ln3/e/b/j1/j1;

    .line 11
    invoke-virtual {v1, v5}, Ln3/e/b/j1/j1$f;->a(Ln3/e/b/j1/j1;)V

    .line 12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Active and attached use case: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for camera: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Ln3/e/b/j1/p1;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "UseCaseAttachState"

    .line 14
    invoke-static {v3, v0, v2}, Ln3/e/b/y0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-boolean v0, v1, Ln3/e/b/j1/j1$f;->h:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Ln3/e/b/j1/j1$f;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Ln3/e/a/e/b1;->l:Ln3/e/b/j1/j1;

    invoke-virtual {v1, v0}, Ln3/e/b/j1/j1$f;->a(Ln3/e/b/j1/j1;)V

    .line 17
    invoke-virtual {v1}, Ln3/e/b/j1/j1$f;->b()Ln3/e/b/j1/j1;

    move-result-object v0

    .line 18
    iget-object v1, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    invoke-virtual {v1, v0}, Ln3/e/a/e/r1;->i(Ln3/e/b/j1/j1;)V

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Ln3/e/a/e/b1;->k:Ln3/e/a/e/r1;

    iget-object v1, p0, Ln3/e/a/e/b1;->l:Ln3/e/b/j1/j1;

    invoke-virtual {v0, v1}, Ln3/e/a/e/r1;->i(Ln3/e/b/j1/j1;)V

    :goto_2
    return-void
.end method
