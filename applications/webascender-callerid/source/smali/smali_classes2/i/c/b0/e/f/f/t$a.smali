.class final Li/c/b0/e/f/f/t$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g0;
.implements Ljava/lang/Runnable;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/f/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/f/t$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/g0<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/e/f/f/t$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/f/t$a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Li/c/b0/b/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/i0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final j:J

.field final k:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Li/c/b0/b/g0;Li/c/b0/b/i0;JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;",
            "Li/c/b0/b/i0<",
            "+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/t$a;->f:Li/c/b0/b/g0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/t$a;->i:Li/c/b0/b/i0;

    .line 4
    iput-wide p3, p0, Li/c/b0/e/f/f/t$a;->j:J

    .line 5
    iput-object p5, p0, Li/c/b0/e/f/f/t$a;->k:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance p3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p3, p0, Li/c/b0/e/f/f/t$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_0

    .line 7
    new-instance p2, Li/c/b0/e/f/f/t$a$a;

    invoke-direct {p2, p1}, Li/c/b0/e/f/f/t$a$a;-><init>(Li/c/b0/b/g0;)V

    iput-object p2, p0, Li/c/b0/e/f/f/t$a;->h:Li/c/b0/e/f/f/t$a$a;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Li/c/b0/e/f/f/t$a;->h:Li/c/b0/e/f/f/t$a$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->h:Li/c/b0/e/f/f/t$a$a;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    invoke-static {v0}, Li/c/b0/e/a/c;->isDisposed(Li/c/b0/c/c;)Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 2
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 2
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 2
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->i:Li/c/b0/b/i0;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/f/t$a;->f:Li/c/b0/b/g0;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    iget-wide v2, p0, Li/c/b0/e/f/f/t$a;->j:J

    iget-object v4, p0, Li/c/b0/e/f/f/t$a;->k:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Li/c/b0/e/k/j;->f(JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Li/c/b0/e/f/f/t$a;->i:Li/c/b0/b/i0;

    .line 7
    iget-object v1, p0, Li/c/b0/e/f/f/t$a;->h:Li/c/b0/e/f/f/t$a$a;

    invoke-interface {v0, v1}, Li/c/b0/b/i0;->a(Li/c/b0/b/g0;)V

    :cond_2
    :goto_0
    return-void
.end method
