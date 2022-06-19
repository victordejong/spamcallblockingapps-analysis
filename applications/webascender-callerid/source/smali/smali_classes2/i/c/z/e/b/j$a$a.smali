.class final Li/c/z/e/b/j$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/l;
.implements Li/c/w/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/w/b;",
        ">;",
        "Li/c/l<",
        "TR;>;",
        "Li/c/w/b;"
    }
.end annotation


# instance fields
.field final synthetic f:Li/c/z/e/b/j$a;


# direct methods
.method constructor <init>(Li/c/z/e/b/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/z/e/b/j$a$a;->f:Li/c/z/e/b/j$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

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
    iget-object v0, p0, Li/c/z/e/b/j$a$a;->f:Li/c/z/e/b/j$a;

    invoke-virtual {v0, p0}, Li/c/z/e/b/j$a;->f(Li/c/z/e/b/j$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a$a;->f:Li/c/z/e/b/j$a;

    invoke-virtual {v0, p0, p1}, Li/c/z/e/b/j$a;->g(Li/c/z/e/b/j$a$a;Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/z/e/b/j$a$a;->f:Li/c/z/e/b/j$a;

    invoke-virtual {v0, p0, p1}, Li/c/z/e/b/j$a;->h(Li/c/z/e/b/j$a$a;Ljava/lang/Object;)V

    return-void
.end method
