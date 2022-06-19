.class public Le/m/d/n/j/j/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:Le/m/d/n/j/p/f;

.field public final synthetic e:Le/m/d/n/j/j/w;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w;JLjava/lang/Throwable;Ljava/lang/Thread;Le/m/d/n/j/p/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    iput-wide p2, p0, Le/m/d/n/j/j/s;->a:J

    iput-object p4, p0, Le/m/d/n/j/j/s;->b:Ljava/lang/Throwable;

    iput-object p5, p0, Le/m/d/n/j/j/s;->c:Ljava/lang/Thread;

    iput-object p6, p0, Le/m/d/n/j/j/s;->d:Le/m/d/n/j/p/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-wide v1, p0, Le/m/d/n/j/j/s;->a:J

    const-wide/16 v3, 0x3e8

    .line 2
    div-long v10, v1, v3

    .line 3
    iget-object v1, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 4
    invoke-virtual {v1}, Le/m/d/n/j/j/w;->f()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    if-nez v8, :cond_0

    const/4 v2, 0x6

    .line 5
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 8
    iget-object v2, v2, Le/m/d/n/j/j/w;->c:Le/m/d/n/j/j/f0;

    .line 9
    invoke-virtual {v2}, Le/m/d/n/j/j/f0;->a()Z

    .line 10
    iget-object v2, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 11
    iget-object v5, v2, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 12
    iget-object v6, p0, Le/m/d/n/j/j/s;->b:Ljava/lang/Throwable;

    iget-object v7, p0, Le/m/d/n/j/j/s;->c:Ljava/lang/Thread;

    .line 13
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 14
    invoke-virtual {v0, v2}, Le/m/d/n/j/f;->a(I)Z

    const/4 v12, 0x1

    const-string v9, "crash"

    .line 15
    invoke-virtual/range {v5 .. v12}, Le/m/d/n/j/j/q0;->d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 16
    iget-object v0, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    iget-wide v2, p0, Le/m/d/n/j/j/s;->a:J

    .line 17
    invoke-virtual {v0, v2, v3}, Le/m/d/n/j/j/w;->d(J)V

    .line 18
    iget-object v0, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    iget-object v2, p0, Le/m/d/n/j/j/s;->d:Le/m/d/n/j/p/f;

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v3, v2}, Le/m/d/n/j/j/w;->c(ZLe/m/d/n/j/p/f;)V

    .line 20
    iget-object v0, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    new-instance v2, Le/m/d/n/j/j/k;

    iget-object v3, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 21
    iget-object v3, v3, Le/m/d/n/j/j/w;->f:Le/m/d/n/j/j/n0;

    .line 22
    invoke-direct {v2, v3}, Le/m/d/n/j/j/k;-><init>(Le/m/d/n/j/j/n0;)V

    .line 23
    sget-object v2, Le/m/d/n/j/j/k;->b:Ljava/lang/String;

    .line 24
    invoke-static {v0, v2}, Le/m/d/n/j/j/w;->a(Le/m/d/n/j/j/w;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 26
    iget-object v0, v0, Le/m/d/n/j/j/w;->b:Le/m/d/n/j/j/j0;

    .line 27
    invoke-virtual {v0}, Le/m/d/n/j/j/j0;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 30
    iget-object v0, v0, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    .line 31
    iget-object v0, v0, Le/m/d/n/j/j/m;->a:Ljava/util/concurrent/Executor;

    .line 32
    iget-object v1, p0, Le/m/d/n/j/j/s;->d:Le/m/d/n/j/p/f;

    .line 33
    check-cast v1, Le/m/d/n/j/p/e;

    .line 34
    iget-object v1, v1, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 35
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 36
    new-instance v2, Le/m/d/n/j/j/r;

    invoke-direct {v2, p0, v0}, Le/m/d/n/j/j/r;-><init>(Le/m/d/n/j/j/s;Ljava/util/concurrent/Executor;)V

    .line 37
    invoke-virtual {v1, v0, v2}, Le/m/a/f/q/b0;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0
.end method
