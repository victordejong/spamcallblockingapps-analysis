.class public abstract Ls1/w/k/a/c;
.super Ls1/w/k/a/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008!\u0018\u00002\u00020\u0001B\u0019\u0008\u0016\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B!\u0012\u0010\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0014R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;",
        "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "completion",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/coroutines/Continuation;)V",
        "_context",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V",
        "context",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "intercepted",
        "releaseIntercepted",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public transient b:Ls1/w/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/w/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, p1}, Ls1/w/k/a/a;-><init>(Ls1/w/d;)V

    iput-object v0, p0, Ls1/w/k/a/c;->c:Ls1/w/f;

    return-void
.end method

.method public constructor <init>(Ls1/w/d;Ls1/w/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ls1/w/k/a/a;-><init>(Ls1/w/d;)V

    iput-object p2, p0, Ls1/w/k/a/c;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public getContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/w/k/a/c;->b:Ls1/w/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls1/w/k/a/c;->getContext()Ls1/w/f;

    move-result-object v1

    sget v2, Ls1/w/e;->b0:I

    sget-object v2, Ls1/w/e$a;->a:Ls1/w/e$a;

    invoke-interface {v1, v2}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    check-cast v1, Ls1/w/e;

    invoke-interface {v1, v0}, Ls1/w/e;->l(Ls1/w/d;)V

    .line 3
    :cond_0
    sget-object v0, Ls1/w/k/a/b;->a:Ls1/w/k/a/b;

    iput-object v0, p0, Ls1/w/k/a/c;->b:Ls1/w/d;

    return-void
.end method
