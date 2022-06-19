.class public final Lcom/google/android/gms/internal/mlkit_translate/zzep;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Lcom/google/android/gms/internal/mlkit_translate/zzds;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzdw;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzgc; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzea;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzea;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/mlkit_translate/zzds;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzgc; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzdv;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Lcom/google/android/gms/internal/mlkit_translate/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzdu;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
