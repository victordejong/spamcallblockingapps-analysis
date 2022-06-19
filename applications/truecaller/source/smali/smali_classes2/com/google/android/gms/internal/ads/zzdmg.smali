.class public final Lcom/google/android/gms/internal/ads/zzdmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawd;


# instance fields
.field public final synthetic zza:Ljava/lang/String;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdmh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdmh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzawc;)V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjl;->zzbf:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzawc;->zzj:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    monitor-exit p0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzb(Lcom/google/android/gms/internal/ads/zzdmh;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdog;->zzbx()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdog;->zzj()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdog;->zzk()Ljava/util/Map;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdmh;->zzr(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzawc;->zzj:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zzb(Lcom/google/android/gms/internal/ads/zzdmh;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zza:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdog;->zzbx()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdog;->zzj()Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdmg;->zzb:Lcom/google/android/gms/internal/ads/zzdmh;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdmh;->zza(Lcom/google/android/gms/internal/ads/zzdmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v3

    .line 14
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdog;->zzk()Ljava/util/Map;

    move-result-object v3

    .line 15
    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdmh;->zzr(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_3
    return-void
.end method
