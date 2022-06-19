.class public final Lq3/a/x2/h1;
.super Lq3/a/x2/o1/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq3/a/x2/o1/d<",
        "Lq3/a/x2/f1<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016J\'\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00050\r2\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u0002H\u0016\u00a2\u0006\u0002\u0010\u000eR\u001a\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowSlot;",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;",
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "()V",
        "cont",
        "Lkotlin/coroutines/Continuation;",
        "",
        "index",
        "",
        "allocateLocked",
        "",
        "flow",
        "freeLocked",
        "",
        "(Lkotlinx/coroutines/flow/SharedFlowImpl;)[Lkotlin/coroutines/Continuation;",
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
.field public a:J

.field public b:Ls1/w/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq3/a/x2/o1/d;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lq3/a/x2/h1;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    check-cast p1, Lq3/a/x2/f1;

    .line 2
    iget-wide v0, p0, Lq3/a/x2/h1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p1, Lq3/a/x2/f1;->h:J

    .line 4
    iget-wide v2, p1, Lq3/a/x2/f1;->i:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iput-wide v0, p1, Lq3/a/x2/f1;->i:J

    .line 5
    :cond_1
    iput-wide v0, p0, Lq3/a/x2/h1;->a:J

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public b(Ljava/lang/Object;)[Ls1/w/d;
    .locals 4

    .line 1
    check-cast p1, Lq3/a/x2/f1;

    .line 2
    iget-wide v0, p0, Lq3/a/x2/h1;->a:J

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lq3/a/x2/h1;->a:J

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lq3/a/x2/h1;->b:Ls1/w/d;

    .line 5
    invoke-virtual {p1, v0, v1}, Lq3/a/x2/f1;->y(J)[Ls1/w/d;

    move-result-object p1

    return-object p1
.end method
