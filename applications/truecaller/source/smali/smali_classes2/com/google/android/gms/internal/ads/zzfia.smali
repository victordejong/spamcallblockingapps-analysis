.class public final Lcom/google/android/gms/internal/ads/zzfia;
.super Lcom/google/android/gms/internal/ads/zzfhv;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfho;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzfho;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfhv;-><init>(Lcom/google/android/gms/internal/ads/zzfho;Ljava/util/HashSet;Lorg/json/JSONObject;J[B)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhw;->zzd:Lcom/google/android/gms/internal/ads/zzfho;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfho;->zzd()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhi;->zzi(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhw;->zzd:Lcom/google/android/gms/internal/ads/zzfho;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfho;->zze(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzb:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfia;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgr;->zza()Lcom/google/android/gms/internal/ads/zzfgr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgr;->zze()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zza:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzh()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfgg;->zzg()Lcom/google/android/gms/internal/ads/zzfhe;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfhv;->zzc:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfhe;->zzf(Ljava/lang/String;J)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhw;->zza(Ljava/lang/String;)V

    return-void
.end method
