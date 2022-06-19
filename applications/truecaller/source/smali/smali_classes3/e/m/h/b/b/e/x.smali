.class public Le/m/h/b/b/e/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/h/a/d/n/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/h/a/d/n/h<",
        "Le/m/h/b/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

.field public final b:Le/m/h/b/b/e/q$a;

.field public final c:Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;Le/m/h/b/b/e/q$a;Le/m/h/b/b/e/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/x;->a:Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    .line 3
    iput-object p2, p0, Le/m/h/b/b/e/x;->b:Le/m/h/b/b/e/q$a;

    .line 4
    iget-object p1, p3, Le/m/h/a/d/n/b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 6
    iput-object p1, p0, Le/m/h/b/b/e/x;->c:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public a(Le/m/h/a/c/b;Le/m/h/a/c/a;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    check-cast p1, Le/m/h/b/b/b;

    .line 2
    iget-object v0, p1, Le/m/h/b/b/b;->e:Ljava/lang/String;

    const-string v1, "en"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/h/b/b/e/x;->c:Lcom/google/android/gms/tasks/Task;

    .line 6
    sget-object v1, Le/m/h/a/d/f;->b:Ljava/lang/Object;

    sget-object v1, Le/m/h/a/d/f$a;->a:Le/m/h/a/d/f$a;

    new-instance v2, Le/m/h/b/b/e/c;

    invoke-direct {v2, p0, p1, p2}, Le/m/h/b/b/e/c;-><init>(Le/m/h/b/b/e/x;Le/m/h/b/b/b;Le/m/h/a/c/a;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/Set<",
            "Le/m/h/b/b/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/m/h/b/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    new-instance v4, Le/m/h/b/b/b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Le/m/h/b/b/b;-><init>(Ljava/lang/String;Le/m/h/b/b/s;)V

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, v4}, Le/m/h/b/b/e/x;->e(Le/m/h/b/b/b;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->g(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v3, Le/m/a/f/q/b;

    invoke-direct {v3, v2}, Le/m/a/f/q/b;-><init>(Ljava/util/Collection;)V

    .line 11
    sget-object v2, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 12
    :goto_1
    new-instance v2, Le/m/h/b/b/e/a0;

    invoke-direct {v2, v1}, Le/m/h/b/b/e/a0;-><init>(Ljava/util/List;)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public c(Le/m/h/a/c/b;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    check-cast p1, Le/m/h/b/b/b;

    .line 2
    iget-object v0, p1, Le/m/h/b/b/b;->e:Ljava/lang/String;

    const-string v1, "en"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/h/b/b/e/x;->c:Lcom/google/android/gms/tasks/Task;

    .line 6
    sget-object v1, Le/m/h/a/d/f;->b:Ljava/lang/Object;

    sget-object v1, Le/m/h/a/d/f$a;->a:Le/m/h/a/d/f$a;

    new-instance v2, Le/m/h/b/b/e/z;

    invoke-direct {v2, p0, p1}, Le/m/h/b/b/e/z;-><init>(Le/m/h/b/b/e/x;Le/m/h/b/b/b;)V

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Le/m/h/b/b/e/b;

    invoke-direct {v0, p0}, Le/m/h/b/b/e/b;-><init>(Le/m/h/b/b/e/x;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Le/m/h/a/c/b;)Lcom/google/android/gms/tasks/Task;
    .locals 0

    .line 1
    check-cast p1, Le/m/h/b/b/b;

    invoke-virtual {p0, p1}, Le/m/h/b/b/e/x;->e(Le/m/h/b/b/b;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final e(Le/m/h/b/b/b;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/h/b/b/b;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/m/h/b/b/b;->e:Ljava/lang/String;

    const-string v1, "en"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/h/b/b/e/x;->c:Lcom/google/android/gms/tasks/Task;

    .line 5
    sget-object v1, Le/m/h/a/d/f;->b:Ljava/lang/Object;

    sget-object v1, Le/m/h/a/d/f$a;->a:Le/m/h/a/d/f$a;

    new-instance v2, Le/m/h/b/b/e/b0;

    invoke-direct {v2, p0, p1}, Le/m/h/b/b/e/b0;-><init>(Le/m/h/b/b/e/x;Le/m/h/b/b/b;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Le/m/h/b/b/e/d;

    invoke-direct {v0, p0}, Le/m/h/b/b/e/d;-><init>(Le/m/h/b/b/e/x;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
