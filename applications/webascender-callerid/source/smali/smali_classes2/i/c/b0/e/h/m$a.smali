.class final Li/c/b0/e/h/m$a;
.super Li/c/b0/b/d0$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/h/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/ScheduledExecutorService;

.field final g:Li/c/b0/c/a;

.field volatile h:Z


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/d0$c;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/h/m$a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance p1, Li/c/b0/c/a;

    invoke-direct {p1}, Li/c/b0/c/a;-><init>()V

    iput-object p1, p0, Li/c/b0/e/h/m$a;->g:Li/c/b0/c/a;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 3

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/m$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4
    new-instance v0, Li/c/b0/e/h/k;

    iget-object v1, p0, Li/c/b0/e/h/m$a;->g:Li/c/b0/c/a;

    invoke-direct {v0, p1, v1}, Li/c/b0/e/h/k;-><init>(Ljava/lang/Runnable;Li/c/b0/c/d;)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/h/m$a;->g:Li/c/b0/c/a;

    invoke-virtual {p1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_1

    .line 6
    :try_start_0
    iget-object p1, p0, Li/c/b0/e/h/m$a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Li/c/b0/e/h/m$a;->f:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Li/c/b0/e/h/k;->a(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/h/m$a;->dispose()V

    .line 10
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/m$a;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/h/m$a;->h:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/h/m$a;->g:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/h/m$a;->h:Z

    return v0
.end method
