.class public Le/m/d/n/j/j/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Le/m/d/n/j/p/j/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Le/m/d/n/j/j/v;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/v;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/u;->b:Le/m/d/n/j/j/v;

    iput-object p2, p0, Le/m/d/n/j/j/u;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/d/n/j/p/j/a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x5

    .line 3
    invoke-virtual {p1, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/m/d/n/j/j/u;->b:Le/m/d/n/j/j/v;

    iget-object p1, p1, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object p1, p1, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    invoke-static {p1}, Le/m/d/n/j/j/w;->b(Le/m/d/n/j/j/w;)Lcom/google/android/gms/tasks/Task;

    .line 6
    iget-object p1, p0, Le/m/d/n/j/j/u;->b:Le/m/d/n/j/j/v;

    iget-object p1, p1, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object p1, p1, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    .line 7
    iget-object p1, p1, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 8
    iget-object v1, p0, Le/m/d/n/j/j/u;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v1}, Le/m/d/n/j/j/q0;->e(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    .line 9
    iget-object p1, p0, Le/m/d/n/j/j/u;->b:Le/m/d/n/j/j/v;

    iget-object p1, p1, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object p1, p1, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    iget-object p1, p1, Le/m/d/n/j/j/w;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
