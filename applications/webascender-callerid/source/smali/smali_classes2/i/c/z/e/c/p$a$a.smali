.class final Li/c/z/e/c/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/p$a;
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
        "Li/c/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/l<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/w/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/l;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/l<",
            "-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/w/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/c/p$a$a;->f:Li/c/l;

    .line 3
    iput-object p2, p0, Li/c/z/e/c/p$a$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/p$a$a;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/z/a/b;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/p$a$a;->f:Li/c/l;

    invoke-interface {v0}, Li/c/l;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/p$a$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/z/e/c/p$a$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
