.class public final Lq3/a/t;
.super Lq3/a/r1;
.source "SourceFile"

# interfaces
.implements Lq3/a/s;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0096\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/coroutines/ChildHandleNode;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "Lkotlinx/coroutines/ChildHandle;",
        "childJob",
        "Lkotlinx/coroutines/ChildJob;",
        "(Lkotlinx/coroutines/ChildJob;)V",
        "parent",
        "Lkotlinx/coroutines/Job;",
        "getParent",
        "()Lkotlinx/coroutines/Job;",
        "childCancelled",
        "",
        "cause",
        "",
        "invoke",
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
.field public final e:Lq3/a/u;


# direct methods
.method public constructor <init>(Lq3/a/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/r1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/t;->e:Lq3/a/u;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq3/a/t;->e:Lq3/a/u;

    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object v0

    invoke-interface {p1, v0}, Lq3/a/u;->E(Lq3/a/d2;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/t;->O(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq3/a/u1;->G(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Lq3/a/p1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object v0

    return-object v0
.end method
