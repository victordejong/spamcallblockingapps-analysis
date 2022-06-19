.class final Li/c/b0/e/f/e/m3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/e/a/a;

.field h:Li/c/b0/c/c;

.field volatile i:Z

.field j:Z


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/e/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/e/a/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m3$b;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/m3$b;->g:Li/c/b0/e/a/a;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->g:Li/c/b0/e/a/a;

    invoke-virtual {v0}, Li/c/b0/e/a/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->g:Li/c/b0/e/a/a;

    invoke-virtual {v0}, Li/c/b0/e/a/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

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
    iget-boolean v0, p0, Li/c/b0/e/f/e/m3$b;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Li/c/b0/e/f/e/m3$b;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Li/c/b0/e/f/e/m3$b;->j:Z

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->h:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m3$b;->h:Li/c/b0/c/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/m3$b;->g:Li/c/b0/e/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Li/c/b0/e/a/a;->a(ILi/c/b0/c/c;)Z

    :cond_0
    return-void
.end method
