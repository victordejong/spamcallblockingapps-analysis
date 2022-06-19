.class public final synthetic Lcom/facebook/appevents/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/p;

.field public final synthetic b:Lcom/facebook/appevents/r;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/p;Lcom/facebook/appevents/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/d;->a:Lcom/facebook/appevents/p;

    iput-object p2, p0, Lcom/facebook/appevents/d;->b:Lcom/facebook/appevents/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/appevents/d;->a:Lcom/facebook/appevents/p;

    iget-object v1, p0, Lcom/facebook/appevents/d;->b:Lcom/facebook/appevents/r;

    .line 1
    const-class v2, Lcom/facebook/appevents/t;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v3, "$accessTokenAppId"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$appEvent"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    .line 3
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "accessTokenAppIdPair"

    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "appEvent"

    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v3, v0}, Lcom/facebook/appevents/s;->d(Lcom/facebook/appevents/p;)Lcom/facebook/appevents/f0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/facebook/appevents/f0;->a(Lcom/facebook/appevents/r;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 6
    sget-object v0, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    invoke-virtual {v0}, Lcom/facebook/appevents/x$a;->b()Lcom/facebook/appevents/w;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/facebook/appevents/w;->b:Lcom/facebook/appevents/w;

    if-eq v0, v1, :cond_2

    .line 8
    sget-object v0, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    invoke-virtual {v0}, Lcom/facebook/appevents/s;->c()I

    move-result v0

    sget v1, Lcom/facebook/appevents/t;->c:I

    if-le v0, v1, :cond_2

    .line 9
    sget-object v0, Lcom/facebook/appevents/a0;->e:Lcom/facebook/appevents/a0;

    invoke-static {v0}, Lcom/facebook/appevents/t;->d(Lcom/facebook/appevents/a0;)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Lcom/facebook/appevents/t;->f:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_3

    .line 11
    sget-object v0, Lcom/facebook/appevents/t;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    sget-object v1, Lcom/facebook/appevents/t;->g:Ljava/lang/Runnable;

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-interface {v0, v1, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/appevents/t;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v3

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 16
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method
