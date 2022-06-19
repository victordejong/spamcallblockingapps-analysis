.class public final Lcom/google/android/gms/internal/ads/zzcah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zzd:Lcom/google/android/gms/internal/ads/zzcfn;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/ads/AdFormat;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbhj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzb:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzc:Lcom/google/android/gms/internal/ads/zzbhj;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcfn;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzcah;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcah;->zzd:Lcom/google/android/gms/internal/ads/zzcfn;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzb()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbvd;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbep;->zzq(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzcah;->zzd:Lcom/google/android/gms/internal/ads/zzcfn;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzcah;->zzd:Lcom/google/android/gms/internal/ads/zzcfn;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcah;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcfn;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Landroid/content/Context;

    .line 3
    new-instance v2, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v2, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzc:Lcom/google/android/gms/internal/ads/zzbhj;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdh;

    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbdh;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdh;->zza()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcah;->zza:Landroid/content/Context;

    .line 7
    invoke-virtual {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    .line 8
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzb:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzcfr;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)V

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcag;

    .line 10
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcag;-><init>(Lcom/google/android/gms/internal/ads/zzcah;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzcfn;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzcfr;Lcom/google/android/gms/internal/ads/zzcfk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
