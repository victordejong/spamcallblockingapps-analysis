.class public final Lcom/google/android/gms/internal/ads/zzdxj;
.super Lcom/google/android/gms/internal/ads/zzbro;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Ljava/lang/Object;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:J

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzchl;

.field public final synthetic zze:Lcom/google/android/gms/internal/ads/zzdxk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzchl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzd:Lcom/google/android/gms/internal/ads/zzchl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbro;-><init>()V

    return-void
.end method


# virtual methods
.method public final zze()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzc:J

    sub-long/2addr v5, v7

    long-to-int v5, v5

    .line 2
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdxk;->zzl(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdxk;->zze(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzdvr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvr;->zzb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdxk;->zzf(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzdht;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdht;->zzb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzd:Lcom/google/android/gms/internal/ads/zzchl;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzf(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzj()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzc:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    .line 2
    invoke-static {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzdxk;->zzl(Lcom/google/android/gms/internal/ads/zzdxk;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdxk;->zze(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzdvr;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    const-string v2, "error"

    .line 3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdvr;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zze:Lcom/google/android/gms/internal/ads/zzdxk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdxk;->zzf(Lcom/google/android/gms/internal/ads/zzdxk;)Lcom/google/android/gms/internal/ads/zzdht;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzb:Ljava/lang/String;

    const-string v2, "error"

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdht;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxj;->zzd:Lcom/google/android/gms/internal/ads/zzchl;

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzchl;->zzc(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
