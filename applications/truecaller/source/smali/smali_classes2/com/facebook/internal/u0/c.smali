.class public final synthetic Lcom/facebook/internal/u0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/c;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/c;

    invoke-direct {v0}, Lcom/facebook/internal/u0/c;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/c;->a:Lcom/facebook/internal/u0/c;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 9

    if-eqz p1, :cond_4

    .line 1
    sget-object p1, Lcom/facebook/internal/u0/k/e;->a:Lcom/facebook/internal/u0/k/e;

    .line 2
    const-class p1, Lcom/facebook/internal/u0/k/e;

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    monitor-exit p1

    goto :goto_1

    .line 3
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/internal/u0/k/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 4
    monitor-exit p1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_2
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Lcom/facebook/internal/u0/k/e;->a()V

    .line 7
    :cond_2
    sget-object v0, Lcom/facebook/internal/u0/k/d;->a:Lcom/facebook/internal/u0/k/d;

    .line 8
    const-class v0, Lcom/facebook/internal/u0/k/d;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    :try_start_3
    sget-object v2, Lcom/facebook/internal/u0/k/d;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    sget-object v3, Lcom/facebook/internal/u0/k/d;->e:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    const/16 v1, 0x1f4

    int-to-long v6, v1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_4
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 13
    :try_start_5
    invoke-static {v0, p1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_0
    monitor-exit p1

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
