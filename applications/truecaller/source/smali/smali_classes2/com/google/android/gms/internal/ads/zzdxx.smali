.class public final Lcom/google/android/gms/internal/ads/zzdxx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxk;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdtc;

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdxw;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Lcom/google/android/gms/internal/ads/zzdtc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzc:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzd:Ljava/util/List;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdxx;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdxx;->zzd(Ljava/util/List;)V

    return-void
.end method

.method private final zzd(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbrl;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zze:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbrl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzd:Ljava/util/List;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdxw;

    .line 3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbrl;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzb:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdtc;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtb;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_1
    move-object v5, v3

    goto :goto_2

    .line 5
    :cond_1
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzdtb;->zzb:Lcom/google/android/gms/internal/ads/zzbya;

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbya;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 7
    :goto_2
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbrl;->zzb:Z

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbrl;->zzd:Ljava/lang/String;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrl;->zzc:I

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdxw;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 8
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zze:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdxv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdxv;-><init>(Lcom/google/android/gms/internal/ads/zzdxx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdxk;->zzh(Lcom/google/android/gms/internal/ads/zzbrs;)V

    return-void
.end method

.method public final zzb()Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zze:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxk;->zzm()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zza:Lcom/google/android/gms/internal/ads/zzdxk;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxk;->zzj()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdxx;->zzd(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxx;->zza()V

    .line 5
    monitor-exit v1

    return-object v0

    .line 6
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxx;->zzd:Ljava/util/List;

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdxw;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxw;->zza()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 9
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
