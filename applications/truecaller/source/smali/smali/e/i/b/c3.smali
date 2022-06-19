.class public abstract Le/i/b/c3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Le/i/b/c3;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/c3;->a:Le/i/b/q2/h;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Le/i/b/c3;->b:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public run()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/i/b/c3;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 3
    iget-object v2, p0, Le/i/b/c3;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ExecutionException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 6
    :cond_0
    instance-of v2, v0, Ljava/net/SocketException;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/net/UnknownHostException;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljavax/net/ssl/SSLException;

    if-nez v2, :cond_2

    instance-of v2, v0, Ljava/net/ProtocolException;

    if-nez v2, :cond_2

    instance-of v0, v0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "throwable"

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Le/i/b/c3;->a:Le/i/b/q2/h;

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Le/i/b/q2/f;

    const/4 v3, 0x4

    const-string v4, "Uncaught expected exception in thread"

    const-string v5, "onUncaughtExpectedExceptionInThread"

    invoke-direct {v2, v3, v4, v1, v5}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v0, p0, Le/i/b/c3;->a:Le/i/b/q2/h;

    .line 12
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v2, Le/i/b/q2/f;

    const/4 v3, 0x6

    const-string v4, "Uncaught error in thread"

    const-string v5, "onUncaughtErrorInThread"

    invoke-direct {v2, v3, v4, v1, v5}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_2
    return-void
.end method
