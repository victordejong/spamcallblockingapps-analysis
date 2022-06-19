.class public final synthetic Le/m/h/b/b/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final a:Le/m/h/b/b/e/x;

.field public final b:Le/m/h/b/b/b;

.field public final c:Le/m/h/a/c/a;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/x;Le/m/h/b/b/b;Le/m/h/a/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/c;->a:Le/m/h/b/b/e/x;

    iput-object p2, p0, Le/m/h/b/b/e/c;->b:Le/m/h/b/b/b;

    iput-object p3, p0, Le/m/h/b/b/e/c;->c:Le/m/h/a/c/a;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 7

    iget-object p1, p0, Le/m/h/b/b/e/c;->a:Le/m/h/b/b/e/x;

    iget-object v0, p0, Le/m/h/b/b/e/c;->b:Le/m/h/b/b/b;

    iget-object v1, p0, Le/m/h/b/b/e/c;->c:Le/m/h/a/c/a;

    .line 1
    iget-object p1, p1, Le/m/h/b/b/e/x;->b:Le/m/h/b/b/e/q$a;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Le/m/h/b/b/e/q$a;->a(Le/m/h/b/b/b;Z)Le/m/h/b/b/e/q;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->d(Landroid/os/Handler;)V

    .line 6
    iget-object v0, p1, Le/m/h/b/b/e/q;->c:Lcom/google/android/gms/tasks/Task;

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Le/m/h/b/b/e/q;->e:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v2, "TranslateModelLoader"

    const-string v3, "Initial loading, check for model updates."

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object v0, p1, Le/m/h/b/b/e/q;->d:Lcom/google/android/gms/tasks/CancellationTokenSource;

    .line 9
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Le/m/a/f/q/g;

    .line 11
    invoke-direct {v2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    .line 12
    iget-object v0, p1, Le/m/h/b/b/e/q;->b:Le/m/h/b/b/e/q$b;

    .line 13
    iget-wide v3, v0, Le/m/h/b/b/e/q$b;->a:D

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    .line 14
    invoke-static {}, Le/m/h/a/d/f;->a()Le/m/h/a/d/f;

    move-result-object v0

    new-instance v5, Le/m/h/b/b/e/u;

    invoke-direct {v5, v2}, Le/m/h/b/b/e/u;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 15
    iget-object v0, v0, Le/m/h/a/d/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    iget-object v0, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Le/m/h/b/b/e/p;

    invoke-direct {v3, p1, v1}, Le/m/h/b/b/e/p;-><init>(Le/m/h/b/b/e/q;Le/m/h/a/c/a;)V

    .line 18
    invoke-virtual {v0, v2, v3}, Le/m/a/f/q/b0;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Le/m/h/b/b/e/s;

    invoke-direct {v2, p1}, Le/m/h/b/b/e/s;-><init>(Le/m/h/b/b/e/q;)V

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iput-object v0, p1, Le/m/h/b/b/e/q;->c:Lcom/google/android/gms/tasks/Task;

    .line 21
    :cond_0
    iget-object v0, p1, Le/m/h/b/b/e/q;->c:Lcom/google/android/gms/tasks/Task;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbc;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Le/m/h/b/b/e/r;

    invoke-direct {v2, p1}, Le/m/h/b/b/e/r;-><init>(Le/m/h/b/b/e/q;)V

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
