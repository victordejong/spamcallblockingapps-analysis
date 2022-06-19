.class public final Le/m/a/f/q/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/Task;

.field public final synthetic b:Le/m/a/f/q/o;


# direct methods
.method public constructor <init>(Le/m/a/f/q/o;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/n;->b:Le/m/a/f/q/o;

    iput-object p2, p0, Le/m/a/f/q/n;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/q/n;->b:Le/m/a/f/q/o;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/o;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/q/n;->b:Le/m/a/f/q/o;

    .line 4
    iget-object v1, v1, Le/m/a/f/q/o;->c:Lcom/google/android/gms/tasks/OnCompleteListener;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Le/m/a/f/q/n;->a:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
