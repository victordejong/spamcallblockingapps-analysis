.class public final Lq3/a/w2/a$c;
.super Lq3/a/w2/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/a$b<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B;\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u001c\u0010\u0008\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00028\u0001`\u000b\u00a2\u0006\u0002\u0010\u000cJ#\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0006\u0010\u000f\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0010R&\u0010\u0008\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00028\u0001`\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElementWithUndeliveredHandler;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "receiveMode",
        "",
        "onUndeliveredElement",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "(Lkotlinx/coroutines/CancellableContinuation;ILkotlin/jvm/functions/Function1;)V",
        "resumeOnCancellationFun",
        "",
        "value",
        "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;",
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
.method public constructor <init>(Lq3/a/n;ILs1/z/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/n<",
            "Ljava/lang/Object;",
            ">;I",
            "Ls1/z/b/l<",
            "-TE;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/a/w2/a$b;-><init>(Lq3/a/n;I)V

    .line 2
    iput-object p3, p0, Lq3/a/w2/a$c;->f:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Object;)Ls1/z/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ls1/z/b/l<",
            "Ljava/lang/Throwable;",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$c;->f:Ls1/z/b/l;

    iget-object v1, p0, Lq3/a/w2/a$b;->d:Lq3/a/n;

    invoke-interface {v1}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v1

    .line 2
    new-instance v2, Lq3/a/y2/r;

    invoke-direct {v2, v0, p1, v1}, Lq3/a/y2/r;-><init>(Ls1/z/b/l;Ljava/lang/Object;Ls1/w/f;)V

    return-object v2
.end method
