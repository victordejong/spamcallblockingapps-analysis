.class public final synthetic Lcom/facebook/appevents/m0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/appevents/m0/a;->a:J

    iput-object p3, p0, Lcom/facebook/appevents/m0/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-wide v0, p0, Lcom/facebook/appevents/m0/a;->a:J

    iget-object v2, p0, Lcom/facebook/appevents/m0/a;->b:Ljava/lang/String;

    const-string v3, "$activityName"

    .line 1
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lcom/facebook/appevents/m0/l;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v3, v5, v4, v4, v6}, Lcom/facebook/appevents/m0/l;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/util/UUID;I)V

    sput-object v3, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    .line 4
    :cond_0
    sget-object v3, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 5
    iput-object v5, v3, Lcom/facebook/appevents/m0/l;->b:Ljava/lang/Long;

    .line 6
    :goto_0
    sget-object v3, Lcom/facebook/appevents/m0/f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gtz v3, :cond_3

    .line 7
    new-instance v3, Lcom/facebook/appevents/m0/e;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/appevents/m0/e;-><init>(JLjava/lang/String;)V

    .line 8
    sget-object v5, Lcom/facebook/appevents/m0/f;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 9
    :try_start_0
    sget-object v6, Lcom/facebook/appevents/m0/f;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    sget-object v7, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    sget-object v7, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/internal/d0;->b(Ljava/lang/String;)Lcom/facebook/internal/c0;

    move-result-object v7

    if-nez v7, :cond_2

    const/16 v7, 0x3c

    goto :goto_1

    .line 11
    :cond_2
    iget v7, v7, Lcom/facebook/internal/c0;->b:I

    :goto_1
    int-to-long v7, v7

    .line 12
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-interface {v6, v3, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    .line 14
    sput-object v3, Lcom/facebook/appevents/m0/f;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 16
    :cond_3
    :goto_2
    sget-wide v5, Lcom/facebook/appevents/m0/f;->j:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_4

    sub-long/2addr v0, v5

    const/16 v3, 0x3e8

    int-to-long v5, v3

    .line 17
    div-long/2addr v0, v5

    goto :goto_3

    :cond_4
    move-wide v0, v7

    .line 18
    :goto_3
    sget-object v3, Lcom/facebook/appevents/m0/i;->a:Lcom/facebook/appevents/m0/i;

    .line 19
    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v3

    .line 20
    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v5

    .line 21
    sget-object v6, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/facebook/internal/d0;->f(Ljava/lang/String;Z)Lcom/facebook/internal/c0;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 22
    iget-boolean v5, v5, Lcom/facebook/internal/c0;->e:Z

    if-eqz v5, :cond_6

    cmp-long v5, v0, v7

    if-lez v5, :cond_6

    .line 23
    new-instance v5, Lcom/facebook/appevents/x;

    invoke-direct {v5, v3, v4, v4}, Lcom/facebook/appevents/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    const-string v3, "loggerImpl"

    .line 24
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v9, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "fb_aa_time_spent_view_name"

    .line 26
    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v7, "fb_aa_time_spent_on_view"

    long-to-double v0, v0

    .line 27
    invoke-static {}, Le/j/f0;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    invoke-static {v5}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    .line 29
    :cond_5
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {}, Lcom/facebook/appevents/m0/f;->b()Ljava/util/UUID;

    move-result-object v11

    move-object v6, v5

    invoke-virtual/range {v6 .. v11}, Lcom/facebook/appevents/x;->f(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;ZLjava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 30
    invoke-static {v0, v5}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 31
    :cond_6
    :goto_4
    sget-object v0, Lcom/facebook/appevents/m0/f;->g:Lcom/facebook/appevents/m0/l;

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Lcom/facebook/appevents/m0/l;->a()V

    :goto_5
    return-void
.end method
