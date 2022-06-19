.class public final Lcom/google/android/gms/internal/vision/zzfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzis;


# instance fields
.field private tag:I

.field private zzrw:I

.field private final zzsp:Lcom/google/android/gms/internal/vision/zzft;

.field private zzsq:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/vision/zzft;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    const-string v0, "input"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzgt;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzft;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    .line 4
    iput-object p0, p1, Lcom/google/android/gms/internal/vision/zzft;->zzsi:Lcom/google/android/gms/internal/vision/zzfy;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzft;)Lcom/google/android/gms/internal/vision/zzfy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzft;->zzsi:Lcom/google/android/gms/internal/vision/zzfy;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzfy;-><init>(Lcom/google/android/gms/internal/vision/zzft;)V

    return-object v0
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

    .line 72
    sget-object v0, Lcom/google/android/gms/internal/vision/zzfx;->zzrr:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 73
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdw()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 75
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzee()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 76
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzec()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzej()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 78
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzei()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzeh()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzeg()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 81
    :pswitch_7
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdx()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdy()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdz()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzea()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzef()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzeb()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

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
    .locals 2
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
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 34
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzhj;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 35
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzhj;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/zzhj;->zzc(Lcom/google/android/gms/internal/vision/zzfh;)V

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 39
    iget p2, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, p2, :cond_0

    .line 40
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzec()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 44
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_2

    .line 45
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 46
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

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
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method private static zzak(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method private static zzal(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgs()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p0

    throw p0
.end method

.method private final zzam(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgm()Lcom/google/android/gms/internal/vision/zzhc;

    move-result-object p1

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;
    .locals 4
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

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    iget v2, v1, Lcom/google/android/gms/internal/vision/zzft;->zzsf:I

    iget v3, v1, Lcom/google/android/gms/internal/vision/zzft;->zzsg:I

    if-ge v2, v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzft;->zzas(I)I

    move-result v0

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzir;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    iget v3, v2, Lcom/google/android/gms/internal/vision/zzft;->zzsf:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/vision/zzft;->zzsf:I

    .line 8
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V

    .line 9
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzir;->zzg(Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/zzft;->zzaq(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    iget p2, p1, Lcom/google/android/gms/internal/vision/zzft;->zzsf:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/android/gms/internal/vision/zzft;->zzsf:I

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzft;->zzat(I)V

    return-object v1

    .line 13
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/vision/zzhc;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    .line 14
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
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I

    .line 2
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    ushr-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 3
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I

    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzir;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1, p0, p2}, Lcom/google/android/gms/internal/vision/zzir;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzis;Lcom/google/android/gms/internal/vision/zzgd;)V

    .line 6
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/vision/zzir;->zzg(Ljava/lang/Object;)V

    .line 7
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    iget p2, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I

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
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I

    .line 11
    throw p1
.end method


# virtual methods
.method public final getTag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readDouble()D

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readFloat()F

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

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readString()Ljava/lang/String;

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Ljava/util/List;Z)V

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

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfy;->zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

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

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfy;->zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

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

    .line 7
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgb;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 8
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgb;

    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zzak(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->readDouble()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzgb;->zzc(D)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 21
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzak(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 27
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

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

    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 48
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfy;->zzb(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 51
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
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

    .line 53
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v1

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzas(I)I

    move-result v1

    .line 56
    iget-object v2, p2, Lcom/google/android/gms/internal/vision/zzht;->zzyn:Ljava/lang/Object;

    .line 57
    iget-object v3, p2, Lcom/google/android/gms/internal/vision/zzht;->zzgc:Ljava/lang/Object;

    .line 58
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdu()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 59
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_4

    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_2

    if-eq v4, v0, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdv()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v4, Lcom/google/android/gms/internal/vision/zzhc;

    invoke-direct {v4, v6}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_1
    iget-object v4, p2, Lcom/google/android/gms/internal/vision/zzht;->zzyo:Lcom/google/android/gms/internal/vision/zzka;

    iget-object v5, p2, Lcom/google/android/gms/internal/vision/zzht;->zzgc:Ljava/lang/Object;

    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 64
    invoke-direct {p0, v4, v5, p3}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 65
    :cond_2
    iget-object v4, p2, Lcom/google/android/gms/internal/vision/zzht;->zzym:Lcom/google/android/gms/internal/vision/zzka;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Lcom/google/android/gms/internal/vision/zzka;Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/internal/vision/zzhb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzdv()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 67
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/vision/zzhc;

    invoke-direct {p1, v6}, Lcom/google/android/gms/internal/vision/zzhc;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzat(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 70
    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/vision/zzft;->zzat(I)V

    .line 71
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

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->zzho()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzin;->zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzir;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfy;->zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 4
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

    .line 15
    instance-of v0, p1, Lcom/google/android/gms/internal/vision/zzgo;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgo;

    .line 17
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_0

    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 23
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zzal(I)V

    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int v3, v1, p1

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->readFloat()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgo;->zzu(F)V

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 29
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 33
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_6

    .line 34
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 35
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzal(I)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 39
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_a

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

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 42
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfy;->zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    if-eqz v1, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 45
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    :cond_2
    :goto_0
    return-void

    .line 46
    :cond_3
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzfy;->zzd(Lcom/google/android/gms/internal/vision/zzir;Lcom/google/android/gms/internal/vision/zzgd;)Ljava/lang/Object;

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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdw()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdw()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 17
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdw()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdw()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 27
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdx()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 19
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdx()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 23
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 26
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdx()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 31
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 32
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 33
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 36
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 37
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void
.end method

.method public final zzdu()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    if-eqz v0, :cond_0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    .line 5
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v0, v0, 0x3

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final zzdv()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzrw:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/zzft;->zzar(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdw()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdx()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdy()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdz()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zze(Ljava/util/List;)V
    .locals 2
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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdy()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdy()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzea()I

    move-result v0

    return v0
.end method

.method public final zzeb()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeb()Z

    move-result v0

    return v0
.end method

.method public final zzec()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzed()Lcom/google/android/gms/internal/vision/zzfh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v0

    return-object v0
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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzef()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeg()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeh()J

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzei()I

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
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzaj(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzej()J

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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zzak(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdz()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdz()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzak(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdz()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdz()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void
.end method

.method public final zzg(Ljava/util/List;)V
    .locals 4
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
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzea()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zzal(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzea()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzal(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzea()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_a

    return-void
.end method

.method public final zzh(Ljava/util/List;)V
    .locals 2
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

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzff;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzeb()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzeb()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzff;->addBoolean(Z)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeb()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

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
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfy;->zza(Ljava/util/List;Z)V

    return-void
.end method

.method public final zzj(Ljava/util/List;)V
    .locals 2
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

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfy;->zzed()Lcom/google/android/gms/internal/vision/zzfh;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 2
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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void
.end method

.method public final zzl(Ljava/util/List;)V
    .locals 2
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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzef()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzef()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzef()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzef()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void
.end method

.method public final zzm(Ljava/util/List;)V
    .locals 4
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
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzgu;

    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzeg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zzal(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int v3, v1, p1

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzeg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v3, :cond_4

    return-void

    .line 15
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_6

    .line 20
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 21
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzal(I)V

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeg()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_a

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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzfy;->zzak(I)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzeh()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzeh()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzfy;->zzak(I)V

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzeh()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void
.end method

.method public final zzo(Ljava/util/List;)V
    .locals 2
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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzei()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzei()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/zzgu;->zzbl(I)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzei()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzei()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

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
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, p1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzej()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 9
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzej()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/zzhq;->zzac(J)V

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result p1

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq p1, v1, :cond_2

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void

    .line 15
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzee()I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v1

    add-int/2addr v1, v0

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzej()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzez()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 20
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/vision/zzfy;->zzam(I)V

    return-void

    .line 21
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzhc;->zzgr()Lcom/google/android/gms/internal/vision/zzhb;

    move-result-object p1

    throw p1

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzej()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzdt()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 24
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsp:Lcom/google/android/gms/internal/vision/zzft;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzft;->zzex()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfy;->tag:I

    if-eq v0, v1, :cond_7

    .line 26
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfy;->zzsq:I

    return-void
.end method
