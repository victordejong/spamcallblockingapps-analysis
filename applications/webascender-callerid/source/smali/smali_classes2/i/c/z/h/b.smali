.class public abstract Li/c/z/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Li/c/z/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/i<",
        "TT;>;",
        "Li/c/z/c/f<",
        "TR;>;"
    }
.end annotation


# instance fields
.field protected final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TR;>;"
        }
    .end annotation
.end field

.field protected g:Lo/a/c;

.field protected h:Li/c/z/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/c/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected i:Z

.field protected j:I


# direct methods
.method public constructor <init>(Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/h/b;->f:Lo/a/b;

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
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Li/c/z/h/b;->g:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 3
    invoke-virtual {p0, p1}, Li/c/z/h/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/h/b;->g:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/h/b;->h:Li/c/z/c/f;

    invoke-interface {v0}, Li/c/z/c/i;->clear()V

    return-void
.end method

.method protected final e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/h/b;->h:Li/c/z/c/f;

    if-eqz v0, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0, p1}, Li/c/z/c/e;->requestFusion(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iput p1, p0, Li/c/z/h/b;->j:I

    :cond_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/h/b;->h:Li/c/z/c/f;

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
    iget-boolean v0, p0, Li/c/z/h/b;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/z/h/b;->i:Z

    .line 3
    iget-object v0, p0, Li/c/z/h/b;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/z/h/b;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/z/h/b;->i:Z

    .line 4
    iget-object v0, p0, Li/c/z/h/b;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSubscribe(Lo/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/h/b;->g:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Li/c/z/h/b;->g:Lo/a/c;

    .line 3
    instance-of v0, p1, Li/c/z/c/f;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Li/c/z/c/f;

    iput-object p1, p0, Li/c/z/h/b;->h:Li/c/z/c/f;

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/z/h/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Li/c/z/h/b;->f:Lo/a/b;

    invoke-interface {p1, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 7
    invoke-virtual {p0}, Li/c/z/h/b;->a()V

    :cond_1
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/h/b;->g:Lo/a/c;

    invoke-interface {v0, p1, p2}, Lo/a/c;->request(J)V

    return-void
.end method
