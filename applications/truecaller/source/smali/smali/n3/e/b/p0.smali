.class public final Ln3/e/b/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/b/p0$a;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/Object;

.field public static n:Ln3/e/b/p0;

.field public static o:Ln3/e/b/q0$b;

.field public static p:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static q:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ln3/e/b/j1/c0;

.field public final b:Ljava/lang/Object;

.field public final c:Ln3/e/b/q0;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroid/os/Handler;

.field public final f:Landroid/os/HandlerThread;

.field public g:Ln3/e/b/j1/y;

.field public h:Ln3/e/b/j1/x;

.field public i:Ln3/e/b/j1/s1;

.field public j:Landroid/content/Context;

.field public k:Ln3/e/b/p0$a;

.field public l:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/e/b/p0;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraX is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v1, v0}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    .line 4
    sput-object v1, Ln3/e/b/p0;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Ln3/e/b/p0;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public constructor <init>(Ln3/e/b/q0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/e/b/j1/c0;

    invoke-direct {v0}, Ln3/e/b/j1/c0;-><init>()V

    iput-object v0, p0, Ln3/e/b/p0;->a:Ln3/e/b/j1/c0;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/b/p0;->b:Ljava/lang/Object;

    .line 4
    sget-object v0, Ln3/e/b/p0$a;->a:Ln3/e/b/p0$a;

    iput-object v0, p0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ln3/e/b/j1/t1/c/g;->c(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Ln3/e/b/p0;->l:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ln3/e/b/p0;->c:Ln3/e/b/q0;

    .line 8
    iget-object v1, p1, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    sget-object v2, Ln3/e/b/q0;->u:Ln3/e/b/j1/j0$a;

    invoke-virtual {v1, v2, v0}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    .line 9
    iget-object p1, p1, Ln3/e/b/q0;->q:Ln3/e/b/j1/d1;

    sget-object v2, Ln3/e/b/q0;->v:Ln3/e/b/j1/j0$a;

    invoke-virtual {p1, v2, v0}, Ln3/e/b/j1/d1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ln3/e/b/j0;

    invoke-direct {v1}, Ln3/e/b/j0;-><init>()V

    :cond_0
    iput-object v1, p0, Ln3/e/b/p0;->d:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    const-string v1, "CameraX-scheduler"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Ln3/e/b/p0;->f:Landroid/os/HandlerThread;

    .line 12
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 13
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Ln3/k/e/c;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Ln3/e/b/p0;->e:Landroid/os/Handler;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v0, p0, Ln3/e/b/p0;->f:Landroid/os/HandlerThread;

    .line 15
    iput-object p1, p0, Ln3/e/b/p0;->e:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Application;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 3
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Landroid/app/Application;

    goto :goto_1

    .line 5
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ln3/e/b/q0$b;
    .locals 2

    .line 1
    invoke-static {p0}, Ln3/e/b/p0;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ln3/e/b/q0$b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ln3/e/b/q0$b;

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 5
    sget v0, Landroidx/camera/core/R$string;->androidx_camera_default_config_provider:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ln3/e/b/q0$b;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    goto :goto_0

    :catch_6
    move-exception p0

    :goto_0
    const-string v0, "CameraX"

    const-string v1, "Failed to retrieve default CameraXConfig.Provider from resources"

    .line 10
    invoke-static {v0, v1, p0}, Ln3/e/b/y0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static c()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ln3/e/b/p0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/b/p0;->n:Ln3/e/b/p0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call CameraX.initialize() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ln3/e/b/j1/t1/c/h$a;

    invoke-direct {v1, v0}, Ln3/e/b/j1/t1/c/h$a;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    .line 4
    :cond_0
    sget-object v1, Ln3/e/b/p0;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Ln3/e/b/e;

    invoke-direct {v2, v0}, Ln3/e/b/e;-><init>(Ln3/e/b/p0;)V

    .line 5
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->U()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 6
    new-instance v3, Ln3/e/b/j1/t1/c/f;

    invoke-direct {v3, v2}, Ln3/e/b/j1/t1/c/f;-><init>(Ln3/c/a/c/a;)V

    .line 7
    new-instance v2, Ln3/e/b/j1/t1/c/c;

    invoke-direct {v2, v3, v1}, Ln3/e/b/j1/t1/c/c;-><init>(Ln3/e/b/j1/t1/c/b;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 8
    invoke-interface {v1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Ln3/e/b/p0;->n:Ln3/e/b/p0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CameraX already initialized."

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->x(ZLjava/lang/String;)V

    .line 2
    sget-object v0, Ln3/e/b/p0;->o:Ln3/e/b/q0$b;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ln3/e/b/p0;

    sget-object v1, Ln3/e/b/p0;->o:Ln3/e/b/q0$b;

    invoke-interface {v1}, Ln3/e/b/q0$b;->getCameraXConfig()Ln3/e/b/q0;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/e/b/p0;-><init>(Ln3/e/b/q0;)V

    .line 5
    sput-object v0, Ln3/e/b/p0;->n:Ln3/e/b/p0;

    .line 6
    new-instance v1, Ln3/e/b/f;

    invoke-direct {v1, v0, p0}, Ln3/e/b/f;-><init>(Ln3/e/b/p0;Landroid/content/Context;)V

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sput-object p0, Ln3/e/b/p0;->p:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public static f()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/e/b/p0;->n:Ln3/e/b/p0;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ln3/e/b/p0;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    sput-object v1, Ln3/e/b/p0;->n:Ln3/e/b/p0;

    .line 4
    new-instance v1, Ln3/e/b/l;

    invoke-direct {v1, v0}, Ln3/e/b/l;-><init>(Ln3/e/b/p0;)V

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->i0(Ln3/h/a/d;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sput-object v0, Ln3/e/b/p0;->q:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/e/b/p0;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Ln3/e/b/p0$a;->c:Ln3/e/b/p0$a;

    iput-object v1, p0, Ln3/e/b/p0;->k:Ln3/e/b/p0$a;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
