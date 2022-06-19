.class final Li/c/b0/e/f/a/r$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/g;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/g;

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/i;",
            ">;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method constructor <init>(Li/c/b0/b/g;Li/c/b0/d/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g;",
            "Li/c/b0/d/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Li/c/b0/b/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/r$a;->f:Li/c/b0/b/g;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/a/r$a;->g:Li/c/b0/d/o;

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
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/r$a;->f:Li/c/b0/b/g;

    invoke-interface {v0}, Li/c/b0/b/g;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/a/r$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/r$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/a/r$a;->h:Z

    .line 4
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/a/r$a;->g:Li/c/b0/d/o;

    invoke-interface {v1, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The errorMapper returned a null CompletableSource"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Li/c/b0/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v1, p0}, Li/c/b0/b/i;->a(Li/c/b0/b/g;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v2, p0, Li/c/b0/e/f/a/r$a;->f:Li/c/b0/b/g;

    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
