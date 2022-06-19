.class final Li/c/z/e/c/o$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/l;
.implements Li/c/w/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/o;
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
        "Li/c/w/b;",
        ">;",
        "Li/c/l<",
        "TT;>;",
        "Li/c/w/b;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/r;

.field h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Li/c/l;Li/c/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;",
            "Li/c/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/o$a;->f:Li/c/l;

    .line 3
    iput-object p2, p0, Li/c/z/e/c/o$a;->g:Li/c/r;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/z/a/b;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/c/z/e/c/o$a;->f:Li/c/l;

    invoke-interface {p1, p0}, Li/c/l;->a(Li/c/w/b;)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/z/a/b;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/w/b;

    invoke-static {v0}, Li/c/z/a/b;->isDisposed(Li/c/w/b;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/o$a;->g:Li/c/r;

    invoke-virtual {v0, p0}, Li/c/r;->b(Ljava/lang/Runnable;)Li/c/w/b;

    move-result-object v0

    invoke-static {p0, v0}, Li/c/z/a/b;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/z/e/c/o$a;->i:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Li/c/z/e/c/o$a;->g:Li/c/r;

    invoke-virtual {p1, p0}, Li/c/r;->b(Ljava/lang/Runnable;)Li/c/w/b;

    move-result-object p1

    invoke-static {p0, p1}, Li/c/z/a/b;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

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
    iput-object p1, p0, Li/c/z/e/c/o$a;->h:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Li/c/z/e/c/o$a;->g:Li/c/r;

    invoke-virtual {p1, p0}, Li/c/r;->b(Ljava/lang/Runnable;)Li/c/w/b;

    move-result-object p1

    invoke-static {p0, p1}, Li/c/z/a/b;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/o$a;->i:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Li/c/z/e/c/o$a;->i:Ljava/lang/Throwable;

    .line 3
    iget-object v1, p0, Li/c/z/e/c/o$a;->f:Li/c/l;

    invoke-interface {v1, v0}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/z/e/c/o$a;->h:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Li/c/z/e/c/o$a;->h:Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Li/c/z/e/c/o$a;->f:Li/c/l;

    invoke-interface {v1, v0}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Li/c/z/e/c/o$a;->f:Li/c/l;

    invoke-interface {v0}, Li/c/l;->onComplete()V

    :goto_0
    return-void
.end method
