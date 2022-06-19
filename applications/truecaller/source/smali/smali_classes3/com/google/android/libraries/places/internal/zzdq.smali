.class public final Lcom/google/android/libraries/places/internal/zzdq;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)Lcom/google/android/libraries/places/internal/zzhh$zza;
    .locals 2

    .line 14
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhh$zza;->zza()Lcom/google/android/libraries/places/internal/zzhh$zza$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;->zza:Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzhh$zza$zza;->zza(Lcom/google/android/libraries/places/internal/zzhh$zza$zzb;)Lcom/google/android/libraries/places/internal/zzhh$zza$zza;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzhh$zza$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)Lcom/google/android/libraries/places/internal/zzhh$zza$zza;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p0, Lcom/google/android/libraries/places/internal/zzhh$zza;

    return-object p0
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzdp;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdj;->zzc()Lcom/google/android/libraries/places/internal/zzdj$zzb;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;->zzc:Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;

    .line 5
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzs;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzhj$zza;->zza()Lcom/google/android/libraries/places/internal/zzhj$zza$zzb;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdj;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzhj$zza$zzb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhj$zza$zzb;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdj;->zzb()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzhj$zza$zzb;->zza(I)Lcom/google/android/libraries/places/internal/zzhj$zza$zzb;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p0, Lcom/google/android/libraries/places/internal/zzhj$zza;

    .line 10
    invoke-virtual {v2, p0}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzhj$zza;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p0

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Z)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs$zze;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p0

    const-string v0, "2.4.0"

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p0

    return-object p0
.end method
