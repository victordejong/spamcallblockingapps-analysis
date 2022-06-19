.class public final Lcom/google/android/gms/internal/ads/zzre;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamq;->zzs(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzre;->zza:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzqv;Lcom/google/android/gms/internal/ads/zzoj;JLcom/google/android/gms/internal/ads/zzn;ZZLcom/google/android/gms/internal/ads/zzfln;)Ljava/util/List;
    .locals 45
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzqv;",
            "Lcom/google/android/gms/internal/ads/zzoj;",
            "J",
            "Lcom/google/android/gms/internal/ads/zzn;",
            "ZZ",
            "Lcom/google/android/gms/internal/ads/zzfln<",
            "Lcom/google/android/gms/internal/ads/zzru;",
            "Lcom/google/android/gms/internal/ads/zzru;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzrx;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    .line 1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    .line 2
    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqv;->zzc:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_8f

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqv;->zzc:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/gms/internal/ads/zzqv;

    .line 4
    iget v2, v11, Lcom/google/android/gms/internal/ads/zzqx;->zzd:I

    const v3, 0x7472616b

    if-eq v2, v3, :cond_0

    move-object v0, v13

    move/from16 v31, v15

    goto/16 :goto_64

    :cond_0
    const v2, 0x6d766864

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646961

    .line 7
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v3

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x68646c72    # 4.3148E24f

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v4

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzre;->zze(Lcom/google/android/gms/internal/ads/zzamf;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzre;->zzf(I)I

    move-result v9

    const/4 v5, 0x4

    move/from16 v31, v15

    const-wide/16 v14, 0x0

    const/4 v6, -0x1

    if-ne v9, v6, :cond_1

    move-object/from16 v0, p7

    move-object v2, v11

    move-object/from16 v32, v13

    :goto_1
    const/4 v8, 0x0

    goto/16 :goto_3a

    :cond_1
    const v4, 0x746b6864

    .line 12
    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v4

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v7, 0x8

    .line 15
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 16
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v21

    if-nez v21, :cond_2

    const/16 v8, 0x8

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    .line 17
    :goto_2
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    .line 19
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v24

    if-nez v21, :cond_3

    move v10, v5

    goto :goto_3

    :cond_3
    const/16 v10, 0x8

    :goto_3
    const/4 v5, 0x0

    :goto_4
    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v5, v10, :cond_7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v29

    add-int v30, v24, v5

    .line 20
    aget-byte v7, v29, v30

    if-eq v7, v6, :cond_6

    if-nez v21, :cond_4

    .line 21
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v29

    goto :goto_5

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v29

    :goto_5
    cmp-long v5, v29, v14

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    move-wide/from16 v6, v29

    goto :goto_7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 22
    :cond_7
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :goto_6
    move-wide/from16 v6, v27

    :goto_7
    const/16 v5, 0x10

    .line 23
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v21

    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    const/4 v10, 0x4

    .line 26
    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    const/high16 v14, 0x10000

    const/high16 v15, -0x10000

    if-nez v21, :cond_b

    if-ne v5, v14, :cond_a

    if-ne v10, v15, :cond_9

    if-nez v4, :cond_8

    const/16 v4, 0x5a

    goto :goto_b

    :cond_8
    move v5, v14

    move v10, v15

    goto :goto_8

    :cond_9
    move v5, v14

    :cond_a
    :goto_8
    const/16 v21, 0x0

    :cond_b
    if-nez v21, :cond_f

    if-ne v5, v15, :cond_e

    if-ne v10, v14, :cond_c

    if-nez v4, :cond_d

    const/16 v4, 0x10e

    goto :goto_b

    :cond_c
    move v14, v10

    :cond_d
    move v10, v15

    goto :goto_9

    :cond_e
    move v14, v10

    move v10, v5

    :goto_9
    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    move v14, v10

    move v10, v5

    move/from16 v5, v21

    :goto_a
    if-ne v5, v15, :cond_10

    if-nez v10, :cond_10

    if-nez v14, :cond_10

    if-ne v4, v15, :cond_10

    const/16 v4, 0xb4

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    :goto_b
    new-instance v14, Lcom/google/android/gms/internal/ads/zzrd;

    .line 29
    invoke-direct {v14, v8, v6, v7, v4}, Lcom/google/android/gms/internal/ads/zzrd;-><init>(IJI)V

    cmp-long v4, p2, v27

    if-nez v4, :cond_11

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzrd;->zzb(Lcom/google/android/gms/internal/ads/zzrd;)J

    move-result-wide v4

    move-wide/from16 v32, v4

    goto :goto_c

    :cond_11
    move-wide/from16 v32, p2

    :goto_c
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v4, 0x8

    .line 30
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v4

    if-nez v4, :cond_12

    const/16 v4, 0x8

    goto :goto_d

    :cond_12
    const/16 v4, 0x10

    .line 32
    :goto_d
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v29

    cmp-long v2, v32, v27

    if-nez v2, :cond_13

    goto :goto_e

    :cond_13
    const-wide/32 v34, 0xf4240

    move-wide/from16 v36, v29

    .line 34
    invoke-static/range {v32 .. v37}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v4

    move-wide/from16 v27, v4

    :goto_e
    const v7, 0x6d696e66

    .line 35
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v2

    .line 36
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0x7374626c

    .line 37
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v2

    .line 38
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x6d646864

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v3

    .line 40
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v10, 0x8

    .line 42
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v4

    if-nez v4, :cond_14

    move v5, v10

    goto :goto_f

    :cond_14
    const/16 v5, 0x10

    .line 44
    :goto_f
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 45
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v5

    if-nez v4, :cond_15

    const/4 v4, 0x4

    goto :goto_10

    :cond_15
    move v4, v10

    .line 46
    :goto_10
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v15, 0x3

    .line 48
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    shr-int/lit8 v17, v3, 0xa

    and-int/lit8 v17, v17, 0x1f

    add-int/lit8 v7, v17, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v7, v3, 0x5

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const v3, 0x73747364

    .line 50
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    .line 51
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzrd;)I

    move-result v5

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzrd;->zzc(Lcom/google/android/gms/internal/ads/zzrd;)I

    move-result v4

    iget-object v2, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/16 v2, 0xc

    .line 53
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 54
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    new-instance v0, Lcom/google/android/gms/internal/ads/zzra;

    .line 55
    invoke-direct {v0, v15}, Lcom/google/android/gms/internal/ads/zzra;-><init>(I)V

    move-object/from16 v32, v13

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v15, :cond_4f

    move/from16 v17, v15

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v15

    .line 56
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v2, 0x1

    goto :goto_12

    :cond_16
    const/4 v2, 0x0

    :goto_12
    const-string v8, "childAtomSize must be positive"

    .line 57
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 58
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v2, 0x61766331

    const v10, 0x656e6376

    if-eq v8, v2, :cond_22

    const v2, 0x61766333

    if-eq v8, v2, :cond_22

    if-eq v8, v10, :cond_22

    const v2, 0x6d317620

    if-eq v8, v2, :cond_22

    const v2, 0x6d703476

    if-eq v8, v2, :cond_22

    const v2, 0x68766331

    if-eq v8, v2, :cond_22

    const v2, 0x68657631

    if-eq v8, v2, :cond_22

    const v2, 0x73323633

    if-eq v8, v2, :cond_22

    const v2, 0x48323633

    if-eq v8, v2, :cond_22

    const v2, 0x76703038

    if-eq v8, v2, :cond_22

    const v2, 0x76703039

    if-eq v8, v2, :cond_22

    const v2, 0x61763031

    if-eq v8, v2, :cond_22

    const v2, 0x64766176

    if-eq v8, v2, :cond_22

    const v2, 0x64766131

    if-eq v8, v2, :cond_22

    const v2, 0x64766865

    if-eq v8, v2, :cond_22

    const v2, 0x64766831

    if-ne v8, v2, :cond_17

    goto/16 :goto_18

    :cond_17
    const v2, 0x6d703461

    if-eq v8, v2, :cond_21

    const v2, 0x656e6361

    if-eq v8, v2, :cond_21

    const v2, 0x61632d33

    if-eq v8, v2, :cond_21

    const v2, 0x65632d33

    if-eq v8, v2, :cond_21

    const v2, 0x61632d34

    if-eq v8, v2, :cond_21

    const v2, 0x64747363

    if-eq v8, v2, :cond_21

    const v2, 0x64747365

    if-eq v8, v2, :cond_21

    const v2, 0x64747368

    if-eq v8, v2, :cond_21

    const v2, 0x6474736c

    if-eq v8, v2, :cond_21

    const v2, 0x64747378

    if-eq v8, v2, :cond_21

    const v2, 0x73616d72

    if-eq v8, v2, :cond_21

    const v2, 0x73617762

    if-eq v8, v2, :cond_21

    const v2, 0x6c70636d

    if-eq v8, v2, :cond_21

    const v2, 0x736f7774

    if-eq v8, v2, :cond_21

    const v2, 0x74776f73

    if-eq v8, v2, :cond_21

    const v2, 0x2e6d7032

    if-eq v8, v2, :cond_21

    const v2, 0x2e6d7033

    if-eq v8, v2, :cond_21

    const v2, 0x6d686131

    if-eq v8, v2, :cond_21

    const v2, 0x6d686d31

    if-eq v8, v2, :cond_21

    const v2, 0x616c6163

    if-eq v8, v2, :cond_21

    const v2, 0x616c6177

    if-eq v8, v2, :cond_21

    const v2, 0x756c6177

    if-eq v8, v2, :cond_21

    const v2, 0x4f707573

    if-eq v8, v2, :cond_21

    const v2, 0x664c6143

    if-ne v8, v2, :cond_18

    goto/16 :goto_17

    :cond_18
    const v2, 0x54544d4c

    if-eq v8, v2, :cond_1c

    const v2, 0x74783367

    if-eq v8, v2, :cond_1c

    const v2, 0x77767474

    if-eq v8, v2, :cond_1c

    const v2, 0x73747070

    if-eq v8, v2, :cond_1c

    const v2, 0x63363038

    if-ne v8, v2, :cond_19

    goto :goto_14

    :cond_19
    const v2, 0x6d657474

    if-ne v8, v2, :cond_1a

    add-int/lit8 v2, v15, 0x10

    .line 59
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    .line 61
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1b

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaft;

    .line 62
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_13

    :cond_1a
    const v2, 0x63616d6d

    if-ne v8, v2, :cond_1b

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaft;

    .line 63
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 64
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v8, "application/x-camera-motion"

    .line 65
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    :cond_1b
    :goto_13
    move/from16 v23, v1

    move-object/from16 v21, v3

    move v2, v4

    move v4, v5

    move-object/from16 v39, v7

    move/from16 v18, v9

    move-object/from16 v41, v11

    move/from16 v20, v13

    move-object/from16 v24, v14

    move/from16 v26, v15

    move-object v14, v6

    goto/16 :goto_34

    :cond_1c
    :goto_14
    add-int/lit8 v2, v15, 0x10

    .line 67
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const v2, 0x54544d4c

    const-wide v34, 0x7fffffffffffffffL

    if-ne v8, v2, :cond_1d

    const-string v2, "application/ttml+xml"

    :goto_15
    move-object/from16 v20, v11

    move-wide/from16 v10, v34

    const/4 v8, 0x0

    move/from16 v35, v4

    goto :goto_16

    :cond_1d
    const v2, 0x74783367

    if-ne v8, v2, :cond_1e

    add-int/lit8 v2, v1, -0x10

    .line 68
    new-array v8, v2, [B

    const/4 v10, 0x0

    .line 69
    invoke-virtual {v6, v8, v10, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v2

    const-string v8, "application/x-quicktime-tx3g"

    move-object/from16 v20, v11

    move-wide/from16 v10, v34

    move/from16 v35, v4

    move-object/from16 v43, v8

    move-object v8, v2

    move-object/from16 v2, v43

    goto :goto_16

    :cond_1e
    const v2, 0x77767474

    if-ne v8, v2, :cond_1f

    const-string v2, "application/x-mp4-vtt"

    goto :goto_15

    :cond_1f
    const v2, 0x73747070

    if-ne v8, v2, :cond_20

    const-string v2, "application/ttml+xml"

    move/from16 v35, v4

    move-object/from16 v20, v11

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    goto :goto_16

    :cond_20
    const/4 v10, 0x1

    iput v10, v0, Lcom/google/android/gms/internal/ads/zzra;->zzd:I

    const-string v2, "application/x-mp4-cea-608"

    goto :goto_15

    .line 71
    :goto_16
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaft;

    .line 72
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 73
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 74
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 75
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 76
    invoke-virtual {v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzR(J)Lcom/google/android/gms/internal/ads/zzaft;

    .line 77
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    move/from16 v23, v1

    move-object/from16 v21, v3

    move v4, v5

    move-object/from16 v39, v7

    move/from16 v18, v9

    move-object/from16 v24, v14

    move/from16 v26, v15

    move-object/from16 v41, v20

    move/from16 v2, v35

    move-object v14, v6

    move/from16 v20, v13

    goto/16 :goto_34

    :cond_21
    :goto_17
    move/from16 v35, v4

    move-object/from16 v20, v11

    const/16 v10, 0xc

    move-object v2, v6

    move-object/from16 v21, v3

    move v3, v8

    move/from16 v8, v35

    const/4 v11, 0x2

    move v4, v15

    move/from16 v19, v5

    const/16 v26, 0x10

    move v5, v1

    move-object/from16 v24, v14

    const/4 v10, -0x1

    move-object v14, v6

    move/from16 v6, v19

    move-object/from16 v39, v7

    move/from16 v12, v26

    move-object/from16 v7, v21

    move/from16 v40, v8

    move/from16 v8, p6

    move/from16 v18, v9

    move-object/from16 v9, p4

    move-object v10, v0

    move-object/from16 v41, v20

    move v11, v13

    .line 79
    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzre;->zzg(Lcom/google/android/gms/internal/ads/zzamf;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzra;I)V

    move/from16 v23, v1

    move/from16 v20, v13

    move/from16 v26, v15

    goto/16 :goto_33

    :cond_22
    :goto_18
    move-object/from16 v21, v3

    move/from16 v40, v4

    move/from16 v19, v5

    move-object/from16 v39, v7

    move/from16 v18, v9

    move-object/from16 v41, v11

    move-object/from16 v24, v14

    const/16 v12, 0x10

    move-object v14, v6

    add-int/lit8 v2, v15, 0x10

    .line 80
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 81
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 82
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v2

    .line 83
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    const/16 v4, 0x32

    .line 84
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v4

    if-ne v8, v10, :cond_25

    .line 85
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/ads/zzre;->zzi(Lcom/google/android/gms/internal/ads/zzamf;II)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_24

    .line 86
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v7, p4

    move v9, v12

    if-nez v7, :cond_23

    const/4 v8, 0x0

    goto :goto_19

    .line 87
    :cond_23
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzrv;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v8

    .line 88
    :goto_19
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzra;->zza:[Lcom/google/android/gms/internal/ads/zzrv;

    .line 89
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrv;

    aput-object v5, v10, v13

    move-object v5, v8

    move v8, v6

    goto :goto_1a

    :cond_24
    move-object/from16 v7, p4

    move v9, v12

    move-object v5, v7

    move v8, v10

    .line 90
    :goto_1a
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_1b

    :cond_25
    move-object/from16 v7, p4

    move v9, v12

    move-object v5, v7

    :goto_1b
    const v6, 0x6d317620

    if-ne v8, v6, :cond_26

    const-string v6, "video/mpeg"

    move v10, v8

    move-object v8, v6

    goto :goto_1c

    :cond_26
    const v6, 0x48323633

    if-ne v8, v6, :cond_27

    const-string v8, "video/3gpp"

    move v10, v6

    goto :goto_1c

    :cond_27
    move v10, v8

    const/4 v8, 0x0

    :goto_1c
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v22, v5

    move v11, v6

    move-object v12, v8

    move/from16 v20, v13

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v42, 0x0

    move v6, v4

    const/4 v4, 0x0

    :goto_1d
    sub-int v5, v6, v15

    if-ge v5, v1, :cond_4d

    .line 91
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v5

    .line 92
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v23

    if-nez v23, :cond_29

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v23

    move-object/from16 v25, v9

    sub-int v9, v23, v15

    if-ne v9, v1, :cond_28

    move/from16 v23, v1

    goto/16 :goto_32

    :cond_28
    const/4 v9, 0x0

    goto :goto_1e

    :cond_29
    move-object/from16 v25, v9

    move/from16 v9, v23

    :goto_1e
    if-lez v9, :cond_2a

    move/from16 v23, v1

    move/from16 v26, v15

    const/4 v1, 0x1

    goto :goto_1f

    :cond_2a
    move/from16 v23, v1

    move/from16 v26, v15

    const/4 v1, 0x0

    :goto_1f
    const-string v15, "childAtomSize must be positive"

    .line 93
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 94
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    const v15, 0x61766343

    if-ne v1, v15, :cond_2d

    if-nez v12, :cond_2b

    const/4 v1, 0x1

    goto :goto_20

    :cond_2b
    const/4 v1, 0x0

    :goto_20
    const/4 v15, 0x0

    .line 95
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x8

    .line 96
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 97
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzne;

    move-result-object v1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzne;->zza:Ljava/util/List;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzne;->zzb:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzra;->zzc:I

    if-nez v4, :cond_2c

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzne;->zze:F

    :cond_2c
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzne;->zzf:Ljava/lang/String;

    const-string v7, "video/avc"

    goto :goto_22

    :cond_2d
    const v15, 0x68766343

    if-ne v1, v15, :cond_2f

    if-nez v12, :cond_2e

    const/4 v1, 0x1

    goto :goto_21

    :cond_2e
    const/4 v1, 0x0

    :goto_21
    const/4 v7, 0x0

    .line 98
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x8

    .line 99
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 100
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzok;

    move-result-object v1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzok;->zza:Ljava/util/List;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzok;->zzb:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzra;->zzc:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzok;->zzc:Ljava/lang/String;

    const-string v7, "video/hevc"

    :goto_22
    move-object/from16 v25, v5

    move-object v12, v7

    move/from16 v34, v10

    move-object v7, v1

    goto/16 :goto_31

    :cond_2f
    const v15, 0x64766343

    if-eq v1, v15, :cond_4b

    const v15, 0x64767643

    if-ne v1, v15, :cond_30

    goto/16 :goto_2f

    :cond_30
    const v15, 0x76706343

    if-ne v1, v15, :cond_33

    if-nez v12, :cond_31

    const/4 v1, 0x1

    goto :goto_23

    :cond_31
    const/4 v1, 0x0

    :goto_23
    const/4 v5, 0x0

    .line 101
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v10, v1, :cond_32

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_25

    :cond_32
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_25

    :cond_33
    const v15, 0x61763143

    if-ne v1, v15, :cond_35

    if-nez v12, :cond_34

    const/4 v1, 0x1

    goto :goto_24

    :cond_34
    const/4 v1, 0x0

    :goto_24
    const/4 v15, 0x0

    .line 102
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    const-string v1, "video/av01"

    :goto_25
    move-object v12, v1

    :goto_26
    move/from16 v34, v10

    goto/16 :goto_31

    :cond_35
    const v15, 0x64323633

    if-ne v1, v15, :cond_37

    if-nez v12, :cond_36

    const/4 v1, 0x1

    goto :goto_27

    :cond_36
    const/4 v1, 0x0

    :goto_27
    const/4 v15, 0x0

    .line 103
    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    const-string v1, "video/3gpp"

    goto :goto_25

    :cond_37
    const v15, 0x65736473

    if-ne v1, v15, :cond_3a

    if-nez v12, :cond_38

    const/4 v1, 0x1

    goto :goto_28

    :cond_38
    const/4 v1, 0x0

    :goto_28
    const/4 v12, 0x0

    .line 104
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 105
    invoke-static {v14, v5}, Lcom/google/android/gms/internal/ads/zzre;->zzh(Lcom/google/android/gms/internal/ads/zzamf;I)Landroid/util/Pair;

    move-result-object v1

    .line 106
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 107
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_39

    .line 108
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    move-object/from16 v25, v1

    :cond_39
    move-object v12, v5

    goto :goto_26

    :cond_3a
    const v15, 0x70617370

    if-ne v1, v15, :cond_3b

    add-int/lit8 v5, v5, 0x8

    .line 109
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 110
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v1

    int-to-float v1, v1

    .line 111
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    move v11, v1

    move/from16 v34, v10

    const/4 v4, 0x1

    goto/16 :goto_31

    :cond_3b
    const v15, 0x73763364

    if-ne v1, v15, :cond_3e

    add-int/lit8 v1, v5, 0x8

    :goto_29
    sub-int v13, v1, v5

    if-ge v13, v9, :cond_3d

    .line 112
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 113
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    .line 114
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    move/from16 v33, v4

    const v4, 0x70726f6a

    if-ne v15, v4, :cond_3c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    add-int/2addr v13, v1

    .line 115
    invoke-static {v4, v1, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    goto :goto_2a

    :cond_3c
    add-int/2addr v1, v13

    move/from16 v4, v33

    goto :goto_29

    :cond_3d
    move/from16 v33, v4

    const/4 v1, 0x0

    :goto_2a
    move-object v13, v1

    goto :goto_2b

    :cond_3e
    move/from16 v33, v4

    const v4, 0x73743364

    if-ne v1, v4, :cond_45

    .line 116
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    const/4 v4, 0x3

    .line 117
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    if-nez v1, :cond_43

    .line 118
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    const/4 v5, 0x1

    const/4 v15, 0x2

    if-eqz v1, :cond_42

    if-eq v1, v5, :cond_41

    if-eq v1, v15, :cond_40

    if-eq v1, v4, :cond_3f

    goto :goto_2b

    :cond_3f
    move v8, v4

    goto :goto_2b

    :cond_40
    move v8, v15

    goto :goto_2b

    :cond_41
    move v8, v5

    goto :goto_2b

    :cond_42
    const/4 v8, 0x0

    goto :goto_2b

    :cond_43
    const/4 v5, 0x1

    const/4 v15, 0x2

    :cond_44
    :goto_2b
    move/from16 v34, v10

    goto/16 :goto_30

    :cond_45
    const/4 v5, 0x1

    const/4 v15, 0x2

    const v4, 0x636f6c72

    if-ne v1, v4, :cond_44

    .line 119
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    const v4, 0x6e636c78

    if-eq v1, v4, :cond_48

    const v4, 0x6e636c63

    if-ne v1, v4, :cond_46

    goto :goto_2c

    .line 120
    :cond_46
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqx;->zzf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Unsupported color type: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v34

    if-eqz v34, :cond_47

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2b

    .line 121
    :cond_47
    new-instance v1, Ljava/lang/String;

    .line 122
    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2b

    .line 123
    :cond_48
    :goto_2c
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v4

    .line 124
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v34

    .line 125
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    const v15, 0x6e636c78

    if-ne v1, v15, :cond_49

    .line 126
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_49

    move v1, v5

    goto :goto_2d

    :cond_49
    const/4 v1, 0x0

    :goto_2d
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzj;->zza(I)I

    move-result v4

    if-eq v5, v1, :cond_4a

    const/4 v1, 0x2

    goto :goto_2e

    :cond_4a
    move v1, v5

    :goto_2e
    new-instance v15, Lcom/google/android/gms/internal/ads/zzj;

    invoke-static/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zzj;->zzb(I)I

    move-result v5

    move/from16 v34, v10

    const/4 v10, 0x0

    .line 127
    invoke-direct {v15, v4, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzj;-><init>(III[B)V

    move-object/from16 v42, v15

    goto :goto_30

    :cond_4b
    :goto_2f
    move/from16 v33, v4

    move/from16 v34, v10

    .line 128
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zznr;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zznr;

    move-result-object v1

    if-eqz v1, :cond_4c

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zznr;->zza:Ljava/lang/String;

    const-string v12, "video/dolby-vision"

    :cond_4c
    :goto_30
    move/from16 v4, v33

    :goto_31
    add-int/2addr v6, v9

    move/from16 v1, v23

    move-object/from16 v9, v25

    move/from16 v15, v26

    move/from16 v10, v34

    goto/16 :goto_1d

    :cond_4d
    move/from16 v23, v1

    move-object/from16 v25, v9

    :goto_32
    move/from16 v26, v15

    if-eqz v12, :cond_4e

    .line 129
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaft;

    .line 130
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    move/from16 v4, v19

    .line 131
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 132
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 133
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 134
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 135
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 136
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    move/from16 v2, v40

    .line 137
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzV(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 138
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzX([B)Lcom/google/android/gms/internal/ads/zzaft;

    .line 139
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzY(I)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v3, v25

    .line 140
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v5, v22

    .line 141
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v3, v42

    .line 142
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzZ(Lcom/google/android/gms/internal/ads/zzj;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_34

    :cond_4e
    :goto_33
    move/from16 v4, v19

    move/from16 v2, v40

    :goto_34
    add-int v15, v26, v23

    .line 144
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int/lit8 v13, v20, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move v5, v4

    move-object v6, v14

    move/from16 v15, v17

    move/from16 v9, v18

    move-object/from16 v3, v21

    move-object/from16 v14, v24

    move-object/from16 v7, v39

    move-object/from16 v11, v41

    const v8, 0x7374626c

    const/16 v10, 0x8

    move v4, v2

    const/16 v2, 0xc

    goto/16 :goto_11

    :cond_4f
    move-object/from16 v39, v7

    move/from16 v18, v9

    move-object/from16 v41, v11

    move-object/from16 v24, v14

    const v1, 0x65647473

    move-object/from16 v2, v41

    .line 145
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    if-eqz v1, :cond_55

    const v3, 0x656c7374

    .line 146
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v1

    if-nez v1, :cond_50

    const/4 v8, 0x0

    goto :goto_38

    .line 147
    :cond_50
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v3, 0x8

    .line 148
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 149
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v3

    .line 150
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v4

    new-array v5, v4, [J

    new-array v6, v4, [J

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v4, :cond_54

    const/4 v8, 0x1

    if-ne v3, v8, :cond_51

    .line 151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzD()J

    move-result-wide v9

    goto :goto_36

    :cond_51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v9

    :goto_36
    aput-wide v9, v5, v7

    if-ne v3, v8, :cond_52

    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzx()J

    move-result-wide v9

    goto :goto_37

    :cond_52
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    int-to-long v9, v9

    :goto_37
    aput-wide v9, v6, v7

    .line 153
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzq()S

    move-result v9

    if-ne v9, v8, :cond_53

    const/4 v8, 0x2

    .line 154
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 155
    :cond_53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    .line 156
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_54
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    :goto_38
    if-eqz v8, :cond_55

    .line 158
    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    .line 159
    iget-object v3, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [J

    goto :goto_39

    :cond_55
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_39
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v4, :cond_56

    move-object/from16 v0, p7

    goto/16 :goto_1

    :cond_56
    new-instance v8, Lcom/google/android/gms/internal/ads/zzru;

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzrd;)I

    move-result v17

    move-object/from16 v4, v39

    .line 160
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    .line 161
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzra;->zzd:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzra;->zza:[Lcom/google/android/gms/internal/ads/zzrv;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzra;->zzc:I

    move-object/from16 v16, v8

    move-wide/from16 v21, v29

    move-wide/from16 v23, v27

    move-object/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v28, v0

    move-object/from16 v29, v1

    move-object/from16 v30, v3

    invoke-direct/range {v16 .. v30}, Lcom/google/android/gms/internal/ads/zzru;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzafv;I[Lcom/google/android/gms/internal/ads/zzrv;I[J[J)V

    move-object/from16 v0, p7

    .line 162
    :goto_3a
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzfln;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzru;

    if-eqz v4, :cond_8e

    const v1, 0x6d646961

    .line 163
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    .line 164
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x6d696e66

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    .line 166
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7374626c

    .line 167
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzd(I)Lcom/google/android/gms/internal/ads/zzqv;

    move-result-object v1

    .line 168
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7374737a

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_57

    new-instance v3, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 170
    invoke-direct {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzrb;-><init>(Lcom/google/android/gms/internal/ads/zzqw;Lcom/google/android/gms/internal/ads/zzafv;)V

    goto :goto_3b

    :cond_57
    const v2, 0x73747a32

    .line 171
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 172
    new-instance v3, Lcom/google/android/gms/internal/ads/zzrc;

    .line 173
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzrc;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    .line 174
    :goto_3b
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zza()I

    move-result v2

    if-nez v2, :cond_58

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    const/4 v2, 0x0

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v1

    .line 175
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    :goto_3c
    move-object/from16 v0, v32

    goto/16 :goto_63

    :cond_58
    const v5, 0x7374636f

    .line 176
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v5

    if-nez v5, :cond_59

    const v5, 0x636f3634

    .line 177
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v5

    .line 178
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    const/4 v5, 0x1

    goto :goto_3d

    :cond_59
    move-object v6, v5

    const/4 v5, 0x0

    .line 179
    :goto_3d
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const v7, 0x73747363

    .line 180
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v7

    .line 181
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const v8, 0x73747473

    .line 183
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v8

    .line 184
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const v9, 0x73747373

    .line 186
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v9

    if-eqz v9, :cond_5a

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_3e

    :cond_5a
    const/4 v9, 0x0

    :goto_3e
    const v10, 0x63747473

    .line 187
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    goto :goto_3f

    :cond_5b
    const/4 v1, 0x0

    :goto_3f
    new-instance v10, Lcom/google/android/gms/internal/ads/zzqy;

    .line 188
    invoke-direct {v10, v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Lcom/google/android/gms/internal/ads/zzamf;Lcom/google/android/gms/internal/ads/zzamf;Z)V

    const/16 v5, 0xc

    .line 189
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 190
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v6

    const/4 v7, -0x1

    add-int/2addr v6, v7

    .line 191
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    .line 192
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v12

    if-eqz v1, :cond_5c

    .line 193
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 194
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v13

    goto :goto_40

    :cond_5c
    const/4 v13, 0x0

    :goto_40
    if-eqz v9, :cond_5e

    .line 195
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 196
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v5

    if-lez v5, :cond_5d

    .line 197
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v14

    add-int/2addr v14, v7

    goto :goto_41

    :cond_5d
    move v14, v7

    const/4 v9, 0x0

    goto :goto_41

    :cond_5e
    move v14, v7

    const/4 v5, 0x0

    :goto_41
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zzb()I

    move-result v15

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 198
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafv;->zzl:Ljava/lang/String;

    if-eq v15, v7, :cond_65

    const-string v7, "audio/raw"

    .line 199
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    const-string v7, "audio/g711-mlaw"

    .line 200
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5f

    const-string v7, "audio/g711-alaw"

    .line 201
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    :cond_5f
    if-nez v6, :cond_65

    if-nez v13, :cond_64

    if-nez v5, :cond_64

    iget v0, v10, Lcom/google/android/gms/internal/ads/zzqy;->zza:I

    new-array v1, v0, [J

    new-array v3, v0, [I

    .line 202
    :goto_42
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzqy;->zza()Z

    move-result v5

    if-eqz v5, :cond_60

    iget v5, v10, Lcom/google/android/gms/internal/ads/zzqy;->zzb:I

    iget-wide v6, v10, Lcom/google/android/gms/internal/ads/zzqy;->zzd:J

    .line 203
    aput-wide v6, v1, v5

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzqy;->zzc:I

    .line 204
    aput v6, v3, v5

    goto :goto_42

    :cond_60
    int-to-long v5, v12

    const/16 v7, 0x2000

    .line 205
    div-int/2addr v7, v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_43
    if-ge v8, v0, :cond_61

    .line 206
    aget v10, v3, v8

    .line 207
    invoke-static {v10, v7}, Lcom/google/android/gms/internal/ads/zzamq;->zzw(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    .line 208
    :cond_61
    new-array v8, v9, [J

    .line 209
    new-array v10, v9, [I

    .line 210
    new-array v11, v9, [J

    .line 211
    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_44
    if-ge v12, v0, :cond_63

    .line 212
    aget v17, v3, v12

    .line 213
    aget-wide v18, v1, v12

    move/from16 v43, v17

    move/from16 v17, v0

    move/from16 v0, v43

    :goto_45
    if-lez v0, :cond_62

    .line 214
    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 215
    aput-wide v18, v8, v16

    move-object/from16 v21, v1

    mul-int v1, v15, v20

    .line 216
    aput v1, v10, v16

    .line 217
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v1, v7

    move-object/from16 v22, v8

    int-to-long v7, v13

    mul-long/2addr v7, v5

    .line 218
    aput-wide v7, v11, v16

    const/4 v7, 0x1

    .line 219
    aput v7, v9, v16

    .line 220
    aget v7, v10, v16

    int-to-long v7, v7

    add-long v18, v18, v7

    add-int v13, v13, v20

    sub-int v0, v0, v20

    add-int/lit8 v16, v16, 0x1

    move v7, v1

    move-object/from16 v1, v21

    move-object/from16 v8, v22

    goto :goto_45

    :cond_62
    move-object/from16 v21, v1

    move v1, v7

    move-object/from16 v22, v8

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v21

    goto :goto_44

    :cond_63
    move-object/from16 v22, v8

    int-to-long v0, v13

    mul-long/2addr v5, v0

    move-object/from16 v21, v4

    move-wide v0, v5

    move-object v12, v9

    move-object/from16 v9, v22

    goto/16 :goto_53

    :cond_64
    const/4 v6, 0x0

    .line 221
    :cond_65
    new-array v0, v2, [J

    new-array v7, v2, [I

    new-array v15, v2, [J

    move/from16 v16, v5

    new-array v5, v2, [I

    move-object/from16 v21, v4

    move/from16 v17, v6

    move/from16 v18, v11

    move v11, v12

    move/from16 v20, v13

    move v4, v14

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v25, 0x0

    :goto_46
    if-ge v6, v2, :cond_71

    move-wide/from16 v27, v22

    const/16 v22, 0x1

    :goto_47
    if-nez v19, :cond_67

    .line 222
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzqy;->zza()Z

    move-result v22

    if-eqz v22, :cond_66

    move/from16 v23, v12

    move/from16 v29, v13

    iget-wide v12, v10, Lcom/google/android/gms/internal/ads/zzqy;->zzd:J

    move/from16 v30, v2

    iget v2, v10, Lcom/google/android/gms/internal/ads/zzqy;->zzc:I

    move/from16 v19, v2

    move-wide/from16 v27, v12

    move/from16 v12, v23

    move/from16 v13, v29

    move/from16 v2, v30

    goto :goto_47

    :cond_66
    move/from16 v30, v2

    move/from16 v23, v12

    move/from16 v29, v13

    const/4 v2, 0x0

    goto :goto_48

    :cond_67
    move/from16 v30, v2

    move/from16 v23, v12

    move/from16 v29, v13

    move/from16 v2, v19

    :goto_48
    if-nez v22, :cond_68

    .line 223
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 224
    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    .line 225
    invoke-static {v15, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v15

    .line 226
    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v2, v6

    move/from16 v11, v19

    move/from16 v12, v23

    goto/16 :goto_4f

    :cond_68
    if-eqz v1, :cond_6b

    move/from16 v12, v23

    :goto_49
    if-nez v29, :cond_6a

    if-lez v20, :cond_69

    .line 227
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v29

    .line 228
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v12

    add-int/lit8 v20, v20, -0x1

    goto :goto_49

    :cond_69
    const/4 v13, -0x1

    const/16 v29, 0x0

    goto :goto_4a

    :cond_6a
    const/4 v13, -0x1

    :goto_4a
    add-int/lit8 v29, v29, -0x1

    goto :goto_4b

    :cond_6b
    move/from16 v12, v23

    :goto_4b
    move/from16 v13, v29

    .line 229
    aput-wide v27, v0, v6

    move-object/from16 v22, v0

    .line 230
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzqz;->zzc()I

    move-result v0

    aput v0, v7, v6

    if-le v0, v14, :cond_6c

    move/from16 v19, v0

    move v0, v13

    goto :goto_4c

    :cond_6c
    move v0, v13

    move/from16 v19, v14

    :goto_4c
    int-to-long v13, v12

    add-long v13, v25, v13

    .line 231
    aput-wide v13, v15, v6

    if-nez v9, :cond_6d

    const/4 v13, 0x1

    goto :goto_4d

    :cond_6d
    const/4 v13, 0x0

    .line 232
    :goto_4d
    aput v13, v5, v6

    if-ne v6, v4, :cond_6e

    const/4 v13, 0x1

    .line 233
    aput v13, v5, v6

    add-int/lit8 v16, v16, -0x1

    if-lez v16, :cond_6e

    .line 234
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v4

    const/4 v13, -0x1

    add-int/2addr v4, v13

    :cond_6e
    int-to-long v13, v11

    add-long v25, v25, v13

    add-int/lit8 v13, v18, -0x1

    if-nez v13, :cond_70

    if-lez v17, :cond_6f

    .line 236
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v11

    .line 237
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v13

    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v11

    move v11, v13

    goto :goto_4e

    :cond_6f
    const/16 v18, 0x0

    goto :goto_4e

    :cond_70
    move/from16 v18, v13

    .line 238
    :goto_4e
    aget v13, v7, v6

    int-to-long v13, v13

    add-long v13, v27, v13

    const/16 v24, -0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v43, v13

    move v13, v0

    move/from16 v14, v19

    move-object/from16 v0, v22

    move/from16 v19, v2

    move-wide/from16 v22, v43

    move/from16 v2, v30

    goto/16 :goto_46

    :cond_71
    move-object/from16 v22, v0

    move/from16 v30, v2

    move/from16 v29, v13

    move/from16 v11, v19

    :goto_4f
    int-to-long v3, v12

    add-long v3, v25, v3

    if-eqz v1, :cond_73

    :goto_50
    if-lez v20, :cond_73

    .line 239
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v6

    if-eqz v6, :cond_72

    const/4 v1, 0x0

    goto :goto_51

    .line 240
    :cond_72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    add-int/lit8 v20, v20, -0x1

    goto :goto_50

    :cond_73
    const/4 v1, 0x1

    :goto_51
    if-nez v16, :cond_74

    if-nez v18, :cond_74

    if-nez v11, :cond_74

    if-nez v17, :cond_74

    if-nez v29, :cond_74

    if-nez v1, :cond_76

    const/4 v1, 0x0

    :cond_74
    const/4 v6, 0x1

    if-eq v6, v1, :cond_75

    const-string v1, ", ctts invalid"

    goto :goto_52

    :cond_75
    const-string v1, ""

    .line 241
    :goto_52
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    :cond_76
    move-object v9, v0

    move-wide v0, v3

    move-object v12, v5

    move-object v10, v7

    move-object v11, v15

    :goto_53
    const-wide/32 v5, 0xf4240

    move-object/from16 v13, v21

    .line 242
    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide v3, v0

    .line 243
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v15

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    if-nez v3, :cond_77

    const-wide/32 v0, 0xf4240

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    .line 244
    invoke-static {v11, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzamq;->zzI([JJJ)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v1

    move-object v4, v13

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v11

    move-object v9, v12

    move-wide v10, v15

    .line 245
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    goto/16 :goto_3c

    :cond_77
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7a

    iget v4, v13, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    if-ne v4, v5, :cond_7a

    .line 246
    array-length v4, v11

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7a

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    .line 247
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 248
    aget-wide v7, v5, v6

    .line 249
    aget-wide v15, v3, v6

    move-wide/from16 v21, v7

    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move v5, v2

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    move-wide/from16 v17, v6

    move-wide/from16 v19, v2

    .line 250
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v2

    add-long v7, v21, v2

    add-int/lit8 v2, v4, -0x1

    const/4 v3, 0x4

    const/4 v6, 0x0

    .line 251
    invoke-static {v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzx(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x4

    .line 252
    invoke-static {v4, v6, v2}, Lcom/google/android/gms/internal/ads/zzamq;->zzx(III)I

    move-result v2

    .line 253
    aget-wide v15, v11, v6

    cmp-long v4, v15, v21

    if-gtz v4, :cond_79

    aget-wide v3, v11, v3

    cmp-long v3, v21, v3

    if-gez v3, :cond_79

    aget-wide v2, v11, v2

    cmp-long v2, v2, v7

    if-gez v2, :cond_79

    cmp-long v2, v7, v0

    if-gtz v2, :cond_79

    .line 254
    aget-wide v2, v11, v6

    sub-long v15, v21, v2

    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v2, v2

    move v6, v5

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v17, v2

    move-wide/from16 v19, v4

    .line 255
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v2

    sub-long v15, v0, v7

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzru;->zzf:Lcom/google/android/gms/internal/ads/zzafv;

    .line 256
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzafv;->zzz:I

    int-to-long v4, v4

    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v17, v4

    move-wide/from16 v19, v7

    .line 257
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v15, v2, v7

    if-nez v15, :cond_78

    cmp-long v15, v4, v7

    if-eqz v15, :cond_7b

    :cond_78
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v2, v7

    if-gtz v7, :cond_7b

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-gtz v7, :cond_7b

    long-to-int v0, v2

    move-object/from16 v2, p1

    iput v0, v2, Lcom/google/android/gms/internal/ads/zzoj;->zza:I

    long-to-int v0, v4

    iput v0, v2, Lcom/google/android/gms/internal/ads/zzoj;->zzb:I

    const-wide/32 v0, 0xf4240

    iget-wide v3, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    .line 258
    invoke-static {v11, v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzamq;->zzI([JJJ)V

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    const/4 v1, 0x0

    .line 259
    aget-wide v3, v0, v1

    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    const-wide/32 v5, 0xf4240

    .line 260
    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v0

    new-instance v15, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v15

    move-object v4, v13

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v11

    move-object v9, v12

    move-wide v10, v0

    .line 261
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    goto :goto_56

    :cond_79
    move-object/from16 v2, p1

    move v6, v5

    goto :goto_54

    :cond_7a
    move v6, v2

    :cond_7b
    move-object/from16 v2, p1

    :goto_54
    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 262
    array-length v7, v3

    const/4 v4, 0x1

    if-ne v7, v4, :cond_7e

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    const-wide/16 v15, 0x0

    cmp-long v3, v7, v15

    if-nez v3, :cond_7d

    iget-object v3, v13, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    .line 263
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    aget-wide v5, v3, v4

    const/4 v3, 0x0

    .line 265
    :goto_55
    array-length v4, v11

    if-ge v3, v4, :cond_7c

    .line 266
    aget-wide v7, v11, v3

    sub-long v15, v7, v5

    const-wide/32 v17, 0xf4240

    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v19, v7

    .line 267
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v7

    aput-wide v7, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_7c
    iget-wide v3, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    sub-long v15, v0, v5

    const-wide/32 v17, 0xf4240

    move-wide/from16 v19, v3

    .line 268
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v0

    new-instance v15, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v15

    move-object v4, v13

    move-object v5, v9

    move-object v6, v10

    move v7, v14

    move-object v8, v11

    move-object v9, v12

    move-wide v10, v0

    .line 269
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    :goto_56
    move-object v1, v15

    goto/16 :goto_3c

    :cond_7d
    const/4 v7, 0x1

    :cond_7e
    iget v0, v13, Lcom/google/android/gms/internal/ads/zzru;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7f

    const/4 v0, 0x1

    goto :goto_57

    :cond_7f
    const/4 v0, 0x0

    :goto_57
    new-array v1, v7, [I

    new-array v3, v7, [I

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    .line 270
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 271
    :goto_58
    iget-object v2, v13, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    move/from16 v16, v14

    .line 272
    array-length v14, v2

    if-ge v5, v14, :cond_83

    move-object v14, v9

    move-object/from16 v17, v10

    .line 273
    aget-wide v9, v4, v5

    const-wide/16 v18, -0x1

    cmp-long v18, v9, v18

    if-eqz v18, :cond_82

    .line 274
    aget-wide v19, v2, v5

    move-object/from16 v18, v14

    move v2, v15

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move/from16 v25, v6

    move/from16 v26, v7

    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    move-wide/from16 v21, v14

    move-wide/from16 v23, v6

    .line 275
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v6

    const/4 v14, 0x1

    .line 276
    invoke-static {v11, v9, v10, v14, v14}, Lcom/google/android/gms/internal/ads/zzamq;->zzD([JJZZ)I

    move-result v15

    aput v15, v1, v5

    add-long/2addr v9, v6

    const/4 v15, 0x0

    .line 277
    invoke-static {v11, v9, v10, v0, v15}, Lcom/google/android/gms/internal/ads/zzamq;->zzE([JJZZ)I

    move-result v6

    aput v6, v3, v5

    .line 278
    :goto_59
    aget v6, v1, v5

    aget v7, v3, v5

    if-ge v6, v7, :cond_80

    aget v9, v12, v6

    and-int/2addr v9, v14

    if-nez v9, :cond_80

    add-int/lit8 v6, v6, 0x1

    .line 279
    aput v6, v1, v5

    const/4 v14, 0x1

    goto :goto_59

    :cond_80
    sub-int v9, v7, v6

    add-int v9, v9, v26

    if-eq v8, v6, :cond_81

    const/4 v6, 0x1

    goto :goto_5a

    :cond_81
    move v6, v15

    :goto_5a
    or-int/2addr v2, v6

    move v8, v7

    move v7, v9

    goto :goto_5b

    :cond_82
    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v18, v14

    move v2, v15

    const/4 v15, 0x0

    :goto_5b
    add-int/lit8 v5, v5, 0x1

    move v15, v2

    move/from16 v14, v16

    move-object/from16 v10, v17

    move-object/from16 v9, v18

    move/from16 v6, v25

    goto :goto_58

    :cond_83
    move v5, v6

    move-object/from16 v18, v9

    move-object/from16 v17, v10

    move v2, v15

    const/4 v15, 0x0

    if-eq v7, v5, :cond_84

    const/4 v0, 0x1

    goto :goto_5c

    :cond_84
    move v0, v15

    :goto_5c
    or-int/2addr v0, v2

    if-eqz v0, :cond_85

    .line 280
    new-array v2, v7, [J

    move-object v5, v2

    goto :goto_5d

    :cond_85
    move-object/from16 v5, v18

    :goto_5d
    if-eqz v0, :cond_86

    .line 281
    new-array v2, v7, [I

    move-object v6, v2

    goto :goto_5e

    :cond_86
    move-object/from16 v6, v17

    :goto_5e
    const/4 v2, 0x1

    if-ne v2, v0, :cond_87

    move v2, v15

    goto :goto_5f

    :cond_87
    move/from16 v2, v16

    :goto_5f
    if-eqz v0, :cond_88

    .line 282
    new-array v4, v7, [I

    move-object v9, v4

    goto :goto_60

    :cond_88
    move-object v9, v12

    .line 283
    :goto_60
    new-array v8, v7, [J

    move v7, v2

    move v2, v15

    move v4, v2

    const-wide/16 v25, 0x0

    :goto_61
    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 284
    array-length v10, v10

    if-ge v2, v10, :cond_8c

    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzru;->zzi:[J

    .line 285
    aget-wide v27, v10, v2

    .line 286
    aget v10, v1, v2

    .line 287
    aget v14, v3, v2

    if-eqz v0, :cond_89

    sub-int v15, v14, v10

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 288
    invoke-static {v1, v10, v5, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, v17

    .line 289
    invoke-static {v1, v10, v6, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    invoke-static {v12, v10, v9, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_62

    :cond_89
    move-object/from16 v16, v1

    move-object/from16 v1, v17

    :goto_62
    if-ge v10, v14, :cond_8b

    const-wide/32 v21, 0xf4240

    move/from16 v17, v14

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    move-wide/from16 v19, v25

    move-wide/from16 v23, v14

    .line 291
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v14

    .line 292
    aget-wide v19, v11, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    sub-long v11, v19, v27

    move/from16 v20, v2

    move-object/from16 v19, v3

    const-wide/16 v2, 0x0

    .line 293
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    const-wide/32 v35, 0xf4240

    iget-wide v11, v13, Lcom/google/android/gms/internal/ads/zzru;->zzc:J

    move-wide/from16 v37, v11

    .line 294
    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v11

    add-long/2addr v14, v11

    .line 295
    aput-wide v14, v8, v4

    if-eqz v0, :cond_8a

    .line 296
    aget v11, v6, v4

    if-le v11, v7, :cond_8a

    .line 297
    aget v7, v1, v10

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v17

    move-object/from16 v3, v19

    move/from16 v2, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    goto :goto_62

    :cond_8b
    move/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    const-wide/16 v2, 0x0

    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzru;->zzh:[J

    .line 298
    aget-wide v11, v10, v20

    add-long v25, v25, v11

    add-int/lit8 v10, v20, 0x1

    move-object/from16 v17, v1

    move v2, v10

    move-object/from16 v1, v16

    move-object/from16 v3, v19

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    const/4 v15, 0x0

    goto/16 :goto_61

    :cond_8c
    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzru;->zzd:J

    const-wide/32 v21, 0xf4240

    move-wide/from16 v19, v25

    move-wide/from16 v23, v0

    .line 299
    invoke-static/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzrx;

    move-object v3, v1

    move-object v4, v13

    .line 300
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(Lcom/google/android/gms/internal/ads/zzru;[J[II[J[IJ)V

    goto/16 :goto_3c

    .line 301
    :goto_63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_64

    :cond_8d
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 302
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0

    :cond_8e
    move-object/from16 v0, v32

    :goto_64
    add-int/lit8 v15, v31, 0x1

    move-object/from16 v1, p1

    move-object/from16 v12, p4

    move-object v13, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8f
    move-object v0, v13

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzqw;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            "Lcom/google/android/gms/internal/ads/zzaiv;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v4

    if-lt v4, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v4

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v5

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    const v7, 0x6d657461

    if-ne v6, v7, :cond_5

    .line 4
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int v2, v4, v5

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v9, 0x696c7374

    if-ne v8, v9, :cond_3

    .line 9
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int/2addr v6, v7

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    if-ge v7, v6, :cond_1

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzrl;->zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzaiu;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    .line 15
    :cond_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 16
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    move-object v2, v6

    goto/16 :goto_6

    :cond_3
    add-int/2addr v6, v7

    .line 17
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_1

    :cond_4
    :goto_3
    move-object v2, v1

    goto :goto_6

    :cond_5
    const v7, 0x736d7461

    if-ne v6, v7, :cond_b

    .line 18
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    add-int v3, v4, v5

    const/16 v6, 0xc

    .line 19
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    if-ge v7, v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    const v10, 0x73617574

    if-ne v9, v10, :cond_9

    const/16 v3, 0xe

    if-ge v8, v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v3, 0x5

    .line 22
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    const/high16 v7, 0x42f00000    # 120.0f

    if-eq v3, v6, :cond_7

    const/16 v6, 0xd

    if-eq v3, v6, :cond_8

    goto :goto_5

    :cond_7
    if-ne v3, v6, :cond_8

    const/high16 v7, 0x43700000    # 240.0f

    :cond_8
    const/4 v3, 0x1

    .line 24
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzaiu;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzakq;

    .line 26
    invoke-direct {v9, v7, v6}, Lcom/google/android/gms/internal/ads/zzakq;-><init>(FI)V

    const/4 v6, 0x0

    aput-object v9, v3, v6

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    move-object v3, v8

    goto :goto_6

    :cond_9
    add-int/2addr v7, v8

    .line 27
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_4

    :cond_a
    :goto_5
    move-object v3, v1

    :cond_b
    :goto_6
    add-int/2addr v4, v5

    .line 28
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto/16 :goto_0

    .line 29
    :cond_c
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzqv;)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 14

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzqv;->zzc(I)Lcom/google/android/gms/internal/ads/zzqw;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzre;->zze(Lcom/google/android/gms/internal/ads/zzamf;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    if-le v6, v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    if-ge v8, v1, :cond_4

    .line 16
    aget-object v8, v3, v8

    add-int v9, v6, v7

    .line 17
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v10

    if-ge v10, v9, :cond_3

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v11

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v9

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    .line 22
    new-array v12, v11, [B

    .line 23
    invoke-virtual {p0, v12, v4, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    new-instance v11, Lcom/google/android/gms/internal/ads/zzakk;

    .line 24
    invoke-direct {v11, v8, v12, v10, v9}, Lcom/google/android/gms/internal/ads/zzakk;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v10, v11

    .line 25
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_2

    :cond_3
    move-object v11, v2

    :goto_3
    if-eqz v11, :cond_4

    .line 26
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/2addr v6, v7

    .line 27
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_1

    .line 28
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v2

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_4
    return-object v2
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzamf;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result p0

    return p0
.end method

.method private static zzf(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzamf;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzn;Lcom/google/android/gms/internal/ads/zzra;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v9

    .line 3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    .line 4
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x14

    const/16 v11, 0x10

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v9, :cond_3

    if-ne v9, v13, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v12, :cond_2

    .line 5
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzx()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    .line 7
    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v7, v14

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v9

    .line 9
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 10
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v14

    .line 11
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzz()I

    move-result v7

    if-ne v9, v13, :cond_4

    .line 13
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_4
    move v9, v14

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v11

    const v14, 0x656e6361

    move/from16 v15, p1

    if-ne v15, v14, :cond_7

    .line 14
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzre;->zzi(Lcom/google/android/gms/internal/ads/zzamf;II)Landroid/util/Pair;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 15
    iget-object v14, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 16
    :cond_5
    iget-object v10, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzrv;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzrv;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzn;

    move-result-object v5

    .line 17
    :goto_3
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzra;->zza:[Lcom/google/android/gms/internal/ads/zzrv;

    .line 18
    iget-object v15, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Lcom/google/android/gms/internal/ads/zzrv;

    aput-object v15, v10, p9

    .line 19
    :cond_6
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    goto :goto_4

    :cond_7
    move v14, v15

    :goto_4
    const v10, 0x61632d33

    const v15, 0x616c6163

    const-string v16, "audio/raw"

    const-string v12, "audio/ac4"

    if-ne v14, v10, :cond_8

    const-string v16, "audio/ac3"

    :goto_5
    const/4 v10, -0x1

    goto/16 :goto_9

    :cond_8
    const v10, 0x65632d33

    if-ne v14, v10, :cond_9

    const-string v16, "audio/eac3"

    goto :goto_5

    :cond_9
    const v10, 0x61632d34

    if-ne v14, v10, :cond_a

    move-object/from16 v16, v12

    goto :goto_5

    :cond_a
    const v10, 0x64747363

    if-ne v14, v10, :cond_b

    const-string v16, "audio/vnd.dts"

    goto :goto_5

    :cond_b
    const v10, 0x64747368

    if-eq v14, v10, :cond_1d

    const v10, 0x6474736c

    if-ne v14, v10, :cond_c

    goto/16 :goto_8

    :cond_c
    const v10, 0x64747365

    if-ne v14, v10, :cond_d

    const-string v16, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_5

    :cond_d
    const v10, 0x64747378

    if-ne v14, v10, :cond_e

    const-string v16, "audio/vnd.dts.uhd"

    goto :goto_5

    :cond_e
    const v10, 0x73616d72

    if-ne v14, v10, :cond_f

    const-string v16, "audio/3gpp"

    goto :goto_5

    :cond_f
    const v10, 0x73617762

    if-ne v14, v10, :cond_10

    const-string v16, "audio/amr-wb"

    goto :goto_5

    :cond_10
    const v10, 0x6c70636d

    if-eq v14, v10, :cond_1c

    const v10, 0x736f7774

    if-ne v14, v10, :cond_11

    goto :goto_7

    :cond_11
    const v10, 0x74776f73

    if-ne v14, v10, :cond_12

    const/high16 v10, 0x10000000

    goto :goto_9

    :cond_12
    const v10, 0x2e6d7032

    if-eq v14, v10, :cond_1b

    const v10, 0x2e6d7033

    if-ne v14, v10, :cond_13

    goto :goto_6

    :cond_13
    const v10, 0x6d686131

    if-ne v14, v10, :cond_14

    const-string v16, "audio/mha1"

    goto :goto_5

    :cond_14
    const v10, 0x6d686d31

    if-ne v14, v10, :cond_15

    const-string v16, "audio/mhm1"

    goto :goto_5

    :cond_15
    if-ne v14, v15, :cond_16

    const-string v16, "audio/alac"

    goto :goto_5

    :cond_16
    const v10, 0x616c6177

    if-ne v14, v10, :cond_17

    const-string v16, "audio/g711-alaw"

    goto/16 :goto_5

    :cond_17
    const v10, 0x756c6177

    if-ne v14, v10, :cond_18

    const-string v16, "audio/g711-mlaw"

    goto/16 :goto_5

    :cond_18
    const v10, 0x4f707573

    if-ne v14, v10, :cond_19

    const-string v16, "audio/opus"

    goto/16 :goto_5

    :cond_19
    const v10, 0x664c6143

    if-ne v14, v10, :cond_1a

    const-string v16, "audio/flac"

    goto/16 :goto_5

    :cond_1a
    const/4 v10, -0x1

    const/16 v16, 0x0

    goto :goto_9

    :cond_1b
    :goto_6
    const-string v16, "audio/mpeg"

    goto/16 :goto_5

    :cond_1c
    :goto_7
    const/4 v10, 0x2

    goto :goto_9

    :cond_1d
    :goto_8
    const-string v16, "audio/vnd.dts.hd"

    goto/16 :goto_5

    :goto_9
    move-object/from16 v13, v16

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_a
    sub-int v15, v11, v1

    if-ge v15, v2, :cond_2f

    .line 20
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v15

    if-lez v15, :cond_1e

    const/4 v8, 0x1

    goto :goto_b

    :cond_1e
    const/4 v8, 0x0

    :goto_b
    const-string v1, "childAtomSize must be positive"

    .line 22
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v2, 0x6d686143

    if-ne v8, v2, :cond_1f

    add-int/lit8 v1, v15, -0xd

    .line 24
    new-array v2, v1, [B

    add-int/lit8 v8, v11, 0xd

    .line 25
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v8, 0x0

    .line 26
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    move-object/from16 v19, v1

    move/from16 v16, v10

    :goto_c
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_14

    :cond_1f
    const v2, 0x65736473

    if-eq v8, v2, :cond_2c

    if-eqz p6, :cond_23

    const v2, 0x77617665

    if-ne v8, v2, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v2

    :goto_d
    sub-int v8, v2, v11

    if-ge v8, v15, :cond_22

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    if-lez v8, :cond_20

    move/from16 v16, v10

    const/4 v10, 0x1

    goto :goto_e

    :cond_20
    move/from16 v16, v10

    const/4 v10, 0x0

    .line 30
    :goto_e
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v10

    move-object/from16 v20, v1

    const v1, 0x65736473

    if-eq v10, v1, :cond_21

    add-int/2addr v2, v8

    move/from16 v10, v16

    move-object/from16 v1, v20

    goto :goto_d

    :cond_21
    const/4 v1, -0x1

    goto :goto_f

    :cond_22
    move/from16 v16, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_f
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    goto/16 :goto_13

    :cond_23
    move/from16 v16, v10

    const v1, 0x64616333

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v11, 0x8

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 33
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzna;->zza(Lcom/google/android/gms/internal/ads/zzamf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    :goto_10
    const/16 v1, 0x14

    goto :goto_c

    :cond_24
    const v1, 0x64656333

    if-ne v8, v1, :cond_25

    add-int/lit8 v1, v11, 0x8

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 35
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzna;->zzb(Lcom/google/android/gms/internal/ads/zzamf;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_10

    :cond_25
    const v1, 0x64616334

    if-ne v8, v1, :cond_27

    add-int/lit8 v1, v11, 0x8

    .line 36
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 37
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v8

    and-int/lit8 v8, v8, 0x20

    shr-int/lit8 v8, v8, 0x5

    if-eq v2, v8, :cond_26

    const v2, 0xac44

    goto :goto_11

    :cond_26
    const v2, 0xbb80

    :goto_11
    new-instance v8, Lcom/google/android/gms/internal/ads/zzaft;

    .line 40
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 41
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 42
    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const/4 v1, 0x2

    .line 43
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 44
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 45
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 46
    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 47
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_10

    :cond_27
    const v1, 0x64647473

    if-ne v8, v1, :cond_28

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaft;

    .line 48
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 49
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 50
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 51
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 52
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 53
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 54
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    goto :goto_10

    :cond_28
    const v1, 0x644f7073

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v15, -0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzre;->zza:[B

    .line 56
    array-length v8, v2

    add-int/2addr v8, v1

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    add-int/lit8 v10, v11, 0x8

    .line 57
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 58
    array-length v2, v2

    invoke-virtual {v0, v8, v2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 59
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzop;->zza([B)Ljava/util/List;

    move-result-object v1

    move-object/from16 v19, v1

    goto/16 :goto_c

    :cond_29
    const v1, 0x64664c61

    if-ne v8, v1, :cond_2a

    add-int/lit8 v1, v15, -0xc

    add-int/lit8 v2, v1, 0x4

    .line 60
    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v10, 0x0

    .line 61
    aput-byte v8, v2, v10

    const/16 v8, 0x4c

    const/4 v10, 0x1

    .line 62
    aput-byte v8, v2, v10

    const/16 v8, 0x61

    const/16 v17, 0x2

    .line 63
    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    .line 64
    aput-byte v18, v2, v8

    add-int/lit8 v8, v11, 0xc

    .line 65
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v8, 0x4

    .line 66
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_12
    const/4 v8, 0x0

    goto/16 :goto_14

    :cond_2a
    const v1, 0x616c6163

    const/4 v10, 0x1

    const/16 v17, 0x2

    if-ne v8, v1, :cond_2b

    add-int/lit8 v2, v15, -0xc

    .line 68
    new-array v7, v2, [B

    add-int/lit8 v8, v11, 0xc

    .line 69
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 v8, 0x0

    .line 70
    invoke-virtual {v0, v7, v8, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 71
    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    .line 72
    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/zzamf;-><init>([B)V

    const/16 v9, 0x9

    .line 73
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v9

    const/16 v1, 0x14

    .line 75
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 78
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 79
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v7

    move-object/from16 v19, v7

    move v7, v9

    move v9, v2

    goto :goto_14

    :cond_2b
    const/16 v1, 0x14

    goto :goto_12

    :cond_2c
    move/from16 v16, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/16 v17, 0x2

    move v2, v11

    const/4 v1, -0x1

    :goto_13
    if-eq v2, v1, :cond_2e

    .line 81
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzre;->zzh(Lcom/google/android/gms/internal/ads/zzamf;I)Landroid/util/Pair;

    move-result-object v2

    .line 82
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .line 83
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [B

    if-eqz v2, :cond_2e

    const-string v1, "audio/mp4a-latm"

    .line 84
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 85
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzmx;->zza([B)Lcom/google/android/gms/internal/ads/zzmv;

    move-result-object v1

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzmv;->zza:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzmv;->zzb:I

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzmv;->zzc:Ljava/lang/String;

    .line 86
    :cond_2d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfoj;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfoj;

    move-result-object v19

    :cond_2e
    :goto_14
    add-int/2addr v11, v15

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v10, v16

    goto/16 :goto_a

    :cond_2f
    move/from16 v16, v10

    .line 87
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    if-nez v0, :cond_30

    if-eqz v13, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaft;

    .line 88
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 89
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzaft;->zzE(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 90
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 91
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzaft;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 92
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 93
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    move/from16 v13, v16

    .line 94
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzac(I)Lcom/google/android/gms/internal/ads/zzaft;

    move-object/from16 v1, v19

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 96
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzaft;->zzQ(Lcom/google/android/gms/internal/ads/zzn;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 97
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzaft;->zzG(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzra;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    :cond_30
    return-void
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzamf;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzamf;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    const/16 v0, 0xc

    add-int/2addr p1, v0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzj(Lcom/google/android/gms/internal/ads/zzamf;)I

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_0
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :cond_1
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzj(Lcom/google/android/gms/internal/ads/zzamf;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalt;->zze(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/mpeg"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzre;->zzj(Lcom/google/android/gms/internal/ads/zzamf;)I

    move-result p1

    .line 19
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 21
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 22
    invoke-static {v1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzamf;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzamf;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/ads/zzrv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 10
    sget-object v3, Lcom/google/android/gms/internal/ads/zzfll;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzE(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzv()I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzqx;->zze(I)I

    move-result v3

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzrv;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzrv;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzny;->zza(ZLjava/lang/String;)V

    .line 31
    sget v5, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzamf;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
