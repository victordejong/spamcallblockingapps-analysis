.class public final Lq3/a/v2/a;
.super Lq3/a/v2/b;
.source "SourceFile"

# interfaces
.implements Lq3/a/p0;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001c\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015H\u0016J\u0013\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J$\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\n\u0010\u0013\u001a\u00060\u0014j\u0002`\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010 \u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001e2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00100\"H\u0016J\u0008\u0010#\u001a\u00020\u0006H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0000X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/android/HandlerContext;",
        "Lkotlinx/coroutines/android/HandlerDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "handler",
        "Landroid/os/Handler;",
        "name",
        "",
        "(Landroid/os/Handler;Ljava/lang/String;)V",
        "invokeImmediately",
        "",
        "(Landroid/os/Handler;Ljava/lang/String;Z)V",
        "_immediate",
        "immediate",
        "getImmediate",
        "()Lkotlinx/coroutines/android/HandlerContext;",
        "dispatch",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "",
        "isDispatchNeeded",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "toString",
        "kotlinx-coroutines-android"
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
.field private volatile _immediate:Lq3/a/v2/a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lq3/a/v2/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq3/a/v2/b;-><init>(Ls1/z/c/f;)V

    .line 2
    iput-object p1, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lq3/a/v2/a;->c:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lq3/a/v2/a;->d:Z

    if-eqz p3, :cond_0

    move-object v0, p0

    .line 5
    :cond_0
    iput-object v0, p0, Lq3/a/v2/a;->_immediate:Lq3/a/v2/a;

    .line 6
    iget-object p3, p0, Lq3/a/v2/a;->_immediate:Lq3/a/v2/a;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Lq3/a/v2/a;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lq3/a/v2/a;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lq3/a/v2/a;->_immediate:Lq3/a/v2/a;

    .line 8
    :cond_1
    iput-object p3, p0, Lq3/a/v2/a;->e:Lq3/a/v2/a;

    return-void
.end method


# virtual methods
.method public F0(Ls1/w/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public J0(Ls1/w/f;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lq3/a/v2/a;->d:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public K0()Lq3/a/y1;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/v2/a;->e:Lq3/a/v2/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq3/a/v2/a;

    if-eqz v0, :cond_0

    check-cast p1, Lq3/a/v2/a;

    iget-object p1, p1, Lq3/a/v2/a;->b:Landroid/os/Handler;

    iget-object v0, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

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
    iget-object v0, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k0(JLq3/a/n;)V
    .locals 4
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
    new-instance v0, Lq3/a/v2/a$b;

    invoke-direct {v0, p3, p0}, Lq3/a/v2/a$b;-><init>(Lq3/a/n;Lq3/a/v2/a;)V

    .line 2
    iget-object v1, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Ls1/d0/j;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    new-instance p1, Lq3/a/v2/a$c;

    invoke-direct {p1, p0, v0}, Lq3/a/v2/a$c;-><init>(Lq3/a/v2/a;Ljava/lang/Runnable;)V

    check-cast p3, Lq3/a/o;

    invoke-virtual {p3, p1}, Lq3/a/o;->r(Ls1/z/b/l;)V

    return-void
.end method

.method public t0(JLjava/lang/Runnable;Ls1/w/f;)Lq3/a/v0;
    .locals 2

    .line 1
    iget-object p4, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v0, v1}, Ls1/d0/j;->b(JJ)J

    move-result-wide p1

    invoke-virtual {p4, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2
    new-instance p1, Lq3/a/v2/a$a;

    invoke-direct {p1, p0, p3}, Lq3/a/v2/a$a;-><init>(Lq3/a/v2/a;Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lq3/a/y1;->L0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lq3/a/v2/a;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    iget-boolean v1, p0, Lq3/a/v2/a;->d:Z

    if-eqz v1, :cond_1

    const-string v1, ".immediate"

    invoke-static {v0, v1}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
