.class public Lcom/razorpay/AnalyticsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lproguard/annotation/Keep;
.end annotation

.annotation build Lproguard/annotation/KeepClassMembers;
.end annotation


# static fields
.field public static BUILD_TYPE:Ljava/lang/String; = null

.field public static KEY_TYPE:Ljava/lang/String; = null

.field public static MERCHANT_APP_BUILD:I = 0x0

.field public static MERCHANT_APP_NAME:Ljava/lang/CharSequence; = null

.field public static MERCHANT_APP_NAMESPACE:Ljava/lang/CharSequence; = null

.field public static MERCHANT_APP_VERSION:Ljava/lang/CharSequence; = null

.field private static isAnalyticsInitialized:Z = false

.field public static libraryType:Ljava/lang/String; = null

.field private static localOrderId:Ljava/lang/String; = null

.field private static localPaymentId:Ljava/lang/String; = null

.field private static sdkType:Ljava/lang/String; = "standealone"

.field private static sdkVersion:Ljava/lang/String;

.field private static sdkVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFilteredPropertiesFromPayload(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/razorpay/D$$l_;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static addProperty(Ljava/lang/String;Lcom/razorpay/AnalyticsProperty;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/razorpay/AnalyticsProperty;->scope:Lcom/razorpay/AnalyticsProperty$Scope;

    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->PAYMENT:Lcom/razorpay/AnalyticsProperty$Scope;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/razorpay/D$$l_;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/razorpay/AnalyticsProperty$Scope;->ORDER:Lcom/razorpay/AnalyticsProperty$Scope;

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p1, Lcom/razorpay/AnalyticsProperty;->value:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/razorpay/D$$l_;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static getAnalyticsDataForCheckout(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "platform"

    const-string v2, "mobile_sdk"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "platform_version"

    .line 3
    sget-object v2, Lcom/razorpay/AnalyticsUtil;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v2, "android"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_version"

    .line 5
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-static {p0}, Lcom/razorpay/G_$8_;->a(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "device"

    if-eqz p0, :cond_0

    :try_start_1
    const-string p0, "tablet"

    .line 7
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p0, "mobile"

    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "critical"

    invoke-static {p0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getAppDetail()Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/razorpay/AnalyticsUtil;->isAnalyticsInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAME:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_VERSION:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_BUILD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBuildType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->BUILD_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "error_level"

    const-string v1, "error_message"

    .line 1
    invoke-static {v0, p0, v1, p1}, Le/d/c/a/a;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getExtraAnalyticsPayload()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/razorpay/D$$l_;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getKeyType()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->KEY_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static getKeyType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 3
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "rzp_live"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "live"

    return-object p0

    :cond_1
    const-string v0, "rzp_test"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "test"

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getLocalOrderId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->localOrderId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localOrderId:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->localOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPaymentId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->localPaymentId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localPaymentId:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->localPaymentId:Ljava/lang/String;

    return-object v0
.end method

.method public static getPageLoadEndProperties(Ljava/lang/String;J)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    .line 1
    invoke-static {v0, p0}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    long-to-double p1, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "page_load_time"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static getPageLoadStartProperties(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    .line 1
    invoke-static {v0, p0}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUniqueId()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x1434b198400L

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x416c2f0200000000L    # 1.4776336E7

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/razorpay/AnalyticsUtil;->tobase62(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/razorpay/AnalyticsUtil;->tobase62(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsUtil;->sdkType:Ljava/lang/String;

    sget-object v1, Lcom/razorpay/AnalyticsUtil;->sdkVersion:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/razorpay/D$$l_;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "merchant_key"

    .line 2
    invoke-static {v0, p1}, Lcom/razorpay/D$$l_;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "merchant_package"

    invoke-static {v0, p1}, Lcom/razorpay/D$$l_;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lcom/razorpay/d__B_;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Lcom/razorpay/AnalyticsUtil;->isAnalyticsInitialized:Z

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Merchant key not set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Context not set"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isCheckoutUrl(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/razorpay/n$_B$;->a()Lcom/razorpay/BaseConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->getCheckoutEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static postData()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/razorpay/AnalyticsUtil;->isAnalyticsInitialized:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/razorpay/D$$l_;->a()V

    :cond_0
    return-void
.end method

.method public static refreshOrderSession()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localOrderId:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localPaymentId:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/razorpay/D$$l_;->d()V

    .line 4
    invoke-static {}, Lcom/razorpay/D$$l_;->c()V

    return-void
.end method

.method public static refreshPaymentSession()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/razorpay/AnalyticsUtil;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localPaymentId:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/razorpay/D$$l_;->c()V

    return-void
.end method

.method public static reportError(Ljava/lang/AbstractMethodError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ERROR_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1, p2}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/AbstractMethodError;->printStackTrace()V

    return-void
.end method

.method public static reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ERROR_LOGGED:Lcom/razorpay/AnalyticsEvent;

    invoke-static {p1, p2}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static reportUncaughtException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->ERROR_LOGGED:Lcom/razorpay/AnalyticsEvent;

    const-string v1, "uncaught"

    invoke-static {v1, p0}, Lcom/razorpay/AnalyticsUtil;->getErrorProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/razorpay/AnalyticsUtil;->isAnalyticsInitialized:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localPaymentId:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/razorpay/AnalyticsUtil;->localOrderId:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/razorpay/D$$l_;->b()V

    return-void
.end method

.method public static returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "undefined"

    :cond_0
    return-object p0
.end method

.method public static saveEventsToPreferences(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/razorpay/D$$l_;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static setAppDetails(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAME:Ljava/lang/CharSequence;

    .line 4
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_VERSION:Ljava/lang/CharSequence;

    .line 5
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/razorpay/AnalyticsUtil;->returnUndefinedIfNull(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sput-object v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_NAMESPACE:Ljava/lang/CharSequence;

    .line 6
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/razorpay/AnalyticsUtil;->MERCHANT_APP_BUILD:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "critical"

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-static {p0}, Lcom/razorpay/BaseUtils;->getAppBuildType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/razorpay/AnalyticsUtil;->BUILD_TYPE:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/razorpay/AnalyticsUtil;->getKeyType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/razorpay/AnalyticsUtil;->KEY_TYPE:Ljava/lang/String;

    return-void
.end method

.method public static setLocalOrderId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/razorpay/AnalyticsUtil;->localOrderId:Ljava/lang/String;

    return-void
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    sput-object p2, Lcom/razorpay/AnalyticsUtil;->sdkType:Ljava/lang/String;

    .line 2
    sput p3, Lcom/razorpay/AnalyticsUtil;->sdkVersionCode:I

    .line 3
    sput-object p4, Lcom/razorpay/AnalyticsUtil;->sdkVersion:Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lcom/razorpay/AnalyticsUtil;->setAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {p0, p1}, Lcom/razorpay/AnalyticsUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static tobase62(J)Ljava/lang/String;
    .locals 6

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    const-string v1, ""

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e

    .line 2
    rem-long v4, p0, v2

    long-to-int v4, v4

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    div-long/2addr p0, v2

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static trackEvent(Lcom/razorpay/AnalyticsEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/razorpay/D$$l_;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/razorpay/AnalyticsEvent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/razorpay/D$$l_;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Lcom/razorpay/AnalyticsEvent;Lorg/json/JSONObject;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/razorpay/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/razorpay/D$$l_;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static trackPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/razorpay/D$$l_;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackPageLoadEnd(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isCheckoutUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAGE_LOAD_FINISH:Lcom/razorpay/AnalyticsEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->PAGE_LOAD_FINISH:Lcom/razorpay/AnalyticsEvent;

    .line 2
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/razorpay/AnalyticsUtil;->getPageLoadEndProperties(Ljava/lang/String;J)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    return-void
.end method

.method public static trackPageLoadStart(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->isCheckoutUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/razorpay/AnalyticsEvent;->CHECKOUT_PAGE_LOAD_START:Lcom/razorpay/AnalyticsEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/razorpay/AnalyticsEvent;->PAGE_LOAD_START:Lcom/razorpay/AnalyticsEvent;

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/razorpay/AnalyticsUtil;->getPageLoadStartProperties(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/razorpay/AnalyticsUtil;->trackEvent(Lcom/razorpay/AnalyticsEvent;Ljava/util/Map;)V

    return-void
.end method
