.class public final Le/m/a/f/q/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/Task;

.field public final synthetic b:Le/m/a/f/q/i;


# direct methods
.method public constructor <init>(Le/m/a/f/q/i;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    iput-object p2, p0, Le/m/a/f/q/h;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/q/h;->a:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/i;->c:Le/m/a/f/q/b0;

    .line 3
    invoke-virtual {v0}, Le/m/a/f/q/b0;->x()Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    .line 4
    iget-object v0, v0, Le/m/a/f/q/i;->b:Lcom/google/android/gms/tasks/Continuation;

    .line 5
    iget-object v1, p0, Le/m/a/f/q/h;->a:Lcom/google/android/gms/tasks/Task;

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/tasks/Continuation;->then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    .line 7
    iget-object v1, v1, Le/m/a/f/q/i;->c:Le/m/a/f/q/b0;

    .line 8
    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    .line 9
    iget-object v1, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    .line 10
    iget-object v1, v1, Le/m/a/f/q/i;->c:Le/m/a/f/q/b0;

    .line 11
    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    .line 13
    iget-object v1, v1, Le/m/a/f/q/i;->c:Le/m/a/f/q/b0;

    .line 14
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Le/m/a/f/q/h;->b:Le/m/a/f/q/i;

    .line 16
    iget-object v1, v1, Le/m/a/f/q/i;->c:Le/m/a/f/q/b0;

    .line 17
    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    return-void
.end method
