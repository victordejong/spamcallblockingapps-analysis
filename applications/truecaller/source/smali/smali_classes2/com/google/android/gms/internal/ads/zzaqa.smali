.class public final Lcom/google/android/gms/internal/ads/zzaqa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzapy;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaqh;

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzaqc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Ljava/util/Stack;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaqh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqh;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzapn;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:[B

    .line 2
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final zza()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zza()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaqc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzapn;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zzd(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Ljava/util/Stack;

    .line 2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Ljava/util/Stack;

    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapy;->zzb(Lcom/google/android/gms/internal/ads/zzapy;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Ljava/util/Stack;

    .line 5
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapy;->zza(Lcom/google/android/gms/internal/ads/zzapy;)I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqf;->zzc(I)V

    return v1

    .line 7
    :cond_2
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 8
    invoke-virtual {v0, p1, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzaqh;->zze(Lcom/google/android/gms/internal/ads/zzapn;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzg()V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:[B

    .line 10
    invoke-virtual {p1, v0, v2, v4, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zze([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:[B

    aget-byte v0, v0, v2

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    if-gt v0, v4, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zza:[B

    .line 12
    invoke-static {v5, v0, v2}, Lcom/google/android/gms/internal/ads/zzaqh;->zzd([BIZ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaqf;->zzm(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    int-to-long v5, v5

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    goto :goto_3

    :cond_4
    :goto_4
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    return v2

    :cond_5
    long-to-int v0, v5

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    goto :goto_5

    :cond_6
    if-ne v0, v1, :cond_7

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzc:Lcom/google/android/gms/internal/ads/zzaqh;

    const/16 v5, 0x8

    .line 16
    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/google/android/gms/internal/ads/zzaqh;->zze(Lcom/google/android/gms/internal/ads/zzapn;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaqf;->zzl(I)I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_11

    const-wide/16 v5, 0x8

    if-eq v0, v3, :cond_f

    const/4 v3, 0x3

    if-eq v0, v3, :cond_c

    if-eq v0, v4, :cond_b

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_9

    cmp-long v0, v7, v5

    if-nez v0, :cond_8

    goto :goto_6

    .line 17
    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const/16 v0, 0x28

    const-string v1, "Invalid float size: "

    invoke-static {v0, v1, v7, v8}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    long-to-int v5, v7

    .line 20
    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzaqa;->zzd(Lcom/google/android/gms/internal/ads/zzapn;I)J

    move-result-wide v6

    if-ne v5, v4, :cond_a

    long-to-int p1, v6

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v4, p1

    goto :goto_7

    .line 22
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 23
    :goto_7
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 24
    invoke-virtual {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqf;->zzi(ID)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    return v1

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    long-to-int v4, v4

    .line 26
    invoke-virtual {v0, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzk(IILcom/google/android/gms/internal/ads/zzapn;)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    return v1

    .line 27
    :cond_c
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_e

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    long-to-int v3, v3

    if-nez v3, :cond_d

    const-string p1, ""

    goto :goto_8

    .line 29
    :cond_d
    new-array v4, v3, [B

    .line 30
    invoke-virtual {p1, v4, v2, v3, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zzb([BIIZ)Z

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([B)V

    .line 31
    :goto_8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 32
    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzaqf;->zzj(ILjava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    return v1

    .line 33
    :cond_e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const/16 v0, 0x29

    const-string v1, "String element size: "

    invoke-static {v0, v1, v3, v4}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_f
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_10

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    long-to-int v3, v3

    .line 37
    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzaqa;->zzd(Lcom/google/android/gms/internal/ads/zzapn;I)J

    move-result-wide v3

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 38
    invoke-virtual {p1, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzaqf;->zzh(IJ)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    return v1

    .line 39
    :cond_10
    new-instance p1, Lcom/google/android/gms/internal/ads/zzanp;

    const/16 v0, 0x2a

    const-string v1, "Invalid integer size: "

    invoke-static {v0, v1, v3, v4}, Le/d/c/a/a;->O1(ILjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzanp;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzapn;->zzh()J

    move-result-wide v5

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzb:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapy;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    add-long/2addr v3, v5

    const/4 v8, 0x0

    .line 42
    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzapy;-><init>(IJLcom/google/android/gms/internal/ads/zzapz;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzg:Lcom/google/android/gms/internal/ads/zzaqc;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zze:I

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzaqc;->zza:Lcom/google/android/gms/internal/ads/zzaqf;

    .line 43
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzaqf;->zzb(IJJ)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    return v1

    :cond_12
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzf:J

    long-to-int v0, v3

    .line 44
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzapn;->zzd(IZ)Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqa;->zzd:I

    goto/16 :goto_1
.end method
