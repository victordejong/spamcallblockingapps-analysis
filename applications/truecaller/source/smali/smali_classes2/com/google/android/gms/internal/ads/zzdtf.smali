.class public final Lcom/google/android/gms/internal/ads/zzdtf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdtc;

.field private final zzb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbvg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdtc;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zza:Lcom/google/android/gms/internal/ads/zzdtc;

    return-void
.end method

.method private final zze()Lcom/google/android/gms/internal/ads/zzbvg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbvg;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Unexpected call to adapter creator."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcgt;->zzi(Ljava/lang/String;)V

    .line 3
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbvg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzfbi;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzfaw;
        }
    .end annotation

    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    .line 1
    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfbi;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbwf;

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    .line 2
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.google.ads.mediation.AdUrlAdapter"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbwf;

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    .line 4
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    :cond_1
    const-string v2, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbwf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbye;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbye;-><init>()V

    .line 6
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzbwf;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtf;->zze()Lcom/google/android/gms/internal/ads/zzbvg;

    move-result-object v2

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    if-nez v3, :cond_3

    .line 9
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    :cond_3
    :try_start_2
    const-string v3, "class_name"

    .line 10
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzbvg;->zzc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzbvg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbvj;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_4
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzbvg;->zzd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzbvg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbvj;

    move-result-object p2

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbvg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbvj;

    move-result-object p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_3
    const-string v0, "Invalid custom event."

    .line 16
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcgt;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_6
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzbvg;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbvj;

    move-result-object p2

    .line 18
    :goto_0
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzfbi;-><init>(Lcom/google/android/gms/internal/ads/zzbvj;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zza:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 19
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzdtc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfbi;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 20
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfaw;

    .line 21
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzfaw;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbxn;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtf;->zze()Lcom/google/android/gms/internal/ads/zzbvg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbvg;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbxn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zza:Lcom/google/android/gms/internal/ads/zzdtc;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdtc;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbxn;)V

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtf;->zzb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
