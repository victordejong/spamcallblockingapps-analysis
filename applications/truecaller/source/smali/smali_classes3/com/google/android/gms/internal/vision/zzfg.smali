.class public final Lcom/google/android/gms/internal/vision/zzfg;
.super Lcom/google/android/gms/internal/vision/zzfe;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private limit:I

.field private pos:I

.field private tag:I

.field private final zzru:Z

.field private final zzrv:I

.field private zzrw:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 1

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;-><init>(Lcom/google/android/gms/internal/vision/zzfd;)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzru:Z

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrv:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    return-void
.end method

.method private final readByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0
.end method

.method private final zza(Lcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/zzka;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfd;->zzrr:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdw()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzee()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/4 p1, 0x1

    .line 81
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzj(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzej()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzei()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeh()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfg;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdx()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdz()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzea()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzef()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p1

    return-object p1

    .line 95
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhj;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhj;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Lcom/google/android/gms/internal/vision/zzfh;)V

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 38
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p2

    .line 40
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq p2, v1, :cond_0

    .line 41
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 42
    :cond_2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/vision/zzfg;->zzj(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 44
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 46
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 48
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method private final zzah(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method private final zzai(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
.end method

.method private final zzaj(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method private final zzak(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
.end method

.method private final zzal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
.end method

.method private final zzam(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v2, v0

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    .line 6
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzir;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/vision/zzir;->zzg(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v2, :cond_0

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    return-object v0

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    .line 13
    throw p1
.end method

.method private final zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzir;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzir;->zzg(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    return-object v1

    .line 9
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    .line 11
    throw p1
.end method

.method private final zzdt()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzek()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    if-eq v1, v0, :cond_8

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzem()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_4

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_5

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    .line 10
    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgo()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    .line 12
    :cond_7
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return v0

    .line 13
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0
.end method

.method private final zzel()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    if-eq v1, v0, :cond_b

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 5
    iput v3, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzem()J

    move-result-wide v0

    return-wide v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 7
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2

    xor-int/lit8 v0, v0, -0x80

    :goto_0
    int-to-long v2, v0

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v3, v1, 0x1

    .line 8
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v1, v3, 0x1

    .line 9
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_4

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_4
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 10
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5

    const-wide/32 v1, 0xfe03f80

    :goto_1
    xor-long v2, v3, v1

    move v1, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 11
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    const-wide v5, -0x7f01fc080L

    :goto_2
    xor-long v2, v3, v5

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v1, 0x1

    .line 12
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_7

    const-wide v1, 0x3f80fe03f80L

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x1

    .line 13
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v1, 0x1

    .line 14
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_a

    add-int/lit8 v1, v0, 0x1

    .line 15
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    goto :goto_3

    .line 16
    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgo()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    :cond_a
    move v1, v0

    :goto_3
    move-wide v2, v3

    .line 17
    :goto_4
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-wide v2

    .line 18
    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0
.end method

.method private final zzem()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgo()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0
.end method

.method private final zzen()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    return v0
.end method

.method private final zzeo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzep()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    add-int/lit8 v2, v0, 0x4

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 4
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final zzeq()J
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    add-int/lit8 v2, v0, 0x8

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 4
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzj(Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/vision/zzjs;->zzf([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgt()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1

    .line 6
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    sget-object v3, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-object p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeo()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzen()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzj(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readStringList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfg;->zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfg;->zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgb;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 6
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgb;

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzak(I)V

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 11
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    goto :goto_0

    :cond_0
    return-void

    .line 13
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 16
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 20
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzak(I)V

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 24
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 26
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 29
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 31
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 50
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfg;->zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 52
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 54
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 55
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method public final zza(Ljava/util/Map;Lcom/google/android/gms/internal/vision/zzht;Lcom/google/android/gms/internal/vision/zzgd;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzht<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 56
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 58
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    .line 59
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    .line 60
    iget v3, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v3, v1

    .line 61
    iput v3, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    .line 62
    :try_start_0
    iget-object v1, p2, Lcom/google/android/gms/internal/vision/zzht;->zzyn:Ljava/lang/Object;

    .line 63
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzht;->zzgc:Ljava/lang/Object;

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdu()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 65
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdv()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/vision/zzhc;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/vision/zzht;->zzyo:Lcom/google/android/gms/internal/vision/zzka;

    iget-object v5, p2, Lcom/google/android/gms/internal/vision/zzht;->zzgc:Ljava/lang/Object;

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 69
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/vision/zzfg;->zza(Lcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 70
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/vision/zzht;->zzym:Lcom/google/android/gms/internal/vision/zzka;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/vision/zzfg;->zza(Lcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/zzhb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdv()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 72
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/vision/zzhc;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_4
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    return-void

    :catchall_0
    move-exception p1

    .line 75
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    .line 76
    throw p1
.end method

.method public final zzb(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfg;->zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgo;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgo;

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 21
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_0

    .line 24
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 25
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 26
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 27
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzal(I)V

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 29
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_4

    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    goto :goto_0

    :cond_4
    return-void

    .line 31
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 32
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 34
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 36
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_6

    .line 37
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 38
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 39
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 40
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzal(I)V

    .line 41
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 42
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_a

    .line 43
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final zzb(Ljava/util/List;Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 45
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfg;->zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 47
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 49
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 50
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzir<",
            "TT;>;",
            "Lcom/google/android/gms/internal/vision/zzgd;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfg;->zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhq;

    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 8
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdw()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 17
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 18
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 21
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 24
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 25
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 27
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 29
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzd(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhq;

    .line 14
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 16
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 17
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdx()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 23
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 27
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 29
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 30
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 32
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 33
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 34
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 36
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 38
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 39
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzdu()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public final zzdv()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    if-eq v3, v4, :cond_7

    const/4 v1, 0x2

    if-eq v3, v1, :cond_6

    const/4 v1, 0x4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v0, 0x5

    if-ne v3, v0, :cond_1

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzah(I)V

    return v4

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object v0

    throw v0

    :cond_2
    ushr-int/2addr v0, v5

    shl-int/2addr v0, v5

    or-int/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdu()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdv()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    if-ne v0, v1, :cond_5

    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzrw:I

    return v4

    .line 8
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    .line 9
    :cond_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzah(I)V

    return v4

    :cond_7
    const/16 v0, 0x8

    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzah(I)V

    return v4

    .line 11
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->limit:I

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    sub-int/2addr v0, v2

    const/16 v3, 0xa

    if-lt v0, v3, :cond_a

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_a

    add-int/lit8 v6, v2, 0x1

    .line 13
    aget-byte v2, v0, v2

    if-ltz v2, :cond_9

    .line 14
    iput v6, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    goto :goto_2

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_0

    :cond_a
    :goto_1
    if-ge v1, v3, :cond_c

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->readByte()B

    move-result v0

    if-gez v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    return v4

    .line 16
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgo()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object v0

    throw v0

    :cond_d
    :goto_3
    return v1
.end method

.method public final zzdw()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzdx()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzdy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    return v0
.end method

.method public final zzdz()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdy()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 16
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 18
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 19
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_5
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 22
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 25
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzea()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzen()I

    move-result v0

    return v0
.end method

.method public final zzeb()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final zzec()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzj(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzed()Lcom/google/android/gms/internal/vision/zzfh;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfh;->zzrx:Lcom/google/android/gms/internal/vision/zzfh;

    return-object v0

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzai(I)V

    .line 5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->zzru:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/vision/zzfh;->zzb([BII)Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/vision/zzfh;->zza([BII)Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v1

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-object v1
.end method

.method public final zzee()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    return v0
.end method

.method public final zzef()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    return v0
.end method

.method public final zzeg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzen()I

    move-result v0

    return v0
.end method

.method public final zzeh()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeo()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzei()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v0

    return v0
.end method

.method public final zzej()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzaj(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhq;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhq;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzak(I)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdz()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 16
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzak(I)V

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 20
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 22
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 25
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzea()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzal(I)V

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 14
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_4
    return-void

    .line 16
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 19
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_6

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 23
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 24
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzal(I)V

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 27
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_a

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzff;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzff;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_3

    if-ne p1, v3, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    iget v3, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v3, p1

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v3, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    move p1, v2

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeb()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 12
    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_3

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 16
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    if-ne v0, v3, :cond_8

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 18
    iget v3, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v3, v0

    .line 19
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v3, :cond_7

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/vision/zzfg;->zzam(I)V

    return-void

    .line 22
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 23
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 25
    :cond_a
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_9

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzi(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/vision/zzfh;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_0

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzee()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 11
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 18
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzee()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 23
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzef()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 11
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 18
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzef()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 23
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgu;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_2

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeg()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 10
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 11
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzal(I)V

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 14
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_4

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_4
    return-void

    .line 16
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 17
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 19
    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_6

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 23
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 24
    :cond_9
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzal(I)V

    .line 26
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 27
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_a

    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzep()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhq;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhq;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzfg;->zzak(I)V

    .line 6
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 7
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 14
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 16
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfg;->zzak(I)V

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 20
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 22
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 23
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzeh()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 25
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgu;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzei()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 11
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 18
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzau(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzei()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 23
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method

.method public final zzp(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhq;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result p1

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, p1

    .line 6
    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge p1, v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzej()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 11
    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 13
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v0

    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    add-int/2addr v1, v0

    .line 18
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    if-ge v0, v1, :cond_5

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzel()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/vision/zzft;->zzr(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-void

    .line 20
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 21
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzej()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 23
    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfg;->zzek()I

    move-result v1

    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfg;->tag:I

    if-eq v1, v2, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfg;->pos:I

    return-void
.end method
