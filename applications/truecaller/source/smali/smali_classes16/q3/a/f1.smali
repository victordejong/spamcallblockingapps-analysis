.class public abstract Lq3/a/f1;
.super Lq3/a/e1;
.source "SourceFile"

# interfaces
.implements Lq3/a/p0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008 \u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u001c\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010H\u0016J\u0013\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0096\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\r\u0010\u0016\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\u0017J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0008\u001a\u00020\tH\u0016J*\u0010\u001c\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u001d2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u00102\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u001e\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00070 H\u0016J\u0008\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "()V",
        "removesFutureOnCancellation",
        "",
        "cancelJobOnRejection",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "exception",
        "Ljava/util/concurrent/RejectedExecutionException;",
        "close",
        "dispatch",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "initFutureCancellation",
        "initFutureCancellation$kotlinx_coroutines_core",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "",
        "scheduleBlock",
        "Ljava/util/concurrent/ScheduledFuture;",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/e1;-><init>()V

    return-void
.end method


# virtual methods
.method public F0(Ls1/w/f;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lq3/a/f1;->L0(Ls1/w/f;Ljava/util/concurrent/RejectedExecutionException;)V

    .line 3
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    .line 4
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 5
    invoke-virtual {v0, p1, p2}, Lq3/a/g0;->F0(Ls1/w/f;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final L0(Ls1/w/f;Ljava/util/concurrent/RejectedExecutionException;)V
    .locals 1

    const-string v0, "The task was rejected"

    .line 1
    invoke-static {v0, p2}, Ls1/a/a/a/v0/f/d;->e(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p2

    .line 2
    sget v0, Lq3/a/p1;->e0:I

    sget-object v0, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {p1, v0}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object p1

    check-cast p1, Lq3/a/p1;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    :goto_0
    return-void
.end method

.method public final Q0(Ljava/lang/Runnable;Ls1/w/f;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ls1/w/f;",
            "J)",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v1

    instance-of v2, v1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, p1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p2, p1}, Lq3/a/f1;->L0(Ls1/w/f;Ljava/util/concurrent/RejectedExecutionException;)V

    :goto_1
    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v0

    instance-of v1, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq3/a/f1;

    if-eqz v0, :cond_0

    check-cast p1, Lq3/a/f1;

    invoke-virtual {p1}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p0}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0(JLq3/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lq3/a/n<",
            "-",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq3/a/f1;->b:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lq3/a/h2;

    invoke-direct {v0, p0, p3}, Lq3/a/h2;-><init>(Lq3/a/g0;Lq3/a/n;)V

    move-object v1, p3

    check-cast v1, Lq3/a/o;

    .line 3
    iget-object v1, v1, Lq3/a/o;->e:Ls1/w/f;

    .line 4
    invoke-virtual {p0, v0, v1, p1, p2}, Lq3/a/f1;->Q0(Ljava/lang/Runnable;Ls1/w/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lq3/a/k;

    invoke-direct {p1, v0}, Lq3/a/k;-><init>(Ljava/util/concurrent/Future;)V

    check-cast p3, Lq3/a/o;

    invoke-virtual {p3, p1}, Lq3/a/o;->r(Ls1/z/b/l;)V

    return-void

    .line 6
    :cond_1
    sget-object v0, Lq3/a/l0;->h:Lq3/a/l0;

    invoke-virtual {v0, p1, p2, p3}, Lq3/a/a1;->k0(JLq3/a/n;)V

    return-void
.end method

.method public t0(JLjava/lang/Runnable;Ls1/w/f;)Lq3/a/v0;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/a/f1;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4, p1, p2}, Lq3/a/f1;->Q0(Ljava/lang/Runnable;Ls1/w/f;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lq3/a/u0;

    invoke-direct {p1, v0}, Lq3/a/u0;-><init>(Ljava/util/concurrent/Future;)V

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lq3/a/l0;->h:Lq3/a/l0;

    invoke-virtual {v0, p1, p2, p3, p4}, Lq3/a/l0;->t0(JLjava/lang/Runnable;Ls1/w/f;)Lq3/a/v0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/e1;->K0()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
