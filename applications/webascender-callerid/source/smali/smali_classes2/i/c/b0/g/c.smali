.class public abstract Li/c/b0/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;
.implements Li/c/b0/c/c;


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li/c/b0/g/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/g/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public final isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/g/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

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

.method public final onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/g/c;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, p1, v1}, Li/c/b0/e/k/h;->c(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/g/c;->a()V

    :cond_0
    return-void
.end method
