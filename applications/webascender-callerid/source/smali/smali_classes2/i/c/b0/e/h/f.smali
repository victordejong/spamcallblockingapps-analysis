.class public Li/c/b0/e/h/f;
.super Li/c/b0/b/d0$c;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;


# instance fields
.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile g:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/d0$c;-><init>()V

    .line 2
    invoke-static {p1}, Li/c/b0/e/h/l;->a(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)Li/c/b0/c/c;
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v2}, Li/c/b0/e/h/f;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 6

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/f;->g:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Li/c/b0/e/h/f;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/b0/c/d;)Li/c/b0/e/h/k;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/f;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/h/f;->g:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Li/c/b0/c/d;)Li/c/b0/e/h/k;
    .locals 3

    .line 1
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 2
    new-instance v0, Li/c/b0/e/h/k;

    invoke-direct {v0, p1, p5}, Li/c/b0/e/h/k;-><init>(Ljava/lang/Runnable;Li/c/b0/c/d;)V

    if-eqz p5, :cond_0

    .line 3
    invoke-interface {p5, v0}, Li/c/b0/c/d;->b(Li/c/b0/c/c;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Li/c/b0/e/h/k;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p5, :cond_2

    .line 7
    invoke-interface {p5, v0}, Li/c/b0/c/d;->a(Li/c/b0/c/c;)Z

    .line 8
    :cond_2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public f(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 3

    .line 1
    new-instance v0, Li/c/b0/e/h/j;

    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-direct {v0, p1}, Li/c/b0/e/h/j;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Li/c/b0/e/h/a;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 6
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1
.end method

.method public g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 8

    .line 1
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gtz v2, :cond_1

    .line 2
    new-instance p4, Li/c/b0/e/h/c;

    iget-object p5, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p4, p1, p5}, Li/c/b0/e/h/c;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/ExecutorService;)V

    cmp-long p1, p2, v0

    if-gtz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p4}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p4, p2, p3, p6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p4, p1}, Li/c/b0/e/h/c;->b(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 7
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 8
    :cond_1
    new-instance v7, Li/c/b0/e/h/i;

    invoke-direct {v7, p1}, Li/c/b0/e/h/i;-><init>(Ljava/lang/Runnable;)V

    .line 9
    :try_start_1
    iget-object v0, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 10
    invoke-virtual {v7, p1}, Li/c/b0/e/h/a;->a(Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    :catch_1
    move-exception p1

    .line 11
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 12
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1
.end method

.method public h()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/f;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/h/f;->g:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/h/f;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/f;->g:Z

    return v0
.end method
