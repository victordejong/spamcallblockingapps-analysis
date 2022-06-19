.class final Li/c/b0/e/f/e/s2$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/s2;
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
        "TT;>;"
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

.field final g:Li/c/b0/e/a/f;

.field final h:Li/c/b0/b/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/a0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field i:J


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JLi/c/b0/e/a/f;Li/c/b0/b/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;J",
            "Li/c/b0/e/a/f;",
            "Li/c/b0/b/a0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/s2$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p4, p0, Li/c/b0/e/f/e/s2$a;->g:Li/c/b0/e/a/f;

    .line 4
    iput-object p5, p0, Li/c/b0/e/f/e/s2$a;->h:Li/c/b0/b/a0;

    .line 5
    iput-wide p2, p0, Li/c/b0/e/f/e/s2$a;->i:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v1, p0, Li/c/b0/e/f/e/s2$a;->g:Li/c/b0/e/a/f;

    invoke-virtual {v1}, Li/c/b0/e/a/f;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Li/c/b0/e/f/e/s2$a;->h:Li/c/b0/b/a0;

    invoke-interface {v1, p0}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    neg-int v0, v0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/s2$a;->i:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 2
    iput-wide v2, p0, Li/c/b0/e/f/e/s2$a;->i:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/s2$a;->a()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/s2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s2$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s2$a;->g:Li/c/b0/e/a/f;

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    return-void
.end method
