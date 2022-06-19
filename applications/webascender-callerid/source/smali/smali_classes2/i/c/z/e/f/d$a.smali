.class final Li/c/z/e/f/d$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/t;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/f/d;
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
        "Li/c/t<",
        "TT;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/t<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/u<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/t;Li/c/y/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/t<",
            "-TT;>;",
            "Li/c/y/d<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/u<",
            "+TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/f/d$a;->f:Li/c/t;

    .line 3
    iput-object p2, p0, Li/c/z/e/f/d$a;->g:Li/c/y/d;

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
    iget-object p1, p0, Li/c/z/e/f/d$a;->f:Li/c/t;

    invoke-interface {p1, p0}, Li/c/t;->a(Li/c/w/b;)V

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

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/f/d$a;->g:Li/c/y/d;

    invoke-interface {v0, p1}, Li/c/y/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The nextFunction returned a null SingleSource."

    invoke-static {v0, v1}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Li/c/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance p1, Li/c/z/d/d;

    iget-object v1, p0, Li/c/z/e/f/d$a;->f:Li/c/t;

    invoke-direct {p1, p0, v1}, Li/c/z/d/d;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Li/c/t;)V

    invoke-interface {v0, p1}, Li/c/u;->c(Li/c/t;)V

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, p0, Li/c/z/e/f/d$a;->f:Li/c/t;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Li/c/t;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/z/e/f/d$a;->f:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
