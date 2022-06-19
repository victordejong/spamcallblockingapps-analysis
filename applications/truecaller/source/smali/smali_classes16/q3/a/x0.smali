.class public final Lq3/a/x0;
.super Lq3/a/t1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/DisposeOnCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "handle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
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
.field public final e:Lq3/a/v0;


# direct methods
.method public constructor <init>(Lq3/a/v0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/t1;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/x0;->e:Lq3/a/v0;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lq3/a/x0;->e:Lq3/a/v0;

    invoke-interface {p1}, Lq3/a/v0;->a()V

    return-void
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lq3/a/x0;->e:Lq3/a/v0;

    invoke-interface {p1}, Lq3/a/v0;->a()V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
