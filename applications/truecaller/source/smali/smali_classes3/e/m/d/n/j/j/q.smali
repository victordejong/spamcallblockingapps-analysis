.class public Le/m/d/n/j/j/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/j/i0$a;


# instance fields
.field public final synthetic a:Le/m/d/n/j/j/w;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/q;->a:Le/m/d/n/j/j/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/d/n/j/p/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .line 1
    iget-object v7, p0, Le/m/d/n/j/j/q;->a:Le/m/d/n/j/j/w;

    .line 2
    sget-object v8, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    monitor-enter v7

    .line 3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling uncaught exception \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" from thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x3

    .line 5
    invoke-virtual {v8, v0}, Le/m/d/n/j/f;->a(I)Z

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 7
    iget-object v9, v7, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    new-instance v10, Le/m/d/n/j/j/s;

    move-object v0, v10

    move-object v1, v7

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Le/m/d/n/j/j/s;-><init>(Le/m/d/n/j/j/w;JLjava/lang/Throwable;Ljava/lang/Thread;Le/m/d/n/j/p/f;)V

    .line 8
    invoke-virtual {v9, v10}, Le/m/d/n/j/j/m;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-static {p1}, Le/m/d/n/j/j/t0;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x6

    .line 10
    :try_start_2
    invoke-virtual {v8, p1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :goto_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v7

    throw p1
.end method
