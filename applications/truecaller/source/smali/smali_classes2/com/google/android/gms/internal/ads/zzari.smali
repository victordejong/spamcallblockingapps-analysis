.class public abstract Lcom/google/android/gms/internal/ads/zzari;
.super Lcom/google/android/gms/internal/ads/zzamw;
.source "SourceFile"


# static fields
.field private static final zzb:[B


# instance fields
.field private zzA:Z

.field private zzB:I

.field private zzC:I

.field private zzD:Z

.field private zzE:Z

.field private zzF:Z

.field private zzG:Z

.field private zzH:Z

.field public zza:Lcom/google/android/gms/internal/ads/zzapf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzark;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzapg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzapg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzann;

.field private final zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzh:Landroid/media/MediaCodec$BufferInfo;

.field private zzi:Lcom/google/android/gms/internal/ads/zzanm;

.field private zzj:Landroid/media/MediaCodec;

.field private zzk:Lcom/google/android/gms/internal/ads/zzarg;

.field private zzl:Z

.field private zzm:Z

.field private zzn:Z

.field private zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Z

.field private zzu:[Ljava/nio/ByteBuffer;

.field private zzv:[Ljava/nio/ByteBuffer;

.field private zzw:J

.field private zzx:I

.field private zzy:I

.field private zzz:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzave;->zzm(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzari;->zzb:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzapl;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(I)V

    .line 2
    sget p1, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/4 p3, 0x0

    const/16 p4, 0x10

    if-lt p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzc:Lcom/google/android/gms/internal/ads/zzark;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzapg;

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzann;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzann;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    .line 6
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    return-void
.end method

.method private final zzH()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1c

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzF:Z

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    if-gez v2, :cond_2

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzu:[Ljava/nio/ByteBuffer;

    .line 2
    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzapg;->zza()V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzo:Z

    if-nez v0, :cond_3

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzE:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    .line 4
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    return v1

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzs:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzs:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzari;->zzb:[B

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    .line 6
    array-length v0, v1

    const/4 v7, 0x0

    const/16 v8, 0x26

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzD:Z

    return v4

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    if-ne v0, v4, :cond_7

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 7
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzanm;->zzh:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 8
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzanm;->zzh:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 9
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    .line 11
    invoke-virtual {p0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzamw;->zzA(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I

    move-result v5

    const/4 v6, -0x3

    if-ne v5, v6, :cond_8

    return v1

    :cond_8
    const/4 v7, -0x5

    if-ne v5, v7, :cond_a

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapg;->zza()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzN(Lcom/google/android/gms/internal/ads/zzanm;)V

    return v4

    :cond_a
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzapb;->zzc()Z

    move-result v5

    if-eqz v5, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapg;->zza()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    :cond_b
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzF:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzD:Z

    if-nez v0, :cond_c

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    return v1

    :cond_c
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzo:Z

    if-nez v0, :cond_d

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzE:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    .line 16
    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    return v1

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v1

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0

    .line 19
    :cond_e
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzH:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzapb;->zzd()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapg;->zza()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    if-ne v0, v3, :cond_f

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    :cond_f
    return v4

    :cond_10
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzH:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzapg;->zzi()Z

    move-result v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzl:Z

    if-eqz v5, :cond_17

    if-nez v3, :cond_17

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 21
    sget-object v7, Lcom/google/android/gms/internal/ads/zzauv;->zza:[B

    .line 22
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    move v8, v1

    move v9, v8

    :goto_1
    add-int/lit8 v10, v8, 0x1

    if-ge v10, v7, :cond_15

    .line 23
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x3

    if-ne v9, v12, :cond_12

    if-ne v11, v4, :cond_13

    .line 24
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit8 v11, v11, 0x1f

    const/4 v12, 0x7

    if-ne v11, v12, :cond_11

    .line 25
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    add-int/2addr v8, v6

    .line 26
    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 28
    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_11
    move v11, v4

    goto :goto_2

    :cond_12
    if-nez v11, :cond_13

    add-int/lit8 v9, v9, 0x1

    :cond_13
    :goto_2
    if-eqz v11, :cond_14

    move v9, v1

    :cond_14
    move v8, v10

    goto :goto_1

    .line 30
    :cond_15
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 31
    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-nez v5, :cond_16

    return v4

    :cond_16
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzl:Z

    :cond_17
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-wide v10, v5, Lcom/google/android/gms/internal/ads/zzapg;->zzc:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzapb;->zzb()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    .line 33
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    .line 35
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzari;->zzZ(Lcom/google/android/gms/internal/ads/zzapg;)V

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzapg;->zza:Lcom/google/android/gms/internal/ads/zzape;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzape;->zzb()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    if-nez v0, :cond_19

    goto :goto_4

    .line 36
    :cond_19
    iget-object v3, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v3, :cond_1a

    new-array v3, v4, [I

    .line 37
    iput-object v3, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 38
    :cond_1a
    iget-object v3, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v5, v3, v1

    add-int/2addr v5, v0

    aput v5, v3, v1

    .line 39
    :goto_4
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 40
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_5

    .line 41
    :cond_1b
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    .line 42
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 43
    :goto_5
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzD:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 44
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzc:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zzc:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v1

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0

    :cond_1c
    :goto_6
    return v1
.end method

.method private final zzI()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzU()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzG:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzT()V

    return-void
.end method


# virtual methods
.method public final zzD(JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    move-object/from16 v12, p0

    .line 1
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzG:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzT()V

    return-void

    :cond_0
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v13, 0x1

    if-nez v0, :cond_3

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapg;->zza()V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    .line 3
    invoke-virtual {v12, v0, v3, v13}, Lcom/google/android/gms/internal/ads/zzamw;->zzA(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    .line 4
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzN(Lcom/google/android/gms/internal/ads/zzanm;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapb;->zzc()Z

    move-result v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzari;->zzF:Z

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    :cond_2
    return-void

    .line 8
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzU()V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    if-eqz v0, :cond_13

    const-string v0, "drainAndFeed"

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Ljava/lang/String;)V

    :goto_1
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    const/4 v15, -0x1

    if-gez v0, :cond_10

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzq:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzE:Z

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    .line 10
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 11
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzG:Z

    if-eqz v0, :cond_12

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V

    goto/16 :goto_7

    .line 13
    :cond_4
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    .line 14
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    :goto_2
    if-ltz v0, :cond_a

    .line 15
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzari;->zzt:Z

    if-eqz v1, :cond_5

    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzari;->zzt:Z

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 16
    invoke-virtual {v1, v0, v14}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v15, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    goto :goto_1

    :cond_5
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    .line 17
    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    iput v15, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    goto/16 :goto_7

    .line 19
    :cond_6
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzari;->zzv:[Ljava/nio/ByteBuffer;

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    .line 20
    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    .line 21
    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    .line 22
    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_7
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    .line 23
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    .line 24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v14

    :goto_3
    if-ge v3, v2, :cond_9

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_8

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    .line 26
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v13

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    move v0, v14

    :goto_4
    iput-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzz:Z

    goto :goto_5

    :cond_a
    const/4 v1, -0x2

    if-ne v0, v1, :cond_d

    .line 27
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 28
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzari;->zzn:Z

    if-eqz v1, :cond_b

    const-string v1, "width"

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b

    const-string v1, "height"

    .line 30
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b

    iput-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzari;->zzt:Z

    goto/16 :goto_1

    :cond_b
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzari;->zzr:Z

    if-eqz v1, :cond_c

    const-string v1, "channel-count"

    .line 31
    invoke-virtual {v0, v1, v13}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 32
    invoke-virtual {v12, v1, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzO(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    goto/16 :goto_1

    :cond_d
    const/4 v1, -0x3

    if-ne v0, v1, :cond_e

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 33
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzv:[Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_e
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzo:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzF:Z

    if-nez v0, :cond_f

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 34
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    goto :goto_7

    .line 35
    :cond_10
    :goto_5
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzq:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzE:Z

    if-eqz v0, :cond_11

    :try_start_1
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzv:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    .line 36
    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/zzari;->zzz:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzari;->zzS(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 37
    :catch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzG:Z

    if-eqz v0, :cond_12

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V

    goto :goto_7

    .line 39
    :cond_11
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzv:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    .line 40
    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/zzari;->zzz:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzari;->zzS(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_12

    .line 41
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzh:Landroid/media/MediaCodec$BufferInfo;

    .line 42
    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v15, v12, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    goto/16 :goto_1

    .line 43
    :cond_12
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzH()Z

    move-result v0

    if-nez v0, :cond_12

    .line 44
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    goto :goto_8

    .line 45
    :cond_13
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzamw;->zzB(J)V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapg;->zza()V

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    .line 47
    invoke-virtual {v12, v0, v3, v14}, Lcom/google/android/gms/internal/ads/zzamw;->zzA(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;Z)I

    move-result v0

    if-ne v0, v2, :cond_14

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    .line 48
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzari;->zzN(Lcom/google/android/gms/internal/ads/zzanm;)V

    goto :goto_8

    :cond_14
    if-ne v0, v1, :cond_15

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zze:Lcom/google/android/gms/internal/ads/zzapg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapb;->zzc()Z

    move-result v0

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    iput-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzari;->zzF:Z

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->zzI()V

    .line 51
    :cond_15
    :goto_8
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapf;->zza()V

    return-void
.end method

.method public zzE()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzC()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    if-gez v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzw:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzari;->zzw:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    move v1, v2

    :cond_2
    return v1
.end method

.method public zzF()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzG:Z

    return v0
.end method

.method public final zzG(Lcom/google/android/gms/internal/ads/zzanm;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzc:Lcom/google/android/gms/internal/ads/zzark;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zzJ(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzarm; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object p1

    throw p1
.end method

.method public abstract zzJ(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarm;
        }
    .end annotation
.end method

.method public zzK(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;Z)Lcom/google/android/gms/internal/ads/zzarg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarm;
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzanm;->zzf:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzarr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzarg;

    move-result-object p1

    return-object p1
.end method

.method public abstract zzL(Lcom/google/android/gms/internal/ads/zzarg;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzanm;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarm;
        }
    .end annotation
.end method

.method public zzM(Ljava/lang/String;JJ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public zzN(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzi:Lcom/google/android/gms/internal/ads/zzapk;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzanm;->zzi:Lcom/google/android/gms/internal/ads/zzapk;

    .line 3
    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzave;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzi:Lcom/google/android/gms/internal/ads/zzapk;

    if-nez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;

    .line 8
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzarg;->zzb:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 9
    invoke-virtual {p0, p1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzari;->zzaa(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzanm;)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzA:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzn:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 10
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzj:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzanm;->zzj:I

    if-ne v3, v4, :cond_3

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzanm;->zzk:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzanm;->zzk:I

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzs:Z

    return-void

    :cond_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzD:Z

    if-eqz p1, :cond_5

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    return-void

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzU()V

    return-void
.end method

.method public zzO(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract zzS(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation
.end method

.method public zzT()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    return-void
.end method

.method public final zzU()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzc:Lcom/google/android/gms/internal/ads/zzark;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzari;->zzK(Lcom/google/android/gms/internal/ads/zzark;Lcom/google/android/gms/internal/ads/zzanm;Z)Lcom/google/android/gms/internal/ads/zzarg;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzarm; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    const v4, -0xc34f

    .line 3
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzarh;-><init>(Lcom/google/android/gms/internal/ads/zzanm;Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzarh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    const v4, -0xc34e

    .line 6
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzarh;-><init>(Lcom/google/android/gms/internal/ads/zzanm;Ljava/lang/Throwable;ZI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v0

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzari;->zzV(Lcom/google/android/gms/internal/ads/zzarg;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzarg;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 10
    sget v4, Lcom/google/android/gms/internal/ads/zzave;->zza:I

    const/16 v5, 0x15

    const/4 v10, 0x1

    if-ge v4, v5, :cond_4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzanm;->zzh:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v10

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzl:Z

    const/16 v1, 0x13

    const/16 v6, 0x12

    if-lt v4, v6, :cond_7

    if-ne v4, v6, :cond_5

    const-string v7, "OMX.SEC.avc.dec"

    .line 12
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    if-ne v4, v1, :cond_6

    sget-object v7, Lcom/google/android/gms/internal/ads/zzave;->zzd:Ljava/lang/String;

    const-string v8, "SM-G800"

    .line 13
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "OMX.Exynos.avc.dec"

    .line 14
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v10

    :goto_3
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzm:Z

    const/16 v7, 0x18

    if-ge v4, v7, :cond_a

    const-string v7, "OMX.Nvidia.h264.decode"

    .line 15
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    sget-object v7, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string v8, "flounder"

    .line 16
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "flounder_lte"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "grouper"

    .line 17
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "tilapia"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    move v7, v10

    goto :goto_4

    :cond_a
    move v7, v3

    :goto_4
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzn:Z

    const/16 v7, 0x11

    if-gt v4, v7, :cond_c

    const-string v7, "OMX.rk.video_decoder.avc"

    .line 18
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "OMX.allwinner.video.decoder.avc"

    .line 19
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    move v7, v10

    goto :goto_5

    :cond_c
    move v7, v3

    :goto_5
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzo:Z

    const/16 v7, 0x17

    if-gt v4, v7, :cond_e

    const-string v7, "OMX.google.vorbis.decoder"

    .line 20
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    :goto_6
    move v1, v10

    goto :goto_8

    :cond_e
    :goto_7
    if-gt v4, v1, :cond_f

    sget-object v1, Lcom/google/android/gms/internal/ads/zzave;->zzb:Ljava/lang/String;

    const-string v7, "hb2000"

    .line 21
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    move v1, v3

    :goto_8
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzp:Z

    if-ne v4, v5, :cond_10

    const-string v1, "OMX.google.aac.decoder"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v10

    goto :goto_9

    :cond_10
    move v1, v3

    :goto_9
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzq:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    if-gt v4, v6, :cond_11

    .line 25
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzanm;->zzr:I

    if-ne v1, v10, :cond_11

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v10

    goto :goto_a

    :cond_11
    move v1, v3

    :goto_a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzr:Z

    .line 27
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v1, "createCodec:"

    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    .line 29
    :cond_12
    new-instance v6, Ljava/lang/String;

    .line 30
    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Ljava/lang/String;)V

    .line 31
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    const-string v1, "configureCodec"

    .line 33
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 34
    invoke-virtual {p0, v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzari;->zzL(Lcom/google/android/gms/internal/ads/zzarg;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzanm;Landroid/media/MediaCrypto;)V

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    const-string v1, "startCodec"

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 37
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzavc;->zzb()V

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    move-object v4, p0

    move-object v5, v0

    .line 40
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzari;->zzM(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 41
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzu:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 42
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzv:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zze()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_c

    :cond_13
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_c
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzw:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzari;->zzH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 44
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zza:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzapf;->zza:I

    return-void

    :catch_1
    move-exception v1

    .line 45
    new-instance v2, Lcom/google/android/gms/internal/ads/zzarh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 46
    invoke-direct {v2, v4, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzarh;-><init>(Lcom/google/android/gms/internal/ads/zzanm;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzamw;->zzz()I

    move-result v0

    .line 47
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzamy;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzamy;

    move-result-object v0

    throw v0

    :cond_14
    :goto_d
    return-void
.end method

.method public zzV(Lcom/google/android/gms/internal/ads/zzarg;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final zzW()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final zzX()Lcom/google/android/gms/internal/ads/zzarg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;

    return-object v0
.end method

.method public zzY()V
    .locals 4

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzw:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzz:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzu:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzv:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzk:Lcom/google/android/gms/internal/ads/zzarg;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzm:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzs:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzt:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzE:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzd:Lcom/google/android/gms/internal/ads/zzapg;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    .line 2
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzapf;->zzb:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzapf;->zzb:I

    .line 3
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 6
    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 7
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 9
    throw v0

    :catchall_2
    move-exception v0

    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 11
    throw v0

    :cond_0
    return-void
.end method

.method public zzZ(Lcom/google/android/gms/internal/ads/zzapg;)V
    .locals 0

    return-void
.end method

.method public zzaa(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzanm;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zzq()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public zzs(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzapf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzapf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zza:Lcom/google/android/gms/internal/ads/zzapf;

    return-void
.end method

.method public zzu(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzamy;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzF:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzG:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    if-eqz p2, :cond_3

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzw:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzx:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzy:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzH:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzz:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzg:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzs:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzt:Z

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzm:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzp:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzE:Z

    if-eqz p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzC:I

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzU()V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzari;->zzj:Landroid/media/MediaCodec;

    .line 5
    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzD:Z

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzU()V

    :goto_1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzA:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    if-eqz p1, :cond_3

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzari;->zzB:I

    :cond_3
    return-void
.end method

.method public zzx()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzari;->zzi:Lcom/google/android/gms/internal/ads/zzanm;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzari;->zzY()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    throw v0
.end method
