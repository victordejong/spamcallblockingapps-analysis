.class public final Lq3/a/i;
.super Lq3/a/a1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/BlockingEventLoop;",
        "Lkotlinx/coroutines/EventLoopImplBase;",
        "thread",
        "Ljava/lang/Thread;",
        "(Ljava/lang/Thread;)V",
        "getThread",
        "()Ljava/lang/Thread;",
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
.field public final h:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/a1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/i;->h:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public m1()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/i;->h:Ljava/lang/Thread;

    return-object v0
.end method
