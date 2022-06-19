.class final Lcom/appsflyer/AppsFlyerLibCore$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field private synthetic ǃ:Lcom/appsflyer/AppsFlyerLibCore;

.field private final ι:Lcom/appsflyer/AFEvent;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/appsflyer/AFEvent;->weakContext()Lcom/appsflyer/AFEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/AppsFlyerLibCore$e;-><init>(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->params()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->ɩ()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v2}, Lcom/appsflyer/AFEvent;->urlString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    .line 5
    iget v4, v3, Lcom/appsflyer/AFEvent;->Ɩ:I

    .line 6
    invoke-virtual {v3}, Lcom/appsflyer/AFEvent;->context()Landroid/content/Context;

    move-result-object v3

    .line 7
    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-virtual {v5}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v0}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    sget v1, Lcom/appsflyer/attribution/RequestError;->STOP_TRACKING:I

    sget-object v2, Lcom/appsflyer/internal/attribution/RequestErrorMessage;->STOP_TRACKING:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    new-array v6, v5, [B

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_9

    if-gt v4, v7, :cond_9

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->І(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "rfr"

    .line 12
    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v10}, Lcom/appsflyer/AppsFlyerLibCore;->і(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/GoogleReferrer;

    move-result-object v10

    iget-object v10, v10, Lcom/appsflyer/internal/referrer/GoogleReferrer;->oldMap:Ljava/util/Map;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v3}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 14
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "newGPReferrerSent"

    .line 15
    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 16
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    iget-object v9, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v9}, Lcom/appsflyer/AppsFlyerLibCore;->і(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/GoogleReferrer;

    move-result-object v9

    iget-object v9, v9, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    sget-object v9, Lcom/appsflyer/AppsFlyerLibCore$6;->ı:[I

    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v10}, Lcom/appsflyer/AppsFlyerLibCore;->Ӏ(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/referrer/Referrer;->getState()Lcom/appsflyer/internal/referrer/Referrer$State;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v8, :cond_4

    if-eq v9, v7, :cond_3

    goto :goto_0

    :cond_3
    if-ne v4, v7, :cond_5

    .line 19
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v9, "source"

    const-string v10, "huawei"

    .line 20
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "response"

    const-string v10, "TIMEOUT"

    .line 21
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v9, Lcom/appsflyer/internal/referrer/MandatoryFields;

    invoke-direct {v9}, Lcom/appsflyer/internal/referrer/MandatoryFields;-><init>()V

    invoke-interface {v4, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_4
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->Ӏ(Lcom/appsflyer/AppsFlyerLibCore;)Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    move-result-object v4

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "referrers"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_6
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "fb_ddl"

    .line 27
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->ɩ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_7
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ɹ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "lvl"

    .line 29
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 30
    :cond_8
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->Ɩ(Lcom/appsflyer/AppsFlyerLibCore;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v4}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;Ljava/util/Map;)Ljava/util/Map;

    .line 32
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "error"

    const-string v9, "operation timed out."

    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lvl"

    .line 33
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLibCore;->ı(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    instance-of v1, v1, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-nez v1, :cond_a

    .line 35
    new-instance v1, Lcom/appsflyer/internal/a$b;

    invoke-direct {v1, v0, v3}, Lcom/appsflyer/internal/a$b;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_a
    const/4 v1, 0x0

    .line 36
    :try_start_0
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    instance-of v9, v4, Lcom/appsflyer/internal/model/event/AdRevenue;

    if-eqz v9, :cond_b

    const-string v9, "af_key"

    .line 37
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v9, "appsflyerKey"

    .line 38
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 39
    :goto_2
    invoke-virtual {v4, v9}, Lcom/appsflyer/AFEvent;->key(Ljava/lang/String;)Lcom/appsflyer/AFEvent;

    .line 40
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 41
    :try_start_1
    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v4, v9, v5

    const/16 v4, 0x18

    const/16 v10, 0x30

    const/16 v11, 0xa82

    invoke-static {v4, v10, v11}, Lcom/appsflyer/internal/c;->ι(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v10, "\u0399"

    new-array v11, v8, [Ljava/lang/Class;

    const-class v12, Lcom/appsflyer/AFEvent;

    aput-object v12, v11, v5

    invoke-virtual {v4, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 42
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :try_start_4
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ǃ:Lcom/appsflyer/AppsFlyerLibCore;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v5, v4}, Lcom/appsflyer/AFEvent;->post([B)Lcom/appsflyer/AFEvent;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/appsflyer/AppsFlyerLibCore;->Ι(Lcom/appsflyer/AppsFlyerLibCore;Lcom/appsflyer/AFEvent;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-void

    :catch_0
    move-exception v0

    move-object v6, v4

    goto :goto_4

    :catchall_0
    move-exception v5

    move-object v6, v4

    goto :goto_3

    :catchall_1
    move-exception v4

    .line 44
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_c

    throw v5

    :cond_c
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v5

    .line 45
    :goto_3
    :try_start_6
    monitor-exit v0

    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 48
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_d
    return-void

    :catch_1
    move-exception v0

    :goto_4
    const-string v4, "Exception while sending request to server. "

    .line 49
    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_12

    if-eqz v3, :cond_12

    const-string v4, "&isCachedRequest=true&timeincache="

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 51
    invoke-static {}, Lcom/appsflyer/internal/z;->ı()Lcom/appsflyer/internal/z;

    new-instance v4, Lcom/appsflyer/internal/f;

    const-string v5, "6.0.0"

    invoke-direct {v4, v2, v6, v5}, Lcom/appsflyer/internal/f;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 52
    :try_start_7
    invoke-static {v3}, Lcom/appsflyer/internal/z;->Ι(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    .line 54
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    goto/16 :goto_6

    .line 55
    :cond_e
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 56
    array-length v2, v2

    const/16 v5, 0x28

    if-le v2, v5, :cond_f

    const-string v2, "reached cache limit, not caching request"

    .line 57
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    const-string v2, "caching request..."

    .line 58
    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/appsflyer/internal/z;->Ι(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 61
    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    const-string v1, "version="

    .line 62
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 63
    iget-object v1, v4, Lcom/appsflyer/internal/f;->ɩ:Ljava/lang/String;

    .line 64
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 65
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    const-string v2, "url="

    .line 66
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    iget-object v2, v4, Lcom/appsflyer/internal/f;->ı:Ljava/lang/String;

    .line 68
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    const-string v2, "data="

    .line 70
    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v4}, Lcom/appsflyer/internal/f;->Ι()[B

    move-result-object v2

    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(I)V

    .line 73
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 74
    :try_start_9
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :catch_2
    move-exception v2

    move-object v1, v3

    goto :goto_5

    :catchall_5
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v2

    :goto_5
    :try_start_a
    const-string v3, "Could not cache request"

    .line 75
    invoke-static {v3, v2}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v1, :cond_10

    .line 76
    :try_start_b
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 77
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    .line 78
    :cond_10
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_7
    if-eqz v1, :cond_11

    .line 79
    :try_start_c
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_8

    :catch_5
    move-exception v1

    .line 80
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    .line 81
    :cond_11
    :goto_8
    throw v0

    .line 82
    :cond_12
    :goto_9
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$e;->ι:Lcom/appsflyer/AFEvent;

    invoke-virtual {v1}, Lcom/appsflyer/AFEvent;->getRequestListener()Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 83
    sget v2, Lcom/appsflyer/attribution/RequestError;->NETWORK_FAILURE:I

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 84
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore$InstallAttributionIdFetcher;->ι(Ljava/lang/String;)V

    return-void
.end method
