.class public final Lcom/google/android/gms/internal/ads/zzata;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzasx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzasw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaux;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zze:Lcom/google/android/gms/internal/ads/zzasy;

.field private zzf:Lcom/google/android/gms/internal/ads/zzasy;

.field private zzg:Lcom/google/android/gms/internal/ads/zzanm;

.field private zzh:Lcom/google/android/gms/internal/ads/zzanm;

.field private zzi:J

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/ads/zzasz;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzauc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzasx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzasw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzasw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzb:Lcom/google/android/gms/internal/ads/zzasw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaux;

    const/16 p2, 0x20

    .line 2
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 p1, 0x10000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzasy;

    const-wide/16 v0, 0x0

    .line 4
    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(JI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    return-void
.end method

.method private final zzo(J[BI)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzata;->zzp(J)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 2
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzasy;->zza:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    sub-int v2, p4, v0

    const/high16 v3, 0x10000

    sub-int/2addr v3, v1

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 4
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    .line 5
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzatw;->zza:[B

    invoke-static {v4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v2

    add-long/2addr p1, v4

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 6
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzasy;->zzb:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zzd(Lcom/google/android/gms/internal/ads/zzatw;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasy;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final zzp(J)V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzb:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzd(Lcom/google/android/gms/internal/ads/zzatw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasy;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzq()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final zzr()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzs()V

    :cond_0
    return-void
.end method

.method private final zzs()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 2
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzc:Z

    const/high16 v2, 0x10000

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    .line 4
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzasy;->zzc:Z

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzasy;->zza:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzasy;->zza:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    div-int/2addr v1, v2

    add-int/2addr v1, v3

    .line 5
    new-array v3, v1, [Lcom/google/android/gms/internal/ads/zzatw;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    aput-object v5, v3, v4

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasy;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    .line 7
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzauc;->zze([Lcom/google/android/gms/internal/ads/zzatw;)V

    .line 8
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasy;

    const-wide/16 v3, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzata;->zzi:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzf()V

    return-void
.end method

.method private final zzt(I)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzc:Z

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasy;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzauc;->zzc()Lcom/google/android/gms/internal/ads/zzatw;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzasy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzasy;->zzb:J

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(JI)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzasy;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzasy;->zzc:Z

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    sub-int/2addr v1, v0

    .line 4
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzanm;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzasx;->zzj(Lcom/google/android/gms/internal/ads/zzanm;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzh:Lcom/google/android/gms/internal/ads/zzanm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzk:Lcom/google/android/gms/internal/ads/zzasz;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzasz;->zzw(Lcom/google/android/gms/internal/ads/zzanm;)V

    :cond_1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaux;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzq()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    if-lez p2, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzata;->zzt(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzatw;->zza:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaux;->zzk([BII)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzi:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzi:J

    sub-int/2addr p2, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzr()V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaux;->zzj(I)V

    return-void
.end method

.method public final zzc(JIIILcom/google/android/gms/internal/ads/zzapw;)V
    .locals 12

    move-object v1, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzq()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzata;->zzi:J

    move/from16 v0, p4

    int-to-long v4, v0

    sub-long v8, v2, v4

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    move-wide v5, p1

    move v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    .line 2
    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gms/internal/ads/zzasx;->zzk(JIJILcom/google/android/gms/internal/ads/zzapw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzr()V

    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzr()V

    .line 4
    throw v0

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    move-wide v2, p1

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzasx;->zzl(J)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzapn;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzq()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzapn;->zzc(I)I

    move-result p1

    if-eq p1, v0, :cond_0

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 4
    :cond_1
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzata;->zzt(I)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzata;->zzf:Lcom/google/android/gms/internal/ads/zzasy;

    .line 5
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    .line 6
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzatw;->zza:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    invoke-virtual {p1, p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzapn;->zza([BII)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 7
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzj:I

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzi:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzata;->zzi:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzr()V

    return p1

    .line 9
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzr()V

    .line 11
    throw p1
.end method

.method public final zze(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zzb()V

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzg:Lcom/google/android/gms/internal/ads/zzanm;

    :cond_1
    return-void
.end method

.method public final zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zzc()I

    move-result v0

    return v0
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzata;->zzs()V

    :cond_0
    return-void
.end method

.method public final zzh()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zzd()Z

    move-result v0

    return v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzanm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zze()Lcom/google/android/gms/internal/ads/zzanm;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zzf()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzasx;->zzh()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzata;->zzp(J)V

    :cond_0
    return-void
.end method

.method public final zzl(JZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzasx;->zzi(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzata;->zzp(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;ZZJ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzata;->zza:Lcom/google/android/gms/internal/ads/zzasx;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zzg:Lcom/google/android/gms/internal/ads/zzanm;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzata;->zzb:Lcom/google/android/gms/internal/ads/zzasw;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzasx;->zzg(Lcom/google/android/gms/internal/ads/zzann;Lcom/google/android/gms/internal/ads/zzapg;ZZLcom/google/android/gms/internal/ads/zzanm;Lcom/google/android/gms/internal/ads/zzasw;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_e

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    const/4 v1, -0x3

    return v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapb;->zzc()Z

    move-result v1

    if-nez v1, :cond_d

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzapg;->zzc:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_1

    const/high16 v1, -0x80000000

    .line 2
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzapb;->zzf(I)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapg;->zzi()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzata;->zzb:Lcom/google/android/gms/internal/ads/zzasw;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzb:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zza(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 4
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzata;->zzo(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    const/4 v7, 0x0

    .line 5
    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    and-int/lit8 v5, v5, 0x7f

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzapg;->zza:Lcom/google/android/gms/internal/ads/zzape;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    if-nez v11, :cond_2

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    :cond_2
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    .line 6
    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zzata;->zzo(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    const/4 v6, 0x2

    .line 7
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaux;->zza(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 8
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzata;->zzo(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v6

    :cond_3
    move v11, v6

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzapg;->zza:Lcom/google/android/gms/internal/ads/zzape;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzape;->zzd:[I

    if-eqz v6, :cond_4

    array-length v10, v6

    if-ge v10, v11, :cond_5

    :cond_4
    new-array v6, v11, [I

    :cond_5
    move-object v12, v6

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzape;->zze:[I

    if-eqz v5, :cond_6

    array-length v6, v5

    if-ge v6, v11, :cond_7

    :cond_6
    new-array v5, v11, [I

    :cond_7
    move-object v13, v5

    if-eqz v9, :cond_8

    mul-int/lit8 v5, v11, 0x6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 10
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzaux;->zza(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaux;->zza:[B

    .line 11
    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzata;->zzo(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 12
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzaux;->zzi(I)V

    :goto_0
    if-ge v7, v11, :cond_9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzm()I

    move-result v5

    aput v5, v12, v7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzata;->zzc:Lcom/google/android/gms/internal/ads/zzaux;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzaux;->zzu()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 15
    :cond_8
    aput v7, v12, v7

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzb:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    .line 16
    aput v5, v13, v7

    .line 17
    :cond_9
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzd:Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzapg;->zza:Lcom/google/android/gms/internal/ads/zzape;

    .line 18
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzapw;->zzb:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzape;->zza:[B

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzape;->zza(I[I[I[B[BI)V

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzb:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    int-to-long v9, v3

    add-long/2addr v5, v9

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzb:J

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    sub-int/2addr v4, v3

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzata;->zzb:Lcom/google/android/gms/internal/ads/zzasw;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    .line 19
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzapg;->zzh(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzata;->zzb:Lcom/google/android/gms/internal/ads/zzasw;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzb:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzapg;->zzb:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzasw;->zza:I

    .line 20
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzata;->zzp(J)V

    :cond_b
    :goto_1
    if-lez v1, :cond_c

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 21
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzasy;->zza:J

    sub-long v6, v3, v6

    long-to-int v6, v6

    const/high16 v7, 0x10000

    sub-int/2addr v7, v6

    .line 22
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 23
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    .line 24
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzatw;->zza:[B

    invoke-virtual {v5, v9, v6, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v7

    add-long/2addr v3, v9

    sub-int/2addr v1, v7

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    .line 25
    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zzasy;->zzb:J

    cmp-long v6, v3, v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zzl:Lcom/google/android/gms/internal/ads/zzauc;

    .line 26
    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzauc;->zzd(Lcom/google/android/gms/internal/ads/zzatw;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/android/gms/internal/ads/zzasy;->zzd:Lcom/google/android/gms/internal/ads/zzatw;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzasy;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzata;->zze:Lcom/google/android/gms/internal/ads/zzasy;

    goto :goto_1

    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzata;->zzb:Lcom/google/android/gms/internal/ads/zzasw;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzasw;->zzc:J

    .line 27
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzata;->zzp(J)V

    :cond_d
    return v2

    :cond_e
    move-object/from16 v1, p1

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzanm;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzata;->zzg:Lcom/google/android/gms/internal/ads/zzanm;

    return v2
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzasz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzata;->zzk:Lcom/google/android/gms/internal/ads/zzasz;

    return-void
.end method
