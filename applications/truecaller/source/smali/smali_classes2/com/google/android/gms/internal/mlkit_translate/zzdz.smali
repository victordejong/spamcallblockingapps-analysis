.class public final Lcom/google/android/gms/internal/mlkit_translate/zzdz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Lcom/google/android/gms/internal/mlkit_translate/zzds;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzdv;,
            Lcom/google/android/gms/internal/mlkit_translate/zzeb;
        }
    .end annotation

    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza()Z

    move-result v2

    const/4 v3, 0x1

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Z)V

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzep;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Z)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 14
    :try_start_1
    new-instance v4, Lcom/google/android/gms/internal/mlkit_translate/zzdw;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v3

    .line 15
    new-instance v4, Lcom/google/android/gms/internal/mlkit_translate/zzdw;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzdw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Z)V

    .line 17
    throw v0
.end method

.method private static zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/mlkit_translate/zzds;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzdv;,
            Lcom/google/android/gms/internal/mlkit_translate/zzeb;
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object p0

    .line 4
    instance-of v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzdu;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    const-string v0, "Did not consume the entire document."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzgc; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzdv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzdv;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_translate/zzds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzeb;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzdz;->zza(Ljava/io/Reader;)Lcom/google/android/gms/internal/mlkit_translate/zzds;

    move-result-object p0

    return-object p0
.end method
