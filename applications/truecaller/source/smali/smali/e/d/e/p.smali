.class public Le/d/e/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/e/p$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/d/e/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Le/d/e/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Le/d/e/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Le/d/e/b;

.field public final f:Le/d/e/i;

.field public final g:Le/d/e/r;

.field public final h:[Le/d/e/j;

.field public i:Le/d/e/d;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/d/e/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/d/e/b;Le/d/e/i;)V
    .locals 3

    .line 1
    new-instance v0, Le/d/e/g;

    new-instance v1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Le/d/e/g;-><init>(Landroid/os/Handler;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Le/d/e/p;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Le/d/e/p;->b:Ljava/util/Set;

    .line 6
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Le/d/e/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 7
    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v1, p0, Le/d/e/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le/d/e/p;->j:Ljava/util/List;

    .line 9
    iput-object p1, p0, Le/d/e/p;->e:Le/d/e/b;

    .line 10
    iput-object p2, p0, Le/d/e/p;->f:Le/d/e/i;

    const/4 p1, 0x4

    new-array p1, p1, [Le/d/e/j;

    .line 11
    iput-object p1, p0, Le/d/e/p;->h:[Le/d/e/j;

    .line 12
    iput-object v0, p0, Le/d/e/p;->g:Le/d/e/r;

    return-void
.end method


# virtual methods
.method public a(Le/d/e/o;)Le/d/e/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/d/e/o<",
            "TT;>;)",
            "Le/d/e/o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Le/d/e/o;->setRequestQueue(Le/d/e/p;)Le/d/e/o;

    .line 2
    iget-object v0, p0, Le/d/e/p;->b:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Le/d/e/p;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/d/e/p;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Le/d/e/o;->setSequence(I)Le/d/e/o;

    const-string v0, "add-to-queue"

    .line 7
    invoke-virtual {p1, v0}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Le/d/e/o;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Le/d/e/p;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 10
    :cond_0
    iget-object v0, p0, Le/d/e/p;->c:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
