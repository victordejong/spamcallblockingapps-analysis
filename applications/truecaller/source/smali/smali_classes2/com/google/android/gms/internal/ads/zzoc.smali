.class public final Lcom/google/android/gms/internal/ads/zzoc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ILcom/google/android/gms/internal/ads/zzob;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v3

    const/16 v5, 0x10

    ushr-long v5, v3, v5

    move/from16 v7, p2

    int-to-long v7, v7

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return v8

    :cond_0
    const-wide/16 v9, 0x1

    and-long/2addr v5, v9

    cmp-long v5, v5, v9

    const/4 v6, 0x1

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    const/16 v7, 0xc

    shr-long v11, v3, v7

    const-wide/16 v13, 0xf

    and-long/2addr v11, v13

    long-to-int v11, v11

    const/16 v12, 0x8

    shr-long v15, v3, v12

    and-long v7, v15, v13

    long-to-int v7, v7

    const/4 v8, 0x4

    shr-long v15, v3, v8

    and-long/2addr v13, v15

    long-to-int v8, v13

    shr-long v13, v3, v6

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v13, v13

    and-long/2addr v3, v9

    const/4 v14, 0x7

    const/4 v15, -0x1

    if-gt v8, v14, :cond_2

    .line 2
    iget v14, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzg:I

    add-int/2addr v14, v15

    if-ne v8, v14, :cond_9

    goto :goto_1

    :cond_2
    const/16 v14, 0xa

    if-gt v8, v14, :cond_9

    .line 3
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzg:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_9

    :goto_1
    if-nez v13, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzi:I

    if-ne v13, v8, :cond_9

    :goto_2
    cmp-long v3, v3, v9

    if-eqz v3, :cond_9

    move-object/from16 v3, p3

    .line 5
    invoke-static {v0, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzd(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ZLcom/google/android/gms/internal/ads/zzob;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6
    invoke-static {v0, v11}, Lcom/google/android/gms/internal/ads/zzoc;->zzc(Lcom/google/android/gms/internal/ads/zzamf;I)I

    move-result v3

    if-eq v3, v15, :cond_9

    .line 7
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzb:I

    if-gt v3, v4, :cond_9

    .line 8
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzoh;->zze:I

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    const/16 v4, 0xb

    if-gt v7, v4, :cond_5

    .line 9
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzoh;->zzf:I

    if-eq v7, v1, :cond_8

    goto :goto_4

    :cond_5
    const/16 v1, 0xc

    if-ne v7, v1, :cond_6

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    if-ne v1, v3, :cond_9

    goto :goto_3

    :cond_6
    const/16 v1, 0xe

    if-gt v7, v1, :cond_9

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v4

    if-ne v7, v1, :cond_7

    mul-int/lit8 v4, v4, 0xa

    :cond_7
    if-ne v4, v3, :cond_9

    .line 12
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    add-int/2addr v3, v15

    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzamq;->zzW([BIII)I

    move-result v0

    if-ne v1, v0, :cond_9

    return v6

    :cond_9
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoh;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    new-array v3, v1, [B

    .line 3
    invoke-virtual {v0, v3, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    aget-byte v3, v3, v2

    and-int/2addr v3, v1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    if-eq v1, v3, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    new-instance v4, Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    .line 6
    invoke-static {p0, v5, v2, v0}, Lcom/google/android/gms/internal/ads/zzny;->zzb(Lcom/google/android/gms/internal/ads/zznv;[BII)I

    move-result v0

    .line 7
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzob;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzob;-><init>()V

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 9
    :cond_1
    invoke-static {v4, p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzoc;->zzd(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ZLcom/google/android/gms/internal/ads/zzob;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-wide p0, p0, Lcom/google/android/gms/internal/ads/zzob;->zza:J

    return-wide p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p0

    throw p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzamf;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x100

    add-int/lit8 p1, p1, -0x8

    shl-int/2addr p0, p1

    return p0

    .line 1
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 2
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3
    const/16 p0, 0x240

    add-int/lit8 p1, p1, -0x2

    shl-int/2addr p0, p1

    return p0

    :pswitch_4
    const/16 p0, 0xc0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzoh;ZLcom/google/android/gms/internal/ads/zzob;)Z
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzH()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p0, p1, Lcom/google/android/gms/internal/ads/zzoh;->zzb:I

    int-to-long p0, p0

    mul-long/2addr v0, p0

    .line 3
    :goto_0
    iput-wide v0, p3, Lcom/google/android/gms/internal/ads/zzob;->zza:J

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
