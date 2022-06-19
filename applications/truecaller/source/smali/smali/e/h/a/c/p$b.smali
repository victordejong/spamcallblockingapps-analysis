.class public Le/h/a/c/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/p;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/h/a/c/p;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/h/a/c/p$b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object p3, p0, Le/h/a/c/p$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p$b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "accountId"

    .line 4
    iget-object v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "accountToken"

    .line 6
    iget-object v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "accountRegion"

    .line 8
    iget-object v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fcmSenderId"

    .line 10
    iget-object v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "analyticsOnly"

    .line 12
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    .line 13
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "isDefaultInstance"

    .line 14
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    .line 15
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "useGoogleAdId"

    .line 16
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    .line 17
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "disableAppLaunchedEvent"

    .line 18
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    .line 19
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "personalization"

    .line 20
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    .line 21
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "debugLevel"

    .line 22
    iget v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    .line 23
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "createdPostAppLaunch"

    .line 24
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    .line 25
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "sslPinning"

    .line 26
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    .line 27
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "backgroundSync"

    .line 28
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    .line 29
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "getEnableCustomCleverTapId"

    .line 30
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    .line 31
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "packageName"

    .line 32
    iget-object v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "beta"

    .line 34
    iget-boolean v4, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    .line 35
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "allowedPushTypes"

    .line 36
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 37
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 39
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 43
    :cond_2
    iget-object v1, p0, Le/h/a/c/p$b;->b:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/p$b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v4, "instance"

    invoke-static {v3, v4}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Ln3/g0/y;->F1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method
