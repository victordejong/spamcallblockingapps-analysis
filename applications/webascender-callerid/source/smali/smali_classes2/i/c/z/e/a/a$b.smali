.class final Li/c/z/e/a/a$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/c;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/w/b;",
        ">;",
        "Li/c/c;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final f:Li/c/c;

.field final g:Li/c/d;


# direct methods
.method constructor <init>(Li/c/c;Li/c/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/a/a$b;->f:Li/c/c;

    .line 3
    iput-object p2, p0, Li/c/z/e/a/a$b;->g:Li/c/d;

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
    iget-object p1, p0, Li/c/z/e/a/a$b;->f:Li/c/c;

    invoke-interface {p1, p0}, Li/c/c;->a(Li/c/w/b;)V

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
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/z/e/a/a$b;->g:Li/c/d;

    new-instance v1, Li/c/z/e/a/a$a;

    iget-object v2, p0, Li/c/z/e/a/a$b;->f:Li/c/c;

    invoke-direct {v1, p0, v2}, Li/c/z/e/a/a$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Li/c/c;)V

    invoke-interface {v0, v1}, Li/c/d;->a(Li/c/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/a/a$b;->f:Li/c/c;

    invoke-interface {v0, p1}, Li/c/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
