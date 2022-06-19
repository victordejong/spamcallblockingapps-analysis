.class public final Lcom/google/android/gms/internal/ads/zztg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztb;


# static fields
.field private static final zza:[F


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzuq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzamf;

.field private final zzd:[Z

.field private final zze:Lcom/google/android/gms/internal/ads/zzte;

.field private final zzf:Lcom/google/android/gms/internal/ads/zztq;

.field private zzg:Lcom/google/android/gms/internal/ads/zztf;

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/ads/zzox;

.field private zzk:Z

.field private zzl:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zztg;->zza:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zztg;-><init>(Lcom/google/android/gms/internal/ads/zzuq;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuq;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzb:Lcom/google/android/gms/internal/ads/zzuq;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzd:[Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzte;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzte;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zze:Lcom/google/android/gms/internal/ads/zzte;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzl:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zztq;

    const/16 v1, 0xb2

    .line 3
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zztq;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzamf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzd:[Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalw;->zze([Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zze:Lcom/google/android/gms/internal/ads/zzte;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzte;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztf;->zza()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zztq;->zza()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzl:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zza()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzi:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzun;->zzb()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznx;->zzB(II)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztf;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zztf;-><init>(Lcom/google/android/gms/internal/ads/zzox;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzb:Lcom/google/android/gms/internal/ads/zzuq;

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzuq;->zza(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzun;)V

    return-void
.end method

.method public final zzc(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzl:J

    :cond_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzamf;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zze(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zze()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzh:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzd()I

    move-result v5

    move-object/from16 v6, p1

    .line 3
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzamf;I)V

    :goto_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzd:[Z

    .line 4
    invoke-static {v3, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzalw;->zzd([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_1

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zze:Lcom/google/android/gms/internal/ads/zzte;

    .line 5
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzte;->zzc([BII)V

    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    .line 6
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zztf;->zzc([BII)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 7
    invoke-virtual {v4, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    return-void

    :cond_1
    add-int/lit8 v5, v4, 0x3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    .line 8
    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Z

    if-nez v9, :cond_c

    if-lez v8, :cond_2

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zze:Lcom/google/android/gms/internal/ads/zzte;

    .line 9
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzte;->zzc([BII)V

    :cond_2
    if-gez v8, :cond_3

    neg-int v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zztg;->zze:Lcom/google/android/gms/internal/ads/zzte;

    .line 10
    invoke-virtual {v12, v7, v9}, Lcom/google/android/gms/internal/ads/zzte;->zzb(II)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zzj:Lcom/google/android/gms/internal/ads/zzox;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zztg;->zze:Lcom/google/android/gms/internal/ads/zzte;

    iget v13, v12, Lcom/google/android/gms/internal/ads/zzte;->zzb:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zztg;->zzi:Ljava/lang/String;

    .line 11
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v15, v12, Lcom/google/android/gms/internal/ads/zzte;->zzc:[B

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzte;->zza:I

    .line 13
    invoke-static {v15, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    new-instance v15, Lcom/google/android/gms/internal/ads/zzame;

    .line 14
    array-length v10, v12

    invoke-direct {v15, v12, v10}, Lcom/google/android/gms/internal/ads/zzame;-><init>([BI)V

    .line 15
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzk(I)V

    const/4 v10, 0x4

    .line 16
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzk(I)V

    .line 17
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    const/16 v13, 0x8

    .line 18
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 19
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v16

    const/4 v11, 0x3

    if-eqz v16, :cond_4

    .line 20
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 21
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 22
    :cond_4
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v11, 0xf

    if-ne v10, v11, :cond_6

    .line 23
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v10

    .line 24
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v13

    if-nez v13, :cond_5

    goto :goto_2

    :cond_5
    int-to-float v10, v10

    int-to-float v13, v13

    div-float v16, v10, v13

    goto :goto_2

    :cond_6
    const/4 v13, 0x7

    if-ge v10, v13, :cond_7

    .line 25
    sget-object v13, Lcom/google/android/gms/internal/ads/zztg;->zza:[F

    .line 26
    aget v16, v13, v10

    :cond_7
    :goto_2
    move/from16 v10, v16

    .line 27
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v13

    const/4 v11, 0x2

    if-eqz v13, :cond_8

    .line 28
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    const/4 v13, 0x1

    .line 29
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 30
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0xf

    .line 31
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 32
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    .line 33
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 34
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    .line 35
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 36
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    const/4 v11, 0x3

    .line 37
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    const/16 v11, 0xb

    .line 38
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 39
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    .line 40
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 41
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    const/4 v11, 0x2

    .line 42
    :cond_8
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v11

    .line 43
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    const/16 v11, 0x10

    .line 44
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v11

    .line 45
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    .line 46
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zzg()Z

    move-result v13

    if-eqz v13, :cond_b

    if-nez v11, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v11, v11, -0x1

    const/4 v13, 0x0

    :goto_3
    if-lez v11, :cond_a

    add-int/lit8 v13, v13, 0x1

    shr-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 47
    :cond_a
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzame;->zzf(I)V

    .line 48
    :cond_b
    :goto_4
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    const/16 v11, 0xd

    .line 49
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v13

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    .line 51
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzame;->zzh(I)I

    move-result v11

    .line 52
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    .line 53
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzame;->zze()V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzaft;

    .line 54
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 55
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzaft;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    const-string v14, "video/mp4v-es"

    .line 56
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 57
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzaft;->zzS(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 58
    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/ads/zzaft;->zzT(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 59
    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzW(F)Lcom/google/android/gms/internal/ads/zzaft;

    .line 60
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzaft;->zzP(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 61
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object v10

    .line 62
    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Z

    :cond_c
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    .line 63
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zztf;->zzc([BII)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    if-lez v8, :cond_d

    .line 64
    invoke-virtual {v9, v3, v1, v4}, Lcom/google/android/gms/internal/ads/zztq;->zzd([BII)V

    const/4 v10, 0x0

    goto :goto_5

    :cond_d
    neg-int v10, v8

    :goto_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 65
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zztq;->zze(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    iget v1, v1, Lcom/google/android/gms/internal/ads/zztq;->zzb:I

    .line 66
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzalw;->zza([BI)I

    move-result v1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zztg;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 67
    sget v9, Lcom/google/android/gms/internal/ads/zzamq;->zza:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zztq;->zza:[B

    invoke-virtual {v8, v9, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzb([BI)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzb:Lcom/google/android/gms/internal/ads/zzuq;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztg;->zzl:J

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zztg;->zzc:Lcom/google/android/gms/internal/ads/zzamf;

    .line 68
    invoke-virtual {v1, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzuq;->zzb(JLcom/google/android/gms/internal/ads/zzamf;)V

    :cond_e
    const/16 v1, 0xb2

    if-ne v7, v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v7

    add-int/lit8 v8, v4, 0x2

    .line 69
    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zztg;->zzf:Lcom/google/android/gms/internal/ads/zztq;

    .line 70
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zztq;->zzc(I)V

    :cond_f
    move v7, v1

    :cond_10
    sub-int v1, v2, v4

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztg;->zzh:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    int-to-long v10, v1

    sub-long/2addr v8, v10

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zztg;->zzk:Z

    .line 71
    invoke-virtual {v4, v8, v9, v1, v10}, Lcom/google/android/gms/internal/ads/zztf;->zzd(JIZ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zztg;->zzg:Lcom/google/android/gms/internal/ads/zztf;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zztg;->zzl:J

    .line 72
    invoke-virtual {v1, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zztf;->zzb(IJ)V

    move v1, v5

    goto/16 :goto_0
.end method

.method public final zze()V
    .locals 0

    return-void
.end method
