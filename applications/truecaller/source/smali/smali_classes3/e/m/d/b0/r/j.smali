.class public Le/m/d/b0/r/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/d/b0/r/j$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/m/d/b0/r/j;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public final b:Le/m/d/b0/r/o;

.field public c:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/b0/r/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Le/m/d/b0/r/j;->d:Ljava/util/Map;

    .line 2
    sget-object v0, Le/m/d/b0/r/i;->a:Le/m/d/b0/r/i;

    sput-object v0, Le/m/d/b0/r/j;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Le/m/d/b0/r/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/b0/r/j;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Le/m/d/b0/r/j;->b:Le/m/d/b0/r/o;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static a(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/d/b0/r/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/m/d/b0/r/j$b;-><init>(Le/m/d/b0/r/j$a;)V

    .line 2
    sget-object v1, Le/m/d/b0/r/j;->e:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tasks/Task;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCanceledListener;)Lcom/google/android/gms/tasks/Task;

    .line 5
    iget-object v0, v0, Le/m/d/b0/r/j$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 9
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Task await timed out."

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized b()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/b0/r/k;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/d/b0/r/j;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Le/m/d/b0/r/j;->b:Le/m/d/b0/r/o;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Le/m/d/b0/r/h;

    invoke-direct {v2, v1}, Le/m/d/b0/r/h;-><init>(Le/m/d/b0/r/o;)V

    invoke-static {v0, v2}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p0, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;

    .line 4
    :cond_1
    iget-object v0, p0, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Le/m/d/b0/r/k;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/b0/r/k;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/b0/r/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/b0/r/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Le/m/d/b0/r/a;

    invoke-direct {v1, p0, p1}, Le/m/d/b0/r/a;-><init>(Le/m/d/b0/r/j;Le/m/d/b0/r/k;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Le/m/d/b0/r/j;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/m/d/b0/r/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p1}, Le/m/d/b0/r/b;-><init>(Le/m/d/b0/r/j;ZLe/m/d/b0/r/k;)V

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
