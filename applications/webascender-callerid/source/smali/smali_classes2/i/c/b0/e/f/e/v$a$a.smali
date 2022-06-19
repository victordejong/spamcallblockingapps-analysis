.class final Li/c/b0/e/f/e/v$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/e/f/e/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/v$a<",
            "*TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/e/f/e/v$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/e/f/e/v$a<",
            "*TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v$a$a;->f:Li/c/b0/b/c0;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/e/v$a$a;->g:Li/c/b0/e/f/e/v$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$a$a;->g:Li/c/b0/e/f/e/v$a;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Li/c/b0/e/f/e/v$a;->o:Z

    .line 3
    invoke-virtual {v0}, Li/c/b0/e/f/e/v$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$a$a;->g:Li/c/b0/e/f/e/v$a;

    .line 2
    iget-object v1, v0, Li/c/b0/e/f/e/v$a;->i:Li/c/b0/e/k/c;

    invoke-virtual {v1, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-boolean p1, v0, Li/c/b0/e/f/e/v$a;->k:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, v0, Li/c/b0/e/f/e/v$a;->n:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, v0, Li/c/b0/e/f/e/v$a;->o:Z

    .line 6
    invoke-virtual {v0}, Li/c/b0/e/f/e/v$a;->a()V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v$a$a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
