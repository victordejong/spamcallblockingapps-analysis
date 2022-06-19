.class public final Lcom/appnext/core/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final eq:J

.field private static er:Lcom/appnext/core/r;


# instance fields
.field private es:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/appnext/core/r;->eq:J

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/appnext/core/r;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/core/r;Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object p1

    const-string v0, "userAgent"

    invoke-virtual {p1, v0, p0}, Lcom/appnext/base/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object p0

    const-string p1, "userAgentStoreDate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/appnext/base/b/b;->b(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-void
.end method

.method public static aC()Lcom/appnext/core/r;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/r;->er:Lcom/appnext/core/r;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/base/a/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/r;->er:Lcom/appnext/core/r;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/r;

    invoke-direct {v1}, Lcom/appnext/core/r;-><init>()V

    sput-object v1, Lcom/appnext/core/r;->er:Lcom/appnext/core/r;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/core/r;->er:Lcom/appnext/core/r;

    return-object v0
.end method

.method public static synthetic aD()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/appnext/core/r;->eq:J

    return-wide v0
.end method


# virtual methods
.method public final n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v0

    const-string v1, "userAgent"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/appnext/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/r$1;

    invoke-direct {v1, p0, p1}, Lcom/appnext/core/r$1;-><init>(Lcom/appnext/core/r;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 6
    :catchall_0
    iget-object p1, p0, Lcom/appnext/core/r;->es:Ljava/lang/String;

    return-object p1
.end method
