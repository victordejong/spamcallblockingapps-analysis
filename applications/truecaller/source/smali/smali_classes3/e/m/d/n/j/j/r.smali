.class public Le/m/d/n/j/j/r;
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

.field public final synthetic b:Le/m/d/n/j/j/s;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/s;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/r;->b:Le/m/d/n/j/j/s;

    iput-object p2, p0, Le/m/d/n/j/j/r;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Le/m/d/n/j/p/j/a;

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p1, v0}, Le/m/d/n/j/f;->a(I)Z

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/tasks/Task;

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Le/m/d/n/j/j/r;->b:Le/m/d/n/j/j/s;

    iget-object v1, v1, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 6
    invoke-static {v1}, Le/m/d/n/j/j/w;->b(Le/m/d/n/j/j/w;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Le/m/d/n/j/j/r;->b:Le/m/d/n/j/j/s;

    iget-object v1, v1, Le/m/d/n/j/j/s;->e:Le/m/d/n/j/j/w;

    .line 7
    iget-object v1, v1, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 8
    iget-object v2, p0, Le/m/d/n/j/j/r;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2}, Le/m/d/n/j/j/q0;->e(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    aput-object v1, p1, v0

    .line 9
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->g(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_0
    return-object p1
.end method
