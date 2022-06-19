.class final Li/c/b0/e/f/e/i4$a;
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
    name = "a"
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

.field final h:I

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field j:J

.field k:Li/c/b0/c/c;

.field l:Li/c/b0/k/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/i4$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/i4$a;->g:J

    .line 4
    iput p4, p0, Li/c/b0/e/f/e/i4$a;->h:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/i4$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/i4$a;->run()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    .line 3
    invoke-virtual {v0}, Li/c/b0/k/e;->onComplete()V

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    .line 3
    invoke-virtual {v0, p1}, Li/c/b0/k/e;->onError(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v2, p0, Li/c/b0/e/f/e/i4$a;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v0, p0, Li/c/b0/e/f/e/i4$a;->h:I

    invoke-static {v0, p0}, Li/c/b0/k/e;->c(ILjava/lang/Runnable;)Li/c/b0/k/e;

    move-result-object v0

    .line 5
    iput-object v0, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    .line 6
    new-instance v2, Li/c/b0/e/f/e/l4;

    invoke-direct {v2, v0}, Li/c/b0/e/f/e/l4;-><init>(Li/c/b0/k/d;)V

    .line 7
    iget-object v3, p0, Li/c/b0/e/f/e/i4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v3, v2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Li/c/b0/k/e;->onNext(Ljava/lang/Object;)V

    .line 9
    iget-wide v3, p0, Li/c/b0/e/f/e/i4$a;->j:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Li/c/b0/e/f/e/i4$a;->j:J

    iget-wide v5, p0, Li/c/b0/e/f/e/i4$a;->g:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    const-wide/16 v3, 0x0

    .line 10
    iput-wide v3, p0, Li/c/b0/e/f/e/i4$a;->j:J

    .line 11
    iput-object v1, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    .line 12
    invoke-virtual {v0}, Li/c/b0/k/e;->onComplete()V

    :cond_1
    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Li/c/b0/e/f/e/l4;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iput-object v1, p0, Li/c/b0/e/f/e/i4$a;->l:Li/c/b0/k/e;

    .line 15
    invoke-virtual {v0}, Li/c/b0/k/e;->onComplete()V

    :cond_2
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->k:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/i4$a;->k:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/i4$a;->f:Li/c/b0/b/c0;

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
    iget-object v0, p0, Li/c/b0/e/f/e/i4$a;->k:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method
