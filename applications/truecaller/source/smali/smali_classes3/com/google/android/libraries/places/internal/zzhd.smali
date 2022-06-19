.class public final Lcom/google/android/libraries/places/internal/zzhd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:I

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field private final zze:Ljava/lang/String;

.field private final zzf:[C

.field private final zzg:[B

.field private final zzh:[Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zze:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzf:[C

    .line 4
    :try_start_0
    array-length p1, p2

    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzpu;->zza(ILjava/math/RoundingMode;)I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzb:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6
    :try_start_1
    div-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzc:I

    .line 7
    div-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzd:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    array-length p1, p2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zza:I

    const/16 p1, 0x80

    new-array v1, p1, [B

    const/4 v2, -0x1

    .line 9
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    const/4 v3, 0x0

    move v4, v3

    .line 10
    :goto_0
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 11
    aget-char v5, p2, v4

    if-ge v5, p1, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    const-string v7, "Non-ASCII character: %s"

    .line 12
    invoke-static {v6, v7, v5}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/String;C)V

    .line 13
    aget-byte v6, v1, v5

    if-ne v6, v2, :cond_1

    move v6, v0

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    const-string v7, "Duplicate character: %s"

    invoke-static {v6, v7, v5}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/String;C)V

    int-to-byte v6, v4

    .line 14
    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzg:[B

    .line 16
    iget p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzc:I

    new-array p1, p1, [Z

    .line 17
    :goto_3
    iget p2, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzd:I

    if-ge v3, p2, :cond_3

    shl-int/lit8 p2, v3, 0x3

    .line 18
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzb:I

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p2, v1, v2}, Lcom/google/android/libraries/places/internal/zzpu;->zza(IILjava/math/RoundingMode;)I

    move-result p2

    aput-boolean v0, p1, p2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 19
    :cond_3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzh:[Z

    return-void

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal alphabet "

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p2, p2

    const/16 v1, 0x23

    const-string v2, "Illegal alphabet length "

    invoke-static {v1, v2, p2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic zza(Lcom/google/android/libraries/places/internal/zzhd;)[C
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzf:[C

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzhd;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/internal/zzhd;

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzf:[C

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzhd;->zzf:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzf:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhd;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzf:[C

    aget-char p1, v0, p1

    return p1
.end method

.method public final zza(C)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhd;->zzg:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-byte p1, v0, p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
