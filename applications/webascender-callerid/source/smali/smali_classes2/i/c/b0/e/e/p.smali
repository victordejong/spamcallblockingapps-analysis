.class public final Li/c/b0/e/e/p;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/e/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:I

.field h:Li/c/b0/e/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile i:Z

.field j:I


# direct methods
.method public constructor <init>(Li/c/b0/e/e/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/e/q<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/e/p;->f:Li/c/b0/e/e/q;

    .line 3
    iput p2, p0, Li/c/b0/e/e/p;->g:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/p;->i:Z

    return v0
.end method

.method public b()Li/c/b0/e/c/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/e/c/k<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/p;->h:Li/c/b0/e/c/k;

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/b0/e/e/p;->i:Z

    return-void
.end method

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
    iget-object v0, p0, Li/c/b0/e/e/p;->f:Li/c/b0/e/e/q;

    invoke-interface {v0, p0}, Li/c/b0/e/e/q;->b(Li/c/b0/e/e/p;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/p;->f:Li/c/b0/e/e/q;

    invoke-interface {v0, p0, p1}, Li/c/b0/e/e/q;->c(Li/c/b0/e/e/p;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/e/p;->j:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/e/p;->f:Li/c/b0/e/e/q;

    invoke-interface {v0, p0, p1}, Li/c/b0/e/e/q;->a(Li/c/b0/e/e/p;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Li/c/b0/e/e/p;->f:Li/c/b0/e/e/q;

    invoke-interface {p1}, Li/c/b0/e/e/q;->d()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Li/c/b0/e/c/f;

    const/4 v0, 0x3

    .line 4
    invoke-interface {p1, v0}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput v0, p0, Li/c/b0/e/e/p;->j:I

    .line 6
    iput-object p1, p0, Li/c/b0/e/e/p;->h:Li/c/b0/e/c/k;

    .line 7
    iput-boolean v1, p0, Li/c/b0/e/e/p;->i:Z

    .line 8
    iget-object p1, p0, Li/c/b0/e/e/p;->f:Li/c/b0/e/e/q;

    invoke-interface {p1, p0}, Li/c/b0/e/e/q;->b(Li/c/b0/e/e/p;)V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iput v0, p0, Li/c/b0/e/e/p;->j:I

    .line 10
    iput-object p1, p0, Li/c/b0/e/e/p;->h:Li/c/b0/e/c/k;

    return-void

    .line 11
    :cond_1
    iget p1, p0, Li/c/b0/e/e/p;->g:I

    neg-int p1, p1

    invoke-static {p1}, Li/c/b0/e/k/q;->b(I)Li/c/b0/e/c/k;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/e/p;->h:Li/c/b0/e/c/k;

    :cond_2
    return-void
.end method
