.class final Li/c/b0/e/f/e/o4$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/o4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/o4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/o4$b<",
            "**>;"
        }
    .end annotation
.end field

.field final g:I

.field h:Z


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/o4$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/o4$b<",
            "**>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/o4$c;->f:Li/c/b0/e/f/e/o4$b;

    .line 3
    iput p2, p0, Li/c/b0/e/f/e/o4$c;->g:I

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
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$c;->f:Li/c/b0/e/f/e/o4$b;

    iget v1, p0, Li/c/b0/e/f/e/o4$c;->g:I

    iget-boolean v2, p0, Li/c/b0/e/f/e/o4$c;->h:Z

    invoke-virtual {v0, v1, v2}, Li/c/b0/e/f/e/o4$b;->b(IZ)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o4$c;->f:Li/c/b0/e/f/e/o4$b;

    iget v1, p0, Li/c/b0/e/f/e/o4$c;->g:I

    invoke-virtual {v0, v1, p1}, Li/c/b0/e/f/e/o4$b;->c(ILjava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/o4$c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/o4$c;->h:Z

    .line 3
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/o4$c;->f:Li/c/b0/e/f/e/o4$b;

    iget v1, p0, Li/c/b0/e/f/e/o4$c;->g:I

    invoke-virtual {v0, v1, p1}, Li/c/b0/e/f/e/o4$b;->d(ILjava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
