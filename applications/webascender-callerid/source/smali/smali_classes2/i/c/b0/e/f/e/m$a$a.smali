.class final Li/c/b0/e/f/e/m$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Open:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TOpen;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/m$a<",
            "**TOpen;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/m$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/m$a<",
            "**TOpen;*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m$a$a;->f:Li/c/b0/e/f/e/m$a;

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
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m$a$a;->f:Li/c/b0/e/f/e/m$a;

    invoke-virtual {v0, p0}, Li/c/b0/e/f/e/m$a;->e(Li/c/b0/e/f/e/m$a$a;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/a/c;->DISPOSED:Li/c/b0/e/a/c;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m$a$a;->f:Li/c/b0/e/f/e/m$a;

    invoke-virtual {v0, p0, p1}, Li/c/b0/e/f/e/m$a;->a(Li/c/b0/c/c;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOpen;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m$a$a;->f:Li/c/b0/e/f/e/m$a;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/m$a;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
