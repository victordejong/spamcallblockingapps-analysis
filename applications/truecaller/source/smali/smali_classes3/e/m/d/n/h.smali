.class public Le/m/d/n/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le/m/d/n/j/j/d0;

.field public final synthetic c:Le/m/d/n/j/p/e;


# direct methods
.method public constructor <init>(ZLe/m/d/n/j/j/d0;Le/m/d/n/j/p/e;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/m/d/n/h;->a:Z

    iput-object p2, p0, Le/m/d/n/h;->b:Le/m/d/n/j/j/d0;

    iput-object p3, p0, Le/m/d/n/h;->c:Le/m/d/n/j/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/d/n/h;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/d/n/h;->b:Le/m/d/n/j/j/d0;

    iget-object v1, p0, Le/m/d/n/h;->c:Le/m/d/n/j/p/e;

    .line 3
    iget-object v2, v0, Le/m/d/n/j/j/d0;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Le/m/d/n/j/j/b0;

    invoke-direct {v3, v0, v1}, Le/m/d/n/j/j/b0;-><init>(Le/m/d/n/j/j/d0;Le/m/d/n/j/p/f;)V

    .line 4
    sget-object v0, Le/m/d/n/j/j/t0;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    new-instance v1, Le/m/d/n/j/j/s0;

    invoke-direct {v1, v3, v0}, Le/m/d/n/j/j/s0;-><init>(Ljava/util/concurrent/Callable;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
