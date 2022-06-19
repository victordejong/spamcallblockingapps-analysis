.class final Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;
.super Lcom/appsflyer/internal/ContentFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/referrer/HuaweiReferrer;->start(Landroid/content/Context;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/ContentFetcher<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic Ι:Ljava/lang/Runnable;

.field private synthetic ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/referrer/HuaweiReferrer;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iput-object p5, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->Ι:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/ContentFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private Ι()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "FEATURE_NOT_SUPPORTED"

    const-string v1, "response"

    .line 1
    iget-object v2, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    new-instance v3, Lcom/appsflyer/internal/referrer/MandatoryFields;

    invoke-direct {v3}, Lcom/appsflyer/internal/referrer/MandatoryFields;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2
    iget-object v2, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v2, v2, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v3, "source"

    const-string v4, "huawei"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v2, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/appsflyer/internal/ContentFetcher;->authority:Ljava/lang/String;

    const/16 v4, 0x80

    .line 4
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/appsflyer/AndroidUtils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "api_ver"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    iget-object v4, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/appsflyer/AndroidUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "api_ver_name"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "content://"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/appsflyer/internal/ContentFetcher;->authority:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/item/5"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    iget-object v9, p0, Lcom/appsflyer/internal/ContentFetcher;->context:Landroid/content/Context;

    .line 9
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    .line 10
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    iget-object v4, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v5, "OK"

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v4, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v5, "referrer"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v4, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v5, "click_ts"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v4, "install_end_ts"

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_2

    .line 17
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v5, "install_begin_ts"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "track_id"

    const/4 v5, 0x4

    .line 19
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "referrer_ex"

    const/4 v5, 0x5

    .line 20
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v4, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v5, "huawei_custom"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 22
    :cond_0
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v3, v3, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    const-string v4, "SERVICE_UNAVAILABLE"

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 24
    :try_start_1
    iget-object v4, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v4, v4, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, v3}, Lcom/appsflyer/internal/ContentFetcher;->onError(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 26
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    .line 28
    iget-object v1, v0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/appsflyer/internal/referrer/Referrer;->ι:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "latency"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/appsflyer/internal/referrer/Referrer$State;->FINISHED:Lcom/appsflyer/internal/referrer/Referrer$State;

    iput-object v1, v0, Lcom/appsflyer/internal/referrer/Referrer;->ɩ:Lcom/appsflyer/internal/referrer/Referrer$State;

    .line 30
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->Ι:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 31
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->ι:Lcom/appsflyer/internal/referrer/HuaweiReferrer;

    iget-object v0, v0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    return-object v0

    :goto_2
    if-eqz v2, :cond_4

    .line 32
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 33
    :cond_4
    throw v0
.end method


# virtual methods
.method public final synthetic query()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;->Ι()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
