.class public final Lcom/google/android/gms/internal/ads/zzegh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkn;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzezz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbxn;

.field private final zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzdbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzbxn;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzd:Lcom/google/android/gms/internal/ads/zzdbu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzb:Lcom/google/android/gms/internal/ads/zzbxn;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzc:Z

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdkm;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzc:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzb:Lcom/google/android/gms/internal/ads/zzbxn;

    .line 2
    new-instance p3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p3, p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzbxn;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzb:Lcom/google/android/gms/internal/ads/zzbxn;

    .line 5
    new-instance p3, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p3, p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1, p3}, Lcom/google/android/gms/internal/ads/zzbxn;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzd:Lcom/google/android/gms/internal/ads/zzdbu;

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbjl;->zzba:Lcom/google/android/gms/internal/ads/zzbjd;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbet;->zzc()Lcom/google/android/gms/internal/ads/zzbjj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbjj;->zzc(Lcom/google/android/gms/internal/ads/zzbjd;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zza:Lcom/google/android/gms/internal/ads/zzezz;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzezz;->zzU:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzd:Lcom/google/android/gms/internal/ads/zzdbu;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbu;->zza()V

    :cond_2
    return-void

    .line 12
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdkm;

    const-string p2, "Adapter failed to show."

    .line 13
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdkm;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkm;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdbu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegh;->zzd:Lcom/google/android/gms/internal/ads/zzdbu;

    return-void
.end method
