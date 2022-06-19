.class public final synthetic Le/m/d/b0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/k;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;

.field public final synthetic c:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/k;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/e;->a:Le/m/d/b0/k;

    iput-object p2, p0, Le/m/d/b0/e;->b:Lcom/google/android/gms/tasks/Task;

    iput-object p3, p0, Le/m/d/b0/e;->c:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object p1, p0, Le/m/d/b0/e;->a:Le/m/d/b0/k;

    iget-object v0, p0, Le/m/d/b0/e;->b:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Le/m/d/b0/e;->c:Lcom/google/android/gms/tasks/Task;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/b0/r/k;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/b0/r/k;

    if-eqz v1, :cond_2

    .line 6
    iget-object v3, v0, Le/m/d/b0/r/k;->c:Ljava/util/Date;

    iget-object v1, v1, Le/m/d/b0/r/k;->c:Ljava/util/Date;

    .line 7
    invoke-virtual {v3, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_3
    iget-object v1, p1, Le/m/d/b0/k;->e:Le/m/d/b0/r/j;

    .line 10
    invoke-virtual {v1, v0}, Le/m/d/b0/r/j;->c(Le/m/d/b0/r/k;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    iget-object v1, p1, Le/m/d/b0/k;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Le/m/d/b0/f;

    invoke-direct {v2, p1}, Le/m/d/b0/f;-><init>(Le/m/d/b0/k;)V

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->k(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_3

    .line 12
    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_3
    return-object p1
.end method
