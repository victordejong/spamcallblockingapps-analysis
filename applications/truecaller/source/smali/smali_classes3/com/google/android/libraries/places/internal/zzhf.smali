.class public final Lcom/google/android/libraries/places/internal/zzhf;
.super Lcom/google/android/libraries/places/internal/zzhe;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzhd;Ljava/lang/Character;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzhe;-><init>(Lcom/google/android/libraries/places/internal/zzhd;Ljava/lang/Character;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzhd;->zza(Lcom/google/android/libraries/places/internal/zzhd;)[C

    move-result-object p1

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzhd;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzhd;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/libraries/places/internal/zzhf;-><init>(Lcom/google/android/libraries/places/internal/zzhd;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {v0, p4, p3}, Lcom/google/android/libraries/places/internal/zzft;->zza(III)V

    move p3, p4

    :goto_0
    const/4 v1, 0x3

    if-lt p3, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhd;

    ushr-int/lit8 v3, v0, 0x12

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzhd;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhd;

    ushr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzhd;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 6
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhd;

    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzhd;->zza(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzhe;->zza:Lcom/google/android/libraries/places/internal/zzhd;

    and-int/lit8 v0, v0, 0x3f

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzhd;->zza(I)C

    move-result v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p3, p3, -0x3

    move v0, v1

    goto :goto_0

    :cond_0
    if-ge v0, p4, :cond_1

    sub-int/2addr p4, v0

    .line 8
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/libraries/places/internal/zzhe;->zzb(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method
