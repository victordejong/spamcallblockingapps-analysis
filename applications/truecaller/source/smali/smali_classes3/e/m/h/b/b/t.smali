.class public final synthetic Le/m/h/b/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/google/android/gms/tasks/CancellationTokenSource;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/CancellationTokenSource;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/t;->a:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iput-object p2, p0, Le/m/h/b/b/t;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Le/m/h/b/b/t;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/m/h/b/b/t;->a:Lcom/google/android/gms/tasks/CancellationTokenSource;

    iget-object v1, p0, Le/m/h/b/b/t;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Le/m/h/b/b/t;->c:Ljava/util/concurrent/Executor;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->l(Z)V

    .line 4
    invoke-virtual {v0, v2}, Le/m/h/a/d/j;->e(Ljava/util/concurrent/Executor;)V

    return-void
.end method
