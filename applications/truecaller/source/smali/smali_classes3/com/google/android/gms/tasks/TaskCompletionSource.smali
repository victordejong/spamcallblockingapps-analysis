.class public Lcom/google/android/gms/tasks/TaskCompletionSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/f/q/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/f/q/b0<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/m/a/f/q/b0;

    invoke-direct {v0}, Le/m/a/f/q/b0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tasks/CancellationToken;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/m/a/f/q/b0;

    invoke-direct {v0}, Le/m/a/f/q/b0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    new-instance v0, Le/m/a/f/q/x;

    invoke-direct {v0, p0}, Le/m/a/f/q/x;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/CancellationToken;->b(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Exception must not be null"

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Le/m/a/f/q/b0;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Le/m/a/f/q/b0;->c:Z

    if-eqz v2, :cond_0

    .line 4
    monitor-exit v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Le/m/a/f/q/b0;->c:Z

    iput-object p1, v0, Le/m/a/f/q/b0;->f:Ljava/lang/Exception;

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Le/m/a/f/q/b0;->b:Le/m/a/f/q/w;

    .line 6
    invoke-virtual {p1, v0}, Le/m/a/f/q/w;->b(Lcom/google/android/gms/tasks/Task;)V

    move p1, v2

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    invoke-virtual {v0, p1}, Le/m/a/f/q/b0;->y(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
