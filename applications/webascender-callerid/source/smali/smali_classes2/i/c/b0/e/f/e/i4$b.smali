.class final Li/c/b0/e/f/e/i4$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:J

.field final i:I

.field final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Li/c/b0/k/e<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field l:J

.field m:J

.field n:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JJI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/i4$b;->f:Li/c/b0/b/c0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/i4$b;->g:J

    .line 4
    iput-wide p4, p0, Li/c/b0/e/f/e/i4$b;->h:J

    .line 5
    iput p6, p0, Li/c/b0/e/f/e/i4$b;->i:I

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/i4$b;->j:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/i4$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/i4$b;->run()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->j:Ljava/util/ArrayDeque;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/k/e;

    invoke-virtual {v1}, Li/c/b0/k/e;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->j:Ljava/util/ArrayDeque;

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/k/e;

    invoke-virtual {v1, p1}, Li/c/b0/k/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->j:Ljava/util/ArrayDeque;

    .line 2
    iget-wide v1, p0, Li/c/b0/e/f/e/i4$b;->l:J

    .line 3
    iget-wide v3, p0, Li/c/b0/e/f/e/i4$b;->h:J

    .line 4
    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    iget-object v5, p0, Li/c/b0/e/f/e/i4$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 6
    iget v5, p0, Li/c/b0/e/f/e/i4$b;->i:I

    invoke-static {v5, p0}, Li/c/b0/k/e;->c(ILjava/lang/Runnable;)Li/c/b0/k/e;

    move-result-object v5

    .line 7
    new-instance v6, Li/c/b0/e/f/e/l4;

    invoke-direct {v6, v5}, Li/c/b0/e/f/e/l4;-><init>(Li/c/b0/k/d;)V

    .line 8
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 9
    iget-object v5, p0, Li/c/b0/e/f/e/i4$b;->f:Li/c/b0/b/c0;

    invoke-interface {v5, v6}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 10
    :goto_0
    iget-wide v7, p0, Li/c/b0/e/f/e/i4$b;->m:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Li/c/b0/k/e;

    .line 12
    invoke-virtual {v11, p1}, Li/c/b0/k/e;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-wide v11, p0, Li/c/b0/e/f/e/i4$b;->g:J

    cmp-long p1, v7, v11

    if-ltz p1, :cond_3

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li/c/b0/k/e;

    invoke-virtual {p1}, Li/c/b0/k/e;->onComplete()V

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Li/c/b0/e/f/e/i4$b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    sub-long/2addr v7, v3

    .line 16
    iput-wide v7, p0, Li/c/b0/e/f/e/i4$b;->m:J

    goto :goto_2

    .line 17
    :cond_3
    iput-wide v7, p0, Li/c/b0/e/f/e/i4$b;->m:J

    :goto_2
    add-long/2addr v1, v9

    .line 18
    iput-wide v1, p0, Li/c/b0/e/f/e/i4$b;->l:J

    if-eqz v6, :cond_4

    .line 19
    invoke-virtual {v6}, Li/c/b0/e/f/e/l4;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, v6, Li/c/b0/e/f/e/l4;->f:Li/c/b0/k/d;

    invoke-interface {p1}, Li/c/b0/b/c0;->onComplete()V

    :cond_4
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->n:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/i4$b;->n:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/i4$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/i4$b;->n:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method
