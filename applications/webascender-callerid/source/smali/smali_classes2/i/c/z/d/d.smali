.class public final Li/c/z/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/w/b;",
            ">;"
        }
    .end annotation
.end field

.field final g:Li/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/t<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Li/c/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/w/b;",
            ">;",
            "Li/c/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/d/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Li/c/z/d/d;->g:Li/c/t;

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/d;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Li/c/z/a/b;->replace(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/d/d;->g:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Li/c/z/d/d;->g:Li/c/t;

    invoke-interface {v0, p1}, Li/c/t;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
