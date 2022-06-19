.class public abstract Lq3/a/r0;
.super Lq3/a/z2/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/z2/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000e\u0008 \u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0002\u0008\u0014J\u001f\u0010\u0015\u001a\u0002H\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000eH\u0010\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001a\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001b\u001a\u00020\u000cJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u000eH \u00a2\u0006\u0002\u0008\u001dR\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008X\u00a0\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedTask;",
        "T",
        "Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlinx/coroutines/SchedulerTask;",
        "resumeMode",
        "",
        "(I)V",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "cancelCompletedResult",
        "",
        "takenState",
        "",
        "cause",
        "",
        "cancelCompletedResult$kotlinx_coroutines_core",
        "getExceptionalResult",
        "state",
        "getExceptionalResult$kotlinx_coroutines_core",
        "getSuccessfulResult",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "handleFatalException",
        "exception",
        "finallyException",
        "run",
        "takeState",
        "takeState$kotlinx_coroutines_core",
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
.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/z2/i;-><init>()V

    .line 2
    iput p1, p0, Lq3/a/r0;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public abstract d()Ls1/w/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/w/d<",
            "TT;>;"
        }
    .end annotation
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p1, Lq3/a/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lq3/a/a0;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lq3/a/a0;->a:Ljava/lang/Throwable;

    :goto_1
    return-object v1
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p1
.end method

.method public final g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1, p2}, Le/q/f/a/d/a;->k(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    .line 2
    :cond_2
    new-instance p2, Lq3/a/k0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fatal exception in coroutines machinery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Please read KDoc to \'handleFatalException\' method and report this incident to maintainers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 4
    invoke-direct {p2, v0, p1}, Lq3/a/k0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lq3/a/r0;->d()Ls1/w/d;

    move-result-object p1

    invoke-interface {p1}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->E1(Ls1/w/f;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public final run()V
    .locals 11

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    iget-object v1, p0, Lq3/a/z2/i;->b:Lq3/a/z2/j;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lq3/a/r0;->d()Ls1/w/d;

    move-result-object v2

    check-cast v2, Lq3/a/y2/i;

    .line 3
    iget-object v3, v2, Lq3/a/y2/i;->e:Ls1/w/d;

    .line 4
    iget-object v2, v2, Lq3/a/y2/i;->g:Ljava/lang/Object;

    .line 5
    invoke-interface {v3}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v4

    .line 6
    invoke-static {v4, v2}, Lq3/a/y2/z;->c(Ls1/w/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    sget-object v5, Lq3/a/y2/z;->a:Lq3/a/y2/x;

    const/4 v6, 0x0

    if-eq v2, v5, :cond_0

    .line 8
    invoke-static {v3, v4, v2}, Lq3/a/e0;->b(Ls1/w/d;Ls1/w/f;Ljava/lang/Object;)Lq3/a/s2;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_0

    :cond_0
    move-object v5, v6

    .line 9
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v7

    .line 10
    invoke-virtual {p0}, Lq3/a/r0;->h()Ljava/lang/Object;

    move-result-object v8

    .line 11
    invoke-virtual {p0, v8}, Lq3/a/r0;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_1

    .line 12
    iget v10, p0, Lq3/a/r0;->c:I

    invoke-static {v10}, Ls1/a/a/a/v0/f/d;->S1(I)Z

    move-result v10

    if-eqz v10, :cond_1

    sget v10, Lq3/a/p1;->e0:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v10, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    :try_start_2
    invoke-interface {v7, v10}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v7

    check-cast v7, Lq3/a/p1;

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_2

    .line 13
    invoke-interface {v7}, Lq3/a/p1;->b()Z

    move-result v10

    if-nez v10, :cond_2

    .line 14
    invoke-interface {v7}, Lq3/a/p1;->p0()Ljava/util/concurrent/CancellationException;

    move-result-object v7

    .line 15
    invoke-virtual {p0, v8, v7}, Lq3/a/r0;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v7}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v9, :cond_3

    .line 17
    invoke-static {v9}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0, v8}, Lq3/a/r0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v7}, Ls1/w/d;->c(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v5, :cond_4

    .line 19
    :try_start_3
    invoke-virtual {v5}, Lq3/a/s2;->w0()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 20
    :cond_4
    invoke-static {v4, v2}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 21
    :cond_5
    :try_start_4
    invoke-interface {v1}, Lq3/a/z2/j;->P()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_3
    invoke-static {v0}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v6, v0}, Lq3/a/r0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v3

    if-eqz v5, :cond_6

    .line 23
    :try_start_5
    invoke-virtual {v5}, Lq3/a/s2;->w0()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 24
    :cond_6
    invoke-static {v4, v2}, Lq3/a/y2/z;->a(Ls1/w/f;Ljava/lang/Object;)V

    :cond_7
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v2

    .line 25
    :try_start_6
    invoke-interface {v1}, Lq3/a/z2/j;->P()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    :goto_4
    invoke-static {v0}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lq3/a/r0;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method
