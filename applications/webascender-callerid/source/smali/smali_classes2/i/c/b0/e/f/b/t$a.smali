.class final Li/c/b0/e/f/b/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/t;
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
        "Ljava/lang/Object;",
        "Li/c/b0/b/o<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/g0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field h:Lo/a/c;

.field i:Z

.field j:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/g0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/g0<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/t$a;->f:Li/c/b0/b/g0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/b/t$a;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 2
    sget-object v0, Li/c/b0/e/j/f;->CANCELLED:Li/c/b0/e/j/f;

    iput-object v0, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    sget-object v1, Li/c/b0/e/j/f;->CANCELLED:Li/c/b0/e/j/f;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/b/t$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/b/t$a;->i:Z

    .line 3
    sget-object v0, Li/c/b0/e/j/f;->CANCELLED:Li/c/b0/e/j/f;

    iput-object v0, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->j:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Li/c/b0/e/f/b/t$a;->j:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->g:Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Li/c/b0/e/f/b/t$a;->f:Li/c/b0/b/g0;

    invoke-interface {v1, v0}, Li/c/b0/b/g0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->f:Li/c/b0/b/g0;

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    invoke-interface {v0, v1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/b/t$a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/b/t$a;->i:Z

    .line 4
    sget-object v0, Li/c/b0/e/j/f;->CANCELLED:Li/c/b0/e/j/f;

    iput-object v0, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p1}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Li/c/b0/e/f/b/t$a;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->j:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li/c/b0/e/f/b/t$a;->i:Z

    .line 4
    iget-object p1, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 5
    sget-object p1, Li/c/b0/e/j/f;->CANCELLED:Li/c/b0/e/j/f;

    iput-object p1, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/b/t$a;->f:Li/c/b0/b/g0;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence contains more than one element!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Li/c/b0/b/g0;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iput-object p1, p0, Li/c/b0/e/f/b/t$a;->j:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    invoke-static {v0, p1}, Li/c/b0/e/j/f;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/t$a;->h:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/b/t$a;->f:Li/c/b0/b/g0;

    invoke-interface {v0, p0}, Li/c/b0/b/g0;->onSubscribe(Li/c/b0/c/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_0
    return-void
.end method
