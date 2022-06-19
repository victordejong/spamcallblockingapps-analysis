.class public final synthetic Lcom/google/android/gms/measurement/internal/zzgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzgv;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzgv;->a:Lcom/google/android/gms/measurement/internal/zzhw;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 1
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 2
    iget-object v1, v1, Le/m/a/f/l/a/u;->r:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeq;->b()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 4
    iget-object v1, v1, Le/m/a/f/l/a/u;->s:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v1

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v3

    .line 6
    iget-object v3, v3, Le/m/a/f/l/a/u;->s:Lcom/google/android/gms/measurement/internal/zzes;

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const-wide/16 v4, 0x5

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Permanently failed to retrieve Deferred Deep Link. Reached maximum retries."

    .line 10
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 12
    iget-object v0, v0, Le/m/a/f/l/a/u;->r:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)V

    return-void

    .line 13
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->s()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->h(Le/m/a/f/l/a/w0;)V

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdy;->i()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Le/m/a/f/l/a/v0;->d()V

    iget-object v4, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 18
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 19
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    iget-object v6, v1, Le/m/a/f/l/a/u;->h:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    if-eqz v6, :cond_2

    iget-wide v9, v1, Le/m/a/f/l/a/u;->j:J

    cmp-long v9, v4, v9

    if-ltz v9, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    new-instance v4, Landroid/util/Pair;

    iget-boolean v1, v1, Le/m/a/f/l/a/u;->i:Z

    .line 21
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 22
    :cond_2
    :goto_0
    iget-object v6, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 24
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzdu;->b:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 25
    invoke-virtual {v6, v0, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)J

    move-result-wide v9

    add-long/2addr v9, v4

    iput-wide v9, v1, Le/m/a/f/l/a/u;->j:J

    .line 26
    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    iget-object v4, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 27
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 28
    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v4

    iput-object v8, v1, Le/m/a/f/l/a/u;->h:Ljava/lang/String;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-object v5, v1, Le/m/a/f/l/a/u;->h:Ljava/lang/String;

    .line 30
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    iput-boolean v4, v1, Le/m/a/f/l/a/u;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 31
    iget-object v5, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v5

    .line 33
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v6, "Unable to get advertising id"

    .line 34
    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v8, v1, Le/m/a/f/l/a/u;->h:Ljava/lang/String;

    .line 35
    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance v4, Landroid/util/Pair;

    iget-object v5, v1, Le/m/a/f/l/a/u;->h:Ljava/lang/String;

    iget-boolean v1, v1, Le/m/a/f/l/a/u;->i:Z

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    :goto_2
    iget-object v1, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 38
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf;->q()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_6

    .line 41
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->s()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v1

    invoke-virtual {v1}, Le/m/a/f/l/a/w0;->g()V

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 42
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 43
    :try_start_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    :cond_5
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_7

    .line 44
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v1

    .line 46
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v6

    iget-object v6, v6, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzaf;->m()J

    .line 48
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v6

    iget-object v6, v6, Le/m/a/f/l/a/u;->s:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v9

    const-wide/16 v11, -0x1

    add-long/2addr v9, v11

    .line 50
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :try_start_2
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const-wide/32 v13, 0xd6dd

    .line 53
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkw;->h0()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v2

    const-string v13, "v%s.%s"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v7

    aput-object v4, v6, v2

    aput-object v0, v6, v11

    const/4 v2, 0x3

    .line 54
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v2, "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=%s&rdid=%s&bundleid=%s&retry=%s"

    .line 55
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 56
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const-string v6, "debug.deferred.deeplink"

    .line 57
    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "&ddl_test=1"

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_6
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v4

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    :goto_4
    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 63
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Failed to create BOW URL for Deferred Deep Link. exception"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5
    if-eqz v5, :cond_9

    .line 64
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->s()Lcom/google/android/gms/measurement/internal/zzia;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/zzfp;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    .line 65
    invoke-virtual {v1}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v1}, Le/m/a/f/l/a/w0;->g()V

    .line 66
    iget-object v3, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v3

    new-instance v4, Le/m/a/f/l/a/w1;

    .line 68
    invoke-direct {v4, v1, v0, v5, v2}, Le/m/a/f/l/a/w1;-><init>(Lcom/google/android/gms/measurement/internal/zzia;Ljava/lang/String;Ljava/net/URL;Lcom/google/android/gms/measurement/internal/zzfp;)V

    .line 69
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzfo;->m(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 70
    :cond_7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Network is not available for Deferred Deep Link request. Skipping"

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 73
    :cond_8
    :goto_6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 74
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "ADID unavailable to retrieve Deferred Deep Link. Skipping"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :cond_9
    :goto_7
    return-void

    .line 76
    :cond_a
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Deferred Deep Link already retrieved. Not fetching again."

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method
