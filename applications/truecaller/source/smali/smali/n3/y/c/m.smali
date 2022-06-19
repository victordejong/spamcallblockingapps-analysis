.class public final Ln3/y/c/m;
.super Ln3/y/c/x0;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/j0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/c/m$k;,
        Ln3/y/c/m$j;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/c/j0;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/c/m$k;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;

.field public e:Ln3/y/c/m$k;

.field public final f:Ljava/lang/Object;

.field public g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Ln3/y/c/x0$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/y/c/x0;-><init>()V

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoMediaPlayer2Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ln3/y/c/m;->h:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Ln3/y/c/j0;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Ln3/y/c/m;->h:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Ln3/y/c/j0;-><init>(Landroid/content/Context;Ln3/y/c/j0$c;Landroid/os/Looper;)V

    iput-object v0, p0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 7
    new-instance p1, Landroid/os/Handler;

    .line 8
    iget-object v0, v0, Ln3/y/c/j0;->c:Landroid/os/Looper;

    .line 9
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ln3/y/c/m;->b:Landroid/os/Handler;

    .line 10
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    .line 11
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/c/m;->d:Ljava/lang/Object;

    .line 12
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/c/m;->f:Ljava/lang/Object;

    .line 13
    new-instance p1, Ln3/y/c/b0;

    invoke-direct {p1, p0}, Ln3/y/c/b0;-><init>(Ln3/y/c/m;)V

    invoke-virtual {p0, p1}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Ln3/h/a/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/h/a/f<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ln3/h/a/a;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-object v1, p0, Ln3/y/c/m;->g:Landroid/util/Pair;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v2, p0, Ln3/y/c/m;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_1
    iget-object v0, p0, Ln3/y/c/m;->h:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 6
    monitor-exit v2

    return-void

    .line 7
    :cond_0
    iput-object v1, p0, Ln3/y/c/m;->h:Landroid/os/HandlerThread;

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    new-instance v1, Ln3/h/a/f;

    invoke-direct {v1}, Ln3/h/a/f;-><init>()V

    .line 10
    iget-object v2, p0, Ln3/y/c/m;->b:Landroid/os/Handler;

    new-instance v3, Ln3/y/c/m$e;

    invoke-direct {v3, p0, v1}, Ln3/y/c/m$e;-><init>(Ln3/y/c/m;Ln3/h/a/f;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    invoke-static {v1}, Ln3/y/c/m;->g(Ln3/h/a/f;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public b()Landroidx/media/AudioAttributesCompat;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/c/m$a;

    invoke-direct {v0, p0}, Ln3/y/c/m$a;-><init>(Ln3/y/c/m;)V

    invoke-virtual {p0, v0}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media/AudioAttributesCompat;

    return-object v0
.end method

.method public c()Landroidx/media2/common/MediaItem;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/c/m$i;

    invoke-direct {v0, p0}, Ln3/y/c/m$i;-><init>(Ln3/y/c/m;)V

    invoke-virtual {p0, v0}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media2/common/MediaItem;

    return-object v0
.end method

.method public d()Ln3/y/c/z0;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/c/m$b;

    invoke-direct {v0, p0}, Ln3/y/c/m$b;-><init>(Ln3/y/c/m;)V

    invoke-virtual {p0, v0}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/c/z0;

    return-object v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    iget-object v1, p0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_1
    iget-object v0, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 7
    monitor-enter v0

    .line 8
    :goto_0
    :try_start_2
    iget-boolean v1, v0, Ln3/y/c/m$k;->d:Z

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10
    :catch_0
    :cond_0
    :try_start_3
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_2
    new-instance v0, Ln3/y/c/m$d;

    invoke-direct {v0, p0}, Ln3/y/c/m$d;-><init>(Ln3/y/c/m;)V

    invoke-virtual {p0, v0}, Ln3/y/c/m;->m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    .line 12
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 13
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public final f(Ln3/y/c/m$k;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Ln3/y/c/m;->l()V

    .line 4
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Ln3/y/c/m$j;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/y/c/m;->g:Landroid/util/Pair;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    .line 5
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ln3/y/c/x0$b;

    .line 6
    :try_start_1
    new-instance v2, Ln3/y/c/m$c;

    invoke-direct {v2, p0, p1, v1}, Ln3/y/c/m$c;-><init>(Ln3/y/c/m;Ln3/y/c/m$j;Ln3/y/c/x0$b;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public i(Landroidx/media2/common/MediaItem;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Ln3/y/c/m$k;->b:Z

    if-eqz v2, :cond_0

    const/high16 v2, -0x80000000

    .line 3
    invoke-virtual {v1, v2}, Ln3/y/c/m$k;->b(I)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    .line 5
    invoke-virtual {p0}, Ln3/y/c/m;->l()V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Ln3/y/c/m$g;

    invoke-direct {v0, p0, p1, p2}, Ln3/y/c/m$g;-><init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public j(Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V
    .locals 1

    .line 1
    new-instance v0, Ln3/y/c/m$f;

    invoke-direct {v0, p0, p1, p2}, Ln3/y/c/m$f;-><init>(Ln3/y/c/m;Landroidx/media2/common/MediaItem;Ln3/y/c/y0;)V

    invoke-virtual {p0, v0}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    if-eqz v1, :cond_0

    iget v2, v1, Ln3/y/c/m$k;->a:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Ln3/y/c/m$k;->b:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Ln3/y/c/m$k;->b(I)V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    .line 5
    invoke-virtual {p0}, Ln3/y/c/m;->l()V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/y/c/m;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/c/m$k;

    .line 3
    iput-object v0, p0, Ln3/y/c/m;->e:Ln3/y/c/m$k;

    .line 4
    iget-object v1, p0, Ln3/y/c/m;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final m(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/h/a/f;

    invoke-direct {v0}, Ln3/h/a/f;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/y/c/m;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Ln3/y/c/m;->h:Landroid/os/HandlerThread;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Ln3/y/c/m;->b:Landroid/os/Handler;

    new-instance v3, Ln3/y/c/m$h;

    invoke-direct {v3, p0, v0, p1}, Ln3/y/c/m$h;-><init>(Ln3/y/c/m;Ln3/h/a/f;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Ln3/y/c/m;->g(Ln3/h/a/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
