.class public final Lq3/a/x2/f1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/x2/f1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B1\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\nH\u0016R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "flow",
        "Lkotlinx/coroutines/flow/SharedFlowImpl;",
        "index",
        "",
        "value",
        "",
        "cont",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V",
        "dispose",
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
.field public final a:Lq3/a/x2/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f1<",
            "*>;"
        }
    .end annotation
.end field

.field public b:J

.field public final c:Ljava/lang/Object;

.field public final d:Ls1/w/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/x2/f1;JLjava/lang/Object;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f1<",
            "*>;J",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/x2/f1$a;->a:Lq3/a/x2/f1;

    .line 3
    iput-wide p2, p0, Lq3/a/x2/f1$a;->b:J

    .line 4
    iput-object p4, p0, Lq3/a/x2/f1$a;->c:Ljava/lang/Object;

    .line 5
    iput-object p5, p0, Lq3/a/x2/f1$a;->d:Ls1/w/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq3/a/x2/f1$a;->a:Lq3/a/x2/f1;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lq3/a/x2/f1$a;->b:J

    invoke-virtual {v0}, Lq3/a/x2/f1;->r()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    monitor-exit v0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, v0, Lq3/a/x2/f1;->g:[Ljava/lang/Object;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 5
    iget-wide v2, p0, Lq3/a/x2/f1$a;->b:J

    long-to-int v2, v2

    .line 6
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v2

    aget-object v3, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, p0, :cond_1

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_1
    :try_start_2
    sget-object v3, Lq3/a/x2/g1;->a:Lq3/a/y2/x;

    .line 9
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    aput-object v3, v1, v2

    .line 10
    invoke-virtual {v0}, Lq3/a/x2/f1;->m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
