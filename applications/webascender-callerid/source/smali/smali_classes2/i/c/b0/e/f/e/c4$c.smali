.class final Li/c/b0/e/f/e/c4$c;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;
.implements Li/c/b0/e/f/e/c4$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;",
        "Li/c/b0/e/f/e/c4$d;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/util/concurrent/TimeUnit;

.field final i:Li/c/b0/b/d0$c;

.field final j:Li/c/b0/e/a/f;

.field final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/c4$c;->f:Li/c/b0/b/c0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/c4$c;->g:J

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/c4$c;->h:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/e/c4$c;->i:Li/c/b0/b/d0$c;

    .line 6
    new-instance p1, Li/c/b0/e/a/f;

    invoke-direct {p1}, Li/c/b0/e/a/f;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/c4$c;->j:Li/c/b0/e/a/f;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/c4$c;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/c4$c;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/c4$c;->f:Li/c/b0/b/c0;

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    iget-wide v0, p0, Li/c/b0/e/f/e/c4$c;->g:J

    iget-object v2, p0, Li/c/b0/e/f/e/c4$c;->h:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Li/c/b0/e/k/j;->f(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/c4$c;->i:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method

.method c(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->j:Li/c/b0/e/a/f;

    iget-object v1, p0, Li/c/b0/e/f/e/c4$c;->i:Li/c/b0/b/d0$c;

    new-instance v2, Li/c/b0/e/f/e/c4$e;

    invoke-direct {v2, p1, p2, p0}, Li/c/b0/e/f/e/c4$e;-><init>(JLi/c/b0/e/f/e/c4$d;)V

    iget-wide p1, p0, Li/c/b0/e/f/e/c4$c;->g:J

    iget-object v3, p0, Li/c/b0/e/f/e/c4$c;->h:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, p1, p2, v3}, Li/c/b0/b/d0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->i:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-static {v0}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->j:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->i:Li/c/b0/b/d0$c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->j:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/e/c4$c;->i:Li/c/b0/b/d0$c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 2
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->j:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0, v2, v3}, Li/c/b0/e/f/e/c4$c;->c(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c4$c;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
