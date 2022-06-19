.class public Le/m/d/n/j/j/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/m/d/n/j/j/j0;

.field public final c:J

.field public d:Le/m/d/n/j/j/f0;

.field public e:Le/m/d/n/j/j/f0;

.field public f:Le/m/d/n/j/j/w;

.field public final g:Le/m/d/n/j/j/n0;

.field public final h:Le/m/d/n/j/n/f;

.field public final i:Le/m/d/n/j/i/b;

.field public final j:Le/m/d/n/j/h/a;

.field public final k:Ljava/util/concurrent/ExecutorService;

.field public final l:Le/m/d/n/j/j/m;

.field public final m:Le/m/d/n/j/c;


# direct methods
.method public constructor <init>(Le/m/d/g;Le/m/d/n/j/j/n0;Le/m/d/n/j/c;Le/m/d/n/j/j/j0;Le/m/d/n/j/i/b;Le/m/d/n/j/h/a;Le/m/d/n/j/n/f;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Le/m/d/n/j/j/d0;->b:Le/m/d/n/j/j/j0;

    .line 3
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 4
    iget-object p1, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Le/m/d/n/j/j/d0;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Le/m/d/n/j/j/d0;->g:Le/m/d/n/j/j/n0;

    .line 7
    iput-object p3, p0, Le/m/d/n/j/j/d0;->m:Le/m/d/n/j/c;

    .line 8
    iput-object p5, p0, Le/m/d/n/j/j/d0;->i:Le/m/d/n/j/i/b;

    .line 9
    iput-object p6, p0, Le/m/d/n/j/j/d0;->j:Le/m/d/n/j/h/a;

    .line 10
    iput-object p8, p0, Le/m/d/n/j/j/d0;->k:Ljava/util/concurrent/ExecutorService;

    .line 11
    iput-object p7, p0, Le/m/d/n/j/j/d0;->h:Le/m/d/n/j/n/f;

    .line 12
    new-instance p1, Le/m/d/n/j/j/m;

    invoke-direct {p1, p8}, Le/m/d/n/j/j/m;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Le/m/d/n/j/j/d0;->l:Le/m/d/n/j/j/m;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Le/m/d/n/j/j/d0;->c:J

    return-void
.end method

.method public static a(Le/m/d/n/j/j/d0;Le/m/d/n/j/p/f;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 1
    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v1, p0, Le/m/d/n/j/j/d0;->l:Le/m/d/n/j/j/m;

    invoke-virtual {v1}, Le/m/d/n/j/j/m;->a()V

    .line 2
    iget-object v1, p0, Le/m/d/n/j/j/d0;->d:Le/m/d/n/j/j/f0;

    invoke-virtual {v1}, Le/m/d/n/j/j/f0;->a()Z

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 4
    :try_start_0
    iget-object v1, p0, Le/m/d/n/j/j/d0;->i:Le/m/d/n/j/i/b;

    new-instance v2, Le/m/d/n/j/j/b;

    invoke-direct {v2, p0}, Le/m/d/n/j/j/b;-><init>(Le/m/d/n/j/j/d0;)V

    invoke-interface {v1, v2}, Le/m/d/n/j/i/b;->a(Le/m/d/n/j/i/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    check-cast p1, Le/m/d/n/j/p/e;

    :try_start_1
    invoke-virtual {p1}, Le/m/d/n/j/p/e;->b()Le/m/d/n/j/p/j/d;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Le/m/d/n/j/p/j/d;->b()Le/m/d/n/j/p/j/b;

    move-result-object v1

    iget-boolean v1, v1, Le/m/d/n/j/p/j/b;->a:Z

    if-nez v1, :cond_0

    const/4 p1, 0x3

    .line 7
    invoke-virtual {v0, p1}, Le/m/d/n/j/f;->a(I)Z

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Collection of crash reports disabled in Crashlytics settings."

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    invoke-virtual {v1, p1}, Le/m/d/n/j/j/w;->e(Le/m/d/n/j/p/f;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 10
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 11
    :cond_1
    iget-object v1, p0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 12
    iget-object p1, p1, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 14
    invoke-virtual {v1, p1}, Le/m/d/n/j/j/w;->h(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v1, 0x6

    .line 15
    :try_start_2
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :goto_0
    invoke-virtual {p0}, Le/m/d/n/j/j/d0;->b()V

    return-object p1

    :goto_1
    invoke-virtual {p0}, Le/m/d/n/j/j/d0;->b()V

    .line 18
    throw p1
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/d0;->l:Le/m/d/n/j/j/m;

    new-instance v1, Le/m/d/n/j/j/d0$a;

    invoke-direct {v1, p0}, Le/m/d/n/j/j/d0$a;-><init>(Le/m/d/n/j/j/d0;)V

    invoke-virtual {v0, v1}, Le/m/d/n/j/j/m;->b(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/d0;->f:Le/m/d/n/j/j/w;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, v0, Le/m/d/n/j/j/w;->d:Le/m/d/n/j/k/k;

    invoke-virtual {v1, p1, p2}, Le/m/d/n/j/k/k;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, v0, Le/m/d/n/j/j/w;->a:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    throw p1

    .line 7
    :cond_2
    :goto_1
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 p2, 0x6

    .line 8
    invoke-virtual {p1, p2}, Le/m/d/n/j/f;->a(I)Z

    :goto_2
    return-void
.end method
