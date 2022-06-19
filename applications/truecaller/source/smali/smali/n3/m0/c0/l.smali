.class public Ln3/m0/c0/l;
.super Ln3/m0/y;
.source "SourceFile"


# static fields
.field public static j:Ln3/m0/c0/l;

.field public static k:Ln3/m0/c0/l;

.field public static final l:Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ln3/m0/c;

.field public c:Landroidx/work/impl/WorkDatabase;

.field public d:Ln3/m0/c0/t/x/a;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/m0/c0/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ln3/m0/c0/d;

.field public g:Ln3/m0/c0/t/i;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Ln3/m0/c0/l;->j:Ln3/m0/c0/l;

    .line 3
    sput-object v0, Ln3/m0/c0/l;->k:Ln3/m0/c0/l;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/m0/c0/l;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;)V
    .locals 13

    move-object v1, p0

    move-object v0, p2

    move-object/from16 v8, p3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3
    move-object v4, v8

    check-cast v4, Ln3/m0/c0/t/x/b;

    .line 4
    iget-object v4, v4, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    .line 5
    sget v5, Landroidx/work/impl/WorkDatabase;->b:I

    .line 6
    const-class v5, Landroidx/work/impl/WorkDatabase;

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    .line 7
    new-instance v2, Ln3/c0/q$a;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7}, Ln3/c0/q$a;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    iput-boolean v6, v2, Ln3/c0/q$a;->h:Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Ln3/m0/c0/k;->a:Ljava/lang/String;

    const-string v2, "androidx.work.workdb"

    .line 10
    invoke-static {v3, v5, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->R(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln3/c0/q$a;

    move-result-object v2

    .line 11
    new-instance v5, Ln3/m0/c0/h;

    invoke-direct {v5, v3}, Ln3/m0/c0/h;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object v5, v2, Ln3/c0/q$a;->g:Ln3/e0/a/c$c;

    .line 13
    :goto_0
    iput-object v4, v2, Ln3/c0/q$a;->e:Ljava/util/concurrent/Executor;

    .line 14
    new-instance v4, Ln3/m0/c0/i;

    invoke-direct {v4}, Ln3/m0/c0/i;-><init>()V

    .line 15
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->a(Ln3/c0/q$b;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    sget-object v5, Ln3/m0/c0/j;->a:Ln3/c0/f0/a;

    const/4 v9, 0x0

    aput-object v5, v4, v9

    .line 16
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    new-instance v5, Ln3/m0/c0/j$h;

    const/4 v7, 0x3

    const/4 v10, 0x2

    invoke-direct {v5, v3, v10, v7}, Ln3/m0/c0/j$h;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v9

    .line 17
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    sget-object v5, Ln3/m0/c0/j;->b:Ln3/c0/f0/a;

    aput-object v5, v4, v9

    .line 18
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    sget-object v5, Ln3/m0/c0/j;->c:Ln3/c0/f0/a;

    aput-object v5, v4, v9

    .line 19
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    new-instance v5, Ln3/m0/c0/j$h;

    const/4 v7, 0x5

    const/4 v11, 0x6

    invoke-direct {v5, v3, v7, v11}, Ln3/m0/c0/j$h;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v9

    .line 20
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    sget-object v5, Ln3/m0/c0/j;->d:Ln3/c0/f0/a;

    aput-object v5, v4, v9

    .line 21
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    sget-object v5, Ln3/m0/c0/j;->e:Ln3/c0/f0/a;

    aput-object v5, v4, v9

    .line 22
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    sget-object v5, Ln3/m0/c0/j;->f:Ln3/c0/f0/a;

    aput-object v5, v4, v9

    .line 23
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    new-instance v5, Ln3/m0/c0/j$i;

    invoke-direct {v5, v3}, Ln3/m0/c0/j$i;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v9

    .line 24
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v4, v6, [Ln3/c0/f0/a;

    new-instance v5, Ln3/m0/c0/j$h;

    const/16 v7, 0xa

    const/16 v11, 0xb

    invoke-direct {v5, v3, v7, v11}, Ln3/m0/c0/j$h;-><init>(Landroid/content/Context;II)V

    aput-object v5, v4, v9

    .line 25
    invoke-virtual {v2, v4}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    new-array v3, v6, [Ln3/c0/f0/a;

    sget-object v4, Ln3/m0/c0/j;->g:Ln3/c0/f0/a;

    aput-object v4, v3, v9

    .line 26
    invoke-virtual {v2, v3}, Ln3/c0/q$a;->b([Ln3/c0/f0/a;)Ln3/c0/q$a;

    .line 27
    invoke-virtual {v2}, Ln3/c0/q$a;->d()Ln3/c0/q$a;

    .line 28
    invoke-virtual {v2}, Ln3/c0/q$a;->c()Ln3/c0/q;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/work/impl/WorkDatabase;

    .line 29
    invoke-direct {p0}, Ln3/m0/y;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 31
    new-instance v3, Ln3/m0/p$a;

    .line 32
    iget v4, v0, Ln3/m0/c;->f:I

    .line 33
    invoke-direct {v3, v4}, Ln3/m0/p$a;-><init>(I)V

    .line 34
    const-class v4, Ln3/m0/p;

    monitor-enter v4

    .line 35
    :try_start_0
    sput-object v3, Ln3/m0/p;->a:Ln3/m0/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v4

    new-array v3, v10, [Ln3/m0/c0/e;

    .line 37
    sget-object v4, Ln3/m0/c0/f;->a:Ljava/lang/String;

    .line 38
    new-instance v4, Ln3/m0/c0/p/c/b;

    invoke-direct {v4, v2, p0}, Ln3/m0/c0/p/c/b;-><init>(Landroid/content/Context;Ln3/m0/c0/l;)V

    .line 39
    const-class v5, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-static {v2, v5, v6}, Ln3/m0/c0/t/h;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 40
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v5

    sget-object v7, Ln3/m0/c0/f;->a:Ljava/lang/String;

    new-array v10, v9, [Ljava/lang/Throwable;

    const-string v12, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v5, v7, v12, v10}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    aput-object v4, v3, v9

    .line 41
    new-instance v4, Ln3/m0/c0/p/a/c;

    invoke-direct {v4, v2, p2, v8, p0}, Ln3/m0/c0/p/a/c;-><init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;Ln3/m0/c0/l;)V

    aput-object v4, v3, v6

    .line 42
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 43
    new-instance v12, Ln3/m0/c0/d;

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Ln3/m0/c0/d;-><init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 45
    iput-object v2, v1, Ln3/m0/c0/l;->a:Landroid/content/Context;

    .line 46
    iput-object v0, v1, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 47
    iput-object v8, v1, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    .line 48
    iput-object v11, v1, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 49
    iput-object v10, v1, Ln3/m0/c0/l;->e:Ljava/util/List;

    .line 50
    iput-object v12, v1, Ln3/m0/c0/l;->f:Ln3/m0/c0/d;

    .line 51
    new-instance v0, Ln3/m0/c0/t/i;

    invoke-direct {v0, v11}, Ln3/m0/c0/t/i;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object v0, v1, Ln3/m0/c0/l;->g:Ln3/m0/c0/t/i;

    .line 52
    iput-boolean v9, v1, Ln3/m0/c0/l;->h:Z

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    :goto_1
    iget-object v0, v1, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    new-instance v3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v3, v2, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Ln3/m0/c0/l;)V

    check-cast v0, Ln3/m0/c0/t/x/b;

    .line 56
    iget-object v0, v0, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {v0, v3}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 57
    monitor-exit v4

    throw v2
.end method

.method public static n(Landroid/content/Context;)Ln3/m0/c0/l;
    .locals 2

    .line 1
    sget-object v0, Ln3/m0/c0/l;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Ln3/m0/c0/l;->j:Ln3/m0/c0/l;

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Ln3/m0/c0/l;->k:Ln3/m0/c0/l;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez v1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 7
    instance-of v1, p0, Ln3/m0/c$b;

    if-eqz v1, :cond_1

    .line 8
    move-object v1, p0

    check-cast v1, Ln3/m0/c$b;

    .line 9
    invoke-interface {v1}, Ln3/m0/c$b;->C()Ln3/m0/c;

    move-result-object v1

    .line 10
    invoke-static {p0, v1}, Ln3/m0/c0/l;->o(Landroid/content/Context;Ln3/m0/c;)V

    .line 11
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    :catchall_0
    move-exception p0

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    .line 15
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2
.end method

.method public static o(Landroid/content/Context;Ln3/m0/c;)V
    .locals 4

    .line 1
    sget-object v0, Ln3/m0/c0/l;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Ln3/m0/c0/l;->j:Ln3/m0/c0/l;

    if-eqz v1, :cond_1

    sget-object v2, Ln3/m0/c0/l;->k:Ln3/m0/c0/l;

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 5
    sget-object v1, Ln3/m0/c0/l;->k:Ln3/m0/c0/l;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ln3/m0/c0/l;

    new-instance v2, Ln3/m0/c0/t/x/b;

    .line 7
    iget-object v3, p1, Ln3/m0/c;->b:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {v2, v3}, Ln3/m0/c0/t/x/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Ln3/m0/c0/l;-><init>(Landroid/content/Context;Ln3/m0/c;Ln3/m0/c0/t/x/a;)V

    sput-object v1, Ln3/m0/c0/l;->k:Ln3/m0/c0/l;

    .line 9
    :cond_2
    sget-object p0, Ln3/m0/c0/l;->k:Ln3/m0/c0/l;

    sput-object p0, Ln3/m0/c0/l;->j:Ln3/m0/c0/l;

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)Ln3/m0/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln3/m0/h;",
            "Ljava/util/List<",
            "Ln3/m0/r;",
            ">;)",
            "Ln3/m0/w;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/m0/c0/g;

    invoke-direct {v0, p0, p1, p2, p3}, Ln3/m0/c0/g;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginUniqueWork needs at least one OneTimeWorkRequest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/util/List;)Ln3/m0/w;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/m0/r;",
            ">;)",
            "Ln3/m0/w;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/m0/c0/g;

    .line 3
    sget-object v4, Ln3/m0/h;->b:Ln3/m0/h;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ln3/m0/c0/g;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Ln3/m0/h;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "beginWith needs at least one OneTimeWorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)Ln3/m0/s;
    .locals 2

    .line 1
    new-instance v0, Ln3/m0/c0/t/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ln3/m0/c0/t/c;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Z)V

    .line 2
    iget-object p1, p0, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    check-cast p1, Ln3/m0/c0/t/x/b;

    .line 3
    iget-object p1, p1, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {p1, v0}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, v0, Ln3/m0/c0/t/d;->a:Ln3/m0/c0/c;

    return-object p1
.end method

.method public g(Ljava/util/List;)Ln3/m0/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ln3/m0/z;",
            ">;)",
            "Ln3/m0/s;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/m0/c0/g;

    .line 3
    sget-object v4, Ln3/m0/h;->b:Ln3/m0/h;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Ln3/m0/c0/g;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Ln3/m0/h;Ljava/util/List;Ljava/util/List;)V

    .line 4
    invoke-virtual {v0}, Ln3/m0/c0/g;->a()Ln3/m0/s;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ljava/lang/String;Ln3/m0/g;Ln3/m0/u;)Ln3/m0/s;
    .locals 1

    .line 1
    sget-object v0, Ln3/m0/g;->b:Ln3/m0/g;

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p2, Ln3/m0/h;->b:Ln3/m0/h;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    :goto_0
    new-instance v0, Ln3/m0/c0/g;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Ln3/m0/c0/g;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)V

    .line 6
    invoke-virtual {v0}, Ln3/m0/c0/g;->a()Ln3/m0/s;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)Ln3/m0/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ln3/m0/h;",
            "Ljava/util/List<",
            "Ln3/m0/r;",
            ">;)",
            "Ln3/m0/s;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/m0/c0/g;

    invoke-direct {v0, p0, p1, p2, p3}, Ln3/m0/c0/g;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Ln3/m0/h;Ljava/util/List;)V

    invoke-virtual {v0}, Ln3/m0/c0/g;->a()Ln3/m0/s;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/util/UUID;)Landroidx/lifecycle/LiveData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ln3/m0/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast v0, Ln3/m0/c0/s/t;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN ("

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 7
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x0

    .line 10
    invoke-static {v1, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 12
    invoke-virtual {v1, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v1, v3, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object p1

    const-string v3, "WorkTag"

    const-string v4, "WorkProgress"

    const-string v5, "workspec"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ln3/m0/c0/s/r;

    invoke-direct {v4, v0, v1}, Ln3/m0/c0/s/r;-><init>(Ln3/m0/c0/s/t;Ln3/c0/y;)V

    invoke-virtual {p1, v3, v2, v4}, Ln3/c0/o;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 15
    new-instance v0, Ln3/m0/c0/l$a;

    invoke-direct {v0, p0}, Ln3/m0/c0/l$a;-><init>(Ln3/m0/c0/l;)V

    iget-object v1, p0, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    .line 16
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v3, Ln3/v/i0;

    invoke-direct {v3}, Ln3/v/i0;-><init>()V

    .line 18
    new-instance v4, Ln3/m0/c0/t/g;

    invoke-direct {v4, v1, v2, v0, v3}, Ln3/m0/c0/t/g;-><init>(Ln3/m0/c0/t/x/a;Ljava/lang/Object;Ln3/c/a/c/a;Ln3/v/i0;)V

    invoke-virtual {v3, p1, v4}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-object v3
.end method

.method public m(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Ln3/m0/x;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v0

    .line 2
    check-cast v0, Ln3/m0/c0/s/t;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SELECT id, state, output, run_attempt_count FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object p1, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object p1

    const-string v3, "WorkTag"

    const-string v4, "WorkProgress"

    const-string v5, "workspec"

    const-string v6, "workname"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ln3/m0/c0/s/s;

    invoke-direct {v4, v0, v1}, Ln3/m0/c0/s/s;-><init>(Ln3/m0/c0/s/t;Ln3/c0/y;)V

    invoke-virtual {p1, v3, v2, v4}, Ln3/c0/o;->b([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 8
    sget-object v0, Ln3/m0/c0/s/p;->t:Ln3/c/a/c/a;

    iget-object v1, p0, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    .line 9
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v3, Ln3/v/i0;

    invoke-direct {v3}, Ln3/v/i0;-><init>()V

    .line 11
    new-instance v4, Ln3/m0/c0/t/g;

    invoke-direct {v4, v1, v2, v0, v3}, Ln3/m0/c0/t/g;-><init>(Ln3/m0/c0/t/x/a;Ljava/lang/Object;Ln3/c/a/c/a;Ln3/v/i0;)V

    invoke-virtual {v3, p1, v4}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-object v3
.end method

.method public p()V
    .locals 2

    .line 1
    sget-object v0, Ln3/m0/c0/l;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Ln3/m0/c0/l;->h:Z

    .line 3
    iget-object v1, p0, Ln3/m0/c0/l;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Ln3/m0/c0/l;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public q()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/m0/c0/l;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Ln3/m0/c0/p/c/b;->e:Ljava/lang/String;

    const-string v1, "jobscheduler"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, v1}, Ln3/m0/c0/p/c/b;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 7
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v1, v2}, Ln3/m0/c0/p/c/b;->b(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 9
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()Ln3/m0/c0/s/q;

    move-result-object v0

    check-cast v0, Ln3/m0/c0/s/t;

    .line 10
    iget-object v1, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 11
    iget-object v1, v0, Ln3/m0/c0/s/t;->i:Ln3/c0/c0;

    invoke-virtual {v1}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v1

    .line 12
    iget-object v2, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v1}, Ln3/e0/a/f;->A()I

    .line 14
    iget-object v2, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v2, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 16
    iget-object v0, v0, Ln3/m0/c0/s/t;->i:Ln3/c0/c0;

    invoke-virtual {v0, v1}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 17
    iget-object v0, p0, Ln3/m0/c0/l;->b:Ln3/m0/c;

    .line 18
    iget-object v1, p0, Ln3/m0/c0/l;->c:Landroidx/work/impl/WorkDatabase;

    .line 19
    iget-object v2, p0, Ln3/m0/c0/l;->e:Ljava/util/List;

    .line 20
    invoke-static {v0, v1, v2}, Ln3/m0/c0/f;->a(Ln3/m0/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v2

    .line 21
    iget-object v3, v0, Ln3/m0/c0/s/t;->a:Ln3/c0/q;

    invoke-virtual {v3}, Ln3/c0/q;->endTransaction()V

    .line 22
    iget-object v0, v0, Ln3/m0/c0/s/t;->i:Ln3/c0/c0;

    invoke-virtual {v0, v1}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 23
    throw v2
.end method

.method public r(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/l;->d:Ln3/m0/c0/t/x/a;

    new-instance v1, Ln3/m0/c0/t/p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ln3/m0/c0/t/p;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Z)V

    check-cast v0, Ln3/m0/c0/t/x/b;

    .line 2
    iget-object p1, v0, Ln3/m0/c0/t/x/b;->a:Ln3/m0/c0/t/k;

    invoke-virtual {p1, v1}, Ln3/m0/c0/t/k;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
