.class public Le/m/d/n/j/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/h/b;
.implements Le/m/d/n/j/h/a;


# instance fields
.field public final a:Le/m/d/n/j/h/e;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Le/m/d/n/j/h/e;ILjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/d/n/j/h/c;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/m/d/n/j/h/c;->a:Le/m/d/n/j/h/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v1, p0, Le/m/d/n/j/h/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to Firebase Analytics with params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 4
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Le/m/d/n/j/h/c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 5
    iget-object v3, p0, Le/m/d/n/j/h/c;->a:Le/m/d/n/j/h/e;

    .line 6
    iget-object v3, v3, Le/m/d/n/j/h/e;->a:Le/m/d/k/a/a;

    const-string v4, "clx"

    invoke-interface {v3, v4, p1, p2}, Le/m/d/k/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object p1, p0, Le/m/d/n/j/h/c;->c:Ljava/util/concurrent/CountDownLatch;

    const/16 p2, 0x1f4

    int-to-long v3, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 10
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x6

    .line 11
    :try_start_2
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z

    :goto_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Le/m/d/n/j/h/c;->c:Ljava/util/concurrent/CountDownLatch;

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object p2, p0, Le/m/d/n/j/h/c;->c:Ljava/util/concurrent/CountDownLatch;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "_ae"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method
