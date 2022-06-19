.class public Lq3/a/s1;
.super Lq3/a/u1;
.source "SourceFile"

# interfaces
.implements Lq3/a/y;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0003\n\u0000\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0003R\u0014\u0010\u0006\u001a\u00020\u0007X\u0090\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/JobImpl;",
        "Lkotlinx/coroutines/JobSupport;",
        "Lkotlinx/coroutines/CompletableJob;",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "(Lkotlinx/coroutines/Job;)V",
        "handlesException",
        "",
        "getHandlesException$kotlinx_coroutines_core",
        "()Z",
        "onCancelComplete",
        "getOnCancelComplete$kotlinx_coroutines_core",
        "complete",
        "completeExceptionally",
        "exception",
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
.field public final b:Z


# direct methods
.method public constructor <init>(Lq3/a/p1;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lq3/a/u1;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lq3/a/u1;->Z(Lq3/a/p1;)V

    .line 3
    invoke-virtual {p0}, Lq3/a/u1;->U()Lq3/a/s;

    move-result-object p1

    instance-of v1, p1, Lq3/a/t;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lq3/a/t;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_1
    move v0, v1

    goto :goto_4

    :cond_1
    invoke-virtual {p1}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object p1

    .line 4
    :goto_2
    invoke-virtual {p1}, Lq3/a/u1;->P()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_4

    .line 5
    :cond_2
    invoke-virtual {p1}, Lq3/a/u1;->U()Lq3/a/s;

    move-result-object p1

    instance-of v3, p1, Lq3/a/t;

    if-eqz v3, :cond_3

    check-cast p1, Lq3/a/t;

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_4

    goto :goto_1

    .line 6
    :goto_4
    iput-boolean v0, p0, Lq3/a/s1;->b:Z

    return-void

    .line 7
    :cond_4
    invoke-virtual {p1}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object p1

    goto :goto_2
.end method


# virtual methods
.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/a/s1;->b:Z

    return v0
.end method

.method public R()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
