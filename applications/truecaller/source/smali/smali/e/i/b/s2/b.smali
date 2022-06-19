.class public Le/i/b/s2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/i/b/s2/b$c;,
        Le/i/b/s2/b$b;,
        Le/i/b/s2/b$d;
    }
.end annotation


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/s2/b$d;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/i/b/s2/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    new-instance v0, Le/i/b/s2/b$d;

    invoke-direct {v0}, Le/i/b/s2/b$d;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-class v1, Le/i/b/s2/b;

    invoke-static {v1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v1

    iput-object v1, p0, Le/i/b/s2/b;->a:Le/i/b/q2/h;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Le/i/b/s2/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p1, p0, Le/i/b/s2/b;->c:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Le/i/b/s2/b;->d:Ljava/util/concurrent/Executor;

    .line 7
    iput-object v0, p0, Le/i/b/s2/b;->b:Le/i/b/s2/b$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const-string v0, "Error getting advertising id"

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Le/i/b/s2/b;->b:Le/i/b/s2/b$d;

    iget-object v4, p0, Le/i/b/s2/b;->c:Landroid/content/Context;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Le/i/b/s2/b$c; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Le/i/b/s2/b$c; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 5
    :try_start_2
    iget-object v4, p0, Le/i/b/s2/b;->b:Le/i/b/s2/b$d;

    iget-object v5, p0, Le/i/b/s2/b;->c:Landroid/content/Context;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Le/i/b/s2/b$c; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 7
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Le/i/b/s2/b$c; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v4, :cond_0

    .line 9
    :try_start_4
    sget-object v0, Le/i/b/s2/b$b;->d:Le/i/b/s2/b$b;

    goto :goto_1

    .line 10
    :cond_0
    new-instance v4, Le/i/b/s2/b$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Le/i/b/s2/b$b;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v3

    .line 11
    new-instance v4, Le/i/b/s2/b$c;

    invoke-direct {v4, v3}, Le/i/b/s2/b$c;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 12
    new-instance v4, Le/i/b/s2/b$c;

    invoke-direct {v4, v3}, Le/i/b/s2/b$c;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Le/i/b/s2/b$c; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception v3

    .line 13
    iget-object v4, p0, Le/i/b/s2/b;->a:Le/i/b/q2/h;

    .line 14
    new-instance v5, Le/i/b/q2/f;

    invoke-direct {v5, v1, v0, v3, v2}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void

    :catch_3
    move-exception v3

    .line 15
    sget-object v4, Le/i/b/s2/b$b;->c:Le/i/b/s2/b$b;

    .line 16
    iget-object v5, p0, Le/i/b/s2/b;->a:Le/i/b/q2/h;

    .line 17
    new-instance v6, Le/i/b/q2/f;

    invoke-direct {v6, v1, v0, v3, v2}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    move-object v0, v4

    .line 18
    :goto_1
    iget-object v1, p0, Le/i/b/s2/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/s2/b;->c()Le/i/b/s2/b$b;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/i/b/s2/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Le/i/b/s2/b$b;
    .locals 2

    .line 1
    iget-object v0, p0, Le/i/b/s2/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/s2/b$b;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/i/b/s2/b;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/s2/b$a;

    invoke-direct {v1, p0}, Le/i/b/s2/b$a;-><init>(Le/i/b/s2/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/i/b/s2/b;->a()V

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Le/i/b/s2/b;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/s2/b$b;

    if-nez v0, :cond_3

    .line 7
    sget-object v0, Le/i/b/s2/b$b;->c:Le/i/b/s2/b$b;

    :cond_3
    return-object v0
.end method
