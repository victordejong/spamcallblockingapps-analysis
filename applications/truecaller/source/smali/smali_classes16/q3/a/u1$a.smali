.class public final Lq3/a/u1$a;
.super Lq3/a/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/u1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/o<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$AwaitContinuation;",
        "T",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "delegate",
        "Lkotlin/coroutines/Continuation;",
        "job",
        "Lkotlinx/coroutines/JobSupport;",
        "(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V",
        "getContinuationCancellationCause",
        "",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "nameString",
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
.field public final i:Lq3/a/u1;


# direct methods
.method public constructor <init>(Ls1/w/d;Lq3/a/u1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-TT;>;",
            "Lq3/a/u1;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    iput-object p2, p0, Lq3/a/u1$a;->i:Lq3/a/u1;

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method

.method public v(Lq3/a/p1;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/a/u1$a;->i:Lq3/a/u1;

    invoke-virtual {v0}, Lq3/a/u1;->V()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lq3/a/u1$c;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lq3/a/u1$c;

    invoke-virtual {v1}, Lq3/a/u1$c;->d()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    :goto_0
    instance-of v1, v0, Lq3/a/a0;

    if-eqz v1, :cond_2

    check-cast v0, Lq3/a/a0;

    iget-object p1, v0, Lq3/a/a0;->a:Ljava/lang/Throwable;

    return-object p1

    .line 4
    :cond_2
    check-cast p1, Lq3/a/u1;

    invoke-virtual {p1}, Lq3/a/u1;->p0()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method
