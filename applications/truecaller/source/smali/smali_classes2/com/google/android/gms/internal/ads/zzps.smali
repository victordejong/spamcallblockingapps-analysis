.class public final Lcom/google/android/gms/internal/ads/zzps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzamf;

.field private zzb:Lcom/google/android/gms/internal/ads/zznx;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzakn;

.field private zzh:Lcom/google/android/gms/internal/ads/zznv;

.field private zzi:Lcom/google/android/gms/internal/ads/zzpv;

.field private zzj:Lcom/google/android/gms/internal/ads/zzrp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zznv;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result p1

    return p1
.end method

.method private final zzf()V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzaiu;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzps;->zzg([Lcom/google/android/gms/internal/ads/zzaiu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznx;->zzC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    .line 4
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzos;-><init>(JJ)V

    .line 5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    return-void
.end method

.method private final varargs zzg([Lcom/google/android/gms/internal/ads/zzaiu;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x400

    const/4 v2, 0x4

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaft;

    .line 3
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    const-string v2, "image/jpeg"

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaiv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>([Lcom/google/android/gms/internal/ads/zzaiu;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaft;->zzL(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zze(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zze(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zznp;

    .line 4
    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zze(Lcom/google/android/gms/internal/ads/zznv;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    :cond_1
    const v2, 0xffe1

    if-ne v0, v2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zznp;

    .line 8
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzj(IZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v2, 0x6

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zznp;->zzh([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_19

    if-eq v3, v6, :cond_18

    const/4 v10, -0x1

    if-eq v3, v5, :cond_a

    const/4 v5, 0x5

    if-eq v3, v4, :cond_5

    if-eq v3, v5, :cond_1

    const/4 v1, 0x6

    if-ne v3, v1, :cond_0

    return v10

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 4
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzh:Lcom/google/android/gms/internal/ads/zznv;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzh:Lcom/google/android/gms/internal/ads/zznv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzpv;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    .line 5
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zznv;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzrp;->zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    :cond_4
    return v1

    .line 9
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    .line 10
    invoke-interface {v1, v2, v9, v6, v6}, Lcom/google/android/gms/internal/ads/zznv;->zzh([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzps;->zzf()V

    goto :goto_0

    .line 12
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    if-nez v2, :cond_7

    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzrp;

    .line 14
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzrp;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpv;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    .line 15
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzpv;-><init>(Lcom/google/android/gms/internal/ads/zznv;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzi:Lcom/google/android/gms/internal/ads/zzpv;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzrp;->zza(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpx;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzps;->zzb:Lcom/google/android/gms/internal/ads/zznx;

    .line 17
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-direct {v2, v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(JLcom/google/android/gms/internal/ads/zznx;)V

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzrp;->zzb(Lcom/google/android/gms/internal/ads/zznx;)V

    new-array v1, v6, [Lcom/google/android/gms/internal/ads/zzaiu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    .line 20
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v1, v9

    .line 21
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzps;->zzg([Lcom/google/android/gms/internal/ads/zzaiu;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    goto :goto_0

    .line 22
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzps;->zzf()V

    :goto_0
    return v9

    :cond_9
    iput-wide v7, v2, Lcom/google/android/gms/internal/ads/zzoq;->zza:J

    return v6

    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_17

    new-instance v2, Lcom/google/android/gms/internal/ads/zzamf;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    .line 23
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    move-object v6, v1

    check-cast v6, Lcom/google/android/gms/internal/ads/zznp;

    .line 24
    invoke-virtual {v6, v3, v9, v4, v9}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    if-nez v3, :cond_16

    .line 25
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 27
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzG(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zznv;->zzo()J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-nez v1, :cond_c

    :cond_b
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 28
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzpu;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v5, :cond_e

    goto :goto_1

    :cond_e
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/List;

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v10

    move-wide v11, v7

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    move v5, v9

    :goto_2
    if-ltz v2, :cond_13

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Ljava/util/List;

    .line 31
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzpt;

    .line 32
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzpt;->zza:Ljava/lang/String;

    const-string v6, "video/mp4"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    if-nez v2, :cond_f

    .line 33
    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/zzpt;->zzd:J

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x0

    goto :goto_3

    .line 34
    :cond_f
    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/zzpt;->zzc:J

    sub-long v9, v3, v9

    :goto_3
    move-wide/from16 v21, v3

    move-wide v3, v9

    move-wide/from16 v9, v21

    if-eqz v5, :cond_10

    cmp-long v6, v3, v9

    if-eqz v6, :cond_10

    sub-long v19, v9, v3

    move-wide/from16 v17, v3

    const/4 v5, 0x0

    :cond_10
    if-nez v2, :cond_11

    move-wide v13, v9

    :cond_11
    if-nez v2, :cond_12

    move-wide v11, v3

    :cond_12
    add-int/lit8 v2, v2, -0x1

    const/4 v9, 0x0

    goto :goto_2

    :cond_13
    cmp-long v2, v17, v7

    if-eqz v2, :cond_b

    cmp-long v2, v19, v7

    if-eqz v2, :cond_b

    cmp-long v2, v11, v7

    if-eqz v2, :cond_b

    cmp-long v2, v13, v7

    if-nez v2, :cond_14

    goto :goto_1

    :cond_14
    new-instance v6, Lcom/google/android/gms/internal/ads/zzakn;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzpu;->zza:J

    move-object v10, v6

    move-wide v15, v1

    .line 35
    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzakn;-><init>(JJJJJ)V

    .line 36
    :goto_4
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzps;->zzg:Lcom/google/android/gms/internal/ads/zzakn;

    if-eqz v6, :cond_15

    iget-wide v1, v6, Lcom/google/android/gms/internal/ads/zzakn;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    :cond_15
    const/4 v3, 0x0

    goto :goto_5

    :cond_16
    move v3, v9

    goto :goto_5

    .line 37
    :cond_17
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    const/4 v3, 0x0

    .line 38
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    .line 39
    :goto_5
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    return v3

    :cond_18
    move v3, v9

    .line 40
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 41
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 42
    invoke-virtual {v1, v2, v3, v5, v3}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zze:I

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    return v3

    :cond_19
    move v3, v9

    .line 44
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zznp;

    .line 45
    invoke-virtual {v1, v2, v3, v5, v3}, Lcom/google/android/gms/internal/ads/zznp;->zza([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzamf;

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzps;->zzf:J

    cmp-long v1, v1, v7

    if-eqz v1, :cond_1a

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    goto :goto_6

    .line 47
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzps;->zzf()V

    goto :goto_6

    :cond_1b
    const v2, 0xffd0

    if-lt v1, v2, :cond_1c

    const v2, 0xffd9

    if-le v1, v2, :cond_1d

    :cond_1c
    const v2, 0xff01

    if-eq v1, v2, :cond_1d

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    :cond_1d
    :goto_6
    const/4 v1, 0x0

    return v1
.end method

.method public final zzd(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzps;->zzj:Lcom/google/android/gms/internal/ads/zzrp;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzrp;->zzd(JJ)V

    :cond_1
    return-void
.end method
