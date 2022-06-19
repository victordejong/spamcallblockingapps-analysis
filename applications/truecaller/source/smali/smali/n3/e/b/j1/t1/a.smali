.class public final Ln3/e/b/j1/t1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Ln3/e/b/j1/t1/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ln3/e/b/j1/t1/a;->a:Landroid/os/Handler;

    return-object v0

    .line 3
    :cond_0
    const-class v0, Ln3/e/b/j1/t1/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ln3/e/b/j1/t1/a;->a:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ln3/k/e/c;->a(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    sput-object v1, Ln3/e/b/j1/t1/a;->a:Landroid/os/Handler;

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object v0, Ln3/e/b/j1/t1/a;->a:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
