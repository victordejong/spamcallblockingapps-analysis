.class public final Lcom/google/android/gms/measurement/internal/zzjm;
.super Le/m/a/f/l/a/q3;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Map;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:J

.field public final h:Lcom/google/android/gms/measurement/internal/zzes;

.field public final i:Lcom/google/android/gms/measurement/internal/zzes;

.field public final j:Lcom/google/android/gms/measurement/internal/zzes;

.field public final k:Lcom/google/android/gms/measurement/internal/zzes;

.field public final l:Lcom/google/android/gms/measurement/internal/zzes;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/q3;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->d:Ljava/util/Map;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->h:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->i:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->k:Lcom/google/android/gms/measurement/internal/zzes;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Le/m/a/f/l/a/u;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->l:Lcom/google/android/gms/measurement/internal/zzes;

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h(Ljava/lang/String;)Landroid/util/Pair;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->n:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmt;->zzc()Z

    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    const/4 v4, 0x0

    .line 6
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->p0:Lcom/google/android/gms/measurement/internal/zzdt;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v3

    const-string v4, "Unable to get advertising id"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, ""

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjm;->d:Ljava/util/Map;

    .line 7
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/f/l/a/d3;

    if-eqz v3, :cond_1

    iget-wide v8, v3, Le/m/a/f/l/a/d3;->c:J

    cmp-long v8, v1, v8

    if-ltz v8, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/util/Pair;

    iget-object v0, v3, Le/m/a/f/l/a/d3;->a:Ljava/lang/String;

    iget-boolean v1, v3, Le/m/a/f/l/a/d3;->b:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 10
    :cond_1
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 12
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzdu;->b:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 13
    invoke-virtual {v3, p1, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)J

    move-result-wide v8

    add-long/2addr v8, v1

    :try_start_0
    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 15
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/util/Pair;

    .line 16
    invoke-direct {v1, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Le/m/a/f/l/a/d3;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-direct {v2, v0, v1, v8, v9}, Le/m/a/f/l/a/d3;-><init>(Ljava/lang/String;ZJ)V

    goto :goto_1

    .line 19
    :cond_3
    new-instance v2, Le/m/a/f/l/a/d3;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-direct {v2, v7, v0, v8, v9}, Le/m/a/f/l/a/d3;-><init>(Ljava/lang/String;ZJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    iget-object v1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 23
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 24
    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Le/m/a/f/l/a/d3;

    .line 25
    invoke-direct {v2, v7, v6, v8, v9}, Le/m/a/f/l/a/d3;-><init>(Ljava/lang/String;ZJ)V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->d:Ljava/util/Map;

    .line 27
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, v2, Le/m/a/f/l/a/d3;->a:Ljava/lang/String;

    iget-boolean v1, v2, Le/m/a/f/l/a/d3;->b:Z

    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 30
    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjm;->e:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzjm;->g:J

    cmp-long v8, v1, v8

    if-ltz v8, :cond_5

    goto :goto_2

    .line 31
    :cond_5
    new-instance p1, Landroid/util/Pair;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->f:Z

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 33
    :cond_6
    :goto_2
    iget-object v3, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 34
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 35
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzdu;->b:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 36
    invoke-virtual {v3, p1, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)J

    move-result-wide v8

    add-long/2addr v8, v1

    iput-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzjm;->g:J

    .line 37
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_1
    iget-object p1, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 38
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-nez p1, :cond_7

    new-instance p1, Landroid/util/Pair;

    .line 40
    invoke-direct {p1, v7, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzjm;->e:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->e:Ljava/lang/String;

    .line 42
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 43
    iget-object v0, p0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 46
    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/zzjm;->e:Ljava/lang/String;

    .line 47
    :goto_3
    invoke-static {v6}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->f:Z

    .line 48
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->b:Lcom/google/android/gms/measurement/internal/zzag;

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjm;->h(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, ""

    invoke-direct {p1, v0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/v0;->d()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjm;->h(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzkw;->n()Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v4, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    const-string p1, "%032X"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
