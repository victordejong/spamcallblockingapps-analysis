.class final Li/c/b0/e/f/f/s$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/f/s;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/g0<",
        "TT;>;",
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

.field final g:Li/c/b0/e/f/f/s$b;


# direct methods
.method constructor <init>(Li/c/b0/b/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/s$a;->f:Li/c/b0/b/g0;

    .line 3
    new-instance p1, Li/c/b0/e/f/f/s$b;

    invoke-direct {p1, p0}, Li/c/b0/e/f/f/s$b;-><init>(Li/c/b0/e/f/f/s$a;)V

    iput-object p1, p0, Li/c/b0/e/f/f/s$a;->g:Li/c/b0/e/f/f/s$b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 2
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/f/s$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/f/s$a;->g:Li/c/b0/e/f/f/s$b;

    invoke-virtual {v0}, Li/c/b0/e/f/f/s$b;->a()V

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
    iget-object v0, p0, Li/c/b0/e/f/f/s$a;->g:Li/c/b0/e/f/f/s$b;

    invoke-virtual {v0}, Li/c/b0/e/f/f/s$b;->a()V

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 3
    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/f/s$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/b0/e/f/f/s$a;->g:Li/c/b0/e/f/f/s$b;

    invoke-virtual {v0}, Li/c/b0/e/f/f/s$b;->a()V

    .line 2
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/c/b0/c/c;

    if-eq v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/f/s$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
