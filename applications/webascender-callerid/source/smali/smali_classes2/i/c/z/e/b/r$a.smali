.class abstract Li/c/z/e/b/r$a;
.super Li/c/z/i/a;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/z/i/a<",
        "TT;>;",
        "Li/c/i<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Li/c/r$b;

.field final g:Z

.field final h:I

.field final i:I

.field final j:Ljava/util/concurrent/atomic/AtomicLong;

.field k:Lo/a/c;

.field l:Li/c/z/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/c/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile m:Z

.field volatile n:Z

.field o:Ljava/lang/Throwable;

.field p:I

.field q:J

.field r:Z


# direct methods
.method constructor <init>(Li/c/r$b;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/z/i/a;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/r$a;->f:Li/c/r$b;

    .line 3
    iput-boolean p2, p0, Li/c/z/e/b/r$a;->g:Z

    .line 4
    iput p3, p0, Li/c/z/e/b/r$a;->h:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Li/c/z/e/b/r$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 6
    iput p3, p0, Li/c/z/e/b/r$a;->i:I

    return-void
.end method


# virtual methods
.method final b(ZZLo/a/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lo/a/b<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/r$a;->m:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Li/c/z/e/b/r$a;->g:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iput-boolean v1, p0, Li/c/z/e/b/r$a;->m:Z

    .line 5
    iget-object p1, p0, Li/c/z/e/b/r$a;->o:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p3, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p3}, Lo/a/b;->onComplete()V

    .line 8
    :goto_0
    iget-object p1, p0, Li/c/z/e/b/r$a;->f:Li/c/r$b;

    invoke-interface {p1}, Li/c/w/b;->dispose()V

    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Li/c/z/e/b/r$a;->o:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 10
    iput-boolean v1, p0, Li/c/z/e/b/r$a;->m:Z

    .line 11
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->clear()V

    .line 12
    invoke-interface {p3, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    .line 13
    iget-object p1, p0, Li/c/z/e/b/r$a;->f:Li/c/r$b;

    invoke-interface {p1}, Li/c/w/b;->dispose()V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iput-boolean v1, p0, Li/c/z/e/b/r$a;->m:Z

    .line 15
    invoke-interface {p3}, Lo/a/b;->onComplete()V

    .line 16
    iget-object p1, p0, Li/c/z/e/b/r$a;->f:Li/c/r$b;

    invoke-interface {p1}, Li/c/w/b;->dispose()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method abstract c()V
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/r$a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/e/b/r$a;->m:Z

    .line 3
    iget-object v0, p0, Li/c/z/e/b/r$a;->k:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 4
    iget-object v0, p0, Li/c/z/e/b/r$a;->f:Li/c/r$b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Li/c/z/e/b/r$a;->l:Li/c/z/c/i;

    invoke-interface {v0}, Li/c/z/c/i;->clear()V

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/r$a;->l:Li/c/z/c/i;

    invoke-interface {v0}, Li/c/z/c/i;->clear()V

    return-void
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method final g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/r$a;->f:Li/c/r$b;

    invoke-virtual {v0, p0}, Li/c/r$b;->b(Ljava/lang/Runnable;)Li/c/w/b;

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/r$a;->l:Li/c/z/c/i;

    invoke-interface {v0}, Li/c/z/c/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/r$a;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/e/b/r$a;->n:Z

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->g()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/r$a;->n:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Li/c/z/e/b/r$a;->o:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/z/e/b/r$a;->n:Z

    .line 5
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->g()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/r$a;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Li/c/z/e/b/r$a;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->g()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Li/c/z/e/b/r$a;->l:Li/c/z/c/i;

    invoke-interface {v0, p1}, Li/c/z/c/i;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Li/c/z/e/b/r$a;->k:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 6
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Li/c/z/e/b/r$a;->o:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Li/c/z/e/b/r$a;->n:Z

    .line 8
    :cond_2
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->g()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Li/c/z/i/g;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/r$a;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Li/c/z/j/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->g()V

    :cond_0
    return-void
.end method

.method public final requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Li/c/z/e/b/r$a;->r:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/z/e/b/r$a;->r:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->e()V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Li/c/z/e/b/r$a;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->f()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Li/c/z/e/b/r$a;->c()V

    :goto_0
    return-void
.end method
