.class final Li/c/b0/e/f/e/v0$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/v0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/v0$b<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field volatile g:Z

.field volatile h:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TU;>;"
        }
    .end annotation
.end field

.field i:I


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/v0$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/v0$b<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/f/e/v0$a;->g:Z

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    invoke-virtual {v0}, Li/c/b0/e/f/e/v0$b;->d()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    iget-object v0, v0, Li/c/b0/e/f/e/v0$b;->m:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    iget-boolean v0, p1, Li/c/b0/e/f/e/v0$b;->h:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Li/c/b0/e/f/e/v0$b;->c()Z

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/b0/e/f/e/v0$a;->g:Z

    .line 5
    iget-object p1, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/v0$b;->d()V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/f/e/v0$a;->i:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    invoke-virtual {v0, p1, p0}, Li/c/b0/e/f/e/v0$b;->i(Ljava/lang/Object;Li/c/b0/e/f/e/v0$a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/v0$b;->d()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Li/c/b0/e/c/f;

    const/4 v0, 0x7

    .line 4
    invoke-interface {p1, v0}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput v0, p0, Li/c/b0/e/f/e/v0$a;->i:I

    .line 6
    iput-object p1, p0, Li/c/b0/e/f/e/v0$a;->h:Li/c/b0/e/c/k;

    .line 7
    iput-boolean v1, p0, Li/c/b0/e/f/e/v0$a;->g:Z

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/v0$a;->f:Li/c/b0/e/f/e/v0$b;

    invoke-virtual {p1}, Li/c/b0/e/f/e/v0$b;->d()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iput v0, p0, Li/c/b0/e/f/e/v0$a;->i:I

    .line 10
    iput-object p1, p0, Li/c/b0/e/f/e/v0$a;->h:Li/c/b0/e/c/k;

    :cond_1
    return-void
.end method
