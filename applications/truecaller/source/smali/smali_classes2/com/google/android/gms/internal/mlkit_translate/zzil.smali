.class public final Lcom/google/android/gms/internal/mlkit_translate/zzil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[I

.field private static final zzb:I

.field private static zzc:Lcom/google/android/gms/internal/mlkit_translate/zzip;

.field private static zzd:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    .line 2
    sput-object v1, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zza:[I

    sput v0, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zzb:I

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzik;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzip;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzip;

    .line 4
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zzd:Ljava/util/Random;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public static final synthetic zza(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 8
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/mlkit_translate/zzim;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zza:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget v4, v0, v3

    if-lez v4, :cond_0

    const v5, 0xea60

    mul-int/2addr v4, v5

    .line 2
    div-int/lit8 v5, v4, 0x2

    sget-object v6, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zzd:Ljava/util/Random;

    .line 3
    invoke-virtual {v6, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v5

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/mlkit_translate/zzil;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzip;

    int-to-long v6, v4

    invoke-interface {v5, v6, v7}, Lcom/google/android/gms/internal/mlkit_translate/zzip;->zza(J)V

    .line 5
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzim;->zza()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/internal/mlkit_translate/zzin; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_1
    const-string v5, "retryWithRandomizedExponentialBackoff: "

    .line 6
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_2
    move-exception p0

    .line 7
    throw p0

    :cond_3
    return v2
.end method
