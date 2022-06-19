.class public abstract Li/c/z/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/q;
.implements Li/c/z/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/q<",
        "TT;>;",
        "Li/c/z/c/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final f:Li/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/q<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected g:Li/c/w/b;

.field protected h:Li/c/z/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/c/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected i:Z

.field protected j:I


# direct methods
.method public constructor <init>(Li/c/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/d/a;->f:Li/c/q;

    return-void
.end method


# virtual methods
.method public final a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/a;->g:Li/c/w/b;

    invoke-static {v0, p1}, Li/c/z/a/b;->validate(Li/c/w/b;Li/c/w/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Li/c/z/d/a;->g:Li/c/w/b;

    .line 3
    instance-of v0, p1, Li/c/z/c/d;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Li/c/z/c/d;

    iput-object p1, p0, Li/c/z/d/a;->h:Li/c/z/c/d;

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/z/d/a;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Li/c/z/d/a;->f:Li/c/q;

    invoke-interface {p1, p0}, Li/c/q;->a(Li/c/w/b;)V

    .line 7
    invoke-virtual {p0}, Li/c/z/d/a;->b()V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/a;->h:Li/c/z/c/d;

    invoke-interface {v0}, Li/c/z/c/i;->clear()V

    return-void
.end method

.method protected final d(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Li/c/z/d/a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    .line 3
    invoke-virtual {p0, p1}, Li/c/z/d/a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/a;->g:Li/c/w/b;

    invoke-interface {v0}, Li/c/w/b;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/a;->h:Li/c/z/c/d;

    invoke-interface {v0}, Li/c/z/c/i;->isEmpty()Z

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
    iget-boolean v0, p0, Li/c/z/d/a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/d/a;->i:Z

    .line 3
    iget-object v0, p0, Li/c/z/d/a;->f:Li/c/q;

    invoke-interface {v0}, Li/c/q;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/d/a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/z/d/a;->i:Z

    .line 4
    iget-object v0, p0, Li/c/z/d/a;->f:Li/c/q;

    invoke-interface {v0, p1}, Li/c/q;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
