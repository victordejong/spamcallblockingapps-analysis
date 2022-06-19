.class final Li/c/b0/k/e$a;
.super Li/c/b0/e/e/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/c/b0/e/e/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/k/e;


# direct methods
.method constructor <init>(Li/c/b0/k/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    invoke-direct {p0}, Li/c/b0/e/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-object v0, v0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-boolean v0, v0, Li/c/b0/k/e;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/c/b0/k/e;->j:Z

    .line 3
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    invoke-virtual {v0}, Li/c/b0/k/e;->d()V

    .line 4
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-object v0, v0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-object v0, v0, Li/c/b0/k/e;->n:Li/c/b0/e/e/b;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-object v0, v0, Li/c/b0/k/e;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-boolean v1, v0, Li/c/b0/k/e;->o:Z

    if-nez v1, :cond_0

    .line 8
    iget-object v0, v0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-boolean v0, v0, Li/c/b0/k/e;->j:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-object v0, v0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    iget-object v0, v0, Li/c/b0/k/e;->f:Li/c/b0/e/g/c;

    invoke-virtual {v0}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 2

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Li/c/b0/k/e$a;->f:Li/c/b0/k/e;

    const/4 v1, 0x1

    iput-boolean v1, p1, Li/c/b0/k/e;->o:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
