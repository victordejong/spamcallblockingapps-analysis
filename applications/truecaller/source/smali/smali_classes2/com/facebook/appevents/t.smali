.class public final Lcom/facebook/appevents/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J*\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u001e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00190!2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u0007J\u0010\u0010#\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0007J\u0010\u0010&\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%H\u0007J\u000e\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00150(H\u0007J0\u0010)\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0008\u0010-\u001a\u00020\u0013H\u0007J\u001a\u0010.\u001a\u0004\u0018\u00010\u001f2\u0006\u0010$\u001a\u00020%2\u0006\u0010\t\u001a\u00020\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n \u0011*\u0004\u0018\u00010\u00100\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/facebook/appevents/AppEventQueue;",
        "",
        "()V",
        "FLUSH_PERIOD_IN_SECONDS",
        "",
        "NO_CONNECTIVITY_ERROR_CODE",
        "NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER",
        "TAG",
        "",
        "appEventCollection",
        "Lcom/facebook/appevents/AppEventCollection;",
        "flushRunnable",
        "Ljava/lang/Runnable;",
        "scheduledFuture",
        "Ljava/util/concurrent/ScheduledFuture;",
        "singleThreadExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "kotlin.jvm.PlatformType",
        "add",
        "",
        "accessTokenAppId",
        "Lcom/facebook/appevents/AccessTokenAppIdPair;",
        "appEvent",
        "Lcom/facebook/appevents/AppEvent;",
        "buildRequestForSession",
        "Lcom/facebook/GraphRequest;",
        "appEvents",
        "Lcom/facebook/appevents/SessionEventsState;",
        "limitEventUsage",
        "",
        "flushState",
        "Lcom/facebook/appevents/FlushStatistics;",
        "buildRequests",
        "",
        "flushResults",
        "flush",
        "reason",
        "Lcom/facebook/appevents/FlushReason;",
        "flushAndWait",
        "getKeySet",
        "",
        "handleResponse",
        "request",
        "response",
        "Lcom/facebook/GraphResponse;",
        "persistToDisk",
        "sendEventsToServer",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/t;

.field public static final b:Ljava/lang/String;

.field public static final c:I

.field public static volatile d:Lcom/facebook/appevents/s;

.field public static final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public static f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public static final g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/appevents/t;

    invoke-direct {v0}, Lcom/facebook/appevents/t;-><init>()V

    sput-object v0, Lcom/facebook/appevents/t;->a:Lcom/facebook/appevents/t;

    .line 1
    const-class v0, Lcom/facebook/appevents/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppEventQueue::class.java.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/appevents/t;->b:Ljava/lang/String;

    const/16 v0, 0x64

    .line 2
    sput v0, Lcom/facebook/appevents/t;->c:I

    .line 3
    new-instance v0, Lcom/facebook/appevents/s;

    invoke-direct {v0}, Lcom/facebook/appevents/s;-><init>()V

    sput-object v0, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/t;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    sget-object v0, Lcom/facebook/appevents/c;->a:Lcom/facebook/appevents/c;

    sput-object v0, Lcom/facebook/appevents/t;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/facebook/appevents/p;Lcom/facebook/appevents/f0;ZLcom/facebook/appevents/c0;)Lcom/facebook/GraphRequest;
    .locals 9

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "accessTokenAppId"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEvents"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flushState"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/facebook/appevents/p;->a:Ljava/lang/String;

    .line 2
    sget-object v3, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/facebook/internal/d0;->f(Ljava/lang/String;Z)Lcom/facebook/internal/c0;

    move-result-object v4

    .line 3
    sget-object v5, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    const-string v6, "%s/activities"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v8, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v1, v2, v2}, Lcom/facebook/GraphRequest$c;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v1

    .line 4
    iput-boolean v7, v1, Lcom/facebook/GraphRequest;->j:Z

    .line 5
    iget-object v5, v1, Lcom/facebook/GraphRequest;->e:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 6
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v6, "access_token"

    .line 7
    iget-object v7, p0, Lcom/facebook/appevents/p;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v6, Lcom/facebook/appevents/x;->c:Lcom/facebook/appevents/x$a;

    .line 10
    invoke-static {}, Lcom/facebook/appevents/x;->c()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    const-class v8, Lcom/facebook/appevents/x;

    invoke-static {v8}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    monitor-exit v7

    .line 13
    invoke-virtual {v6}, Lcom/facebook/appevents/x$a;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "install_referrer"

    .line 14
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-virtual {v1, v5}, Lcom/facebook/GraphRequest;->l(Landroid/os/Bundle;)V

    if-eqz v4, :cond_3

    .line 16
    iget-boolean v3, v4, Lcom/facebook/internal/c0;->a:Z

    .line 17
    :cond_3
    sget-object v4, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v4

    .line 18
    invoke-virtual {p1, v1, v4, v3, p2}, Lcom/facebook/appevents/f0;->c(Lcom/facebook/GraphRequest;Landroid/content/Context;ZZ)I

    move-result p2

    if-nez p2, :cond_4

    return-object v2

    .line 19
    :cond_4
    iget v3, p3, Lcom/facebook/appevents/c0;->a:I

    add-int/2addr v3, p2

    .line 20
    iput v3, p3, Lcom/facebook/appevents/c0;->a:I

    .line 21
    new-instance p2, Lcom/facebook/appevents/e;

    invoke-direct {p2, p0, v1, p1, p3}, Lcom/facebook/appevents/e;-><init>(Lcom/facebook/appevents/p;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/f0;Lcom/facebook/appevents/c0;)V

    .line 22
    invoke-virtual {v1, p2}, Lcom/facebook/GraphRequest;->k(Lcom/facebook/GraphRequest$b;)V

    return-object v1

    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v7

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 24
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final b(Lcom/facebook/appevents/s;Lcom/facebook/appevents/c0;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/s;",
            "Lcom/facebook/appevents/c0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "appEventCollection"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "flushResults"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {v1}, Le/j/f0;->h(Landroid/content/Context;)Z

    move-result v1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/facebook/appevents/s;->e()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/p;

    .line 5
    invoke-virtual {p0, v5}, Lcom/facebook/appevents/s;->b(Lcom/facebook/appevents/p;)Lcom/facebook/appevents/f0;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 6
    invoke-static {v5, v6, v1, p1}, Lcom/facebook/appevents/t;->a(Lcom/facebook/appevents/p;Lcom/facebook/appevents/f0;ZLcom/facebook/appevents/c0;)Lcom/facebook/GraphRequest;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p0, "Required value was null."

    .line 8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v3

    :catchall_0
    move-exception p0

    .line 9
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final c(Lcom/facebook/appevents/a0;)V
    .locals 3

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "reason"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/appevents/t;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/facebook/appevents/f;

    invoke-direct {v2, p0}, Lcom/facebook/appevents/f;-><init>(Lcom/facebook/appevents/a0;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 2
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final d(Lcom/facebook/appevents/a0;)V
    .locals 4

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "reason"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/facebook/appevents/u;->a:Lcom/facebook/appevents/u;

    invoke-static {}, Lcom/facebook/appevents/u;->c()Lcom/facebook/appevents/e0;

    move-result-object v1

    .line 2
    sget-object v2, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    invoke-virtual {v2, v1}, Lcom/facebook/appevents/s;->a(Lcom/facebook/appevents/e0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    sget-object v1, Lcom/facebook/appevents/t;->d:Lcom/facebook/appevents/s;

    invoke-static {p0, v1}, Lcom/facebook/appevents/t;->f(Lcom/facebook/appevents/a0;Lcom/facebook/appevents/s;)Lcom/facebook/appevents/c0;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 4
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    .line 5
    iget v3, p0, Lcom/facebook/appevents/c0;->a:I

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    .line 7
    iget-object p0, p0, Lcom/facebook/appevents/c0;->b:Lcom/facebook/appevents/b0;

    .line 8
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 9
    sget-object p0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object p0

    .line 10
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 11
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final e(Lcom/facebook/appevents/p;Lcom/facebook/GraphRequest;Le/j/l0;Lcom/facebook/appevents/f0;Lcom/facebook/appevents/c0;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Lcom/facebook/appevents/b0;->c:Lcom/facebook/appevents/b0;

    sget-object v6, Le/j/n0;->e:Le/j/n0;

    sget-object v7, Lcom/facebook/appevents/b0;->a:Lcom/facebook/appevents/b0;

    const-class v8, Lcom/facebook/appevents/t;

    invoke-static {v8}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v9, "accessTokenAppId"

    invoke-static {v1, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "request"

    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "response"

    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "appEvents"

    invoke-static {v3, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "flushState"

    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v9, v2, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    const-string v10, "Success"

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_2

    .line 2
    iget v10, v9, Lcom/facebook/FacebookRequestError;->b:I

    const/4 v14, -0x1

    if-ne v10, v14, :cond_1

    const-string v10, "Failed: No Connectivity"

    move-object v2, v5

    goto :goto_0

    :cond_1
    const-string v10, "Failed:\n  Response: %s\n  Error %s"

    new-array v14, v11, [Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p2 .. p2}, Le/j/l0;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v13

    invoke-virtual {v9}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v12

    .line 4
    invoke-static {v14, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v10, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v10, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/facebook/appevents/b0;->b:Lcom/facebook/appevents/b0;

    goto :goto_0

    :cond_2
    move-object v2, v7

    .line 6
    :goto_0
    sget-object v14, Le/j/f0;->a:Le/j/f0;

    invoke-static {v6}, Le/j/f0;->k(Le/j/n0;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 7
    iget-object v14, v0, Lcom/facebook/GraphRequest;->f:Ljava/lang/Object;

    .line 8
    check-cast v14, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "{\n            val jsonArray = JSONArray(eventsJsonString)\n            jsonArray.toString(2)\n          }"

    .line 11
    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v14, "<Can\'t encode events for debug logging>"

    .line 12
    :goto_1
    sget-object v15, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    .line 13
    sget-object v11, Lcom/facebook/appevents/t;->b:Ljava/lang/String;

    const-string v12, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 14
    iget-object v0, v0, Lcom/facebook/GraphRequest;->c:Lorg/json/JSONObject;

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v13, v16

    const/4 v0, 0x1

    aput-object v10, v13, v0

    const/4 v10, 0x2

    aput-object v14, v13, v10

    .line 16
    invoke-virtual {v15, v6, v11, v12, v13}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v12

    :goto_2
    if-eqz v9, :cond_4

    move v12, v0

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    .line 17
    :goto_3
    monitor-enter p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static/range {p3 .. p3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :cond_5
    if-eqz v12, :cond_6

    .line 18
    :try_start_5
    iget-object v0, v3, Lcom/facebook/appevents/f0;->c:Ljava/util/List;

    iget-object v6, v3, Lcom/facebook/appevents/f0;->d:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    :cond_6
    iget-object v0, v3, Lcom/facebook/appevents/f0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 20
    iput v0, v3, Lcom/facebook/appevents/f0;->e:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 21
    :try_start_6
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    monitor-exit p3

    :goto_5
    if-ne v2, v5, :cond_7

    .line 22
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v6, Lcom/facebook/appevents/g;

    invoke-direct {v6, v1, v3}, Lcom/facebook/appevents/g;-><init>(Lcom/facebook/appevents/p;Lcom/facebook/appevents/f0;)V

    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    if-eq v2, v7, :cond_8

    .line 23
    iget-object v0, v4, Lcom/facebook/appevents/c0;->b:Lcom/facebook/appevents/b0;

    if-eq v0, v5, :cond_8

    const-string v0, "<set-?>"

    .line 24
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object v2, v4, Lcom/facebook/appevents/c0;->b:Lcom/facebook/appevents/b0;

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    .line 26
    monitor-exit p3

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 27
    invoke-static {v0, v8}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static final f(Lcom/facebook/appevents/a0;Lcom/facebook/appevents/s;)Lcom/facebook/appevents/c0;
    .locals 11

    const-class v0, Lcom/facebook/appevents/t;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "reason"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appEventCollection"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/facebook/appevents/c0;

    invoke-direct {v1}, Lcom/facebook/appevents/c0;-><init>()V

    .line 2
    invoke-static {p1, v1}, Lcom/facebook/appevents/t;->b(Lcom/facebook/appevents/s;Lcom/facebook/appevents/c0;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 4
    sget-object v3, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    .line 5
    sget-object v5, Le/j/n0;->e:Le/j/n0;

    .line 6
    sget-object v6, Lcom/facebook/appevents/t;->b:Ljava/lang/String;

    const-string v7, "Flushing %d events due to %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 7
    iget v10, v1, Lcom/facebook/appevents/c0;->a:I

    .line 8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v8, v4

    .line 10
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/facebook/internal/k0$a;->c(Le/j/n0;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphRequest;

    .line 12
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->c()Le/j/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v2

    :catchall_0
    move-exception p0

    .line 13
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
