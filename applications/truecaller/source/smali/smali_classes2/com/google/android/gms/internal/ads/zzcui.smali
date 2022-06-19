.class public final Lcom/google/android/gms/internal/ads/zzcui;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzffc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdvi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfal;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdvi;Lcom/google/android/gms/internal/ads/zzfal;Lcom/google/android/gms/internal/ads/zzffc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzb:Lcom/google/android/gms/internal/ads/zzdvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    return-void
.end method

.method private static zzb(I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p0, p0, -0x1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "u"

    return-object p0

    :cond_0
    const-string p0, "ac"

    return-object p0

    :cond_1
    const-string p0, "cb"

    return-object p0

    :cond_2
    const-string p0, "cc"

    return-object p0

    :cond_3
    const-string p0, "bb"

    return-object p0

    :cond_4
    const-string p0, "h"

    return-object p0
.end method


# virtual methods
.method public final zza(JI)V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjl;->zzgi:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "acr"

    const-string v2, "app_open_ad"

    const-string v3, "ad_format"

    const-string v4, "show_time"

    const-string v5, "ad_closed"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zza:Lcom/google/android/gms/internal/ads/zzffc;

    .line 4
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzffb;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 5
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzffb;->zzh(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzffb;

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    .line 7
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {v5, v1, p1}, Lcom/google/android/gms/internal/ads/zzffb;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzffb;

    .line 9
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzffc;->zza(Lcom/google/android/gms/internal/ads/zzffb;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzb:Lcom/google/android/gms/internal/ads/zzdvi;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvi;->zzd()Lcom/google/android/gms/internal/ads/zzdvh;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzc:Lcom/google/android/gms/internal/ads/zzfal;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfal;->zzb:Lcom/google/android/gms/internal/ads/zzfak;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfak;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    .line 11
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzdvh;->zzb(Lcom/google/android/gms/internal/ads/zzfac;)Lcom/google/android/gms/internal/ads/zzdvh;

    const-string v6, "action"

    .line 12
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 13
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 14
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcui;->zzb(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdvh;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdvh;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdvh;->zze()V

    return-void
.end method
