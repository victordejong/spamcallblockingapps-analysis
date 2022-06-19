.class public final Lcom/razorpay/Y_$H_;
.super Lcom/razorpay/BaseConfig;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "checkout"

.field public static b:Ljava/lang/String; = "1.6.12"

.field public static c:I = 0x29

.field public static d:Z = true

.field private static e:Lcom/razorpay/Y_$H_; = null

.field private static f:Ljava/lang/String; = "2HujvzmUo2nuRLLqhIHIV4sCEmRw9FIc"

.field private static g:Ljava/lang/String; = "3.0.5"


# instance fields
.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/lang/Boolean;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/razorpay/BaseConfig;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/razorpay/Y_$H_;->h:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/razorpay/Y_$H_;->i:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/razorpay/Y_$H_;->q:Z

    return-void
.end method

.method public static a()Lcom/razorpay/Y_$H_;
    .locals 1

    .line 1
    sget-object v0, Lcom/razorpay/Y_$H_;->e:Lcom/razorpay/Y_$H_;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/razorpay/Y_$H_;

    invoke-direct {v0}, Lcom/razorpay/Y_$H_;-><init>()V

    .line 3
    sput-object v0, Lcom/razorpay/Y_$H_;->e:Lcom/razorpay/Y_$H_;

    invoke-static {v0}, Lcom/razorpay/n$_B$;->a(Lcom/razorpay/BaseConfig;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/razorpay/Y_$H_;->e:Lcom/razorpay/Y_$H_;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 11
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/razorpay/BaseConfig;->isConfigEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sget-object v1, Lcom/razorpay/Y_$H_;->f:Ljava/lang/String;

    const-string v2, "AuthKey"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-type"

    const-string v2, "application/json"

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p0}, Lcom/razorpay/Y_$H_;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrentSettingVersion"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->getConfigEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/razorpay/Y_$H_;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tenant"

    .line 18
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lcom/razorpay/Y_$H_;->b:Ljava/lang/String;

    const-string v3, "sdk_version"

    .line 19
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lcom/razorpay/Y_$H_;->a:Ljava/lang/String;

    const-string v3, "sdk_type"

    .line 20
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/razorpay/Y_$H_;->d:Z

    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "magic_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget v2, Lcom/razorpay/Y_$H_;->c:I

    .line 22
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_version_code"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "app_version"

    const-string v3, "1.6.12"

    .line 23
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 24
    invoke-static {p0}, Lcom/razorpay/Y_$H_;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/BaseConfig;->getCurrentConfigVersionTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 25
    invoke-static {v1, p0, p1}, Lcom/razorpay/BaseConfig;->getFetchConfigBuilder(Landroid/net/Uri$Builder;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1, v0, p0}, Lcom/razorpay/BaseConfig;->fetchConfig(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/razorpay/Y_$H_;->q:Z

    if-nez v0, :cond_0

    .line 8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "retry.enabled"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/razorpay/Y_$H_;->o:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "retry.max_count"

    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/razorpay/Y_$H_;->p:I

    .line 10
    :cond_0
    iput-boolean p2, p0, Lcom/razorpay/Y_$H_;->q:Z

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/razorpay/BaseConfig;->getBaseCurrentConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/razorpay/Y_$H_;->g:Ljava/lang/String;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 28
    sget v0, Lcom/razorpay/R$raw;->rzp_config:I

    invoke-static {p1, v0}, Lcom/razorpay/BaseConfig;->getConfig(Landroid/content/Context;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/razorpay/Y_$H_;->setConfig(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x1

    .line 5
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/razorpay/Y_$H_;->a(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {p1, v1, v0}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/Y_$H_;->l:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/Y_$H_;->n:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/razorpay/Y_$H_;->p:I

    return v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->i:Ljava/util/Map;

    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/Y_$H_;->r:Z

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/razorpay/Y_$H_;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/Y_$H_;->j:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/Y_$H_;->k:Z

    return v0
.end method

.method public final setConfig(Lorg/json/JSONObject;)V
    .locals 6

    const-string v0, ""

    :try_start_0
    const-string v1, "checkout.append_keys"

    .line 1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 2
    invoke-static {v1}, Lcom/razorpay/BaseUtils;->jsonStringArrayToArrayList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/razorpay/Y_$H_;->h:Ljava/util/ArrayList;

    const-string v1, "checkout.url_config"

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/razorpay/Y_$H_;->i:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "card_saving.broadcast_receiver_flow"

    .line 8
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/Y_$H_;->j:Z

    const-string v1, "card_saving.shared_preferences_flow"

    .line 9
    invoke-static {v1, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/Y_$H_;->k:Z

    const-string v1, "card_saving.local"

    .line 10
    invoke-static {v1, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/Y_$H_;->l:Z

    const-string v1, "native_loader.color"

    .line 11
    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/razorpay/Y_$H_;->m:Ljava/lang/String;

    const-string v1, "native_loader.enable"

    .line 12
    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/Y_$H_;->n:Z

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1, v1}, Lcom/razorpay/Y_$H_;->a(Lorg/json/JSONObject;Z)V

    const-string v1, "back_button.alert_message"

    .line 14
    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/razorpay/Y_$H_;->s:Ljava/lang/String;

    const-string v1, "back_button.enable"

    .line 15
    invoke-static {v1, p1, v2}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/razorpay/Y_$H_;->r:Z

    const-string v1, "back_button.positive_text"

    .line 16
    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/razorpay/Y_$H_;->u:Ljava/lang/String;

    const-string v1, "back_button.negative_text"

    .line 17
    invoke-static {v1, p1, v0}, Lcom/razorpay/BaseUtils;->getJsonValue(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/razorpay/Y_$H_;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "warning"

    invoke-static {v0, v2, v1}, Lcom/razorpay/AnalyticsUtil;->reportError(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_1
    invoke-super {p0, p1}, Lcom/razorpay/BaseConfig;->setConfig(Lorg/json/JSONObject;)V

    return-void
.end method
