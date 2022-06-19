.class public final synthetic Lcom/google/android/gms/internal/consent_sdk/zzbq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:[I

.field public static final synthetic zzb:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzbs;->values()[Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const/4 v0, 0x4

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzb:[I

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zza:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    const/4 v3, 0x0

    aput v2, v1, v3
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v3, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzb:[I

    sget-object v4, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput v1, v3, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzb:[I

    sget-object v5, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput v3, v4, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v4, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zzb:[I

    sget-object v5, Lcom/google/android/gms/internal/consent_sdk/zzbs;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzbs;

    aput v0, v4, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zza()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zza:[I

    :try_start_4
    sget v4, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zza:I

    sub-int/2addr v4, v2

    aput v2, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zza:[I

    sget v4, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzb:I

    sub-int/2addr v4, v2

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzbq;->zza:[I

    sget v1, Lcom/google/android/gms/internal/consent_sdk/zzbu;->zzc:I

    sub-int/2addr v1, v2

    aput v3, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
