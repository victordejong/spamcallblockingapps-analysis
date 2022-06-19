.class public final Lq3/a/g1;
.super Lq3/a/f1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;",
        "Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "(Ljava/util/concurrent/Executor;)V",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
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
.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lq3/a/f1;-><init>()V

    iput-object p1, p0, Lq3/a/g1;->c:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p0}, Lq3/a/g1;->K0()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 3
    sget-object v0, Lq3/a/y2/e;->a:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 4
    :try_start_0
    instance-of v1, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Lq3/a/y2/e;->a:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v0

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 6
    :catchall_0
    :goto_1
    iput-boolean v0, p0, Lq3/a/f1;->b:Z

    return-void
.end method


# virtual methods
.method public K0()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/g1;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method
