.class final Lcom/appsflyer/AppsFlyerLibCore$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic ǃ:Lcom/appsflyer/AppsFlyerLibCore;

.field private ɩ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->ɨ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/appsflyer/AppsFlyerLibCore;->Ɩ:J

    .line 3
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AppsFlyerKey"

    .line 5
    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/lang/ref/WeakReference;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-static {}, Lcom/appsflyer/internal/z;->ı()Lcom/appsflyer/internal/z;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/appsflyer/internal/z;->ǃ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/internal/f;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "resending request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v6, v4, Lcom/appsflyer/internal/f;->ı:Ljava/lang/String;

    .line 10
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 12
    iget-object v7, v4, Lcom/appsflyer/internal/f;->ι:Ljava/lang/String;

    const/16 v8, 0xa

    .line 13
    invoke-static {v7, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 14
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v10, Lcom/appsflyer/internal/model/event/CachedEvent;

    invoke-direct {v10}, Lcom/appsflyer/internal/model/event/CachedEvent;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v12, v4, Lcom/appsflyer/internal/f;->ı:Ljava/lang/String;

    .line 16
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "&isCachedRequest=true&timeincache="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/appsflyer/AFEvent;->urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v5

    .line 17
    invoke-virtual {v4}, Lcom/appsflyer/internal/f;->Ι()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/appsflyer/AFEvent;->post([B)Lcom/appsflyer/AFEvent;

    move-result-object v5

    .line 18
    invoke-virtual {v5, v1}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v5

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ɩ:Ljava/lang/ref/WeakReference;

    .line 19
    iput-object v6, v5, Lcom/appsflyer/AFEvent;->ǃ:Ljava/lang/ref/WeakReference;

    .line 20
    iget-object v4, v4, Lcom/appsflyer/internal/f;->ι:Ljava/lang/String;

    .line 21
    iput-object v4, v5, Lcom/appsflyer/AFEvent;->І:Ljava/lang/String;

    .line 22
    iput-boolean v0, v5, Lcom/appsflyer/AFEvent;->ɪ:Z

    .line 23
    invoke-static {v9, v5}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "Failed to resend cached request"

    .line 24
    invoke-static {v5, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 25
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    const-string v2, "failed to check cache. "

    .line 26
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1, v0}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    .line 28
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->ӏ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 29
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->ɪ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/concurrent/ScheduledExecutorService;

    return-void

    .line 30
    :goto_2
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$b;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v2, v0}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;Z)Z

    .line 31
    throw v1
.end method
