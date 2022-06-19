.class public final Lcom/google/android/gms/internal/ads/zzajw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzaju;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajt;->zza:Lcom/google/android/gms/internal/ads/zzaju;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajw;->zza:Lcom/google/android/gms/internal/ads/zzaju;

    return-void
.end method

.method public static final zza([BILcom/google/android/gms/internal/ads/zzaju;Lcom/google/android/gms/internal/ads/zzaix;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 10

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([BI)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p0

    const/4 p1, 0x2

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge p0, v1, :cond_1

    :cond_0
    :goto_0
    move-object v8, v5

    goto/16 :goto_3

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result p0

    const v6, 0x494433

    if-eq p0, v6, :cond_3

    new-array v6, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    const-string p0, "%06X"

    invoke-static {p0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v6, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 6
    invoke-direct {p0, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p0

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v7

    if-ne p0, p1, :cond_4

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_7

    goto :goto_0

    :cond_4
    const/4 v8, 0x3

    if-ne p0, v8, :cond_5

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_7

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    .line 12
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/2addr v8, v2

    sub-int/2addr v7, v8

    goto :goto_1

    :cond_5
    if-ne p0, v2, :cond_0

    and-int/lit8 v8, v6, 0x40

    if-eqz v8, :cond_6

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzA()I

    move-result v8

    add-int/lit8 v9, v8, -0x4

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    sub-int/2addr v7, v8

    :cond_6
    and-int/lit8 v8, v6, 0x10

    if-eqz v8, :cond_7

    add-int/lit8 v7, v7, -0xa

    :cond_7
    :goto_1
    if-ge p0, v2, :cond_8

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_8

    move v6, v4

    goto :goto_2

    :cond_8
    move v6, v3

    .line 15
    :goto_2
    new-instance v8, Lcom/google/android/gms/internal/ads/zzajv;

    .line 16
    invoke-direct {v8, p0, v6, v7}, Lcom/google/android/gms/internal/ads/zzajv;-><init>(IZI)V

    :goto_3
    if-nez v8, :cond_9

    return-object v5

    .line 17
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result p0

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result v6

    if-ne v6, p1, :cond_a

    const/4 v1, 0x6

    :cond_a
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zzc(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p1

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zzb(Lcom/google/android/gms/internal/ads/zzajv;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zzc(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p1

    .line 18
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzd(Lcom/google/android/gms/internal/ads/zzamf;I)I

    move-result p1

    :cond_b
    add-int/2addr p0, p1

    .line 19
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    .line 20
    invoke-static {v0, p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzb(Lcom/google/android/gms/internal/ads/zzamf;IIZ)Z

    move-result p0

    if-nez p0, :cond_d

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    if-ne p0, v2, :cond_c

    .line 21
    invoke-static {v0, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzajw;->zzb(Lcom/google/android/gms/internal/ads/zzamf;IIZ)Z

    move-result p0

    if-eqz p0, :cond_c

    move v3, v4

    goto :goto_4

    .line 22
    :cond_c
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    return-object v5

    .line 23
    :cond_d
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result p0

    if-lt p0, v1, :cond_e

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzajv;->zza(Lcom/google/android/gms/internal/ads/zzajv;)I

    move-result p0

    .line 24
    invoke-static {p0, v0, v3, v1, p2}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 25
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 26
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzamf;IIZ)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v2

    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_d

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v8

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v10

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    move v10, v6

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_2

    cmp-long v7, v8, v11

    if-nez v7, :cond_2

    if-eqz v10, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v4

    :cond_2
    :goto_2
    const/4 v7, 0x4

    if-ne v0, v7, :cond_4

    if-nez p3, :cond_4

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v11, v13, v11

    if-eqz v11, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v6

    :cond_3
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v11, v15

    const/16 v15, 0xe

    shl-long/2addr v11, v15

    or-long/2addr v11, v13

    const/16 v13, 0x18

    shr-long/2addr v8, v13

    const/16 v13, 0x15

    shl-long/2addr v8, v13

    or-long/2addr v8, v11

    :cond_4
    if-ne v0, v7, :cond_6

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    and-int/lit8 v3, v10, 0x1

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    goto :goto_5

    :cond_6
    if-ne v0, v3, :cond_9

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    move v3, v6

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move v4, v6

    goto :goto_5

    :cond_9
    move v3, v6

    move v4, v3

    :goto_5
    if-eqz v4, :cond_a

    add-int/lit8 v3, v3, 0x4

    :cond_a
    int-to-long v3, v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_b

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v6

    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_c

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v6

    :cond_c
    long-to-int v3, v8

    .line 7
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 8
    :cond_d
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return v4

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 9
    throw v0
.end method

.method private static zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;
    .locals 34

    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v4

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v5

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-lt v0, v7, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v9

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    const/4 v10, 0x4

    if-ne v0, v10, :cond_1

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    if-nez v2, :cond_3

    and-int/lit16 v12, v11, 0xff

    shr-int/lit8 v13, v11, 0x8

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v12, v13

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0xe

    or-int/2addr v12, v13

    shr-int/lit8 v11, v11, 0x18

    shl-int/lit8 v11, v11, 0x15

    or-int/2addr v11, v12

    goto :goto_1

    :cond_1
    if-ne v0, v7, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v11

    :cond_3
    :goto_1
    if-lt v0, v7, :cond_4

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v12

    goto :goto_2

    :cond_4
    move v12, v8

    :goto_2
    const/4 v13, 0x0

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    if-nez v9, :cond_6

    if-nez v11, :cond_6

    if-eqz v12, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v13

    .line 11
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v15

    if-le v14, v15, :cond_7

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v0

    .line 13
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v13

    :cond_7
    if-nez p4, :cond_3f

    const/4 v15, 0x1

    if-ne v0, v7, :cond_b

    and-int/lit16 v7, v12, 0x80

    if-eqz v7, :cond_8

    move v7, v15

    goto :goto_4

    :cond_8
    move v7, v8

    :goto_4
    and-int/lit8 v17, v12, 0x40

    if-eqz v17, :cond_9

    move/from16 v17, v15

    goto :goto_5

    :cond_9
    move/from16 v17, v8

    :goto_5
    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_a

    move v12, v15

    goto :goto_6

    :cond_a
    move v12, v8

    :goto_6
    move/from16 v19, v8

    move/from16 v18, v17

    move/from16 v17, v12

    move v12, v7

    goto :goto_b

    :cond_b
    if-ne v0, v10, :cond_10

    and-int/lit8 v7, v12, 0x40

    if-eqz v7, :cond_c

    move v7, v15

    goto :goto_7

    :cond_c
    move v7, v8

    :goto_7
    and-int/lit8 v17, v12, 0x8

    if-eqz v17, :cond_d

    move/from16 v17, v15

    goto :goto_8

    :cond_d
    move/from16 v17, v8

    :goto_8
    and-int/lit8 v18, v12, 0x4

    if-eqz v18, :cond_e

    move/from16 v18, v15

    goto :goto_9

    :cond_e
    move/from16 v18, v8

    :goto_9
    and-int/lit8 v19, v12, 0x2

    if-eqz v19, :cond_f

    move/from16 v19, v15

    goto :goto_a

    :cond_f
    move/from16 v19, v8

    :goto_a
    and-int/2addr v12, v15

    move/from16 v33, v17

    move/from16 v17, v7

    move/from16 v7, v33

    goto :goto_b

    :cond_10
    move v7, v8

    move v12, v7

    move/from16 v17, v12

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_b
    if-nez v7, :cond_3e

    if-eqz v18, :cond_11

    goto/16 :goto_20

    :cond_11
    if-eqz v17, :cond_12

    add-int/lit8 v11, v11, -0x1

    .line 14
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_12
    if-eqz v12, :cond_13

    add-int/lit8 v11, v11, -0x4

    .line 15
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_13
    if-eqz v19, :cond_14

    .line 16
    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzajw;->zzd(Lcom/google/android/gms/internal/ads/zzamf;I)I

    move-result v11

    :cond_14
    const/16 v7, 0x54

    const/16 v12, 0x58

    const/4 v10, -0x1

    const/4 v15, 0x2

    if-ne v4, v7, :cond_17

    if-ne v5, v12, :cond_17

    if-ne v6, v12, :cond_17

    if-eq v0, v15, :cond_15

    if-ne v9, v12, :cond_17

    :cond_15
    if-gtz v11, :cond_16

    goto :goto_c

    .line 17
    :cond_16
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v11, v10

    new-array v7, v11, [B

    .line 18
    invoke-virtual {v1, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 19
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v10

    new-instance v11, Ljava/lang/String;

    .line 20
    invoke-direct {v11, v7, v8, v10, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v8

    add-int/2addr v10, v8

    .line 21
    invoke-static {v7, v10, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v2

    .line 22
    invoke-static {v7, v10, v2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakf;

    const-string v7, "TXXX"

    .line 23
    invoke-direct {v3, v7, v11, v2}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_17
    if-ne v4, v7, :cond_19

    .line 24
    invoke-static {v0, v7, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v2

    if-gtz v11, :cond_18

    :goto_c
    move/from16 v17, v4

    move v3, v5

    move v4, v6

    :goto_d
    move v8, v9

    move/from16 v20, v14

    goto/16 :goto_1c

    .line 25
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v11, v10

    new-array v10, v11, [B

    .line 26
    invoke-virtual {v1, v10, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 27
    invoke-static {v10, v8, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v3

    new-instance v11, Ljava/lang/String;

    .line 28
    invoke-direct {v11, v10, v8, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakf;

    .line 29
    invoke-direct {v3, v2, v13, v11}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_e
    move-object v13, v3

    goto :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_1e

    :cond_19
    const/16 v7, 0x57

    const-string v13, "ISO-8859-1"

    if-ne v4, v7, :cond_1d

    if-ne v5, v12, :cond_1c

    if-ne v6, v12, :cond_1c

    if-eq v0, v15, :cond_1a

    if-ne v9, v12, :cond_1c

    :cond_1a
    if-gtz v11, :cond_1b

    move/from16 v17, v4

    move v3, v5

    move v4, v6

    move v8, v9

    move/from16 v20, v14

    :goto_f
    const/4 v13, 0x0

    goto/16 :goto_1c

    .line 30
    :cond_1b
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v11, v10

    new-array v7, v11, [B

    .line 31
    invoke-virtual {v1, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 32
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v10

    new-instance v11, Ljava/lang/String;

    .line 33
    invoke-direct {v11, v7, v8, v10, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v2

    add-int/2addr v10, v2

    .line 34
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v2

    .line 35
    invoke-static {v7, v10, v2, v13}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakh;

    const-string v7, "WXXX"

    .line 36
    invoke-direct {v3, v7, v11, v2}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1c
    move v12, v7

    goto :goto_10

    :cond_1d
    move v12, v4

    :goto_10
    if-ne v12, v7, :cond_1e

    .line 37
    invoke-static {v0, v7, v5, v6, v9}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v2

    .line 38
    new-array v3, v11, [B

    .line 39
    invoke-virtual {v1, v3, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 40
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v7

    new-instance v10, Ljava/lang/String;

    .line 41
    invoke-direct {v10, v3, v8, v7, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakh;

    const/4 v7, 0x0

    .line 42
    invoke-direct {v3, v2, v7, v10}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    const/16 v7, 0x49

    const/16 v10, 0x50

    if-ne v12, v10, :cond_20

    const/16 v12, 0x52

    if-ne v5, v12, :cond_1f

    if-ne v6, v7, :cond_1f

    const/16 v12, 0x56

    if-ne v9, v12, :cond_1f

    .line 43
    new-array v2, v11, [B

    .line 44
    invoke-virtual {v1, v2, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 45
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v3

    new-instance v7, Ljava/lang/String;

    .line 46
    invoke-direct {v7, v2, v8, v3, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v8, 0x1

    add-int/2addr v3, v8

    .line 47
    invoke-static {v2, v3, v11}, Lcom/google/android/gms/internal/ads/zzajw;->zzj([BII)[B

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzakd;

    .line 48
    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzakd;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_e

    :cond_1f
    move v12, v10

    :cond_20
    const/16 v7, 0x4f

    const/16 v10, 0x47

    if-ne v12, v10, :cond_23

    const/16 v12, 0x45

    if-ne v5, v12, :cond_22

    if-ne v6, v7, :cond_22

    const/16 v12, 0x42

    if-eq v9, v12, :cond_21

    if-ne v0, v15, :cond_22

    .line 49
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    add-int/2addr v11, v7

    .line 50
    new-array v7, v11, [B

    .line 51
    invoke-virtual {v1, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 52
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v10

    new-instance v12, Ljava/lang/String;

    .line 53
    invoke-direct {v12, v7, v8, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v8, 0x1

    add-int/2addr v10, v8

    .line 54
    invoke-static {v7, v10, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v8

    .line 55
    invoke-static {v7, v10, v8, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v13

    add-int/2addr v8, v13

    .line 56
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v13

    .line 57
    invoke-static {v7, v8, v13, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v2

    add-int/2addr v13, v2

    .line 58
    invoke-static {v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzajw;->zzj([BII)[B

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/ads/zzajs;

    .line 59
    invoke-direct {v7, v12, v10, v3, v2}, Lcom/google/android/gms/internal/ads/zzajs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move/from16 v17, v4

    move v3, v5

    move v4, v6

    move-object v13, v7

    goto/16 :goto_d

    :cond_22
    move v12, v10

    :cond_23
    const/16 v10, 0x41

    const/16 v7, 0x43

    if-ne v0, v15, :cond_24

    const/16 v15, 0x50

    if-ne v12, v15, :cond_2a

    const/16 v8, 0x49

    if-ne v5, v8, :cond_2a

    if-ne v6, v7, :cond_2a

    goto :goto_11

    :cond_24
    const/16 v8, 0x49

    const/16 v15, 0x50

    if-ne v12, v10, :cond_2a

    if-ne v5, v15, :cond_2a

    if-ne v6, v8, :cond_2a

    if-ne v9, v7, :cond_2a

    .line 60
    :goto_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, -0x1

    add-int/2addr v11, v7

    .line 61
    new-array v7, v11, [B

    const/4 v8, 0x0

    .line 62
    invoke-virtual {v1, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    const/4 v10, 0x2

    if-ne v0, v10, :cond_27

    const-string v10, "image/"

    new-instance v12, Ljava/lang/String;

    const/4 v15, 0x3

    invoke-direct {v12, v7, v8, v15, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 63
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_25

    invoke-virtual {v10, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    .line 64
    :cond_25
    new-instance v8, Ljava/lang/String;

    .line 65
    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_12
    const-string v10, "image/jpg"

    .line 66
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_26

    const-string v8, "image/jpeg"

    :cond_26
    const/4 v10, 0x2

    goto :goto_13

    .line 67
    :cond_27
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v10

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7, v8, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 68
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzflf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v12, 0x2f

    .line 69
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_29

    const-string v12, "image/"

    .line 70
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_28

    invoke-virtual {v12, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_13

    :cond_28
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_29
    :goto_13
    add-int/lit8 v12, v10, 0x1

    .line 71
    aget-byte v12, v7, v12

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x2

    add-int/2addr v10, v13

    .line 72
    invoke-static {v7, v10, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v13

    new-instance v15, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v20, v14

    sub-int v14, v13, v10

    .line 73
    :try_start_2
    invoke-direct {v15, v7, v10, v14, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v2

    add-int/2addr v13, v2

    .line 74
    invoke-static {v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzajw;->zzj([BII)[B

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaji;

    .line 75
    invoke-direct {v3, v8, v15, v12, v2}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    goto :goto_14

    :cond_2a
    move/from16 v20, v14

    const/16 v8, 0x4d

    if-ne v12, v7, :cond_2d

    const/16 v14, 0x4f

    if-ne v5, v14, :cond_2d

    if-ne v6, v8, :cond_2d

    if-eq v9, v8, :cond_2b

    const/4 v14, 0x2

    if-ne v0, v14, :cond_2d

    :cond_2b
    const/4 v2, 0x4

    if-ge v11, v2, :cond_2c

    move/from16 v17, v4

    move v3, v5

    move v4, v6

    move v8, v9

    goto/16 :goto_f

    .line 76
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zze(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    new-array v8, v7, [B

    const/4 v10, 0x0

    .line 77
    invoke-virtual {v1, v8, v10, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v12, Ljava/lang/String;

    .line 78
    invoke-direct {v12, v8, v10, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v11, v11, -0x4

    new-array v7, v11, [B

    .line 79
    invoke-virtual {v1, v7, v10, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 80
    invoke-static {v7, v10, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v8

    new-instance v11, Ljava/lang/String;

    .line 81
    invoke-direct {v11, v7, v10, v8, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzi(I)I

    move-result v10

    add-int/2addr v8, v10

    .line 82
    invoke-static {v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzajw;->zzg([BII)I

    move-result v2

    .line 83
    invoke-static {v7, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzajw;->zzk([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajq;

    .line 84
    invoke-direct {v3, v12, v11, v2}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    move-object v13, v3

    move/from16 v17, v4

    move v3, v5

    move v4, v6

    move v8, v9

    goto/16 :goto_1c

    :cond_2d
    if-ne v12, v7, :cond_32

    const/16 v14, 0x48

    if-ne v5, v14, :cond_32

    if-ne v6, v10, :cond_32

    const/16 v10, 0x50

    if-ne v9, v10, :cond_32

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v8

    .line 85
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v8

    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v12

    sub-int v14, v8, v7

    .line 86
    invoke-direct {v10, v12, v7, v14, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v12, 0x1

    add-int/2addr v8, v12

    .line 87
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v26

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v27

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v12

    const-wide v14, 0xffffffffL

    cmp-long v8, v12, v14

    if-nez v8, :cond_2e

    const-wide/16 v12, -0x1

    :cond_2e
    move-wide/from16 v28, v12

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v12

    const-wide v14, 0xffffffffL

    cmp-long v8, v12, v14

    if-nez v8, :cond_2f

    const-wide/16 v12, -0x1

    :cond_2f
    move-wide/from16 v30, v12

    new-instance v8, Ljava/util/ArrayList;

    .line 92
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v7, v11

    :cond_30
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v11

    if-ge v11, v7, :cond_31

    const/4 v11, 0x0

    .line 93
    invoke-static {v0, v1, v2, v3, v11}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v12

    if-eqz v12, :cond_30

    .line 94
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_31
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzajx;

    .line 95
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, [Lcom/google/android/gms/internal/ads/zzajx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajm;

    move-object/from16 v24, v3

    move-object/from16 v25, v10

    .line 96
    invoke-direct/range {v24 .. v32}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/gms/internal/ads/zzajx;)V

    goto/16 :goto_14

    :cond_32
    if-ne v12, v7, :cond_38

    const/16 v10, 0x54

    if-ne v5, v10, :cond_38

    const/16 v10, 0x4f

    if-ne v6, v10, :cond_38

    if-ne v9, v7, :cond_38

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v8

    .line 97
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v8

    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v12

    sub-int v14, v8, v7

    .line 98
    invoke-direct {v10, v12, v7, v14, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v12, 0x1

    add-int/2addr v8, v12

    .line 99
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v8

    and-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_33

    const/4 v12, 0x1

    const/16 v26, 0x1

    goto :goto_16

    :cond_33
    const/4 v12, 0x1

    const/16 v26, 0x0

    :goto_16
    and-int/2addr v8, v12

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v12

    new-array v14, v12, [Ljava/lang/String;

    const/4 v15, 0x0

    :goto_17
    if-ge v15, v12, :cond_34

    move/from16 v16, v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v12

    move/from16 v17, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    .line 102
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v4

    move/from16 v21, v9

    new-instance v9, Ljava/lang/String;

    move/from16 v22, v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    move/from16 v23, v5

    sub-int v5, v4, v12

    invoke-direct {v9, v6, v12, v5, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 103
    aput-object v9, v14, v15

    add-int/lit8 v4, v4, 0x1

    .line 104
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    move/from16 v4, v17

    move/from16 v9, v21

    move/from16 v6, v22

    move/from16 v5, v23

    goto :goto_17

    :cond_34
    move/from16 v17, v4

    move/from16 v23, v5

    move/from16 v22, v6

    move/from16 v21, v9

    new-instance v4, Ljava/util/ArrayList;

    .line 105
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v7, v11

    :cond_35
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v5

    if-ge v5, v7, :cond_36

    const/4 v5, 0x0

    .line 106
    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzajw;->zzc(ILcom/google/android/gms/internal/ads/zzamf;ZILcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 107
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_36
    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzajx;

    .line 108
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, [Lcom/google/android/gms/internal/ads/zzajx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzajo;

    const/4 v2, 0x1

    if-eq v2, v8, :cond_37

    const/16 v27, 0x0

    goto :goto_19

    :cond_37
    move/from16 v27, v2

    :goto_19
    move-object/from16 v24, v3

    move-object/from16 v25, v10

    move-object/from16 v28, v14

    .line 109
    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzajx;)V

    move-object v13, v3

    move/from16 v8, v21

    move/from16 v4, v22

    move/from16 v3, v23

    goto/16 :goto_1c

    :cond_38
    move/from16 v17, v4

    move/from16 v23, v5

    move/from16 v22, v6

    move/from16 v21, v9

    if-ne v12, v8, :cond_3b

    const/16 v2, 0x4c

    move/from16 v3, v23

    if-ne v3, v2, :cond_3a

    const/16 v2, 0x4c

    move/from16 v4, v22

    move/from16 v8, v21

    if-ne v4, v2, :cond_3c

    const/16 v2, 0x54

    if-ne v8, v2, :cond_3c

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v25

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v26

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzr()I

    move-result v27

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzame;

    .line 115
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzame;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v9

    .line 116
    invoke-virtual {v6, v7, v9}, Lcom/google/android/gms/internal/ads/zzame;->zza([BI)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    .line 117
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    add-int/lit8 v11, v11, -0xa

    mul-int/lit8 v11, v11, 0x8

    add-int v7, v2, v5

    .line 118
    div-int/2addr v11, v7

    .line 119
    new-array v7, v11, [I

    .line 120
    new-array v9, v11, [I

    const/4 v10, 0x0

    :goto_1a
    if-ge v10, v11, :cond_39

    .line 121
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v12

    .line 122
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v13

    .line 123
    aput v12, v7, v10

    .line 124
    aput v13, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_39
    new-instance v2, Lcom/google/android/gms/internal/ads/zzakb;

    move-object/from16 v24, v2

    move-object/from16 v28, v7

    move-object/from16 v29, v9

    .line 125
    invoke-direct/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzakb;-><init>(III[I[I)V

    move-object v13, v2

    goto :goto_1c

    :cond_3a
    move/from16 v8, v21

    move/from16 v4, v22

    goto :goto_1b

    :cond_3b
    move/from16 v8, v21

    move/from16 v4, v22

    move/from16 v3, v23

    .line 126
    :cond_3c
    :goto_1b
    invoke-static {v0, v12, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-array v5, v11, [B

    const/4 v6, 0x0

    .line 128
    invoke-virtual {v1, v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzajk;

    .line 129
    invoke-direct {v6, v2, v5}, Lcom/google/android/gms/internal/ads/zzajk;-><init>(Ljava/lang/String;[B)V

    move-object v13, v6

    :goto_1c
    if-nez v13, :cond_3d

    move/from16 v2, v17

    .line 130
    invoke-static {v0, v2, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzajw;->zzf(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1d

    :catchall_1
    move-exception v0

    move/from16 v14, v20

    goto :goto_1e

    :catch_0
    move/from16 v14, v20

    goto :goto_1f

    :cond_3d
    :goto_1d
    move/from16 v14, v20

    .line 131
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v13

    :goto_1e
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 132
    throw v0

    .line 133
    :catch_1
    :goto_1f
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_3e
    :goto_20
    move-object v0, v13

    .line 134
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v0

    :cond_3f
    move-object v0, v13

    .line 135
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-object v0
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzamf;I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result p0

    move v1, p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_1

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    add-int/lit8 v3, v1, 0x2

    sub-int/2addr v1, p0

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, -0x2

    .line 2
    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static zze(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static zzf(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static zzg([BII)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v0

    if-eqz p2, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    .line 2
    :goto_0
    array-length p2, p0

    add-int/lit8 v1, p2, -0x1

    if-ge v0, v1, :cond_2

    sub-int p2, v0, p1

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, v0, 0x1

    .line 3
    aget-byte p2, p0, p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzajw;->zzh([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    return p2

    :cond_3
    return v0
.end method

.method private static zzh([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 2
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static zzi(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static zzj([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzamq;->zzf:[B

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static zzk([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_1

    .line 1
    array-length v0, p0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
