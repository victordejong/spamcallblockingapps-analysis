.class public final Lcom/appsflyer/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/model/event/BackgroundEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/appsflyer/AFEvent;->weakContext()Lcom/appsflyer/AFEvent;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/model/event/BackgroundEvent;

    iput-object p1, p0, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/appsflyer/internal/w;->ι()Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final ι()Ljava/net/HttpURLConnection;
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "\u0399"

    const-string v2, ""

    .line 1
    iget-object v3, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v3}, Lcom/appsflyer/AFEvent;->urlString()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v4}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->body()Ljava/lang/String;

    move-result-object v4

    .line 3
    iget-object v5, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v5}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->trackingStopped()Z

    move-result v5

    .line 4
    iget-object v6, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v6}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->readResponse()Z

    move-result v6

    .line 5
    iget-object v7, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v7}, Lcom/appsflyer/internal/model/event/BackgroundEvent;->proxyMode()Z

    move-result v7

    .line 6
    iget-object v8, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v8}, Lcom/appsflyer/AFEvent;->isEncrypt()Z

    move-result v8

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v5, :cond_0

    return-object v10

    :cond_0
    const/4 v5, 0x0

    const/4 v11, 0x1

    .line 8
    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eqz v7, :cond_2

    .line 9
    :try_start_1
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v13

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "server_request"

    new-array v10, v11, [Ljava/lang/String;

    aput-object v4, v10, v5

    .line 10
    invoke-virtual {v13, v15, v14, v10}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v10, "UTF-8"

    .line 11
    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    array-length v10, v10

    .line 12
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "call = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, "; size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " byte"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v10, v11, :cond_1

    const-string v10, "s"

    goto :goto_0

    :cond_1
    move-object v10, v2

    :goto_0
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; body = "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/internal/ah;->ı(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_2
    :goto_1
    :try_start_2
    const-string v4, "AppsFlyer"

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 14
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const/16 v10, 0x7530

    .line 15
    :try_start_3
    invoke-virtual {v4, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 16
    invoke-virtual {v4, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string v10, "POST"

    .line 17
    invoke-virtual {v4, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v4, v11}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 19
    invoke-virtual {v4, v11}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v10, "Content-Type"

    if-eqz v8, :cond_3

    const-string v13, "application/octet-stream"

    goto :goto_2

    :cond_3
    const-string v13, "application/json"

    .line 20
    :goto_2
    invoke-virtual {v4, v10, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    if-eqz v8, :cond_6

    .line 22
    iget-object v8, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v8}, Lcom/appsflyer/AFEvent;->key()Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    new-array v13, v11, [Ljava/lang/Object;

    aput-object v8, v13, v5

    const/16 v8, 0x18

    invoke-static {v8, v8, v5}, Lcom/appsflyer/internal/c;->ι(IIC)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Class;

    new-array v15, v11, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;

    aput-object v16, v15, v5

    invoke-virtual {v14, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    new-array v14, v11, [Ljava/lang/Object;

    aput-object v9, v14, v5

    invoke-static {v8, v8, v5}, Lcom/appsflyer/internal/c;->ι(IIC)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    new-array v9, v11, [Ljava/lang/Class;

    const-class v15, [B

    aput-object v15, v9, v5

    invoke-virtual {v8, v0, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_4

    throw v5

    :cond_4
    throw v0

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_5

    throw v5

    :cond_5
    throw v0

    :cond_6
    :goto_3
    invoke-virtual {v10, v9}, Ljava/io/OutputStream;->write([B)V

    .line 23
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 24
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    .line 25
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eqz v6, :cond_7

    .line 26
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    if-eqz v7, :cond_8

    .line 27
    invoke-static {}, Lcom/appsflyer/internal/af;->Ι()Lcom/appsflyer/internal/af;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "server_response"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v2, v9, v11

    invoke-virtual {v6, v8, v7, v9}, Lcom/appsflyer/internal/af;->ı(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_8
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_9

    const-string v0, "Status 200 ok"

    .line 29
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 30
    iget-object v0, v1, Lcom/appsflyer/internal/w;->ι:Lcom/appsflyer/internal/model/event/BackgroundEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->context()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/appsflyer/AppsFlyerLibCore;->REGISTER_URL:Ljava/lang/String;

    invoke-static {v7}, Lcom/appsflyer/ServerConfigHandler;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    .line 32
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "sentRegisterRequestToAF"

    .line 33
    invoke-interface {v0, v6, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "Successfully registered for Uninstall Measurement"

    .line 35
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v10, v4

    goto :goto_4

    :catchall_4
    move-exception v0

    const/4 v15, 0x0

    move-object v10, v15

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v15, v10

    .line 36
    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while calling "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v10

    :cond_9
    const/4 v5, 0x1

    .line 37
    :cond_a
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Connection "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_b

    const-string v3, "error"

    goto :goto_6

    :cond_b
    const-string v3, "call succeeded"

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v4
.end method
