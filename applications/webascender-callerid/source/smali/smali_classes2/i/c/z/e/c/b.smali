.class public final Li/c/z/e/c/b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/l;
.implements Li/c/w/b;


# annotations
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final f:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/y/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final h:Li/c/y/a;


# direct methods
.method public constructor <init>(Li/c/y/c;Li/c/y/c;Li/c/y/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/y/c<",
            "-TT;>;",
            "Li/c/y/c<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/y/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/b;->f:Li/c/y/c;

    .line 3
    iput-object p2, p0, Li/c/z/e/c/b;->g:Li/c/y/c;

    .line 4
    iput-object p3, p0, Li/c/z/e/c/b;->h:Li/c/y/a;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/z/a/b;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

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
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/b;->h:Li/c/y/a;

    invoke-interface {v0}, Li/c/y/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/b;->g:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
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
    sget-object v0, Li/c/z/a/b;->DISPOSED:Li/c/z/a/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/z/e/c/b;->f:Li/c/y/c;

    invoke-interface {v0, p1}, Li/c/y/c;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
