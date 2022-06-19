.class final Lcom/google/android/gms/tasks/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f:Lcom/google/android/gms/tasks/g;

.field private final synthetic g:Lcom/google/android/gms/tasks/l;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/l;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    iput-object p2, p0, Lcom/google/android/gms/tasks/n;->f:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-static {v0}, Lcom/google/android/gms/tasks/l;->d(Lcom/google/android/gms/tasks/l;)Lcom/google/android/gms/tasks/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->f:Lcom/google/android/gms/tasks/g;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/a;->a(Lcom/google/android/gms/tasks/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/g;
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/l;->c(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/tasks/i;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/e;)Lcom/google/android/gms/tasks/g;

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->g(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/g;

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/g;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/g;

    return-void

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-static {v1}, Lcom/google/android/gms/tasks/l;->e(Lcom/google/android/gms/tasks/l;)Lcom/google/android/gms/tasks/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/b0;->v(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-static {v1}, Lcom/google/android/gms/tasks/l;->e(Lcom/google/android/gms/tasks/l;)Lcom/google/android/gms/tasks/b0;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/b0;->v(Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/tasks/n;->g:Lcom/google/android/gms/tasks/l;

    invoke-static {v1}, Lcom/google/android/gms/tasks/l;->e(Lcom/google/android/gms/tasks/l;)Lcom/google/android/gms/tasks/b0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/b0;->v(Ljava/lang/Exception;)V

    return-void
.end method
