.class final Li/c/b0/e/f/c/t$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/c/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/c/t$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/c/t$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field final g:I


# direct methods
.method constructor <init>(Li/c/b0/e/f/c/t$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/c/t$b<",
            "TT;*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/t$c;->f:Li/c/b0/e/f/c/t$b;

    .line 3
    iput p2, p0, Li/c/b0/e/f/c/t$c;->g:I

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
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/t$c;->f:Li/c/b0/e/f/c/t$b;

    iget v1, p0, Li/c/b0/e/f/c/t$c;->g:I

    invoke-virtual {v0, v1}, Li/c/b0/e/f/c/t$b;->b(I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/t$c;->f:Li/c/b0/e/f/c/t$b;

    iget v1, p0, Li/c/b0/e/f/c/t$c;->g:I

    invoke-virtual {v0, p1, v1}, Li/c/b0/e/f/c/t$b;->c(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/t$c;->f:Li/c/b0/e/f/c/t$b;

    iget v1, p0, Li/c/b0/e/f/c/t$c;->g:I

    invoke-virtual {v0, p1, v1}, Li/c/b0/e/f/c/t$b;->d(Ljava/lang/Object;I)V

    return-void
.end method
