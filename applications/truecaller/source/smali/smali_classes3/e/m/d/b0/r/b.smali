.class public final synthetic Le/m/d/b0/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/r/j;

.field public final synthetic b:Z

.field public final synthetic c:Le/m/d/b0/r/k;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/r/j;ZLe/m/d/b0/r/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/r/b;->a:Le/m/d/b0/r/j;

    iput-boolean p2, p0, Le/m/d/b0/r/b;->b:Z

    iput-object p3, p0, Le/m/d/b0/r/b;->c:Le/m/d/b0/r/k;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    iget-object v0, p0, Le/m/d/b0/r/b;->a:Le/m/d/b0/r/j;

    iget-boolean v1, p0, Le/m/d/b0/r/b;->b:Z

    iget-object v2, p0, Le/m/d/b0/r/b;->c:Le/m/d/b0/r/k;

    check-cast p1, Ljava/lang/Void;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iput-object p1, v0, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 5
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
