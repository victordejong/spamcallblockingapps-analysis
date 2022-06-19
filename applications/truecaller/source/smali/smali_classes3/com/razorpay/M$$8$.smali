.class public Lcom/razorpay/M$$8$;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/razorpay/SmsAgentInterface;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/razorpay/i;

.field public c:Z

.field public d:Z

.field private e:Landroid/webkit/WebView;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/razorpay/F_$o_;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/razorpay/M$$8$;->g:Z

    .line 3
    iput-boolean v0, p0, Lcom/razorpay/M$$8$;->c:Z

    .line 4
    iput-boolean v0, p0, Lcom/razorpay/M$$8$;->d:Z

    .line 5
    iget-object v0, p0, Lcom/razorpay/M$$8$;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/razorpay/M$$8$;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/razorpay/M$$8$;->e:Landroid/webkit/WebView;

    .line 7
    invoke-static {}, Lcom/razorpay/i;->a()Lcom/razorpay/i;

    move-result-object p2

    iput-object p2, p0, Lcom/razorpay/M$$8$;->b:Lcom/razorpay/i;

    .line 8
    invoke-virtual {p2, p0}, Lcom/razorpay/i;->a(Lcom/razorpay/SmsAgentInterface;)V

    .line 9
    new-instance p2, Lcom/razorpay/F_$o_;

    invoke-direct {p2, p1}, Lcom/razorpay/F_$o_;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/razorpay/M$$8$;->h:Lcom/razorpay/F_$o_;

    .line 10
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/razorpay/BaseConfig;->getMagicVersionUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/razorpay/P$_S_;

    invoke-direct {v0, p2}, Lcom/razorpay/P$_S_;-><init>(Lcom/razorpay/F_$o_;)V

    invoke-static {p1, v0}, Lcom/razorpay/p$_5$;->a(Ljava/lang/String;Lcom/razorpay/Callback;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/razorpay/M$$8$;->e:Landroid/webkit/WebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "javascript: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/M$$8$;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/razorpay/Y_$H_;->a()Lcom/razorpay/Y_$H_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/razorpay/BaseConfig;->getMagicSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "merchant_key"

    .line 3
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "otp_permission"

    .line 4
    iget-boolean v3, p0, Lcom/razorpay/M$$8$;->g:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    .line 6
    sget-object v4, Lcom/razorpay/Y_$H_;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    .line 7
    sget v4, Lcom/razorpay/Y_$H_;->c:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "sdk"

    .line 8
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.__rzp_options = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/razorpay/M$$8$;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to load magic settings"

    .line 10
    invoke-static {v2, v1}, Lcom/razorpay/d__1_;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/razorpay/M$$8$;->h:Lcom/razorpay/F_$o_;

    invoke-virtual {v1}, Lcom/razorpay/F_$o_;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/razorpay/M$$8$;->a(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/razorpay/M$$8$;->f:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Magic.elfBridge.setSms(%s)"

    .line 13
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/razorpay/M$$8$;->a(Ljava/lang/String;)V

    .line 14
    iput-object v0, p0, Lcom/razorpay/M$$8$;->f:Ljava/lang/String;

    .line 15
    :cond_0
    iput-boolean v2, p0, Lcom/razorpay/M$$8$;->d:Z

    :cond_1
    return-void
.end method

.method public postSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/razorpay/M$$8$;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sender"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "message"

    .line 4
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/razorpay/M$$8$;->f:Ljava/lang/String;

    const-string p1, "Magic.elfBridge.setSms(%s)"

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/razorpay/M$$8$;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Exception"

    .line 7
    invoke-static {p2, p1}, Lcom/razorpay/d__1_;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setSmsPermission(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/razorpay/M$$8$;->g:Z

    return-void
.end method
