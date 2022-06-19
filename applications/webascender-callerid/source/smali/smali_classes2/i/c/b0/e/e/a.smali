.class public abstract Li/c/b0/e/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/e/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/e/c/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected g:Li/c/b0/c/c;

.field protected h:Li/c/b0/e/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/c/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected i:Z

.field protected j:I


# direct methods
.method public constructor <init>(Li/c/b0/b/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/e/a;->f:Li/c/b0/b/c0;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Li/c/b0/e/e/a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 3
    invoke-virtual {p0, p1}, Li/c/b0/e/e/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/a;->h:Li/c/b0/e/c/f;

    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    return-void
.end method

.method protected final d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/a;->h:Li/c/b0/e/c/f;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0, p1}, Li/c/b0/e/c/g;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput p1, p0, Li/c/b0/e/e/a;->j:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/a;->g:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/a;->h:Li/c/b0/e/c/f;

    invoke-interface {v0}, Li/c/b0/e/c/k;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/e/a;->i:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/e/a;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/e/a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/e/a;->i:Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/e/a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/e/a;->g:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Li/c/b0/e/e/a;->g:Li/c/b0/c/c;

    .line 3
    instance-of v0, p1, Li/c/b0/e/c/f;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Li/c/b0/e/c/f;

    iput-object p1, p0, Li/c/b0/e/e/a;->h:Li/c/b0/e/c/f;

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/b0/e/e/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Li/c/b0/e/e/a;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 7
    invoke-virtual {p0}, Li/c/b0/e/e/a;->a()V

    :cond_1
    return-void
.end method
