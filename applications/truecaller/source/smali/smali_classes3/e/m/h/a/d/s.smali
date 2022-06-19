.class public final synthetic Le/m/h/a/d/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/concurrent/Callable;

.field public final b:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/a/d/s;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Le/m/h/a/d/s;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Le/m/h/a/d/s;->a:Ljava/util/concurrent/Callable;

    iget-object v1, p0, Le/m/h/a/d/s;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Le/m/h/a/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->w(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v2, Le/m/h/a/a;

    const/16 v3, 0xd

    const-string v4, "Internal error has occurred when executing ML Kit tasks"

    invoke-direct {v2, v4, v3, v0}, Le/m/h/a/a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 4
    iget-object v0, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, v2}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v1, v0}, Le/m/a/f/q/b0;->v(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
