.class public final synthetic Lcom/facebook/appevents/n0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/n0/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/n0/a;

    invoke-direct {v0}, Lcom/facebook/appevents/n0/a;-><init>()V

    sput-object v0, Lcom/facebook/appevents/n0/a;->a:Lcom/facebook/appevents/n0/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    sget-object v0, Lcom/facebook/appevents/n0/h;->a:Lcom/facebook/appevents/n0/h;

    const-class v0, Lcom/facebook/appevents/n0/h;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/q0/h;->a:Lcom/facebook/appevents/q0/h;

    .line 3
    const-class v1, Lcom/facebook/appevents/q0/h;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 4
    :cond_1
    :try_start_3
    sget-object v2, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v2

    sget-object v3, Lcom/facebook/appevents/q0/a;->a:Lcom/facebook/appevents/q0/a;

    .line 5
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 6
    :try_start_4
    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    .line 7
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
