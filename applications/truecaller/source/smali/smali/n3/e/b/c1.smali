.class public final Ln3/e/b/c1;
.super Ln3/e/b/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/c1$b;,
        Ln3/e/b/c1$c;,
        Ln3/e/b/c1$d;
    }
.end annotation


# static fields
.field public static final r:Ln3/e/b/c1$c;

.field public static final s:Ljava/util/concurrent/Executor;


# instance fields
.field public l:Ln3/e/b/c1$d;

.field public m:Ljava/util/concurrent/Executor;

.field public n:Ln3/e/b/j1/k0;

.field public o:Ln3/e/b/f1;

.field public p:Z

.field public q:Landroid/util/Size;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/e/b/c1$c;

    invoke-direct {v0}, Ln3/e/b/c1$c;-><init>()V

    sput-object v0, Ln3/e/b/c1;->r:Ln3/e/b/c1$c;

    .line 2
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->O0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Ln3/e/b/c1;->s:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ln3/e/b/j1/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/e/b/g1;-><init>(Ln3/e/b/j1/r1;)V

    .line 2
    sget-object p1, Ln3/e/b/c1;->s:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Ln3/e/b/c1;->m:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Ln3/e/b/c1;->p:Z

    return-void
.end method


# virtual methods
.method public c(ZLn3/e/b/j1/s1;)Ln3/e/b/j1/r1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ln3/e/b/j1/s1;",
            ")",
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/b/j1/s1$a;->b:Ln3/e/b/j1/s1$a;

    invoke-interface {p2, v0}, Ln3/e/b/j1/s1;->a(Ln3/e/b/j1/s1$a;)Ln3/e/b/j1/j0;

    move-result-object p2

    if-eqz p1, :cond_3

    .line 2
    sget-object p1, Ln3/e/b/c1;->r:Ln3/e/b/c1$c;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Ln3/e/b/c1$c;->a:Ln3/e/b/j1/e1;

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Ln3/e/b/j1/d1;->r:Ln3/e/b/j1/d1;

    :goto_0
    move-object p2, p1

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-static {p1}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Ln3/e/b/j1/a1;->x()Ln3/e/b/j1/a1;

    move-result-object p1

    :goto_1
    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p2}, Ln3/e/b/j1/j0;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/j0$a;

    .line 9
    invoke-interface {p2, v1}, Ln3/e/b/j1/j0;->e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object v2

    .line 10
    invoke-interface {p2, v1}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    invoke-virtual {p1, v1, v2, v3}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-static {p1}, Ln3/e/b/j1/d1;->w(Ln3/e/b/j1/j0;)Ln3/e/b/j1/d1;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_3
    if-nez p2, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    .line 13
    :cond_4
    new-instance p1, Ln3/e/b/c1$b;

    invoke-static {p2}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object p2

    invoke-direct {p1, p2}, Ln3/e/b/c1$b;-><init>(Ln3/e/b/j1/a1;)V

    .line 14
    invoke-virtual {p1}, Ln3/e/b/c1$b;->b()Ln3/e/b/j1/e1;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method public e(Ln3/e/b/j1/j0;)Ln3/e/b/j1/r1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/j0;",
            ")",
            "Ln3/e/b/j1/r1$a<",
            "***>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/e/b/c1$b;

    invoke-static {p1}, Ln3/e/b/j1/a1;->y(Ln3/e/b/j1/j0;)Ln3/e/b/j1/a1;

    move-result-object p1

    invoke-direct {v0, p1}, Ln3/e/b/c1$b;-><init>(Ln3/e/b/j1/a1;)V

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/c1;->n:Ln3/e/b/j1/k0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/e/b/j1/k0;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ln3/e/b/c1;->o:Ln3/e/b/f1;

    return-void
.end method

.method public l(Ln3/e/b/j1/z;Ln3/e/b/j1/r1$a;)Ln3/e/b/j1/r1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/z;",
            "Ln3/e/b/j1/r1$a<",
            "***>;)",
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object p1, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    move-object v0, p2

    check-cast v0, Ln3/e/b/c1$b;

    .line 2
    iget-object v0, v0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 3
    sget-object v1, Ln3/e/b/j1/e1;->s:Ln3/e/b/j1/j0$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    check-cast v0, Ln3/e/b/c1$b;

    .line 5
    iget-object v0, v0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 6
    sget-object v1, Ln3/e/b/j1/o0;->a:Ln3/e/b/j1/j0$a;

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    move-object v0, p2

    check-cast v0, Ln3/e/b/c1$b;

    .line 9
    iget-object v0, v0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 10
    sget-object v1, Ln3/e/b/j1/o0;->a:Ln3/e/b/j1/j0$a;

    const/16 v2, 0x22

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, p1, v2}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 13
    :goto_0
    check-cast p2, Ln3/e/b/c1$b;

    .line 14
    invoke-virtual {p2}, Ln3/e/b/c1$b;->b()Ln3/e/b/j1/e1;

    move-result-object p1

    return-object p1
.end method

.method public m(Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    .line 1
    iput-object p1, p0, Ln3/e/b/c1;->q:Landroid/util/Size;

    .line 2
    invoke-virtual {p0}, Ln3/e/b/g1;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    .line 4
    check-cast v1, Ln3/e/b/j1/e1;

    iget-object v2, p0, Ln3/e/b/c1;->q:Landroid/util/Size;

    .line 5
    invoke-virtual {p0, v0, v1, v2}, Ln3/e/b/c1;->o(Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)Ln3/e/b/j1/j1$b;

    move-result-object v0

    invoke-virtual {v0}, Ln3/e/b/j1/j1$b;->d()Ln3/e/b/j1/j1;

    move-result-object v0

    .line 6
    iput-object v0, p0, Ln3/e/b/g1;->k:Ln3/e/b/j1/j1;

    return-object p1
.end method

.method public n(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/g1;->i:Landroid/graphics/Rect;

    .line 2
    invoke-virtual {p0}, Ln3/e/b/c1;->q()V

    return-void
.end method

.method public o(Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)Ln3/e/b/j1/j1$b;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->t()V

    .line 2
    invoke-static/range {p2 .. p2}, Ln3/e/b/j1/j1$b;->e(Ln3/e/b/j1/r1;)Ln3/e/b/j1/j1$b;

    move-result-object v3

    .line 3
    sget-object v4, Ln3/e/b/j1/e1;->s:Ln3/e/b/j1/j0$a;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ln3/e/b/j1/h0;

    .line 4
    iget-object v4, v1, Ln3/e/b/c1;->n:Ln3/e/b/j1/k0;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v4}, Ln3/e/b/j1/k0;->a()V

    .line 6
    :cond_0
    new-instance v4, Ln3/e/b/f1;

    invoke-virtual/range {p0 .. p0}, Ln3/e/b/g1;->a()Ln3/e/b/j1/b0;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v12, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    invoke-direct {v4, v2, v6, v8}, Ln3/e/b/f1;-><init>(Landroid/util/Size;Ln3/e/b/j1/b0;Z)V

    .line 7
    iput-object v4, v1, Ln3/e/b/c1;->o:Ln3/e/b/f1;

    .line 8
    invoke-virtual/range {p0 .. p0}, Ln3/e/b/c1;->p()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual/range {p0 .. p0}, Ln3/e/b/c1;->q()V

    goto :goto_1

    .line 10
    :cond_2
    iput-boolean v7, v1, Ln3/e/b/c1;->p:Z

    :goto_1
    if-eqz v12, :cond_4

    .line 11
    new-instance v11, Ln3/e/b/j1/i0$a;

    invoke-direct {v11}, Ln3/e/b/j1/i0$a;-><init>()V

    .line 12
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "CameraX-preview_processing"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 14
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 15
    new-instance v13, Ln3/e/b/d1;

    .line 16
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getWidth()I

    move-result v7

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/util/Size;->getHeight()I

    move-result v8

    .line 18
    invoke-virtual/range {p2 .. p2}, Ln3/e/b/j1/e1;->h()I

    move-result v9

    new-instance v10, Landroid/os/Handler;

    .line 19
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v10, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    iget-object v4, v4, Ln3/e/b/f1;->h:Ln3/e/b/j1/k0;

    move-object v6, v13

    move-object v15, v13

    move-object v13, v4

    move-object v4, v14

    .line 21
    invoke-direct/range {v6 .. v14}, Ln3/e/b/d1;-><init>(IIILandroid/os/Handler;Ln3/e/b/j1/i0;Ln3/e/b/j1/h0;Ln3/e/b/j1/k0;Ljava/lang/String;)V

    .line 22
    iget-object v6, v15, Ln3/e/b/d1;->i:Ljava/lang/Object;

    monitor-enter v6

    .line 23
    :try_start_0
    iget-boolean v7, v15, Ln3/e/b/d1;->k:Z

    if-nez v7, :cond_3

    .line 24
    iget-object v7, v15, Ln3/e/b/d1;->r:Ln3/e/b/j1/q;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-virtual {v3, v7}, Ln3/e/b/j1/j1$b;->a(Ln3/e/b/j1/q;)V

    .line 26
    invoke-virtual {v15}, Ln3/e/b/j1/k0;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    new-instance v7, Ln3/e/b/a;

    invoke-direct {v7, v5}, Ln3/e/b/a;-><init>(Landroid/os/HandlerThread;)V

    .line 27
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 28
    invoke-interface {v6, v7, v5}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 29
    iput-object v15, v1, Ln3/e/b/c1;->n:Ln3/e/b/j1/k0;

    const/4 v5, 0x0

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 31
    iget-object v6, v3, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 32
    iget-object v6, v6, Ln3/e/b/j1/g0$a;->f:Ln3/e/b/j1/b1;

    .line 33
    iget-object v6, v6, Ln3/e/b/j1/o1;->a:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 34
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ProcessingSurface already released!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 35
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 36
    :cond_4
    sget-object v6, Ln3/e/b/j1/e1;->r:Ln3/e/b/j1/j0$a;

    invoke-interface {v0, v6, v5}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/e/b/j1/m0;

    if-eqz v5, :cond_5

    .line 37
    new-instance v6, Ln3/e/b/c1$a;

    invoke-direct {v6, v1, v5}, Ln3/e/b/c1$a;-><init>(Ln3/e/b/c1;Ln3/e/b/j1/m0;)V

    .line 38
    iget-object v5, v3, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    invoke-virtual {v5, v6}, Ln3/e/b/j1/g0$a;->b(Ln3/e/b/j1/q;)V

    .line 39
    iget-object v5, v3, Ln3/e/b/j1/j1$a;->f:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_5
    iget-object v4, v4, Ln3/e/b/f1;->h:Ln3/e/b/j1/k0;

    .line 41
    iput-object v4, v1, Ln3/e/b/c1;->n:Ln3/e/b/j1/k0;

    .line 42
    :goto_2
    iget-object v4, v1, Ln3/e/b/c1;->n:Ln3/e/b/j1/k0;

    .line 43
    iget-object v5, v3, Ln3/e/b/j1/j1$a;->a:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v5, v3, Ln3/e/b/j1/j1$a;->b:Ln3/e/b/j1/g0$a;

    .line 45
    iget-object v5, v5, Ln3/e/b/j1/g0$a;->a:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v4, Ln3/e/b/p;

    move-object/from16 v5, p1

    invoke-direct {v4, v1, v5, v0, v2}, Ln3/e/b/p;-><init>(Ln3/e/b/c1;Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)V

    .line 47
    iget-object v0, v3, Ln3/e/b/j1/j1$a;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public final p()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/e/b/c1;->o:Ln3/e/b/f1;

    .line 2
    iget-object v1, p0, Ln3/e/b/c1;->l:Ln3/e/b/c1$d;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Ln3/e/b/c1;->m:Ljava/util/concurrent/Executor;

    new-instance v3, Ln3/e/b/q;

    invoke-direct {v3, v1, v0}, Ln3/e/b/q;-><init>(Ln3/e/b/c1$d;Ln3/e/b/f1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ln3/e/b/g1;->a()Ln3/e/b/j1/b0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/e/b/c1;->l:Ln3/e/b/c1$d;

    .line 3
    iget-object v2, p0, Ln3/e/b/c1;->q:Landroid/util/Size;

    .line 4
    iget-object v3, p0, Ln3/e/b/g1;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v3, v4, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Ln3/e/b/c1;->o:Ln3/e/b/f1;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v0}, Ln3/e/b/j1/b0;->d()Ln3/e/b/j1/z;

    move-result-object v0

    .line 8
    iget-object v1, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    check-cast v1, Ln3/e/b/j1/q0;

    invoke-interface {v1, v4}, Ln3/e/b/j1/q0;->n(I)I

    move-result v1

    .line 9
    invoke-interface {v0, v1}, Ln3/e/b/l0;->e(I)I

    move-result v0

    .line 10
    iget-object v1, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    check-cast v1, Ln3/e/b/j1/q0;

    invoke-interface {v1, v4}, Ln3/e/b/j1/q0;->n(I)I

    move-result v1

    .line 11
    new-instance v4, Ln3/e/b/g0;

    invoke-direct {v4, v3, v0, v1}, Ln3/e/b/g0;-><init>(Landroid/graphics/Rect;II)V

    .line 12
    iput-object v4, v2, Ln3/e/b/f1;->i:Ln3/e/b/f1$g;

    .line 13
    iget-object v0, v2, Ln3/e/b/f1;->j:Ln3/e/b/f1$h;

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, v2, Ln3/e/b/f1;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/b/w;

    invoke-direct {v2, v0, v4}, Ln3/e/b/w;-><init>(Ln3/e/b/f1$h;Ln3/e/b/f1$g;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public r(Ln3/e/b/c1$d;)V
    .locals 2

    .line 1
    sget-object v0, Ln3/e/b/c1;->s:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->t()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln3/e/b/c1;->l:Ln3/e/b/c1$d;

    .line 4
    sget-object p1, Ln3/e/b/g1$b;->b:Ln3/e/b/g1$b;

    iput-object p1, p0, Ln3/e/b/g1;->c:Ln3/e/b/g1$b;

    .line 5
    invoke-virtual {p0}, Ln3/e/b/g1;->h()V

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Ln3/e/b/c1;->l:Ln3/e/b/c1$d;

    .line 7
    iput-object v0, p0, Ln3/e/b/c1;->m:Ljava/util/concurrent/Executor;

    .line 8
    sget-object p1, Ln3/e/b/g1$b;->a:Ln3/e/b/g1$b;

    iput-object p1, p0, Ln3/e/b/g1;->c:Ln3/e/b/g1$b;

    .line 9
    invoke-virtual {p0}, Ln3/e/b/g1;->h()V

    .line 10
    iget-boolean p1, p0, Ln3/e/b/c1;->p:Z

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Ln3/e/b/c1;->p()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p0}, Ln3/e/b/c1;->q()V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Ln3/e/b/c1;->p:Z

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Ln3/e/b/g1;->g:Landroid/util/Size;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Ln3/e/b/g1;->b()Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Ln3/e/b/g1;->f:Ln3/e/b/j1/r1;

    .line 17
    check-cast v0, Ln3/e/b/j1/e1;

    .line 18
    iget-object v1, p0, Ln3/e/b/g1;->g:Landroid/util/Size;

    .line 19
    invoke-virtual {p0, p1, v0, v1}, Ln3/e/b/c1;->o(Ljava/lang/String;Ln3/e/b/j1/e1;Landroid/util/Size;)Ln3/e/b/j1/j1$b;

    move-result-object p1

    invoke-virtual {p1}, Ln3/e/b/j1/j1$b;->d()Ln3/e/b/j1/j1;

    move-result-object p1

    .line 20
    iput-object p1, p0, Ln3/e/b/g1;->k:Ln3/e/b/j1/j1;

    .line 21
    invoke-virtual {p0}, Ln3/e/b/g1;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Preview:"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ln3/e/b/g1;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
