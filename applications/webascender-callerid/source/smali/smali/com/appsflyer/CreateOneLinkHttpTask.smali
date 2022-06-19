.class public Lcom/appsflyer/CreateOneLinkHttpTask;
.super Lcom/appsflyer/OneLinkHttpTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;
    }
.end annotation


# static fields
.field private static final BRAND_DOMAIN:Ljava/lang/String; = "brand_domain"

.field private static final TRACKING_LINK_DATA_KEY:Ljava/lang/String; = "data"

.field private static final TRACKING_LINK_LIVE_TIME_KEY:Ljava/lang/String; = "ttl"


# instance fields
.field private brandDomain:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackingStopped:Z

.field private packageName:Ljava/lang/String;

.field private responseListener:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

.field private ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/AppsFlyerLibCore;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/appsflyer/AppsFlyerLibCore;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/appsflyer/OneLinkHttpTask;-><init>(Lcom/appsflyer/AppsFlyerLibCore;)V

    const-string p3, ""

    .line 2
    iput-object p3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->packageName:Ljava/lang/String;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->mTrackingStopped:Z

    .line 4
    iput-boolean p5, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->mTrackingStopped:Z

    .line 5
    iput-object p4, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->context:Landroid/content/Context;

    if-eqz p4, :cond_0

    .line 6
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p3, "CreateOneLinkHttpTask: context can\'t be null"

    .line 7
    invoke-static {p3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 8
    :goto_0
    iput-object p1, p0, Lcom/appsflyer/OneLinkHttpTask;->oneLinkId:Ljava/lang/String;

    const-string p1, "-1"

    .line 9
    iput-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->ttl:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->data:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method getOneLinkUrl()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appsflyer/OneLinkHttpTask;->BASE_URL:Ljava/lang/String;

    invoke-static {v1}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/OneLinkHttpTask;->oneLinkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleResponse(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->responseListener:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;->onResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->responseListener:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    const-string v2, "Can\'t parse one link data"

    invoke-interface {v1, v2}, Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;->onResponseError(Ljava/lang/String;)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing to json "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method initRequest(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->mTrackingStopped:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "POST"

    .line 2
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 4
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->data:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 8
    iget-object v2, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->ttl:Ljava/lang/String;

    const-string v3, "ttl"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    .line 9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->brandDomain:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "brand_domain"

    .line 11
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 13
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 16
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

.method onErrorResponse()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "onelinkDomain"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/appsflyer/share/LinkGenerator;

    const-string v2, "af_app_invites"

    invoke-direct {v1, v2}, Lcom/appsflyer/share/LinkGenerator;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/appsflyer/OneLinkHttpTask;->oneLinkId:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->packageName:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2, v0, v3}, Lcom/appsflyer/share/LinkGenerator;->setBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->packageName:Ljava/lang/String;

    const-string v2, "af_siteid"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/share/LinkGenerator;->addParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->data:Ljava/util/Map;

    .line 5
    invoke-virtual {v0, v1}, Lcom/appsflyer/share/LinkGenerator;->addParameters(Ljava/util/Map;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "AppUserId"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lcom/appsflyer/share/LinkGenerator;->setReferrerCustomerId(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/appsflyer/share/LinkGenerator;->generateLink()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->responseListener:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    invoke-interface {v1, v0}, Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setBrandDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->brandDomain:Ljava/lang/String;

    return-void
.end method

.method public setListener(Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/CreateOneLinkHttpTask;->responseListener:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    return-void
.end method
