.class public final Lcom/google/android/gms/internal/ads/zzuu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzut;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zznx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzox;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzuw;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzafv;

.field private final zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznx;Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzuw;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zznx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzc:Lcom/google/android/gms/internal/ads/zzuw;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzuw;->zzb:I

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzuw;->zze:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzuw;->zzd:I

    if-ne p2, p1, :cond_0

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzuw;->zzc:I

    mul-int/2addr p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zze:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaft;

    .line 3
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzaft;-><init>()V

    .line 4
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/ads/zzaft;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaft;

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzI(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzaft;->zzJ(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 7
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzO(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzuw;->zzb:I

    .line 8
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzaa(I)Lcom/google/android/gms/internal/ads/zzaft;

    iget p1, p3, Lcom/google/android/gms/internal/ads/zzuw;->zzc:I

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaft;->zzab(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 10
    invoke-virtual {p2, p5}, Lcom/google/android/gms/internal/ads/zzaft;->zzac(I)Lcom/google/android/gms/internal/ads/zzaft;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzaft;->zzah()Lcom/google/android/gms/internal/ads/zzafv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzd:Lcom/google/android/gms/internal/ads/zzafv;

    return-void

    :cond_0
    const/16 p3, 0x32

    const-string p4, "Expected block size: "

    const-string p5, "; got: "

    .line 12
    invoke-static {p3, p4, p1, p5, p2}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final zza(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzf:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzh:J

    return-void
.end method

.method public final zzb(IJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzuu;->zza:Lcom/google/android/gms/internal/ads/zznx;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzuz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzc:Lcom/google/android/gms/internal/ads/zzuw;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzuz;-><init>(Lcom/google/android/gms/internal/ads/zzuw;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zznx;->zzD(Lcom/google/android/gms/internal/ads/zzot;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzuu;->zzd:Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzox;->zzs(Lcom/google/android/gms/internal/ads/zzafv;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    .line 1
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzuu;->zze:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    long-to-int v7, v7

    move-object/from16 v8, p1

    .line 2
    invoke-static {v5, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzah;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzc:Lcom/google/android/gms/internal/ads/zzuw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzuw;->zzd:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    .line 3
    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzf:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzh:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzuw;->zzc:I

    const-wide/32 v11, 0xf4240

    int-to-long v13, v1

    .line 4
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzamq;->zzH(JJJ)J

    move-result-wide v9

    mul-int v15, v3, v2

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    sub-int/2addr v1, v15

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzb:Lcom/google/android/gms/internal/ads/zzox;

    add-long v12, v7, v9

    const/4 v14, 0x1

    const/16 v17, 0x0

    move/from16 v16, v1

    .line 5
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzox;->zzv(JIIILcom/google/android/gms/internal/ads/zzow;)V

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzh:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzh:J

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzuu;->zzg:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
