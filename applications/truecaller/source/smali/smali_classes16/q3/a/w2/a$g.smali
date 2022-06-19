.class public final Lq3/a/w2/a$g;
.super Lq3/a/y2/m$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/y2/m$d<",
        "Lq3/a/w2/c0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0004\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0016\u0010\u000c\u001a\u0004\u0018\u00010\t2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;",
        "E",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$RemoveFirstDesc;",
        "Lkotlinx/coroutines/channels/Send;",
        "Lkotlinx/coroutines/internal/RemoveFirstDesc;",
        "queue",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListHead;)V",
        "failure",
        "",
        "affected",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "onPrepare",
        "prepareOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "Lkotlinx/coroutines/internal/PrepareOp;",
        "onRemoved",
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


# direct methods
.method public constructor <init>(Lq3/a/y2/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lq3/a/y2/m$d;-><init>(Lq3/a/y2/m;)V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/y2/m;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p1, Lq3/a/w2/o;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p1, Lq3/a/w2/c0;

    if-nez p1, :cond_1

    sget-object p1, Lq3/a/w2/b;->d:Lq3/a/y2/x;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public h(Lq3/a/y2/m$c;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p1, Lq3/a/y2/m$c;->a:Lq3/a/y2/m;

    check-cast v0, Lq3/a/w2/c0;

    .line 2
    invoke-virtual {v0, p1}, Lq3/a/w2/c0;->R(Lq3/a/y2/m$c;)Lq3/a/y2/x;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lq3/a/y2/n;->a:Ljava/lang/Object;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lq3/a/y2/c;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lq3/a/y2/m;)V
    .locals 0

    .line 1
    check-cast p1, Lq3/a/w2/c0;

    invoke-virtual {p1}, Lq3/a/w2/c0;->S()V

    return-void
.end method
