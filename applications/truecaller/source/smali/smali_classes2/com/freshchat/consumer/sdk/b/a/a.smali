.class public Lcom/freshchat/consumer/sdk/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static dY:Ljava/lang/String; = "JsonResponse"


# instance fields
.field private dW:Lorg/json/JSONObject;

.field private dX:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/b/a/a;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/b/a/a;->Q(Ljava/lang/String;)V

    return-void
.end method

.method private Q(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->reset()V

    if-eqz p1, :cond_2

    const-string v0, "{ \""

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/b/a/a;->dY:Ljava/lang/String;

    const-string v2, "\":\t "

    const-string v3, "}"

    invoke-static {v0, v1, v2, p1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/freshchat/consumer/sdk/b/a/a;->dY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dX:Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an Valid one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FRESHCHAT"

    const-string v1, "Exception occured"

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->reset()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/freshchat/consumer/sdk/b/a/b;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/b/a/b;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/a/b;->co()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/json/JSONArray;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dX:Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not an Valid one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_0
    sget-object v0, Lcom/freshchat/consumer/sdk/b/b;->da:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/ad;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/b/a/a;->Q(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "FRESHCHAT"

    const-string v1, "Exception occured"

    invoke-static {v0, v1, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dX:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public cm()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cn()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public db()Z
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public fJ()Z
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dX:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dX:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->cn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Object : "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dW:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/a/a;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Array : "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/b/a/a;->dX:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
