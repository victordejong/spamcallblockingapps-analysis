.class public final Lcom/google/android/gms/internal/vision/zzez;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(I[BIILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_7

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p0, 0x5

    if-ne v0, p0, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 66
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgp()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    :cond_1
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 67
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p2

    .line 68
    iget v0, p4, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-eq v0, p0, :cond_2

    .line 69
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p2

    goto :goto_0

    :cond_2
    if-gt p2, p3, :cond_3

    if-ne v0, p0, :cond_3

    return p2

    .line 70
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    .line 71
    :cond_4
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    .line 72
    iget p1, p4, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr p0, p1

    return p0

    :cond_5
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 73
    :cond_6
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    return p0

    .line 74
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgp()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zza(I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .line 28
    check-cast p4, Lcom/google/android/gms/internal/vision/zzgu;

    .line 29
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p2

    .line 30
    iget v0, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    :goto_0
    if-ge p2, p3, :cond_0

    .line 31
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 32
    iget v1, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne p0, v1, :cond_0

    .line 33
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p2

    .line 34
    iget v0, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_0
    return p2
.end method

.method public static zza(I[BIILcom/google/android/gms/internal/vision/zzjm;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_b

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    .line 47
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 48
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgp()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    .line 49
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjm;->zzih()Lcom/google/android/gms/internal/vision/zzjm;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_3

    .line 50
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v2

    .line 51
    iget p2, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    move v0, p2

    if-eq p2, v7, :cond_2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    .line 52
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BIILcom/google/android/gms/internal/vision/zzjm;Lcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_0

    :cond_2
    move p2, v2

    :cond_3
    if-gt p2, p3, :cond_4

    if-ne v0, v7, :cond_4

    .line 53
    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return p2

    .line 54
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    .line 55
    :cond_5
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p2

    .line 56
    iget p3, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz p3, :cond_8

    .line 57
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_7

    if-nez p3, :cond_6

    .line 58
    sget-object p1, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    goto :goto_1

    .line 59
    :cond_6
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BII)Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    :goto_1
    add-int/2addr p2, p3

    return p2

    .line 60
    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    .line 61
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    .line 62
    :cond_9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 63
    :cond_a
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 64
    iget-wide p2, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/vision/zzjm;->zzb(ILjava/lang/Object;)V

    return p1

    .line 65
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgp()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zza(I[BILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 1

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-byte p2, p1, p2

    if-ltz p2, :cond_0

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    .line 5
    iput p0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    return v0

    :cond_0
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 6
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 7
    iput p0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    return p2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 8
    aget-byte p2, p1, p2

    if-ltz p2, :cond_2

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    .line 9
    iput p0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    return v0

    :cond_2
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 10
    aget-byte v0, p1, v0

    if-ltz v0, :cond_3

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 11
    iput p0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    return p2

    :cond_3
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 12
    aget-byte p2, p1, p2

    if-ltz p2, :cond_4

    .line 13
    iput p0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    return v0

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzir;I[BIILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p3

    .line 42
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-ge p3, p4, :cond_0

    .line 43
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 44
    iget v1, p6, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ne p1, v1, :cond_0

    .line 45
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/vision/zzez;->zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p3

    .line 46
    iget-object v0, p6, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzir;[BIIILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p0, Lcom/google/android/gms/internal/vision/zzig;

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzig;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 25
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/zzig;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 26
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/vision/zzig;->zzg(Ljava/lang/Object;)V

    .line 27
    iput-object v7, p5, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    return p1
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzir;[BIILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 15
    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    .line 16
    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result v0

    .line 17
    iget p2, p4, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    .line 18
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzir;->newInstance()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 19
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzfb;)V

    .line 20
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/vision/zzir;->zzg(Ljava/lang/Object;)V

    .line 21
    iput-object p3, p4, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    return p2

    .line 22
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zza([BI)I
    .locals 2

    .line 14
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method public static zza([BILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    .line 2
    iput p1, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    return v0

    .line 3
    :cond_0
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/vision/zzez;->zza(I[BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p0

    return p0
.end method

.method public static zza([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgu;

    .line 36
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 37
    iget v0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 38
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 39
    iget v1, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 40
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzb([BILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    .line 2
    iput-wide v1, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    return v0

    :cond_0
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 3
    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    move v3, v5

    :goto_0
    if-gez v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 4
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_0

    .line 5
    :cond_1
    iput-wide v1, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    return p1
.end method

.method public static zzb([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/vision/zzhq;

    .line 8
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 9
    iget v0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 10
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 11
    iget-wide v1, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzb([BI)J
    .locals 7

    .line 6
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzc([BI)D
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static zzc([BILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 4
    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzc([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgu;

    .line 8
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 9
    iget p3, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzd([BI)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zza([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static zzd([BILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 3
    iget v0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    const-string p0, ""

    .line 4
    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzjs;->zzh([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzd([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/vision/zzhq;

    .line 8
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 9
    iget p3, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BI)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zze([BILcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzhc;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 2
    iget v0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    if-ltz v0, :cond_2

    .line 3
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    return p1

    .line 5
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BII)Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/vision/zzfb;->zzrq:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgn()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zze([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgo;

    .line 9
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 10
    iget p3, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzd([BI)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzf([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgb;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 3
    iget p3, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_0

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzez;->zzc([BI)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    add-int/lit8 p1, p1, 0x8

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    return p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzg([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/vision/zzff;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 3
    iget v0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_1

    .line 4
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 5
    iget-wide v1, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    return p1

    .line 6
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzh([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/vision/zzgu;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 3
    iget v0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 4
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 5
    iget v1, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method public static zzi([BILcom/google/android/gms/internal/vision/zzgz;Lcom/google/android/gms/internal/vision/zzfb;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/vision/zzgz<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzfb;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/vision/zzhq;

    .line 2
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zza([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 3
    iget v0, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzro:I

    add-int/2addr v0, p1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 4
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/vision/zzez;->zzb([BILcom/google/android/gms/internal/vision/zzfb;)I

    move-result p1

    .line 5
    iget-wide v1, p3, Lcom/google/android/gms/internal/vision/zzfb;->zzrp:J

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    return p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method
