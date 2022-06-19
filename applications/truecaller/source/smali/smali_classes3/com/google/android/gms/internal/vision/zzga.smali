.class public abstract Lcom/google/android/gms/internal/vision/zzga;
.super Lcom/google/android/gms/internal/vision/zzfi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzga$zzb;,
        Lcom/google/android/gms/internal/vision/zzga$zza;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzsr:Z


# instance fields
.field public zzss:Lcom/google/android/gms/internal/vision/zzgc;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/vision/zzga;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzga;->logger:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjp;->zzij()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/vision/zzga;->zzsr:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfi;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/vision/zzfz;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzga;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/vision/zzhh;)I
    .locals 1

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzhh;->zzgf()I

    move-result p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzhh;)I
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhh;->zzgf()I

    move-result p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I
    .locals 2

    .line 9
    check-cast p0, Lcom/google/android/gms/internal/vision/zzet;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzet;->zzdl()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzir;->zzr(Ljava/lang/Object;)I

    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzet;->zzad(I)V

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private static zzaa(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzb(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzb(ID)I
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/vision/zzhh;)I
    .locals 2

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 11
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 12
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zza(ILcom/google/android/gms/internal/vision/zzhh;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(ILcom/google/android/gms/internal/vision/zzic;)I
    .locals 2

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 8
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v0

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzc(Lcom/google/android/gms/internal/vision/zzic;)I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zza(Lcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(ILjava/lang/String;)I
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzy(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzb(IZ)I
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/vision/zzfh;)I
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfh;->size()I

    move-result p0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzba(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p0

    return p0
.end method

.method public static zzbb(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzbc(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzbd(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbh(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p0

    return p0
.end method

.method public static zzbe(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzbf(I)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzbg(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbb(I)I

    move-result p0

    return p0
.end method

.method private static zzbh(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzbi(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p0

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/vision/zzfh;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzfh;->size()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzc(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/vision/zzet;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzet;->zzdl()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/vision/zzir;->zzr(Ljava/lang/Object;)I

    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzet;->zzad(I)V

    :cond_0
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/vision/zzic;)I
    .locals 1

    .line 4
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzic;->zzgf()I

    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzw(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(ILcom/google/android/gms/internal/vision/zzfh;)I
    .locals 2

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 4
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzga;->zzm(II)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x3

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzc(ILcom/google/android/gms/internal/vision/zzfh;)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzd(Lcom/google/android/gms/internal/vision/zzic;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzic;->zzgf()I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzw(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zze([B)Lcom/google/android/gms/internal/vision/zzga;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/vision/zzga$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/vision/zzga$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zzf(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzaa(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzw(J)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzf([B)I
    .locals 1

    .line 3
    array-length p0, p0

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static synthetic zzfi()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/vision/zzga;->zzsr:Z

    return v0
.end method

.method public static zzg(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(IJ)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzl(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbb(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzl(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zzm(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzn(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbh(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzo(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzp(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzq(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzba(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbb(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static zzt(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzv(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzw(J)I

    move-result p0

    return p0
.end method

.method public static zzw(J)I
    .locals 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, 0x1

    :cond_4
    return v0
.end method

.method public static zzx(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzaa(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzw(J)I

    move-result p0

    return p0
.end method

.method public static zzy(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzy(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzjs;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzjv; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzbc(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzz(J)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method


# virtual methods
.method public final zza(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzu(J)V

    return-void
.end method

.method public final zza(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzga;->zzc(IJ)V

    return-void
.end method

.method public final zza(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzk(II)V

    return-void
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/vision/zzfh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/vision/zzic;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/vision/zzic;Lcom/google/android/gms/internal/vision/zzir;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vision/zzfh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/vision/zzjv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/vision/zzga;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/vision/zzgt;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 16
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzax(I)V

    const/4 p2, 0x0

    .line 17
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzfi;->zzc([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/vision/zzga$zza; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    throw p1

    :catch_1
    move-exception p1

    .line 19
    new-instance p2, Lcom/google/android/gms/internal/vision/zzga$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/vision/zzga$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzaw(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzax(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzay(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzga;->zzbh(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzax(I)V

    return-void
.end method

.method public abstract zzaz(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/vision/zzga;->zzaa(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzga;->zza(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/vision/zzfh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/vision/zzic;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zze([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzfg()I
.end method

.method public final zzfh()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzga;->zzfg()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzg(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzh(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzi(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzj(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzga;->zzbh(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzi(II)V

    return-void
.end method

.method public abstract zzk(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzk(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzc(B)V

    return-void
.end method

.method public final zzs(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzga;->zzaz(I)V

    return-void
.end method

.method public abstract zzs(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzaa(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzga;->zzs(J)V

    return-void
.end method

.method public abstract zzu(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzx(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
