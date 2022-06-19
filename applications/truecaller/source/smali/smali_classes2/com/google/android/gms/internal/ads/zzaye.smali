.class public final Lcom/google/android/gms/internal/ads/zzaye;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzbfn;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbhj;

.field private final zze:I
    .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbvd;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbdk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhj;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 1
    .param p4    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbvd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzg:Lcom/google/android/gms/internal/ads/zzbvd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzd:Lcom/google/android/gms/internal/ads/zzbhj;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaye;->zze:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzf:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdk;->zza:Lcom/google/android/gms/internal/ads/zzbdk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzh:Lcom/google/android/gms/internal/ads/zzbdk;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbdl;->zzd()Lcom/google/android/gms/internal/ads/zzbdl;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzb()Lcom/google/android/gms/internal/ads/zzbep;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzg:Lcom/google/android/gms/internal/ads/zzbvd;

    .line 3
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbep;->zzj(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdl;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvg;)Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zza:Lcom/google/android/gms/internal/ads/zzbfn;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdr;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zze:I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdr;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zza:Lcom/google/android/gms/internal/ads/zzbfn;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzbfn;->zzO(Lcom/google/android/gms/internal/ads/zzbdr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zza:Lcom/google/android/gms/internal/ads/zzbfn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaxr;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzf:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzc:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxr;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzP(Lcom/google/android/gms/internal/ads/zzaxz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zza:Lcom/google/android/gms/internal/ads/zzbfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzh:Lcom/google/android/gms/internal/ads/zzbdk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzb:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzd:Lcom/google/android/gms/internal/ads/zzbhj;

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbdk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbfn;->zzl(Lcom/google/android/gms/internal/ads/zzbdg;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 8
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
