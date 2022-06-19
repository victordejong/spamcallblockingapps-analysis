.class public Lcom/appnext/core/ra/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final eK:Ljava/lang/String;

.field private static volatile eL:Lcom/appnext/core/ra/a;


# instance fields
.field private aM:Landroid/content/Context;

.field private eM:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://cdn.appnext.com/tools/sdk/confign/sdk_core/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/appnext/core/g;->av()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sdk_config.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appnext/core/ra/a;->eK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/appnext/core/ra/a;->aM:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object p1

    const-string v0, "config_store"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/appnext/base/b/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "RAConfigManager$RAConfigManager"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private declared-synchronized aI()J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "send_rc_int"

    const/16 v1, 0xf0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/appnext/core/ra/a;->c(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized aJ()J
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "config_int"

    const/16 v1, 0x3840

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/appnext/core/ra/a;->c(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private aK()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/appnext/core/ra/a;->aL()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Lcom/appnext/base/b/b;->ak()Lcom/appnext/base/b/b;

    move-result-object v2

    const-string v3, "config_store"

    invoke-virtual {v2, v3, v1}, Lcom/appnext/base/b/b;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "RRAConfigManager$storeRAConfigFile"

    .line 5
    invoke-static {v3, v2}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :cond_1
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    :catchall_1
    move-exception v1

    const-string v2, "RAConfigManager$downloadConfigFileAndStore"

    .line 7
    invoke-static {v2, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private aL()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/ra/a;->aM:Landroid/content/Context;

    sget-object v2, Lcom/appnext/core/ra/a;->eK:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    const-string v2, "RAConfigManager$downloadConfigFile"

    .line 2
    invoke-static {v2, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private c(Ljava/lang/String;I)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/ra/a;->d(Ljava/lang/String;I)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    const-string v0, "RAConfigManager$getLongValue"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    int-to-long p1, p2

    return-wide p1
.end method

.method private d(Ljava/lang/String;I)J
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    int-to-long p1, p2

    return-wide p1
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/appnext/core/ra/a;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "RAConfigManager$getStringValue"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p2
.end method

.method private o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "RAConfigManager$getStringValueFromLocalJson"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p2
.end method

.method public static r(Landroid/content/Context;)Lcom/appnext/core/ra/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/core/ra/a;->eL:Lcom/appnext/core/ra/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/core/ra/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/core/ra/a;->eL:Lcom/appnext/core/ra/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/core/ra/a;

    invoke-direct {v1, p0}, Lcom/appnext/core/ra/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/core/ra/a;->eL:Lcom/appnext/core/ra/a;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/core/ra/a;->eL:Lcom/appnext/core/ra/a;

    return-object p0
.end method


# virtual methods
.method public final aG()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/a;->eM:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/appnext/core/ra/a;->aK()Lorg/json/JSONObject;

    :cond_0
    const-string v0, "rc_send"

    const-string v1, "on"

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/appnext/core/ra/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final aH()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/appnext/core/ra/a;->aK()Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/a;->aM:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/ra/services/a;->s(Landroid/content/Context;)Lcom/appnext/core/ra/services/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/appnext/core/ra/a;->aJ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/ra/services/a;->b(J)V

    .line 3
    invoke-virtual {p0}, Lcom/appnext/core/ra/a;->aG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/appnext/core/ra/a;->aM:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/ra/services/a;->s(Landroid/content/Context;)Lcom/appnext/core/ra/services/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/appnext/core/ra/a;->aI()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/ra/services/a;->c(J)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/ra/a;->aM:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/core/ra/services/a;->s(Landroid/content/Context;)Lcom/appnext/core/ra/services/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/core/ra/services/a;->aW()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "RRAConfigManager$downloadConfigFileFromServer"

    .line 6
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
