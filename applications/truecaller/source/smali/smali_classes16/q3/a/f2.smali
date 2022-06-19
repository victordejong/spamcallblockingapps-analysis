.class public final Lq3/a/f2;
.super Lq3/a/t1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/t1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0096\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/coroutines/ResumeAwaitOnCompletion;",
        "T",
        "Lkotlinx/coroutines/JobNode;",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "(Lkotlinx/coroutines/CancellableContinuationImpl;)V",
        "invoke",
        "",
        "cause",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final e:Lq3/a/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/o<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/o<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/t1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/f2;->e:Lq3/a/o;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object p1

    invoke-virtual {p1}, Lq3/a/u1;->V()Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lq3/a/a0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lq3/a/f2;->e:Lq3/a/o;

    check-cast p1, Lq3/a/a0;

    iget-object p1, p1, Lq3/a/a0;->a:Ljava/lang/Throwable;

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lq3/a/f2;->e:Lq3/a/o;

    invoke-static {p1}, Lq3/a/v1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/f2;->O(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
