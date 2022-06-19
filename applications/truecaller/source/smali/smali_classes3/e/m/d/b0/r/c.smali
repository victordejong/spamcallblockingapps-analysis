.class public final synthetic Le/m/d/b0/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/r/l;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;

.field public final synthetic c:Lcom/google/android/gms/tasks/Task;

.field public final synthetic d:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/r/l;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/r/c;->a:Le/m/d/b0/r/l;

    iput-object p2, p0, Le/m/d/b0/r/c;->b:Lcom/google/android/gms/tasks/Task;

    iput-object p3, p0, Le/m/d/b0/r/c;->c:Lcom/google/android/gms/tasks/Task;

    iput-object p4, p0, Le/m/d/b0/r/c;->d:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Le/m/d/b0/r/c;->a:Le/m/d/b0/r/l;

    iget-object v0, p0, Le/m/d/b0/r/c;->b:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Le/m/d/b0/r/c;->c:Lcom/google/android/gms/tasks/Task;

    iget-object v2, p0, Le/m/d/b0/r/c;->d:Ljava/util/Date;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance p1, Le/m/d/b0/l;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p1, v1, v0}, Le/m/d/b0/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    new-instance p1, Le/m/d/b0/l;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v0

    const-string v1, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p1, v1, v0}, Le/m/d/b0/l;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/w/m;

    invoke-virtual {v1}, Le/m/d/w/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 12
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Le/m/d/b0/r/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Le/m/d/b0/r/l$a;

    move-result-object v0

    .line 13
    iget v1, v0, Le/m/d/b0/r/l$a;->a:I

    if-eqz v1, :cond_2

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p1, Le/m/d/b0/r/l;->f:Le/m/d/b0/r/j;

    .line 16
    iget-object v2, v0, Le/m/d/b0/r/l$a;->b:Le/m/d/b0/r/k;

    .line 17
    invoke-virtual {v1, v2}, Le/m/d/b0/r/j;->c(Le/m/d/b0/r/k;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    iget-object p1, p1, Le/m/d/b0/r/l;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Le/m/d/b0/r/f;

    invoke-direct {v2, v0}, Le/m/d/b0/r/f;-><init>(Le/m/d/b0/r/l$a;)V

    .line 18
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/tasks/Task;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Le/m/d/b0/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
