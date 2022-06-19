.class final Li/c/b0/e/f/b/r$a;
.super Li/c/b0/e/j/b;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/j/b<",
        "TT;>;",
        "Li/c/b0/b/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final i:Z

.field j:Lo/a/c;

.field k:Z


# direct methods
.method constructor <init>(Lo/a/b;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/j/b;-><init>(Lo/a/b;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/b/r$a;->h:Ljava/lang/Object;

    .line 3
    iput-boolean p3, p0, Li/c/b0/e/f/b/r$a;->i:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Li/c/b0/e/j/b;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/r$a;->j:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/b/r$a;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/b/r$a;->k:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/j/b;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Li/c/b0/e/j/b;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/b/r$a;->h:Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_3

    .line 6
    iget-boolean v0, p0, Li/c/b0/e/f/b/r$a;->i:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Li/c/b0/e/j/b;->f:Lo/a/b;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Li/c/b0/e/j/b;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p0, v0}, Li/c/b0/e/j/b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/b/r$a;->k:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/b/r$a;->k:Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/j/b;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/b/r$a;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/j/b;->g:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li/c/b0/e/f/b/r$a;->k:Z

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/b/r$a;->j:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 5
    iget-object p1, p0, Li/c/b0/e/j/b;->f:Lo/a/b;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_1
    iput-object p1, p0, Li/c/b0/e/j/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/r$a;->j:Lo/a/c;

    invoke-static {v0, p1}, Li/c/b0/e/j/f;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/r$a;->j:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/j/b;->f:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method
