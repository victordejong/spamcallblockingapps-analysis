.class public Ls3/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls3/b/a/a$c;
    }
.end annotation


# static fields
.field public static volatile b:Ls3/b/a/a;


# instance fields
.field public a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Ls3/b/a/a$a;

    invoke-direct {v7, p0}, Ls3/b/a/a$a;-><init>(Ls3/b/a/a;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Ls3/b/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Ls3/b/a/a;
    .locals 2

    .line 1
    sget-object v0, Ls3/b/a/a;->b:Ls3/b/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Ls3/b/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Ls3/b/a/a;->b:Ls3/b/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ls3/b/a/a;

    invoke-direct {v1}, Ls3/b/a/a;-><init>()V

    sput-object v1, Ls3/b/a/a;->b:Ls3/b/a/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Ls3/b/a/a;->b:Ls3/b/a/a;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/io/FileDescriptor;Ljava/lang/String;Ls3/b/a/g/a;Ls3/b/a/a$c;)Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "Ls3/b/a/g/a;",
            "Ls3/b/a/a$c;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 3
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    iget-object v9, p0, Ls3/b/a/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v10, Ls3/b/a/a$b;

    move-object v1, v10

    move-object v2, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Ls3/b/a/a$b;-><init>(Ls3/b/a/a;Landroid/os/Handler;Ls3/b/a/a$c;Ljava/io/FileDescriptor;Ljava/lang/String;Ls3/b/a/g/a;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-object p1
.end method
