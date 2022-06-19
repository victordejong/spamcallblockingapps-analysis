.class public Lcom/appsflyer/AFDeepLinkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static instance:Lcom/appsflyer/AFDeepLinkManager;

.field public static trampolineUri:Landroid/net/Uri;

.field public static ı:[Ljava/lang/String;

.field static final ǃ:I

.field static ɩ:[Ljava/lang/String;

.field static volatile Ι:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/appsflyer/AFDeepLinkManager;->ǃ:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/appsflyer/AFDeepLinkManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->instance:Lcom/appsflyer/AFDeepLinkManager;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/appsflyer/AFDeepLinkManager;

    invoke-direct {v0}, Lcom/appsflyer/AFDeepLinkManager;-><init>()V

    sput-object v0, Lcom/appsflyer/AFDeepLinkManager;->instance:Lcom/appsflyer/AFDeepLinkManager;

    .line 3
    :cond_0
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->instance:Lcom/appsflyer/AFDeepLinkManager;

    return-object v0
.end method

.method static ı(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFDeepLinkManager;->ι(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/appsflyer/AFDeepLinkManager;->Ι:Z

    .line 4
    invoke-static {}, Lcom/appsflyer/AFExecutor;->getInstance()Lcom/appsflyer/AFExecutor;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    .line 6
    iget-object v1, v0, Lcom/appsflyer/AFExecutor;->ı:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/AFExecutor;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/appsflyer/AFExecutor;->ι:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    new-instance v1, Lcom/appsflyer/AFDeepLinkManager$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/appsflyer/AFDeepLinkManager$2;-><init>(Landroid/net/Uri;Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/appsflyer/AppsFlyerLibCore;->handleDeepLinkCallback(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    :goto_0
    const/4 p0, 0x0

    .line 10
    sput-object p0, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic ı(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/AFDeepLinkManager;->ι(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static ι(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->ɩ:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "af_tranid="

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Validate ESP URLs :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/appsflyer/AFDeepLinkManager;->ɩ:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 4
    :try_start_0
    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->ɩ:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method


# virtual methods
.method protected collectIntentsFromActivities(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method final ɩ(Landroid/content/Intent;Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "android.intent.action.VIEW"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 3
    :goto_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v3

    iget-object v3, v3, Lcom/appsflyer/AppsFlyerLibCore;->pluginDeeplinkIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :cond_1
    const-string v0, " w/af_consumed"

    const-string v4, "af_consumed"

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    invoke-static {p2, p3, v2}, Lcom/appsflyer/AFDeepLinkManager;->ı(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_3
    sget-object p1, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "using trampoline Intent fallback with URI: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/appsflyer/AFDeepLinkManager;->trampolineUri:Landroid/net/Uri;

    invoke-static {p2, p3, p1}, Lcom/appsflyer/AFDeepLinkManager;->ı(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    :cond_4
    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "using Plugin Intent fallback with URI: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 20
    invoke-static {p2, p3, v1}, Lcom/appsflyer/AFDeepLinkManager;->ı(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    .line 21
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "skipping re-use of previously consumed plugin deep link: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p1, "No deep link detected"

    .line 24
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void
.end method
