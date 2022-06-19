.class final Li/c/b0/e/f/e/x$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/b/r;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/x;
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
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/b/r<",
        "TT;>;",
        "Li/c/b0/c/c;"
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

.field g:Li/c/b0/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/t<",
            "+TT;>;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/b/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/b/t<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/x$a;->g:Li/c/b0/b/t;

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

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/x$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/x$a;->h:Z

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    .line 5
    iget-object v1, p0, Li/c/b0/e/f/e/x$a;->g:Li/c/b0/b/t;

    .line 6
    iput-object v0, p0, Li/c/b0/e/f/e/x$a;->g:Li/c/b0/b/t;

    .line 7
    invoke-interface {v1, p0}, Li/c/b0/b/t;->a(Li/c/b0/b/r;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

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
    iget-object v0, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Li/c/b0/e/f/e/x$a;->h:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/x$a;->f:Li/c/b0/b/c0;

    invoke-interface {p1}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method
