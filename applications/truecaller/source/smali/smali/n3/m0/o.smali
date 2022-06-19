.class public final Ln3/m0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J)\u0010\u0008\u001a\u00020\t2\u000e\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b2\u000e\u0010\r\u001a\n \u000c*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\u0011\u0010\u000f\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0096\u0001J\u0013\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\n \u000c*\u0004\u0018\u00018\u00008\u0000H\u0096\u0001\u00a2\u0006\u0002\u0010\u0015J.\u0010\u0014\u001a\n \u000c*\u0004\u0018\u00018\u00008\u00002\u0006\u0010\n\u001a\u00020\u00162\u000e\u0010\r\u001a\n \u000c*\u0004\u0018\u00010\u00170\u0017H\u0096\u0003\u00a2\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u0010H\u0096\u0001J\t\u0010\u001a\u001a\u00020\u0010H\u0096\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/work/JobListenableFuture;",
        "R",
        "Lcom/google/common/util/concurrent/ListenableFuture;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "underlying",
        "Landroidx/work/impl/utils/futures/SettableFuture;",
        "(Lkotlinx/coroutines/Job;Landroidx/work/impl/utils/futures/SettableFuture;)V",
        "addListener",
        "",
        "p0",
        "Ljava/lang/Runnable;",
        "kotlin.jvm.PlatformType",
        "p1",
        "Ljava/util/concurrent/Executor;",
        "cancel",
        "",
        "complete",
        "result",
        "(Ljava/lang/Object;)V",
        "get",
        "()Ljava/lang/Object;",
        "",
        "Ljava/util/concurrent/TimeUnit;",
        "(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;",
        "isCancelled",
        "isDone",
        "work-runtime-ktx_release"
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
.field public final a:Lq3/a/p1;

.field public final b:Ln3/m0/c0/t/w/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/m0/c0/t/w/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/p1;Ln3/m0/c0/t/w/c;I)V
    .locals 1

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Ln3/m0/c0/t/w/c;

    invoke-direct {p2}, Ln3/m0/c0/t/w/c;-><init>()V

    const-string p3, "create()"

    .line 2
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "job"

    .line 3
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "underlying"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ln3/m0/o;->a:Lq3/a/p1;

    .line 6
    iput-object p2, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    .line 7
    new-instance p2, Ln3/m0/n;

    invoke-direct {p2, p0}, Ln3/m0/n;-><init>(Ln3/m0/o;)V

    check-cast p1, Lq3/a/u1;

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p3, v0, p2}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    invoke-virtual {v0, p1, p2}, Ln3/m0/c0/t/w/a;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .locals 1

    iget-object v0, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    invoke-virtual {v0, p1}, Ln3/m0/c0/t/w/a;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    invoke-virtual {v0}, Ln3/m0/c0/t/w/a;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    invoke-virtual {v0, p1, p2, p3}, Ln3/m0/c0/t/w/a;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    .line 1
    iget-object v0, v0, Ln3/m0/c0/t/w/a;->a:Ljava/lang/Object;

    .line 2
    instance-of v0, v0, Ln3/m0/c0/t/w/a$c;

    return v0
.end method

.method public isDone()Z
    .locals 1

    iget-object v0, p0, Ln3/m0/o;->b:Ln3/m0/c0/t/w/c;

    invoke-virtual {v0}, Ln3/m0/c0/t/w/a;->isDone()Z

    move-result v0

    return v0
.end method
