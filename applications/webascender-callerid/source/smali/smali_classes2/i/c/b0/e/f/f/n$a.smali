.class final Li/c/b0/e/f/f/n$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g0;
.implements Li/c/b0/c/c;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/f/n;
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
        "Li/c/b0/c/c;",
        "Ljava/lang/Runnable;"
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

.field final g:Li/c/b0/b/d0;

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Li/c/b0/b/g0;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/f/n$a;->f:Li/c/b0/b/g0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/f/n$a;->g:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

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
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/f/n$a;->i:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/f/n$a;->g:Li/c/b0/b/d0;

    invoke-virtual {p1, p0}, Li/c/b0/b/d0;->d(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/f/n$a;->f:Li/c/b0/b/g0;

    invoke-interface {p1, p0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/f/n$a;->h:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/f/n$a;->g:Li/c/b0/b/d0;

    invoke-virtual {p1, p0}, Li/c/b0/b/d0;->d(Ljava/lang/Runnable;)Li/c/b0/c/c;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/f/n$a;->i:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/f/n$a;->f:Li/c/b0/b/g0;

    invoke-interface {v1, v0}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/f/n$a;->f:Li/c/b0/b/g0;

    iget-object v1, p0, Li/c/b0/e/f/f/n$a;->h:Ljava/lang/Object;

    invoke-interface {v0, v1}, Li/c/b0/b/g0;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
