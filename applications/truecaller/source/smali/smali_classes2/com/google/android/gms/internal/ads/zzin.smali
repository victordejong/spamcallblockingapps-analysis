.class public final Lcom/google/android/gms/internal/ads/zzin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzb:Lcom/google/android/gms/internal/ads/zzim;

.field private zzc:Lcom/google/android/gms/internal/ads/zzim;

.field private zzd:Lcom/google/android/gms/internal/ads/zzim;

.field private zze:J

.field private final zzf:Lcom/google/android/gms/internal/ads/zzko;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzko;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzf:Lcom/google/android/gms/internal/ads/zzko;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    const/16 p2, 0x20

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzim;

    const-wide/16 v0, 0x0

    const/high16 p2, 0x10000

    .line 2
    invoke-direct {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzim;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    return-void
.end method

.method private final zzi(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zzc:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzf:Lcom/google/android/gms/internal/ads/zzko;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzko;->zzc()Lcom/google/android/gms/internal/ads/zzkb;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzim;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    const/high16 v5, 0x10000

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzim;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zzc:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    .line 3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final zzj(I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    :cond_0
    return-void
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzim;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzim;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaf;->zzj()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v6

    move-object/from16 v7, p0

    .line 2
    invoke-static {v7, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzin;->zzm(Lcom/google/android/gms/internal/ads/zzim;J[BI)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    const/4 v8, 0x0

    .line 3
    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzaf;->zza:Lcom/google/android/gms/internal/ads/zzac;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzac;->zza:[B

    if-nez v11, :cond_0

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzac;->zza:[B

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 5
    :goto_0
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzac;->zza:[B

    .line 6
    invoke-static {v6, v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzin;->zzm(Lcom/google/android/gms/internal/ads/zzim;J[BI)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v3, v11

    if-eqz v9, :cond_1

    const/4 v5, 0x2

    .line 7
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    .line 8
    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzin;->zzm(Lcom/google/android/gms/internal/ads/zzim;J[BI)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v3, v11

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v5

    :cond_1
    move v11, v5

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzac;->zzc:[I

    if-eqz v5, :cond_2

    array-length v7, v5

    if-ge v7, v11, :cond_3

    :cond_2
    new-array v5, v11, [I

    :cond_3
    move-object v12, v5

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/zzac;->zzd:[I

    if-eqz v5, :cond_4

    array-length v7, v5

    if-ge v7, v11, :cond_5

    :cond_4
    new-array v5, v11, [I

    :cond_5
    move-object v13, v5

    if-eqz v9, :cond_6

    mul-int/lit8 v5, v11, 0x6

    .line 10
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    .line 11
    invoke-static {v6, v3, v4, v7, v5}, Lcom/google/android/gms/internal/ads/zzin;->zzm(Lcom/google/android/gms/internal/ads/zzim;J[BI)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v6

    int-to-long v14, v5

    add-long/2addr v3, v14

    .line 12
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    :goto_1
    if-ge v8, v11, :cond_7

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v5

    aput v5, v12, v8

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v5

    aput v5, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 15
    :cond_6
    aput v8, v12, v8

    iget v5, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    sub-long v14, v3, v14

    long-to-int v7, v14

    sub-int/2addr v5, v7

    .line 16
    aput v5, v13, v8

    .line 17
    :cond_7
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zziq;->zzc:Lcom/google/android/gms/internal/ads/zzow;

    .line 18
    sget v7, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    .line 19
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzow;->zzb:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzac;->zza:[B

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzow;->zza:I

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzow;->zzc:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzow;->zzd:I

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v5

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/internal/ads/zzac;->zza(I[I[I[B[BIII)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    sub-long/2addr v3, v7

    long-to-int v3, v3

    int-to-long v4, v3

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    goto :goto_2

    :cond_8
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzz;->zze()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x4

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    .line 21
    invoke-static {v6, v4, v5, v7, v3}, Lcom/google/android/gms/internal/ads/zzin;->zzm(Lcom/google/android/gms/internal/ads/zzim;J[BI)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v3

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzamf;->zzB()I

    move-result v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaf;->zzi(I)V

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    .line 24
    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzin;->zzl(Lcom/google/android/gms/internal/ads/zzim;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v3

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    sub-int/2addr v4, v2

    iput v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaf;->zze:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_a

    .line 25
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_9

    goto :goto_3

    .line 26
    :cond_9
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaf;->zze:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    .line 28
    :cond_a
    :goto_3
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaf;->zze:Ljava/nio/ByteBuffer;

    :goto_4
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zze:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    .line 29
    invoke-static {v3, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzin;->zzl(Lcom/google/android/gms/internal/ads/zzim;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    goto :goto_5

    .line 30
    :cond_b
    iget v2, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaf;->zzi(I)V

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zziq;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaf;->zzb:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zziq;->zza:I

    .line 32
    invoke-static {v6, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzin;->zzl(Lcom/google/android/gms/internal/ads/zzim;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    :goto_5
    return-object v0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzim;JLjava/nio/ByteBuffer;I)Lcom/google/android/gms/internal/ads/zzim;
    .locals 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzin;->zzn(Lcom/google/android/gms/internal/ads/zzim;J)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object p0

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkb;->zza:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzim;->zza(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzim;J[BI)Lcom/google/android/gms/internal/ads/zzim;
    .locals 5

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzin;->zzn(Lcom/google/android/gms/internal/ads/zzim;J)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object p0

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 2
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    .line 4
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkb;->zza:[B

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzim;->zza(J)I

    move-result v3

    sub-int v4, p4, v0

    .line 6
    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzim;J)Lcom/google/android/gms/internal/ads/zzim;
    .locals 2

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzim;->zze:Lcom/google/android/gms/internal/ads/zzim;

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zzc:Z

    const/high16 v2, 0x10000

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    .line 3
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzim;->zzc:Z

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzim;->zza:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzim;->zza:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    div-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 4
    new-array v3, v1, [Lcom/google/android/gms/internal/ads/zzkb;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    aput-object v5, v3, v4

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzim;->zzb()Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzf:Lcom/google/android/gms/internal/ads/zzko;

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzko;->zze([Lcom/google/android/gms/internal/ads/zzkb;)V

    .line 8
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzim;

    const-wide/16 v3, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzim;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzf:Lcom/google/android/gms/internal/ads/zzko;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzko;->zzf()V

    return-void
.end method

.method public final zzb()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzin;->zzk(Lcom/google/android/gms/internal/ads/zzim;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzim;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzin;->zzk(Lcom/google/android/gms/internal/ads/zzim;Lcom/google/android/gms/internal/ads/zzaf;Lcom/google/android/gms/internal/ads/zziq;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzim;

    return-void
.end method

.method public final zze(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzf:Lcom/google/android/gms/internal/ads/zzko;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzko;->zzd(Lcom/google/android/gms/internal/ads/zzkb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzim;->zzb()Lcom/google/android/gms/internal/ads/zzim;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzb:Lcom/google/android/gms/internal/ads/zzim;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    .line 4
    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zzim;->zza:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zza:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzc:Lcom/google/android/gms/internal/ads/zzim;

    :cond_1
    return-void
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    return-wide v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzah;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzin;->zzi(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkb;->zza:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzim;->zza(J)I

    move-result v0

    .line 4
    invoke-interface {p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzah;->zzg([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 5
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzin;->zzj(I)V

    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzamf;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzin;->zzi(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzd:Lcom/google/android/gms/internal/ads/zzim;

    .line 2
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzim;->zzd:Lcom/google/android/gms/internal/ads/zzkb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkb;->zza:[B

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzin;->zze:J

    .line 3
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzim;->zza(J)I

    move-result v1

    .line 4
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzm([BII)V

    sub-int/2addr p2, v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzin;->zzj(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
