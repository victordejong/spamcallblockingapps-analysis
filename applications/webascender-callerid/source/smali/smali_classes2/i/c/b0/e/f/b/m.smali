.class final Li/c/b0/e/f/b/m;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/o<",
        "Ljava/lang/Object;",
        ">;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field final f:Lo/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/a/c;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljava/util/concurrent/atomic/AtomicLong;

.field i:Li/c/b0/e/f/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/b/n<",
            "TT;TU;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/m;->f:Lo/a/a;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/b/m;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/b/m;->h:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/m;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/j/f;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/m;->i:Li/c/b0/e/f/b/n;

    invoke-virtual {v0}, Li/c/b0/e/f/b/n;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/m;->i:Li/c/b0/e/f/b/n;

    iget-object v0, v0, Li/c/b0/e/f/b/n;->n:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/m;->i:Li/c/b0/e/f/b/n;

    invoke-virtual {v0}, Li/c/b0/e/f/b/n;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/m;->i:Li/c/b0/e/f/b/n;

    iget-object v0, v0, Li/c/b0/e/f/b/n;->n:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 2
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/b/m;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Li/c/b0/e/j/f;->CANCELLED:Li/c/b0/e/j/f;

    if-ne p1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Li/c/b0/e/f/b/m;->f:Lo/a/a;

    iget-object v0, p0, Li/c/b0/e/f/b/m;->i:Li/c/b0/e/f/b/n;

    invoke-interface {p1, v0}, Lo/a/a;->a(Lo/a/b;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    :cond_2
    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/m;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Li/c/b0/e/f/b/m;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1}, Li/c/b0/e/j/f;->deferredSetOnce(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;Lo/a/c;)Z

    return-void
.end method

.method public request(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/m;->g:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Li/c/b0/e/f/b/m;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, v1, p1, p2}, Li/c/b0/e/j/f;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
