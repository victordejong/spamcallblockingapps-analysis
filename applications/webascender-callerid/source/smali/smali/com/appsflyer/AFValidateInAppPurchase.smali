.class public Lcom/appsflyer/AFValidateInAppPurchase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static ı:Ljava/lang/String; = null

.field private static Ι:Ljava/lang/String; = "https://%ssdk-services.%s/validate-android-signature"


# instance fields
.field private Ɩ:Ljava/lang/String;

.field private ǃ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private ɨ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ɩ:Ljava/lang/String;

.field private ɹ:Ljava/lang/String;

.field private final ι:Landroid/content/Intent;

.field private І:Ljava/lang/String;

.field private і:Ljava/lang/String;

.field private Ӏ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://%svalidate.%s/api/v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/AppsFlyerLibCore;->ι:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/androidevent?buildnumber=6.0.0&app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AFValidateInAppPurchase;->ı:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ǃ:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɩ:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/appsflyer/AFValidateInAppPurchase;->і:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ӏ:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɹ:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/appsflyer/AFValidateInAppPurchase;->І:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɨ:Ljava/util/Map;

    .line 9
    iput-object p4, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ɩ:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ι:Landroid/content/Intent;

    return-void
.end method

.method public static setUrl(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x54b6e6ea

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    const v4, 0x1b11f891

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "sdk-services"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "validate"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    sput-object v1, Lcom/appsflyer/AFValidateInAppPurchase;->ı:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_4
    sput-object v1, Lcom/appsflyer/AFValidateInAppPurchase;->Ι:Ljava/lang/String;

    goto :goto_0

    :cond_5
    return-void
.end method

.method static synthetic ı(Lcom/appsflyer/AFValidateInAppPurchase;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɨ:Ljava/util/Map;

    return-object p0
.end method

.method private static ı(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/appsflyer/AppsFlyerLibCore;->Ι:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validate callback parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase success: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 5
    sget-object p0, Lcom/appsflyer/AppsFlyerLibCore;->Ι:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    invoke-interface {p0}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInApp()V

    return-void

    .line 6
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Validate in app purchase failed: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/appsflyer/AppsFlyerLibCore;->Ι:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-nez p4, :cond_1

    const-string p4, "Failed validating"

    :cond_1
    invoke-interface {p0, p4}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic Ι(Lcom/appsflyer/AFValidateInAppPurchase;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ǃ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private static ι(Lcom/appsflyer/internal/model/event/Purchase;)Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appsflyer/AFEvent;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/appsflyer/internal/w;

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->trackingStopped(Z)Lcom/appsflyer/internal/model/event/BackgroundEvent;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/appsflyer/internal/w;-><init>(Lcom/appsflyer/internal/model/event/BackgroundEvent;)V

    .line 4
    invoke-virtual {v0}, Lcom/appsflyer/internal/w;->ι()Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ι(Lcom/appsflyer/AFValidateInAppPurchase;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .locals 6

    .line 5
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/AFValidateInAppPurchase;->ı:Ljava/lang/String;

    invoke-static {v1}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "referrer"

    const-string v3, ""

    .line 8
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/appsflyer/internal/model/event/Validate;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-direct {v2, p3}, Lcom/appsflyer/internal/model/event/Validate;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɩ:Ljava/lang/String;

    .line 10
    invoke-virtual {v2, p3}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object p3

    .line 11
    iput-object v1, p3, Lcom/appsflyer/AFEvent;->і:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ι:Landroid/content/Intent;

    .line 13
    iput-object v1, p3, Lcom/appsflyer/AFEvent;->ı:Landroid/content/Intent;

    .line 14
    check-cast p3, Lcom/appsflyer/internal/model/event/Validate;

    .line 15
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v1

    .line 16
    invoke-virtual {v1, p3}, Lcom/appsflyer/AppsFlyerLibCore;->ι(Lcom/appsflyer/AFEvent;)Ljava/util/Map;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɹ:Ljava/lang/String;

    const-string v3, "price"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->І:Ljava/lang/String;

    const-string v2, "currency"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "receipt_data"

    .line 19
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p0, "extra_prms"

    .line 20
    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object p1

    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "server_request"

    .line 23
    invoke-virtual {p1, p0, v0, v2}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p3, v1}, Lcom/appsflyer/AFEvent;->params(Ljava/util/Map;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0}, Lcom/appsflyer/AFEvent;->urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/model/event/Purchase;

    .line 26
    invoke-static {p1}, Lcom/appsflyer/AFValidateInAppPurchase;->ι(Lcom/appsflyer/internal/model/event/Purchase;)Ljava/net/HttpURLConnection;

    move-result-object p0

    const/4 p1, -0x1

    if-eqz p0, :cond_1

    .line 27
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 28
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p3

    .line 29
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v1

    const-string v2, "server_response"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p3, v4, p2

    invoke-virtual {v1, v2, v0, v4}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Validate-WH response - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    .line 32
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_3

    .line 34
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_1
    move-exception p1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    :cond_2
    throw p1

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "advertiserId"

    .line 1
    iget-object v1, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɩ:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ǃ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-nez v3, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "public-key"

    .line 5
    iget-object v6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->і:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sig-data"

    .line 6
    iget-object v6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ӏ:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "signature"

    .line 7
    iget-object v6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ɩ:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/appsflyer/AFValidateInAppPurchase$5;

    invoke-direct {v7, p0, v5}, Lcom/appsflyer/AFValidateInAppPurchase$5;-><init>(Lcom/appsflyer/AFValidateInAppPurchase;Ljava/util/Map;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-string v5, "dev_key"

    .line 11
    iget-object v6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɩ:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "app_id"

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "uid"

    .line 13
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    sget-object v3, Lcom/appsflyer/AFValidateInAppPurchase;->Ι:Ljava/lang/String;

    invoke-static {v3}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v5

    const-string v6, "server_request"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v0, v8, v2

    .line 18
    invoke-virtual {v5, v6, v3, v8}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/appsflyer/internal/model/event/SdkServices;

    invoke-direct {v0}, Lcom/appsflyer/internal/model/event/SdkServices;-><init>()V

    .line 20
    invoke-virtual {v0, v4}, Lcom/appsflyer/AFEvent;->params(Ljava/util/Map;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v3}, Lcom/appsflyer/AFEvent;->urlString(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/model/event/Purchase;

    .line 22
    invoke-static {v0}, Lcom/appsflyer/AFValidateInAppPurchase;->ι(Lcom/appsflyer/internal/model/event/Purchase;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_3

    .line 23
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 24
    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v5

    const-string v6, "server_response"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    .line 26
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v4, v8, v7

    invoke-virtual {v5, v6, v3, v8}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    .line 28
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Validate response 200 ok: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v0, "result"

    .line 30
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ӏ:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɹ:Ljava/lang/String;

    iget-object v6, p0, Lcom/appsflyer/AFValidateInAppPurchase;->І:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v5, v6, v3}, Lcom/appsflyer/AFValidateInAppPurchase;->ı(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Failed Validate request"

    .line 31
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ӏ:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɹ:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AFValidateInAppPurchase;->І:Ljava/lang/String;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v4, v5, v3}, Lcom/appsflyer/AFValidateInAppPurchase;->ı(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_6

    .line 33
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    sget-object v3, Lcom/appsflyer/AppsFlyerLibCore;->Ι:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v3, :cond_5

    const-string v3, "Failed Validate request + ex"

    .line 35
    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    iget-object v3, p0, Lcom/appsflyer/AFValidateInAppPurchase;->Ӏ:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AFValidateInAppPurchase;->ɹ:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AFValidateInAppPurchase;->І:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/appsflyer/AFValidateInAppPurchase;->ı(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_6

    .line 38
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 39
    :cond_7
    throw v0

    :cond_8
    :goto_1
    return-void
.end method
