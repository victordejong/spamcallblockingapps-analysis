.class public Le/m/d/n/j/j/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/n/j/j/i0$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/d/n/j/j/i0$a;

.field public final b:Le/m/d/n/j/p/f;

.field public final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public final d:Le/m/d/n/j/c;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/i0$a;Le/m/d/n/j/p/f;Ljava/lang/Thread$UncaughtExceptionHandler;Le/m/d/n/j/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/n/j/j/i0;->a:Le/m/d/n/j/j/i0$a;

    .line 3
    iput-object p2, p0, Le/m/d/n/j/j/i0;->b:Le/m/d/n/j/p/f;

    .line 4
    iput-object p3, p0, Le/m/d/n/j/j/i0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Le/m/d/n/j/j/i0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    iput-object p4, p0, Le/m/d/n/j/j/i0;->d:Le/m/d/n/j/c;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v1, p0, Le/m/d/n/j/j/i0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v5, p0, Le/m/d/n/j/j/i0;->d:Le/m/d/n/j/c;

    invoke-interface {v5}, Le/m/d/n/j/c;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 6
    iget-object v2, p0, Le/m/d/n/j/j/i0;->a:Le/m/d/n/j/j/i0$a;

    iget-object v5, p0, Le/m/d/n/j/j/i0;->b:Le/m/d/n/j/p/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v2, Le/m/d/n/j/j/q;

    :try_start_1
    invoke-virtual {v2, v5, p1, p2}, Le/m/d/n/j/j/q;->a(Le/m/d/n/j/p/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 8
    :catch_0
    :try_start_2
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :goto_2
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z

    .line 10
    iget-object v0, p0, Le/m/d/n/j/j/i0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 11
    iget-object p1, p0, Le/m/d/n/j/j/i0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 12
    :goto_3
    invoke-virtual {v0, v4}, Le/m/d/n/j/f;->a(I)Z

    .line 13
    iget-object v0, p0, Le/m/d/n/j/j/i0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 14
    iget-object p1, p0, Le/m/d/n/j/j/i0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    throw v1
.end method
