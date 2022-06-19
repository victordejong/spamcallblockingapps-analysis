.class final Li/c/b0/e/f/c/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/c/d;
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
        "Li/c/b0/b/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/r<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/b/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/c/c;",
            ">;",
            "Li/c/b0/b/r<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/c/d$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Li/c/b0/e/f/c/d$a;->g:Li/c/b0/b/r;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/d$a;->g:Li/c/b0/b/r;

    invoke-interface {v0}, Li/c/b0/b/r;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/d$a;->g:Li/c/b0/b/r;

    invoke-interface {v0, p1}, Li/c/b0/b/r;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/d$a;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/c/d$a;->g:Li/c/b0/b/r;

    invoke-interface {v0, p1}, Li/c/b0/b/r;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
