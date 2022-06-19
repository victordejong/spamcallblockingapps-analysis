.class public Le/m/d/n/j/j/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/tasks/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Le/m/d/n/j/j/w$a;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/w$a;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iput-object p2, p0, Le/m/d/n/j/j/v;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v1, p0, Le/m/d/n/j/j/v;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 3
    iget-object v0, p0, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object v0, v0, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    .line 4
    iget-object v0, v0, Le/m/d/n/j/j/w;->g:Le/m/d/n/j/n/f;

    sget-object v1, Le/m/d/n/j/j/a;->a:Le/m/d/n/j/j/a;

    .line 5
    iget-object v0, v0, Le/m/d/n/j/n/f;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Le/m/d/n/j/n/f;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object v0, v0, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    .line 9
    iget-object v0, v0, Le/m/d/n/j/j/w;->l:Le/m/d/n/j/j/q0;

    .line 10
    iget-object v0, v0, Le/m/d/n/j/j/q0;->b:Le/m/d/n/j/n/e;

    .line 11
    iget-object v1, v0, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    invoke-virtual {v1}, Le/m/d/n/j/n/f;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/n/j/n/e;->a(Ljava/util/List;)V

    .line 12
    iget-object v1, v0, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    invoke-virtual {v1}, Le/m/d/n/j/n/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/n/j/n/e;->a(Ljava/util/List;)V

    .line 13
    iget-object v1, v0, Le/m/d/n/j/n/e;->b:Le/m/d/n/j/n/f;

    invoke-virtual {v1}, Le/m/d/n/j/n/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/d/n/j/n/e;->a(Ljava/util/List;)V

    .line 14
    iget-object v0, p0, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object v0, v0, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    iget-object v0, v0, Le/m/d/n/j/j/w;->p:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 16
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 17
    iget-object v0, p0, Le/m/d/n/j/j/v;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 18
    iget-object v1, p0, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object v1, v1, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    .line 19
    iget-object v1, v1, Le/m/d/n/j/j/w;->b:Le/m/d/n/j/j/j0;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, v1, Le/m/d/n/j/j/j0;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Le/m/d/n/j/j/v;->b:Le/m/d/n/j/j/w$a;

    iget-object v1, v0, Le/m/d/n/j/j/w$a;->b:Le/m/d/n/j/j/w;

    .line 23
    iget-object v1, v1, Le/m/d/n/j/j/w;->e:Le/m/d/n/j/j/m;

    .line 24
    iget-object v1, v1, Le/m/d/n/j/j/m;->a:Ljava/util/concurrent/Executor;

    .line 25
    iget-object v0, v0, Le/m/d/n/j/j/w$a;->a:Lcom/google/android/gms/tasks/Task;

    new-instance v2, Le/m/d/n/j/j/u;

    invoke-direct {v2, p0, v1}, Le/m/d/n/j/j/u;-><init>(Le/m/d/n/j/j/v;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->u(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_1
    return-object v0

    .line 26
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An invalid data collection token was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
