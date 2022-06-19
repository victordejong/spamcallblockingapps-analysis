.class public final Lq3/a/w2/f0;
.super Lq3/a/w2/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/e0<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B9\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u001c\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0008j\u0008\u0012\u0004\u0012\u00028\u0000`\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0016R&\u0010\u0007\u001a\u0018\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00060\u0008j\u0008\u0012\u0004\u0012\u00028\u0000`\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/SendElementWithUndeliveredHandler;",
        "E",
        "Lkotlinx/coroutines/channels/SendElement;",
        "pollResult",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;Lkotlin/jvm/functions/Function1;)V",
        "remove",
        "",
        "undeliveredElement",
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
.field public final f:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "TE;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq3/a/n;Ls1/z/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/a/n<",
            "-",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-TE;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/a/w2/e0;-><init>(Ljava/lang/Object;Lq3/a/n;)V

    .line 2
    iput-object p3, p0, Lq3/a/w2/f0;->f:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public K()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lq3/a/y2/m;->K()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lq3/a/w2/f0;->S()V

    const/4 v0, 0x1

    return v0
.end method

.method public S()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq3/a/w2/f0;->f:Ls1/z/b/l;

    .line 2
    iget-object v1, p0, Lq3/a/w2/e0;->d:Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lq3/a/w2/e0;->e:Lq3/a/n;

    invoke-interface {v2}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v1, v3}, Ls1/a/a/a/v0/f/d;->N(Ls1/z/b/l;Ljava/lang/Object;Lq3/a/y2/f0;)Lq3/a/y2/f0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v2, v0}, Ls1/a/a/a/v0/f/d;->E1(Ls1/w/f;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
