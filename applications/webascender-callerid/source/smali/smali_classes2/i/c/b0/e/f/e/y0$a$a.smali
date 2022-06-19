.class final Li/c/b0/e/f/e/y0$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/r;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/y0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/r<",
        "TR;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/e/f/e/y0$a;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/y0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/y0$a$a;->f:Li/c/b0/e/f/e/y0$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

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
    iget-object v0, p0, Li/c/b0/e/f/e/y0$a$a;->f:Li/c/b0/e/f/e/y0$a;

    invoke-virtual {v0, p0}, Li/c/b0/e/f/e/y0$a;->e(Li/c/b0/e/f/e/y0$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y0$a$a;->f:Li/c/b0/e/f/e/y0$a;

    invoke-virtual {v0, p0, p1}, Li/c/b0/e/f/e/y0$a;->f(Li/c/b0/e/f/e/y0$a$a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/y0$a$a;->f:Li/c/b0/e/f/e/y0$a;

    invoke-virtual {v0, p0, p1}, Li/c/b0/e/f/e/y0$a;->g(Li/c/b0/e/f/e/y0$a$a;Ljava/lang/Object;)V

    return-void
.end method
