.class public final Lcom/google/android/gms/internal/ads/zzts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zztb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzame;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzamn;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zztb;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzame;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    return-void
.end method

.method private final zzd(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    .line 3
    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    .line 4
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzamn;Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zztb;->zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zzd:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zztb;->zza()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzamf;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, p2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    if-eqz v2, :cond_0

    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zztb;->zze()V

    .line 4
    :cond_0
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    :cond_1
    move/from16 v2, p2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    if-lez v6, :cond_f

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzc:I

    if-eqz v6, :cond_e

    const/4 v7, 0x0

    if-eq v6, v5, :cond_9

    if-eq v6, v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-ne v8, v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int v7, v6, v8

    :goto_1
    if-lez v7, :cond_3

    sub-int/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v7

    add-int/2addr v7, v6

    .line 5
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzf(I)V

    :cond_3
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 6
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/ads/zztb;->zzd(Lcom/google/android/gms/internal/ads/zzamf;)V

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-eq v7, v3, :cond_8

    sub-int/2addr v7, v6

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-nez v7, :cond_8

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 7
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zztb;->zze()V

    .line 8
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    goto/16 :goto_4

    :cond_4
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzi:I

    const/16 v8, 0xa

    .line 9
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    .line 10
    invoke-direct {v0, v1, v8, v6}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzts;->zzi:I

    .line 11
    invoke-direct {v0, v1, v6, v8}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 12
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzf:Z

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 13
    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 14
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v6

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 15
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v11, 0xf

    .line 16
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 17
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    int-to-long v12, v6

    const/16 v6, 0x1e

    shl-long/2addr v12, v6

    shl-int/2addr v10, v11

    int-to-long v14, v10

    or-long/2addr v12, v14

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 18
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    int-to-long v14, v10

    or-long/2addr v12, v14

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 19
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzh:Z

    if-nez v10, :cond_5

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzg:Z

    if-eqz v10, :cond_5

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 20
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 21
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 22
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 23
    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v14

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 24
    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 25
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v15

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 26
    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    int-to-long v3, v10

    shl-long/2addr v3, v6

    shl-int/lit8 v6, v14, 0xf

    int-to-long v10, v6

    or-long/2addr v3, v10

    int-to-long v10, v15

    or-long/2addr v3, v10

    .line 27
    invoke-virtual {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzts;->zzh:Z

    :cond_5
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zze:Lcom/google/android/gms/internal/ads/zzamn;

    .line 28
    invoke-virtual {v3, v12, v13}, Lcom/google/android/gms/internal/ads/zzamn;->zze(J)J

    move-result-wide v3

    goto :goto_2

    :cond_6
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzk:Z

    if-eq v5, v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x4

    :goto_3
    or-int/2addr v2, v7

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zza:Lcom/google/android/gms/internal/ads/zztb;

    .line 29
    invoke-interface {v6, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zztb;->zzc(JI)V

    .line 30
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    const/4 v3, -0x1

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_8
    :goto_4
    move v6, v3

    move v7, v4

    goto/16 :goto_7

    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzame;->zza:[B

    const/16 v4, 0x9

    .line 31
    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzamf;[BI)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 32
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzd(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v4, 0x18

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    if-eq v3, v5, :cond_a

    const/4 v3, -0x1

    .line 34
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    move v6, v3

    move v3, v7

    const/4 v7, 0x2

    goto :goto_6

    .line 35
    :cond_a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v4, 0x8

    .line 36
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/16 v6, 0x10

    .line 37
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v3

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v7, 0x5

    .line 38
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 39
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzk:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v7, 0x2

    .line 40
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzf:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 42
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v6

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzg:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    const/4 v8, 0x6

    .line 43
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzb:Lcom/google/android/gms/internal/ads/zzame;

    .line 44
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzts;->zzi:I

    const/4 v6, -0x1

    if-nez v3, :cond_c

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    :cond_b
    :goto_5
    move v3, v7

    goto :goto_6

    :cond_c
    add-int/lit8 v3, v3, -0x3

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    if-gez v3, :cond_b

    .line 45
    iput v6, v0, Lcom/google/android/gms/internal/ads/zzts;->zzj:I

    goto :goto_5

    .line 46
    :goto_6
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzts;->zzd(I)V

    goto :goto_7

    :cond_d
    const/4 v6, -0x1

    const/4 v7, 0x2

    goto :goto_7

    :cond_e
    move v6, v3

    move v7, v4

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v3

    .line 48
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    :goto_7
    move v3, v6

    move v4, v7

    goto/16 :goto_0

    :cond_f
    return-void
.end method
