.class final Li/c/z/e/c/u$c;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/u;
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
        "Li/c/w/b;",
        ">;",
        "Li/c/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/z/e/c/u$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/z/e/c/u$b<",
            "TT;*>;"
        }
    .end annotation
.end field

.field final g:I


# direct methods
.method constructor <init>(Li/c/z/e/c/u$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/c/u$b<",
            "TT;*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/u$c;->f:Li/c/z/e/c/u$b;

    .line 3
    iput p2, p0, Li/c/z/e/c/u$c;->g:I

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/z/a/b;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-static {p0}, Li/c/z/a/b;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/u$c;->f:Li/c/z/e/c/u$b;

    iget v1, p0, Li/c/z/e/c/u$c;->g:I

    invoke-virtual {v0, v1}, Li/c/z/e/c/u$b;->b(I)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/c/u$c;->f:Li/c/z/e/c/u$b;

    iget v1, p0, Li/c/z/e/c/u$c;->g:I

    invoke-virtual {v0, p1, v1}, Li/c/z/e/c/u$b;->c(Ljava/lang/Throwable;I)V

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
    iget-object v0, p0, Li/c/z/e/c/u$c;->f:Li/c/z/e/c/u$b;

    iget v1, p0, Li/c/z/e/c/u$c;->g:I

    invoke-virtual {v0, p1, v1}, Li/c/z/e/c/u$b;->d(Ljava/lang/Object;I)V

    return-void
.end method
