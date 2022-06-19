.class public final Li/c/b0/e/d/e;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/d/e$a;,
        Li/c/b0/e/d/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Ljava/util/concurrent/CompletionStage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletionStage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/d/e;->f:Ljava/util/concurrent/CompletionStage;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/d/e$a;

    invoke-direct {v0}, Li/c/b0/e/d/e$a;-><init>()V

    .line 2
    new-instance v1, Li/c/b0/e/d/e$b;

    invoke-direct {v1, p1, v0}, Li/c/b0/e/d/e$b;-><init>(Li/c/b0/b/c0;Li/c/b0/e/d/e$a;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1, v1}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    .line 5
    iget-object p1, p0, Li/c/b0/e/d/e;->f:Ljava/util/concurrent/CompletionStage;

    invoke-interface {p1, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    return-void
.end method
