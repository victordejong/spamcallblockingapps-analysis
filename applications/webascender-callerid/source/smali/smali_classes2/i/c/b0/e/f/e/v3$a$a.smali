.class final Li/c/b0/e/f/e/v3$a$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Li/c/b0/c/c;",
        ">;",
        "Li/c/b0/b/c0<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/e/f/e/v3$a;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/v3$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/v3$a$a;->f:Li/c/b0/e/f/e/v3$a;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v3$a$a;->f:Li/c/b0/e/f/e/v3$a;

    invoke-virtual {v0}, Li/c/b0/e/f/e/v3$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v3$a$a;->f:Li/c/b0/e/f/e/v3$a;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/v3$a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/v3$a$a;->f:Li/c/b0/e/f/e/v3$a;

    invoke-virtual {p1}, Li/c/b0/e/f/e/v3$a;->a()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li/c/b0/e/a/c;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/b0/c/c;)Z

    return-void
.end method
