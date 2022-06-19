.class public Landroidx/work/impl/j;
.super Landroidx/work/w;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String;

.field private static l:Landroidx/work/impl/j;

.field private static m:Landroidx/work/impl/j;

.field private static final n:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/b;

.field private c:Landroidx/work/impl/WorkDatabase;

.field private d:Landroidx/work/impl/utils/o/a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroidx/work/impl/d;

.field private g:Landroidx/work/impl/utils/e;

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver$PendingResult;

.field private volatile j:Landroidx/work/z/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkManagerImpl"

    .line 1
    invoke-static {v0}, Landroidx/work/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/j;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    .line 3
    sput-object v0, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/work/s;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/work/impl/j;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Landroidx/work/impl/WorkDatabase;)V
    .locals 10

    .line 7
    invoke-direct {p0}, Landroidx/work/w;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 9
    new-instance v1, Landroidx/work/m$a;

    invoke-virtual {p2}, Landroidx/work/b;->i()I

    move-result v2

    invoke-direct {v1, v2}, Landroidx/work/m$a;-><init>(I)V

    invoke-static {v1}, Landroidx/work/m;->e(Landroidx/work/m;)V

    .line 10
    invoke-virtual {p0, v0, p2, p3}, Landroidx/work/impl/j;->l(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;)Ljava/util/List;

    move-result-object v0

    .line 11
    new-instance v9, Landroidx/work/impl/d;

    move-object v3, v9

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Landroidx/work/impl/d;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    move-object v3, p0

    .line 12
    invoke-direct/range {v3 .. v9}, Landroidx/work/impl/j;->x(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Z)V
    .locals 2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-interface {p3}, Landroidx/work/impl/utils/o/a;->c()Landroidx/work/impl/utils/g;

    move-result-object v1

    .line 5
    invoke-static {v0, v1, p4}, Landroidx/work/impl/WorkDatabase;->s(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;

    move-result-object p4

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/work/impl/j;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method private F()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "androidx.work.multiprocess.RemoteWorkManagerClient"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Landroidx/work/impl/j;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    aput-object v4, v3, v0

    aput-object p0, v3, v1

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/z/a;

    iput-object v2, p0, Landroidx/work/impl/j;->j:Landroidx/work/z/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {}, Landroidx/work/m;->c()Landroidx/work/m;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/j;->k:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    aput-object v2, v1, v0

    const-string v0, "Unable to initialize multi-process support"

    invoke-virtual {v3, v4, v0, v1}, Landroidx/work/m;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static j(Landroid/content/Context;Landroidx/work/b;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

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
    sget-object v1, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Landroidx/work/impl/j;

    new-instance v2, Landroidx/work/impl/utils/o/b;

    .line 7
    invoke-virtual {p1}, Landroidx/work/b;->k()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/work/impl/utils/o/b;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/j;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;)V

    sput-object v1, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    .line 8
    :cond_2
    sget-object p0, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    sput-object p0, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    .line 9
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

.method public static p()Landroidx/work/impl/j;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Landroidx/work/impl/j;->l:Landroidx/work/impl/j;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Landroidx/work/impl/j;->m:Landroidx/work/impl/j;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static q(Landroid/content/Context;)Landroidx/work/impl/j;
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/work/impl/j;->p()Landroidx/work/impl/j;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 4
    instance-of v1, p0, Landroidx/work/b$b;

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p0

    check-cast v1, Landroidx/work/b$b;

    .line 6
    invoke-interface {v1}, Landroidx/work/b$b;->a()Landroidx/work/b;

    move-result-object v1

    .line 7
    invoke-static {p0, v1}, Landroidx/work/impl/j;->j(Landroid/content/Context;Landroidx/work/b;)V

    .line 8
    invoke-static {p0}, Landroidx/work/impl/j;->q(Landroid/content/Context;)Landroidx/work/impl/j;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private x(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/b;",
            "Landroidx/work/impl/utils/o/a;",
            "Landroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;",
            "Landroidx/work/impl/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    iput-object p1, p0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/j;->b:Landroidx/work/b;

    .line 4
    iput-object p3, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    .line 5
    iput-object p4, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 6
    iput-object p5, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 7
    iput-object p6, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    .line 8
    new-instance p2, Landroidx/work/impl/utils/e;

    invoke-direct {p2, p4}, Landroidx/work/impl/utils/e;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iput-object p2, p0, Landroidx/work/impl/j;->g:Landroidx/work/impl/utils/e;

    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Landroidx/work/impl/j;->h:Z

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot initialize WorkManager in direct boot mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    new-instance p3, Landroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {p3, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/j;)V

    invoke-interface {p2, p3}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public A(Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/work/impl/j;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 3
    iget-boolean v1, p0, Landroidx/work/impl/j;->h:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/work/impl/j;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public B(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/work/impl/j;->C(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    return-void
.end method

.method public C(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    new-instance v1, Landroidx/work/impl/utils/h;

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/utils/h;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V

    .line 2
    invoke-interface {v0, v1}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    new-instance v1, Landroidx/work/impl/utils/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/i;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    new-instance v1, Landroidx/work/impl/utils/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/work/impl/utils/i;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)Landroidx/work/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/g;",
            "Ljava/util/List<",
            "Landroidx/work/o;",
            ">;)",
            "Landroidx/work/u;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/impl/g;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/g;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "beginUniqueWork needs at least one OneTimeWorkRequest."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)Landroidx/work/p;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Landroidx/work/impl/utils/a;->d(Ljava/lang/String;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/utils/a;->e()Landroidx/work/p;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/List;)Landroidx/work/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/x;",
            ">;)",
            "Landroidx/work/p;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/impl/g;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/g;-><init>(Landroidx/work/impl/j;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/g;->a()Landroidx/work/p;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enqueue needs at least one WorkRequest."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;Landroidx/work/f;Landroidx/work/q;)Landroidx/work/p;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/work/impl/j;->m(Ljava/lang/String;Landroidx/work/f;Landroidx/work/q;)Landroidx/work/impl/g;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroidx/work/impl/g;->a()Landroidx/work/p;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)Landroidx/work/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/work/g;",
            "Ljava/util/List<",
            "Landroidx/work/o;",
            ">;)",
            "Landroidx/work/p;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/work/impl/g;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/g;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)V

    invoke-virtual {v0}, Landroidx/work/impl/g;->a()Landroidx/work/p;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/util/UUID;)Landroidx/work/p;
    .locals 1

    .line 1
    invoke-static {p1, p0}, Landroidx/work/impl/utils/a;->b(Ljava/util/UUID;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;

    move-result-object p1

    .line 2
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    invoke-interface {v0, p1}, Landroidx/work/impl/utils/o/a;->b(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Landroidx/work/impl/utils/a;->e()Landroidx/work/p;

    move-result-object p1

    return-object p1
.end method

.method public l(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/work/b;",
            "Landroidx/work/impl/utils/o/a;",
            ")",
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/work/impl/e;

    .line 1
    invoke-static {p1, p0}, Landroidx/work/impl/f;->a(Landroid/content/Context;Landroidx/work/impl/j;)Landroidx/work/impl/e;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroidx/work/impl/l/a/b;

    invoke-direct {v1, p1, p2, p3, p0}, Landroidx/work/impl/l/a/b;-><init>(Landroid/content/Context;Landroidx/work/b;Landroidx/work/impl/utils/o/a;Landroidx/work/impl/j;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Landroidx/work/f;Landroidx/work/q;)Landroidx/work/impl/g;
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/f;->KEEP:Landroidx/work/f;

    if-ne p2, v0, :cond_0

    .line 2
    sget-object p2, Landroidx/work/g;->KEEP:Landroidx/work/g;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Landroidx/work/g;->REPLACE:Landroidx/work/g;

    .line 4
    :goto_0
    new-instance v0, Landroidx/work/impl/g;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/work/impl/g;-><init>(Landroidx/work/impl/j;Ljava/lang/String;Landroidx/work/g;Ljava/util/List;)V

    return-object v0
.end method

.method public n()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method public o()Landroidx/work/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->b:Landroidx/work/b;

    return-object v0
.end method

.method public r()Landroidx/work/impl/utils/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->g:Landroidx/work/impl/utils/e;

    return-object v0
.end method

.method public s()Landroidx/work/impl/d;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->f:Landroidx/work/impl/d;

    return-object v0
.end method

.method public t()Landroidx/work/z/a;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->j:Landroidx/work/z/a;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/j;->j:Landroidx/work/z/a;

    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0}, Landroidx/work/impl/j;->F()V

    .line 5
    iget-object v1, p0, Landroidx/work/impl/j;->j:Landroidx/work/z/a;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/work/impl/j;->b:Landroidx/work/b;

    .line 6
    invoke-virtual {v1}, Landroidx/work/b;->b()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Invalid multiprocess configuration. Define an `implementation` dependency on :work:work-multiprocess library"

    .line 8
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/j;->j:Landroidx/work/z/a;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    return-object v0
.end method

.method public v()Landroidx/work/impl/WorkDatabase;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public w()Landroidx/work/impl/utils/o/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/j;->d:Landroidx/work/impl/utils/o/a;

    return-object v0
.end method

.method public y()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/j;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/j;->h:Z

    .line 3
    iget-object v1, p0, Landroidx/work/impl/j;->i:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Landroidx/work/impl/j;->i:Landroid/content/BroadcastReceiver$PendingResult;

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

.method public z()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/work/impl/j;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/background/systemjob/b;->b(Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/j;->v()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->B()Landroidx/work/impl/n/q;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/n/q;->u()I

    .line 4
    invoke-virtual {p0}, Landroidx/work/impl/j;->o()Landroidx/work/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/impl/j;->v()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/work/impl/j;->u()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/work/impl/f;->b(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method
