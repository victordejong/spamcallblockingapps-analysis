.class public abstract Lcom/facebook/ads/redexgen/X/39;
.super Lcom/facebook/ads/redexgen/X/Df;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$AdaptationWorkaroundMode;,
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$ReinitializationState;,
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$ReconfigurationState;,
        Lcom/facebook/ads/internal/exoplayer2/mediacodec/MediaCodecRenderer$KeepCodecResult;,
        Lcom/facebook/ads/redexgen/X/Dp;
    }
.end annotation


# static fields
.field public static A0d:[B

.field public static A0e:[Ljava/lang/String;

.field public static final A0f:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaCodec;

.field public A07:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A08:Lcom/facebook/ads/redexgen/X/C8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C8<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Lcom/facebook/ads/redexgen/X/C8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C8<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;"
        }
    .end annotation
.end field

.field public A0A:Lcom/facebook/ads/redexgen/X/Dn;

.field public A0B:Ljava/nio/ByteBuffer;

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:Z

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:[Ljava/nio/ByteBuffer;

.field public A0T:[Ljava/nio/ByteBuffer;

.field public A0U:Lcom/facebook/ads/redexgen/X/Bj;

.field public final A0V:Landroid/media/MediaCodec$BufferInfo;

.field public final A0W:Lcom/facebook/ads/redexgen/X/AM;

.field public final A0X:Lcom/facebook/ads/redexgen/X/WZ;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/WZ;

.field public final A0Z:Lcom/facebook/ads/redexgen/X/C9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;"
        }
    .end annotation
.end field

.field public final A0a:Lcom/facebook/ads/redexgen/X/Dt;

.field public final A0b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final A0c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "9OVkIR1fNYEoLuJhr4v44UGIqobat2iA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rvjyAE4a8qg3Symxb7ylQnmZk1yEw18g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yq3KpxRuPN0WZ8jbU7FQkuT3q90s4j9W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QhWwoh5s4IWFZsopFlKjqr3qYdcDlMjY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "GXhQrMO3EYw7GpvgdmF2LLQyblaoRrya"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HarHLo3NfHHJ1sn22D42qgtNJjG4ySv5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mWzZtnKFhVqOEEmQC7RHyJpmfpW8oE62"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x54zHbOQHTTVCgIECmCrfbqAOALLU5ir"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    .line 7659
    invoke-static {}, Lcom/facebook/ads/redexgen/X/39;->A0j()V

    const/16 v2, 0x3b

    const/16 v1, 0x4c

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Il;->A0h(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/39;->A0f:[B

    .line 7660
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;Z)V
    .locals 3
    .param p3    # Lcom/facebook/ads/redexgen/X/C9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/Dt;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;Z)V"
        }
    .end annotation

    .line 7661
    .local v1, "drmSessionManager":Lcom/facebook/ads/redexgen/X/C9;, "Lcom/facebook/ads/internal/exoplayer2/drm/DrmSessionManager<Lcom/facebook/ads/internal/exoplayer2/drm/FrameworkMediaCrypto;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Df;-><init>(I)V

    .line 7662
    sget v2, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/4 v1, 0x0

    const/16 v0, 0x10

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 7663
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Dt;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0a:Lcom/facebook/ads/redexgen/X/Dt;

    .line 7664
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    .line 7665
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/39;->A0c:Z

    .line 7666
    new-instance v0, Lcom/facebook/ads/redexgen/X/WZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WZ;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    .line 7667
    invoke-static {}, Lcom/facebook/ads/redexgen/X/WZ;->A02()Lcom/facebook/ads/redexgen/X/WZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    .line 7668
    new-instance v0, Lcom/facebook/ads/redexgen/X/AM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    .line 7669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    .line 7670
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 7671
    iput v1, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7672
    iput v1, p0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    .line 7673
    return-void

    .line 7674
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0W(Ljava/lang/String;)I
    .locals 5

    .line 7675
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x19

    if-gt v1, v0, :cond_1

    .line 7676
    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7677
    const/16 v4, 0x271

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "rXHSxRetqBcaMazmAuD1LrMN32rrN6yB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "PYELojq5TDB6rkMOhN6BPW4xOGIFZ2Jw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x7

    const/16 v0, 0x8

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7678
    const/16 v2, 0x255

    const/4 v1, 0x7

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7679
    const/16 v2, 0x25c

    const/4 v1, 0x7

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7680
    const/16 v2, 0x26a

    const/4 v1, 0x7

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7681
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 7682
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_5

    .line 7683
    const/16 v2, 0x152

    const/16 v1, 0x16

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v2, 0x168

    const/16 v1, 0x1d

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 7684
    const/16 v2, 0x2ab

    const/16 v1, 0x8

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v4, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 7685
    const/16 v2, 0x2b3

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "EJTrH92MD698cCrSnGocCFo99KF41O7G"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 7686
    const/16 v2, 0x2bf

    const/4 v1, 0x7

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 7687
    const/16 v2, 0x2dc

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7688
    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7689
    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private final A0X()J
    .locals 2

    .line 7690
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static A0Y(Lcom/facebook/ads/redexgen/X/WZ;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 4

    .line 7691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WZ;->A02:Lcom/facebook/ads/redexgen/X/Bh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bh;->A02()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 7692
    .local p0, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    if-nez p1, :cond_0

    .line 7693
    return-object v3

    .line 7694
    :cond_0
    iget-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    .line 7695
    const/4 p0, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "UbtyB27B24Biu3n6sBWjRVSN4hFFB4s1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, p0, [I

    iput-object v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 7696
    :cond_1
    iget-object v2, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v0, v2, v1

    add-int/2addr v0, p1

    aput v0, v2, v1

    .line 7697
    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0Z(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0d:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0a(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 7698
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 7699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 7700
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0S:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0b(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 7701
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 7702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 7703
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0T:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private A0c()V
    .locals 2

    .line 7704
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 7705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0S:[Ljava/nio/ByteBuffer;

    .line 7706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0T:[Ljava/nio/ByteBuffer;

    .line 7707
    :cond_0
    return-void
.end method

.method private A0d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7708
    iget v1, p0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 7709
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V

    .line 7710
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1I()V

    .line 7711
    :goto_0
    return-void

    .line 7712
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0N:Z

    .line 7713
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1H()V

    goto :goto_0
.end method

.method private A0e()V
    .locals 2

    .line 7714
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 7715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0T:[Ljava/nio/ByteBuffer;

    .line 7716
    :cond_0
    return-void
.end method

.method private A0f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 7718
    .local p0, "format":Landroid/media/MediaFormat;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 7719
    const/16 v2, 0x2e3

    const/4 v1, 0x5

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    .line 7720
    const/16 v2, 0x2cc

    const/4 v1, 0x6

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 7721
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0O:Z

    .line 7722
    return-void

    .line 7723
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0I:Z

    if-eqz v0, :cond_1

    .line 7724
    const/16 v2, 0x278

    const/16 v1, 0xd

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 7725
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/39;->A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 7726
    return-void
.end method

.method private A0g()V
    .locals 2

    .line 7727
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 7728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0S:[Ljava/nio/ByteBuffer;

    .line 7729
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0T:[Ljava/nio/ByteBuffer;

    .line 7730
    :cond_0
    return-void
.end method

.method private A0h()V
    .locals 2

    .line 7731
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    .line 7732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    .line 7733
    return-void
.end method

.method private A0i()V
    .locals 1

    .line 7734
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:I

    .line 7735
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0B:Ljava/nio/ByteBuffer;

    .line 7736
    return-void
.end method

.method public static A0j()V
    .locals 1

    const/16 v0, 0x2e8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/39;->A0d:[B

    return-void

    :array_0
    .array-data 1
        0x4ct
        0x40t
        0x2t
        0x15t
        0x14t
        0x40t
        0xet
        0xft
        0x40t
        0x13t
        0x5t
        0x3t
        0x15t
        0x12t
        0x5t
        0x40t
        0x4t
        0x5t
        0x3t
        0xft
        0x4t
        0x5t
        0x12t
        0x40t
        0x1t
        0x16t
        0x1t
        0x9t
        0xct
        0x1t
        0x2t
        0xct
        0x5t
        0x4et
        0x40t
        0x34t
        0x12t
        0x19t
        0x9t
        0xet
        0x7t
        0x40t
        0x14t
        0xft
        0x40t
        0x10t
        0x12t
        0xft
        0x3t
        0x5t
        0x5t
        0x4t
        0x40t
        0x17t
        0x9t
        0x14t
        0x8t
        0x40t
        0x76t
        0x74t
        0x74t
        0x74t
        0x74t
        0x74t
        0x75t
        0x72t
        0x73t
        0x70t
        0x76t
        0x7t
        0x74t
        0x74t
        0x6t
        0x0t
        0x5t
        0x76t
        0x71t
        0x7dt
        0x74t
        0x74t
        0x74t
        0x74t
        0x74t
        0x74t
        0x75t
        0x72t
        0x7ct
        0x7t
        0x1t
        0x74t
        0x2t
        0x75t
        0x77t
        0x76t
        0x74t
        0x74t
        0x74t
        0x74t
        0x74t
        0x74t
        0x75t
        0x72t
        0x71t
        0x7ct
        0x7ct
        0x7ct
        0x70t
        0x74t
        0x0t
        0x7t
        0x1t
        0x73t
        0x75t
        0x75t
        0x7ct
        0x5t
        0x74t
        0x74t
        0x74t
        0x76t
        0x2t
        0x6t
        0x2t
        0x75t
        0x7t
        0x77t
        0x75t
        0x7t
        0x77t
        0x76t
        0x73t
        0x71t
        0x0t
        0x73t
        0x7ct
        0x7t
        0x0t
        0x12t
        0x4t
        0xft
        0x8t
        0x1at
        0x3t
        0x1dt
        0x1at
        0x8t
        0xft
        0x75t
        0x59t
        0x55t
        0x4et
        0x5bt
        0x5at
        0x22t
        0x14t
        0xbt
        0x46t
        0x15t
        0x3t
        0x15t
        0x15t
        0xft
        0x9t
        0x8t
        0x46t
        0x14t
        0x3t
        0x17t
        0x13t
        0xft
        0x14t
        0x3t
        0x15t
        0x46t
        0x15t
        0x3t
        0x5t
        0x13t
        0x14t
        0x3t
        0x46t
        0x2t
        0x3t
        0x5t
        0x9t
        0x2t
        0x3t
        0x14t
        0x46t
        0x0t
        0x9t
        0x14t
        0x46t
        0x3et
        0x16t
        0x17t
        0x1at
        0x12t
        0x53t
        0x1t
        0x16t
        0x2t
        0x6t
        0x1at
        0x1t
        0x16t
        0x0t
        0x53t
        0x12t
        0x53t
        0x37t
        0x1t
        0x1et
        0x20t
        0x16t
        0x0t
        0x0t
        0x1at
        0x1ct
        0x1dt
        0x3et
        0x12t
        0x1dt
        0x12t
        0x14t
        0x16t
        0x1t
        0x7dt
        0x55t
        0x54t
        0x59t
        0x51t
        0x73t
        0x5ft
        0x54t
        0x55t
        0x53t
        0x62t
        0x55t
        0x5et
        0x54t
        0x55t
        0x42t
        0x55t
        0x42t
        0x7dt
        0x7ft
        0x6at
        0x1ct
        0x77t
        0x4at
        0x4bt
        0x5ct
        0x5dt
        0x41t
        0x1ct
        0x53t
        0x44t
        0x51t
        0x1ct
        0x56t
        0x57t
        0x51t
        0x1bt
        0x19t
        0xct
        0x7at
        0x11t
        0x2ct
        0x2dt
        0x3at
        0x3bt
        0x27t
        0x7at
        0x35t
        0x22t
        0x37t
        0x7at
        0x30t
        0x31t
        0x37t
        0x7at
        0x27t
        0x31t
        0x37t
        0x21t
        0x26t
        0x31t
        0x4at
        0x48t
        0x5dt
        0x2bt
        0x48t
        0x51t
        0x4et
        0x2bt
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0x2bt
        0x41t
        0x40t
        0x46t
        0x4at
        0x41t
        0x40t
        0x57t
        0x2bt
        0x48t
        0x55t
        0x36t
        0x7ft
        0x7dt
        0x68t
        0x1et
        0x7dt
        0x64t
        0x7bt
        0x1et
        0x66t
        0x79t
        0x74t
        0x75t
        0x7ft
        0x1et
        0x74t
        0x75t
        0x73t
        0x7ft
        0x74t
        0x75t
        0x62t
        0x1et
        0x71t
        0x66t
        0x73t
        0x3t
        0x1t
        0x14t
        0x62t
        0x2t
        0x3at
        0x25t
        0x28t
        0x25t
        0x2dt
        0x62t
        0x24t
        0x7et
        0x7at
        0x78t
        0x62t
        0x28t
        0x29t
        0x2ft
        0x23t
        0x28t
        0x29t
        0x2ft
        0x2dt
        0x38t
        0x4et
        0x2et
        0x16t
        0x9t
        0x4t
        0x9t
        0x1t
        0x4et
        0x8t
        0x52t
        0x56t
        0x54t
        0x4et
        0x4t
        0x5t
        0x3t
        0xft
        0x4t
        0x5t
        0x4et
        0x13t
        0x5t
        0x3t
        0x15t
        0x12t
        0x5t
        0x79t
        0x7bt
        0x6et
        0x18t
        0x65t
        0x73t
        0x75t
        0x18t
        0x57t
        0x40t
        0x55t
        0x18t
        0x52t
        0x53t
        0x55t
        0x48t
        0x4at
        0x5ft
        0x29t
        0x54t
        0x42t
        0x44t
        0x29t
        0x66t
        0x71t
        0x64t
        0x29t
        0x63t
        0x62t
        0x64t
        0x29t
        0x74t
        0x62t
        0x64t
        0x72t
        0x75t
        0x62t
        0x2dt
        0x2ft
        0x3at
        0x4ct
        0x3t
        0xet
        0xet
        0x15t
        0xbt
        0xct
        0xct
        0x7t
        0x10t
        0x4ct
        0x14t
        0xbt
        0x6t
        0x7t
        0xdt
        0x4ct
        0x6t
        0x7t
        0x1t
        0xdt
        0x6t
        0x7t
        0x10t
        0x4ct
        0x3t
        0x14t
        0x1t
        0x1t
        0x3t
        0x16t
        0x60t
        0x2ft
        0x23t
        0x22t
        0x21t
        0x29t
        0x27t
        0x2dt
        0x60t
        0x2ft
        0x38t
        0x2dt
        0x60t
        0x2at
        0x2bt
        0x2dt
        0x21t
        0x2at
        0x2bt
        0x3ct
        0x60t
        0x2ft
        0x39t
        0x2bt
        0x3dt
        0x21t
        0x23t
        0x2bt
        0x3ft
        0x3dt
        0x28t
        0x5et
        0x11t
        0x1dt
        0x1ct
        0x1ft
        0x17t
        0x19t
        0x13t
        0x5et
        0x11t
        0x6t
        0x13t
        0x5et
        0x14t
        0x15t
        0x13t
        0x1ft
        0x14t
        0x15t
        0x2t
        0x5et
        0x11t
        0x7t
        0x15t
        0x3t
        0x1ft
        0x1dt
        0x15t
        0x5et
        0x3t
        0x15t
        0x13t
        0x5t
        0x2t
        0x15t
        0x79t
        0x7bt
        0x6et
        0x18t
        0x51t
        0x59t
        0x59t
        0x51t
        0x5at
        0x53t
        0x18t
        0x57t
        0x57t
        0x55t
        0x18t
        0x52t
        0x53t
        0x55t
        0x59t
        0x52t
        0x53t
        0x44t
        0x1et
        0x1ct
        0x9t
        0x7ft
        0x36t
        0x3et
        0x3et
        0x36t
        0x3dt
        0x34t
        0x7ft
        0x27t
        0x3et
        0x23t
        0x33t
        0x38t
        0x22t
        0x7ft
        0x35t
        0x34t
        0x32t
        0x3et
        0x35t
        0x34t
        0x23t
        0x2t
        0x0t
        0x15t
        0x63t
        0x3ft
        0x26t
        0x63t
        0x3bt
        0x24t
        0x29t
        0x28t
        0x22t
        0x12t
        0x29t
        0x28t
        0x2et
        0x22t
        0x29t
        0x28t
        0x3ft
        0x63t
        0x2ct
        0x3bt
        0x2et
        0x70t
        0x6et
        0xet
        0x62t
        0x16t
        0x12t
        0x13t
        0x29t
        0x37t
        0x57t
        0x3bt
        0x4ft
        0x48t
        0x4at
        0x6at
        0x74t
        0x14t
        0x7et
        0x1t
        0x9t
        0x9t
        0x74t
        0x6at
        0xat
        0x6dt
        0x10t
        0x17t
        0x17t
        0x4ft
        0x51t
        0x31t
        0x48t
        0x29t
        0x24t
        0x29t
        0x6at
        0x61t
        0x68t
        0x67t
        0x67t
        0x6ct
        0x65t
        0x24t
        0x6at
        0x66t
        0x7ct
        0x67t
        0x7dt
        0x3ft
        0x33t
        0x32t
        0x3at
        0x35t
        0x3bt
        0x29t
        0x2et
        0x39t
        0x1ft
        0x33t
        0x38t
        0x39t
        0x3ft
        0xft
        0x1et
        0x9t
        0xdt
        0x18t
        0x9t
        0x2ft
        0x3t
        0x8t
        0x9t
        0xft
        0x56t
        0x60t
        0x76t
        0x65t
        0x6dt
        0x6at
        0x45t
        0x6at
        0x60t
        0x42t
        0x61t
        0x61t
        0x60t
        0x53t
        0x59t
        0x5at
        0x40t
        0x5bt
        0x51t
        0x50t
        0x47t
        0x18t
        0x12t
        0x11t
        0xbt
        0x10t
        0x1at
        0x1bt
        0xct
        0x21t
        0x12t
        0xat
        0x1bt
        0x5t
        0x10t
        0xdt
        0x17t
        0x12t
        0x7t
        0x10t
        0x2bt
        0x21t
        0x71t
        0x73t
        0x73t
        0x73t
        0x2dt
        0x20t
        0x2ct
        0x22t
        0x2dt
        0x31t
        0x3t
        0x4t
        0x11t
        0x2t
        0x4t
        0x33t
        0x1ft
        0x14t
        0x15t
        0x13t
        0x71t
        0x6ct
        0x69t
        0x64t
        0x75t
        0x6ct
        0x64t
        0x65t
        0x7bt
        0x76t
        0x66t
        0x7at
    .end array-data
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/Dp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method private A0l()Z
    .locals 4

    .line 7738
    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A05:Ljava/lang/String;

    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7739
    const/16 v2, 0x8b

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7740
    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 7741
    :goto_0
    return v0

    .line 7742
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz v3, :cond_0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    iget-boolean v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0M:Z

    if-eqz v1, :cond_1

    .line 7744
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/39;
    .end local v1
    .end local v4
    .end local v1
    :cond_0
    return v2

    .line 7745
    :cond_1
    iget v1, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    if-gez v1, :cond_4

    .line 7746
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    sget-object v5, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v3, v5, v1

    const/4 v1, 0x2

    aget-object v5, v5, v1

    const/16 v1, 0x12

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v3, v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v3, "gQzx4TFbVNXWekZHluF6rXwSB7aSC649"

    const/4 v1, 0x4

    aput-object v3, v5, v1

    const-string v3, "pumVl6xOmt3y36mN6IFaiDMopgC1sMMY"

    const/4 v1, 0x2

    aput-object v3, v5, v1

    iput v6, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    .line 7747
    iget v1, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    if-gez v1, :cond_3

    .line 7748
    return v2

    .line 7749
    :cond_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/39;->A0a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    .line 7750
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 7751
    :cond_4
    iget v3, v0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    const/4 v1, 0x1

    if-ne v3, v1, :cond_6

    .line 7752
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0G:Z

    if-eqz v3, :cond_5

    .line 7753
    :goto_0
    iput v4, v0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    .line 7754
    return v2

    .line 7755
    :cond_5
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0K:Z

    .line 7756
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 7757
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    goto :goto_0

    .line 7758
    :cond_6
    iget-boolean v7, v0, Lcom/facebook/ads/redexgen/X/39;->A0C:Z

    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v5, v6, v3

    const/4 v3, 0x0

    aget-object v6, v6, v3

    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v5, v3, :cond_7

    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v5, "Ndd3Pb72eNV67a4mtpsnNG62fqZf8mld"

    const/4 v3, 0x5

    aput-object v5, v6, v3

    if-eqz v7, :cond_8

    .line 7759
    :goto_1
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0C:Z

    .line 7760
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0f:[B

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7761
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0f:[B

    array-length v6, v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 7762
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    .line 7763
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0J:Z

    .line 7764
    return v1

    :cond_7
    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v5, "wWjpHbTO1A0kh7kQrFgOS5a5YhBzSTgd"

    const/4 v3, 0x7

    aput-object v5, v6, v3

    if-eqz v7, :cond_8

    goto :goto_1

    .line 7765
    :cond_8
    const/4 v5, 0x0

    .line 7766
    .local p0, "adaptiveReconfigurationBytes":I
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0R:Z

    if-eqz v3, :cond_9

    .line 7767
    const/4 v6, -0x4

    .line 7768
    .local v4, "result":I
    .end local p0    # "adaptiveReconfigurationBytes":I
    .local v4, "result":I
    .local v1, "adaptiveReconfigurationBytes":I
    :goto_2
    const/4 v3, -0x3

    if-ne v6, v3, :cond_e

    .line 7769
    return v2

    .line 7770
    .end local v4    # "result":I
    :cond_9
    iget v3, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    if-ne v3, v1, :cond_c

    .line 7771
    const/4 v7, 0x0

    .local v4, "i":I
    :goto_3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v5, v6, v3

    const/4 v3, 0x6

    aget-object v6, v6, v3

    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v5, v3, :cond_a

    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v5, "0VatHXJ47YZXuQNTjh1Q4vWnAJchohqJ"

    const/4 v3, 0x7

    aput-object v5, v6, v3

    if-ge v7, v8, :cond_b

    .line 7772
    :goto_4
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v3, v3, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 7773
    .local v1, "data":[B
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 7774
    .end local v1    # "data":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v5, "zOhD8BhFeW0zpu1geu8qUgn88iwXK5ep"

    const/4 v3, 0x3

    aput-object v5, v6, v3

    const-string v5, "60rX9qlLFkokv4JD1C8g9QKhync8N1Cu"

    const/4 v3, 0x0

    aput-object v5, v6, v3

    if-ge v7, v8, :cond_b

    goto :goto_4

    .line 7775
    .end local v4    # "i":I
    :cond_b
    iput v4, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7776
    :cond_c
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v5, v6, v3

    const/4 v3, 0x6

    aget-object v6, v6, v3

    const/16 v3, 0x9

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v5, v3, :cond_d

    sget-object v6, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v5, "39aArsNj3IDVPnG6lUIYrUviornu3auc"

    const/4 v3, 0x1

    aput-object v5, v6, v3

    const-string v5, "ZVN5NvQX1lR02F2nkBpRehMiTRLfpSWC"

    const/4 v3, 0x6

    aput-object v5, v6, v3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 7777
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0, v6, v3, v2}, Lcom/facebook/ads/redexgen/X/Df;->A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v6

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0, v6, v3, v2}, Lcom/facebook/ads/redexgen/X/Df;->A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v6

    goto/16 :goto_2

    .line 7778
    :cond_e
    const/4 v3, -0x5

    if-ne v6, v3, :cond_10

    .line 7779
    iget v2, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    if-ne v2, v4, :cond_f

    .line 7780
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 7781
    iput v1, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7782
    :cond_f
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/39;->A1L(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 7783
    return v1

    .line 7784
    :cond_10
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7785
    iget v3, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    if-ne v3, v4, :cond_11

    .line 7786
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 7787
    iput v1, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7788
    :cond_11
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0M:Z

    .line 7789
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0J:Z

    if-nez v3, :cond_12

    .line 7790
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    .line 7791
    return v2

    .line 7792
    :cond_12
    :try_start_0
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0G:Z

    if-eqz v3, :cond_13

    goto :goto_5

    .line 7793
    :cond_13
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0K:Z

    .line 7794
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 7795
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    .line 7796
    :goto_5
    return v2
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7797
    :catch_0
    move-exception v1

    .line 7798
    .local p0, "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0

    .line 7799
    .end local p0    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_14
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0Q:Z

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Be;->A05()Z

    move-result v3

    if-nez v3, :cond_16

    .line 7800
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 7801
    iget v2, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    if-ne v2, v4, :cond_15

    .line 7802
    iput v1, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7803
    :cond_15
    return v1

    .line 7804
    :cond_16
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0Q:Z

    .line 7805
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WZ;->A0A()Z

    move-result v6

    .line 7806
    .local v1, "bufferEncrypted":Z
    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/39;->A0w(Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0R:Z

    .line 7807
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0R:Z

    if-eqz v3, :cond_17

    .line 7808
    return v2

    .line 7809
    :cond_17
    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0D:Z

    if-eqz v3, :cond_19

    if-nez v6, :cond_19

    .line 7810
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IR;->A0A(Ljava/nio/ByteBuffer;)V

    .line 7811
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_18

    .line 7812
    return v1

    .line 7813
    :cond_18
    iput-boolean v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0D:Z

    .line 7814
    :cond_19
    :try_start_1
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-wide v7, v3, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    .line 7815
    .local v5, "presentationTimeUs":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 7816
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7817
    :cond_1a
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/WZ;->A08()V

    .line 7818
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/39;->A1M(Lcom/facebook/ads/redexgen/X/WZ;)V

    .line 7819
    if-eqz v6, :cond_1b

    goto :goto_6

    .line 7820
    :cond_1b
    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    const/4 v11, 0x0

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    iget-object v3, v3, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    const/4 v15, 0x0

    move-wide v13, v7

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_7

    .line 7821
    :goto_6
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A0X:Lcom/facebook/ads/redexgen/X/WZ;

    .line 7822
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/39;->A0Y(Lcom/facebook/ads/redexgen/X/WZ;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v6

    .line 7823
    .local v6, "cryptoInfo":Landroid/media/MediaCodec$CryptoInfo;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/39;->A03:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 7824
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    .line 7825
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/39;->A0J:Z

    .line 7826
    iput v2, v0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7827
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Bj;->A04:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Bj;->A04:I

    .line 7828
    .end local v5    # "presentationTimeUs":J
    return v1
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7829
    :catch_1
    move-exception v1

    .line 7830
    .restart local p0    # "e":Landroid/media/MediaCodec$CryptoException;
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method private A0n()Z
    .locals 1

    .line 7831
    iget v0, p0, Lcom/facebook/ads/redexgen/X/39;->A04:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0o(J)Z
    .locals 7

    .line 7832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 7833
    .local p0, "size":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 7834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "ML5bMotUrNJfefR5zyFOe6FKAXdvvO6A"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "SdeYytwJjEjJxI17XZFSuNmI9VlWoLpo"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    cmp-long v0, v5, p1

    if-nez v0, :cond_0

    .line 7835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_1

    .line 7836
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "PN0xo47Kt8nFjD42DkF1Rwv3kccfY0ZU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "8XhLexKKIuuBUtz2cCFHUx77okN3o4VX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x1

    return v0

    .line 7837
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7838
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "MaO0vnTK96XnVNRleRSpONjFXCjP5Eov"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "hUdEzwsPaliJglUJ7NraoDZ4Fn5DncmA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 7839
    .end local p1    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private A0p(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7840
    move-object/from16 v2, p0

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0n()Z

    move-result v0

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_a

    .line 7841
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0F:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0K:Z

    if-eqz v0, :cond_1

    .line 7842
    :try_start_0
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 7843
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0X()J

    move-result-wide v0

    invoke-virtual {v5, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7844
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/39;
    .local p0, "e":Ljava/lang/IllegalStateException;
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    .line 7845
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0N:Z

    if-eqz v0, :cond_0

    .line 7846
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V

    .line 7847
    :cond_0
    return v3

    .line 7848
    .end local p0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    .line 7849
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0X()J

    move-result-wide v0

    invoke-virtual {v5, v4, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 7850
    .local p0, "outputIndex":I
    :goto_0
    if-ltz v1, :cond_3

    .line 7851
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0O:Z

    if-eqz v0, :cond_2

    .line 7852
    iput-boolean v3, v2, Lcom/facebook/ads/redexgen/X/39;->A0O:Z

    .line 7853
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 7854
    return v6

    .line 7855
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_8

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    .line 7856
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    .line 7857
    return v3

    .line 7858
    :cond_3
    const/4 v0, -0x2

    if-ne v1, v0, :cond_4

    .line 7859
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0f()V

    .line 7860
    return v6

    .line 7861
    :cond_4
    const/4 v0, -0x3

    if-ne v1, v0, :cond_5

    .line 7862
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0e()V

    .line 7863
    return v6

    .line 7864
    :cond_5
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0G:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0M:Z

    if-nez v0, :cond_6

    iget v1, v2, Lcom/facebook/ads/redexgen/X/39;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_7

    .line 7865
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    .line 7866
    :cond_7
    return v3

    .line 7867
    :cond_8
    iput v1, v2, Lcom/facebook/ads/redexgen/X/39;->A04:I

    .line 7868
    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/39;->A0b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0B:Ljava/nio/ByteBuffer;

    .line 7869
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/39;->A0B:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_9

    .line 7870
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 7871
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/39;->A0B:Ljava/nio/ByteBuffer;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v0

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7872
    :cond_9
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/39;->A0o(J)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0P:Z

    .line 7873
    .end local p0    # "outputIndex":I
    :cond_a
    iget-boolean v5, v2, Lcom/facebook/ads/redexgen/X/39;->A0F:Z

    sget-object v4, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v4, v0

    const/4 v0, 0x0

    aget-object v4, v4, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f

    sget-object v4, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "H6QEdKrNS5VKUI2eiDzJYDiDaOSTSHZm"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "qtM0JqIstAlLtY5WeeeWIRjDSmIhrDzd"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    if-eqz v5, :cond_b

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0K:Z

    if-eqz v0, :cond_b

    .line 7874
    :try_start_1
    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/39;->A0B:Ljava/nio/ByteBuffer;

    iget v14, v2, Lcom/facebook/ads/redexgen/X/39;->A04:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v4, v2, Lcom/facebook/ads/redexgen/X/39;->A0P:Z

    .line 7875
    move-object/from16 v7, p0

    move-wide/from16 v16, v0

    move/from16 v18, v4

    invoke-virtual/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/39;->A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7876
    .end local p0
    :cond_b
    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/39;->A0B:Ljava/nio/ByteBuffer;

    iget v14, v2, Lcom/facebook/ads/redexgen/X/39;->A04:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v4, v2, Lcom/facebook/ads/redexgen/X/39;->A0P:Z

    .line 7877
    move-object/from16 v7, p0

    move-wide/from16 v16, v0

    move/from16 v18, v4

    invoke-virtual/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/39;->A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    .line 7878
    .local p0, "processedOutputBuffer":Z
    :goto_1
    if-eqz v0, :cond_e

    .line 7879
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/39;->A1J(J)V

    .line 7880
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/39;->A0V:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 7881
    .local v8, "isEndOfStream":Z
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0i()V

    .line 7882
    if-nez v0, :cond_d

    .line 7883
    return v6

    .line 7884
    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    .line 7885
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    .line 7886
    .end local v8    # "isEndOfStream":Z
    :cond_e
    return v3

    .line 7887
    .end local p0    # "processedOutputBuffer":Z
    .local p0, "e":Ljava/lang/IllegalStateException;
    :catch_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    .line 7888
    iget-boolean v4, v2, Lcom/facebook/ads/redexgen/X/39;->A0N:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_10
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "kLeAoHdKyNjlIY3W2lnlzypZ7jBCZpds"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "12vglqLCD0wnh38LM4o4LF1q7CPuStNa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_11

    .line 7889
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V

    .line 7890
    :cond_11
    return v3
.end method

.method public static A0q(Lcom/facebook/ads/redexgen/X/Dn;)Z
    .locals 4

    .line 7891
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    .line 7892
    .local p0, "name":Ljava/lang/String;
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x11

    if-gt v1, v0, :cond_0

    .line 7893
    const/16 v2, 0x23d

    const/16 v1, 0x18

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7894
    const/16 v2, 0x1aa

    const/16 v1, 0x1f

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A05:Ljava/lang/String;

    .line 7895
    const/16 v2, 0x93

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    const/16 v2, 0x8f

    const/4 v1, 0x4

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dn;->A05:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7896
    :goto_0
    return v0

    .line 7897
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0r(Ljava/lang/String;)Z
    .locals 6

    .line 7898
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_0

    const/16 v2, 0x224

    const/16 v1, 0x19

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x13

    if-gt v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A03:Ljava/lang/String;

    .line 7899
    const/16 v2, 0x2c6

    const/4 v1, 0x6

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7900
    const/16 v5, 0x1c9

    const/16 v4, 0x1f

    const/16 v3, 0x5a

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "95wFKgRrMS7zF0LnDUBUyEKLdOv2pw0Q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "8UM2DR4qd3kvfN0lEIyvKJByOBGtF0J9"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7901
    const/16 v2, 0x1e8

    const/16 v1, 0x26

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7902
    :goto_0
    return v0

    .line 7903
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0s(Ljava/lang/String;)Z
    .locals 3

    .line 7904
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-ne v1, v0, :cond_0

    const/16 v2, 0x20e

    const/16 v1, 0x16

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0t(Ljava/lang/String;)Z
    .locals 4

    .line 7905
    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    if-ne v0, v1, :cond_0

    .line 7906
    const/16 v2, 0x185

    const/16 v1, 0xf

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "meV5e9Kkfi1Cw7qLNaZXa1JKO1Lv4Z7w"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "iFBSwhWIKfzcqDOwhwOBewnG37AI8L0V"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    const/16 v2, 0x194

    const/16 v1, 0x16

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x13

    if-ne v1, v0, :cond_2

    sget-object v3, Lcom/facebook/ads/redexgen/X/Il;->A06:Ljava/lang/String;

    .line 7907
    const/16 v2, 0x263

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7908
    const/16 v2, 0xf5

    const/16 v1, 0x12

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v2, 0x107

    const/16 v1, 0x19

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7909
    :goto_0
    return v0

    .line 7910
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0u(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 3

    .line 7911
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0P:Ljava/util/List;

    .line 7912
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7913
    const/16 v2, 0x139

    const/16 v1, 0x19

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 7914
    :goto_0
    return v0

    .line 7915
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0v(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 4

    .line 7916
    sget v1, Lcom/facebook/ads/redexgen/X/Il;->A02:I

    const/4 v3, 0x1

    const/16 v0, 0x12

    if-gt v1, v0, :cond_0

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-ne v0, v3, :cond_0

    .line 7917
    const/16 v2, 0x120

    const/16 v1, 0x19

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7918
    :goto_0
    return v3

    .line 7919
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private A0w(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0c:Z

    if-eqz v0, :cond_1

    .line 7921
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/39;
    :cond_0
    return v2

    .line 7922
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C8;->A7Q()I

    move-result v1

    .line 7923
    .local p0, "drmSessionState":I
    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    .line 7924
    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 7925
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C8;->A6U()Lcom/facebook/ads/redexgen/X/C6;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public A12()V
    .locals 4

    .line 7926
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 7927
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 7928
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v0, :cond_0

    .line 7929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7930
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v1, v0, :cond_1

    .line 7931
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7932
    :cond_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7933
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7934
    return-void

    .line 7935
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7936
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7937
    throw v0

    .line 7938
    :catchall_1
    move-exception v2

    .line 7939
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v1, v0, :cond_2

    .line 7940
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7941
    :cond_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7942
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7943
    throw v2

    .line 7944
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7945
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7946
    throw v0

    .line 7947
    :catchall_3
    move-exception v2

    .line 7948
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v0, :cond_3

    .line 7949
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 7950
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v1, v0, :cond_4

    .line 7951
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 7952
    :cond_4
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7953
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7954
    throw v2

    .line 7955
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7956
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7957
    throw v0

    .line 7958
    :catchall_5
    move-exception v2

    .line 7959
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v1, v0, :cond_5

    .line 7960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 7961
    :cond_5
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7962
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7963
    throw v2

    .line 7964
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 7965
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 7966
    throw v0
.end method

.method public A13()V
    .locals 0

    .line 7967
    return-void
.end method

.method public A14()V
    .locals 0

    .line 7968
    return-void
.end method

.method public A15(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0M:Z

    .line 7970
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0N:Z

    .line 7971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 7972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1F()V

    .line 7973
    :cond_0
    return-void
.end method

.method public A16(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7974
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    .line 7975
    return-void
.end method

.method public A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 1

    .line 7976
    const/4 v0, 0x0

    return v0
.end method

.method public abstract A1B(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Dt;",
            "Lcom/facebook/ads/redexgen/X/C9<",
            "Lcom/facebook/ads/redexgen/X/WT;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation
.end method

.method public final A1C()Landroid/media/MediaCodec;
    .locals 1

    .line 7977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    return-object v0
.end method

.method public final A1D()Lcom/facebook/ads/redexgen/X/Dn;
    .locals 1

    .line 7978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    return-object v0
.end method

.method public A1E(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/Dn;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation

    .line 7979
    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/facebook/ads/redexgen/X/Dt;->A6J(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    return-object v0
.end method

.method public A1F()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 7980
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:J

    .line 7981
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    .line 7982
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0i()V

    .line 7983
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/39;->A0Q:Z

    .line 7984
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0R:Z

    .line 7985
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0P:Z

    .line 7986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7987
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0C:Z

    .line 7988
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0O:Z

    .line 7989
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0K:Z

    if-eqz v0, :cond_2

    .line 7990
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V

    .line 7991
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1I()V

    .line 7992
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0L:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_1

    .line 7993
    iput v4, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 7994
    :cond_1
    return-void

    .line 7995
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "wbouPn2Ftm3cpLG8fvuyld6AKnPflzbx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "bzy96m6ZRNxMDmYLQEfFnOCqhh49XGXp"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 7996
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V

    .line 7997
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1I()V

    goto :goto_0

    .line 7998
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 7999
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0J:Z

    goto :goto_0
.end method

.method public A1G()V
    .locals 4

    .line 8000
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/39;->A05:J

    .line 8001
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    .line 8002
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0i()V

    .line 8003
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0R:Z

    .line 8004
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0P:Z

    .line 8005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8006
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0g()V

    .line 8007
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    .line 8008
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0L:Z

    .line 8009
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0J:Z

    .line 8010
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0D:Z

    .line 8011
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0H:Z

    .line 8012
    iput v1, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    .line 8013
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0G:Z

    .line 8014
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0E:Z

    .line 8015
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0I:Z

    .line 8016
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0C:Z

    .line 8017
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0O:Z

    .line 8018
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0K:Z

    .line 8019
    iput v1, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 8020
    iput v1, p0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    .line 8021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 8022
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A01:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A01:I

    .line 8023
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 8024
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8025
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    .line 8026
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v0, v1, :cond_3

    .line 8027
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V

    goto :goto_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8028
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8029
    throw v0

    .line 8030
    :catchall_1
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    .line 8031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v0, v1, :cond_0

    .line 8032
    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8033
    :catchall_2
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8034
    throw v0

    .line 8035
    :goto_0
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8036
    :cond_0
    throw v2

    .line 8037
    :catchall_3
    move-exception v2

    .line 8038
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 8039
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    .line 8040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v0, v1, :cond_1

    .line 8041
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V

    goto :goto_1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 8042
    :catchall_4
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8043
    throw v0

    .line 8044
    :goto_1
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8045
    :cond_1
    throw v2

    .line 8046
    :catchall_5
    move-exception v2

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    .line 8047
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    if-eq v0, v1, :cond_2

    .line 8048
    :try_start_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V

    goto :goto_2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 8049
    :catchall_6
    move-exception v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8050
    throw v0

    .line 8051
    :goto_2
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8052
    :cond_2
    throw v2

    .line 8053
    :goto_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8054
    :cond_3
    return-void
.end method

.method public A1H()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 8055
    return-void
.end method

.method public final A1I()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 8056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-nez v1, :cond_1

    .line 8057
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/39;
    .end local v0
    .end local v1
    .end local v0
    :cond_0
    return-void

    .line 8058
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    .line 8059
    iget-object v8, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 8060
    .local p0, "mimeType":Ljava/lang/String;
    const/4 v5, 0x0

    .line 8061
    .local v0, "wrappedMediaCrypto":Landroid/media/MediaCrypto;
    const/4 v3, 0x0

    .line 8062
    .local v1, "drmSessionRequiresSecureDecoder":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 8063
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C8;->A6s()Lcom/facebook/ads/redexgen/X/CA;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/WT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_6

    .line 8064
    .local v0, "mediaCrypto":Lcom/facebook/ads/redexgen/X/WT;
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "HTFGGBgFgI6ylI68q0FeBZ95y7T9Xgss"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "P6HI8GYxdJJ1MGo6JXYXPe6FB7j5p6fI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v6, :cond_3

    .line 8065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C8;->A6U()Lcom/facebook/ads/redexgen/X/C6;

    move-result-object v0

    .line 8066
    .local v5, "drmError":Lcom/facebook/ads/redexgen/X/C6;
    if-eqz v0, :cond_5

    .line 8067
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0l()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 8068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C8;->A7Q()I

    move-result v7

    .line 8069
    .local v5, "drmSessionState":I
    if-eq v7, v4, :cond_4

    .line 8070
    const/4 v6, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_2

    if-eq v7, v6, :cond_7

    .line 8071
    :goto_1
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "zdcyHT7sTCB3al7NiJFn52Vz5qRveBVU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_7

    goto :goto_1

    .line 8072
    .end local v5    # "drmSessionState":I
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/WT;->A00()Landroid/media/MediaCrypto;

    move-result-object v5

    .line 8073
    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/WT;->A01(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 8074
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/C8;->A6U()Lcom/facebook/ads/redexgen/X/C6;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0

    .line 8075
    .restart local v5    # "drmSessionState":I
    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8076
    .end local v0    # "mediaCrypto":Lcom/facebook/ads/redexgen/X/WT;
    .end local v5    # "drmSessionState":I
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    if-nez v0, :cond_9

    .line 8077
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0a:Lcom/facebook/ads/redexgen/X/Dt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/39;->A1E(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    .line 8078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    .line 8079
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A0a:Lcom/facebook/ads/redexgen/X/Dt;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A1E(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/internal/exoplayer2/Format;Z)Lcom/facebook/ads/redexgen/X/Dn;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    .line 8080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    if-eqz v0, :cond_8

    .line 8081
    const/16 v2, 0xe3

    const/16 v1, 0x12

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x99

    const/16 v1, 0x28

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v1, 0x3a

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    const/4 v1, 0x1

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Dw; {:try_start_0 .. :try_end_0} :catch_0

    .line 8082
    :catch_0
    move-exception v6

    .line 8083
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Dw;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const v1, -0xc34e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-direct {v0, v2, v6, v3, v1}, Lcom/facebook/ads/redexgen/X/Dp;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A0k(Lcom/facebook/ads/redexgen/X/Dp;)V

    .line 8084
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Dw;
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    if-nez v0, :cond_9

    .line 8085
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v2, 0x0

    const v1, -0xc34f

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-direct {v0, v6, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Dp;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A0k(Lcom/facebook/ads/redexgen/X/Dp;)V

    .line 8086
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A1Q(Lcom/facebook/ads/redexgen/X/Dn;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 8087
    return-void

    .line 8088
    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Dn;->A02:Ljava/lang/String;

    .line 8089
    .local v0, "codecName":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/39;->A0W(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    .line 8090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/39;->A0u(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0D:Z

    .line 8091
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/39;->A0t(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0H:Z

    .line 8092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/39;->A0q(Lcom/facebook/ads/redexgen/X/Dn;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0G:Z

    .line 8093
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/39;->A0r(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0E:Z

    .line 8094
    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/39;->A0s(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0F:Z

    .line 8095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v9, v0}, Lcom/facebook/ads/redexgen/X/39;->A0v(Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0I:Z

    .line 8096
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 8097
    .local v1, "codecInitializingTimestamp":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x293

    const/16 v1, 0xc

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A02(Ljava/lang/String;)V

    .line 8098
    invoke-static {v9}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    .line 8099
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A00()V

    .line 8100
    const/16 v2, 0x285

    const/16 v1, 0xe

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A02(Ljava/lang/String;)V

    .line 8101
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v2, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/39;->A1N(Lcom/facebook/ads/redexgen/X/Dn;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V

    .line 8102
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A00()V

    .line 8103
    const/16 v2, 0x2d2

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A02(Ljava/lang/String;)V

    .line 8104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 8105
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A00()V

    .line 8106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 8107
    .local v1, "codecInitializedTimestamp":J
    sub-long v12, v10, v7

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/39;->A1O(Ljava/lang/String;JJ)V

    .line 8108
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0c()V

    goto :goto_3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8109
    :catch_1
    move-exception v2

    .line 8110
    .local v5, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dp;

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/facebook/ads/redexgen/X/Dp;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A0k(Lcom/facebook/ads/redexgen/X/Dp;)V

    .line 8111
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A7Q()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_b

    .line 8112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    add-long/2addr v2, v0

    .line 8113
    :goto_4
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/39;->A05:J

    .line 8114
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0h()V

    .line 8115
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0i()V

    .line 8116
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/39;->A0Q:Z

    .line 8117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A00:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Bj;->A00:I

    .line 8118
    return-void

    .line 8119
    :cond_b
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_4
.end method

.method public A1J(J)V
    .locals 0

    .line 8120
    return-void
.end method

.method public A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 8121
    return-void
.end method

.method public A1L(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 8122
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 8123
    .local p0, "oldFormat":Lcom/facebook/ads/internal/exoplayer2/Format;
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 8124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v2, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 8125
    const/4 v1, 0x0

    if-nez v4, :cond_8

    move-object v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Il;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 8126
    .local p1, "drmInitDataChanged":Z
    if-eqz v0, :cond_0

    .line 8127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_7

    .line 8128
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_c

    sget-object v3, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "js0xY6djzstMh1ZGSSFwxrm9J2KEODfF"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const-string v1, "gNDkR57A7pqknHdJ9eFPG5bc7UDUELIy"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    if-eqz v7, :cond_b

    .line 8129
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v5, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_c

    sget-object v3, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "L1yeHoCGmaJe3p3nUxagVjwy9TYWwSRI"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    invoke-interface {v7, v6, v5}, Lcom/facebook/ads/redexgen/X/C9;->A2P(Landroid/os/Looper;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)Lcom/facebook/ads/redexgen/X/C8;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    .line 8130
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-ne v6, v0, :cond_0

    .line 8131
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    sget-object v3, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v3, v3, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v3, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "PNJFXv8k8SK4Yjj8VNQjLQpnTp0fAy1J"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "VCM67JEqNnPycf67Mw9BgN4gUhlxC0Ru"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    invoke-interface {v5, v6}, Lcom/facebook/ads/redexgen/X/C9;->ADY(Lcom/facebook/ads/redexgen/X/C8;)V

    .line 8132
    :cond_0
    :goto_1
    const/4 v5, 0x0

    .line 8133
    .local v4, "keepingCodec":Z
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A08:Lcom/facebook/ads/redexgen/X/C8;

    if-ne v1, v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    if-eqz v3, :cond_2

    .line 8134
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0A:Lcom/facebook/ads/redexgen/X/Dn;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v3, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/39;->A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Dn;Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_6

    const/4 v0, 0x3

    if-ne v1, v0, :cond_9

    .line 8135
    const/4 v5, 0x1

    .line 8136
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/39;->A0L:Z

    .line 8137
    iput v2, p0, Lcom/facebook/ads/redexgen/X/39;->A01:I

    .line 8138
    iget v1, p0, Lcom/facebook/ads/redexgen/X/39;->A00:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-ne v1, v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0C:Z

    .line 8139
    :cond_2
    :goto_3
    if-nez v5, :cond_3

    .line 8140
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0J:Z

    if-eqz v0, :cond_4

    .line 8141
    iput v2, p0, Lcom/facebook/ads/redexgen/X/39;->A02:I

    .line 8142
    :cond_3
    :goto_4
    return-void

    .line 8143
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1G()V

    .line 8144
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1I()V

    goto :goto_4

    .line 8145
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 8146
    :cond_6
    const/4 v5, 0x1

    .line 8147
    goto :goto_3

    .line 8148
    :cond_7
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A09:Lcom/facebook/ads/redexgen/X/C8;

    goto :goto_1

    .line 8149
    :cond_8
    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    goto/16 :goto_0

    .line 8150
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8151
    :cond_b
    const/16 v2, 0xc1

    const/16 v1, 0x22

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 8152
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    .line 8153
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1M(Lcom/facebook/ads/redexgen/X/WZ;)V
    .locals 0

    .line 8154
    return-void
.end method

.method public abstract A1N(Lcom/facebook/ads/redexgen/X/Dn;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/Format;Landroid/media/MediaCrypto;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Dw;
        }
    .end annotation
.end method

.method public A1O(Ljava/lang/String;JJ)V
    .locals 0

    .line 8155
    return-void
.end method

.method public abstract A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation
.end method

.method public A1Q(Lcom/facebook/ads/redexgen/X/Dn;)Z
    .locals 1

    .line 8156
    const/4 v0, 0x1

    return v0
.end method

.method public A8J()Z
    .locals 1

    .line 8157
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0N:Z

    return v0
.end method

.method public A8U()Z
    .locals 6

    .line 8158
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/39;->A0R:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6d

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "4HO9JQHKOwc6R3VWcS8R4aXAnHys3aci"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "eJ1ha0lSNb53SSfCNHliM2QVteujQRGV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 8159
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A18()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8160
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0n()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "OQSQFxnlZZo22DxvkKeXHq8FF7pzfl1u"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    :goto_0
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/39;->A05:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v4, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "x7dDRka8TdETs6VLaaF6zooftcMnhKq2"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "EId5jOcDiZLe1q4ZwHFfLyVQFAikb5sI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 8161
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/39;->A05:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 8162
    :goto_2
    return v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "3vglA6G8yuA12iVw0aFHPuEKtU4GGV7V"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "dEcUfU5Lns9loW0elZLaj7FKzckicWHS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_2
    if-nez v3, :cond_0

    goto :goto_0

    .line 8163
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADf(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 8164
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0N:Z

    if-eqz v0, :cond_0

    .line 8165
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1H()V

    .line 8166
    return-void

    .line 8167
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    const/4 v5, -0x4

    const/4 v4, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 8168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 8169
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Df;->A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v0

    .line 8170
    .local p0, "result":I
    if-ne v0, v4, :cond_8

    .line 8171
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A1L(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 8172
    .end local p0    # "result":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/39;->A1I()V

    .line 8173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A06:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    .line 8174
    const/16 v2, 0x29f

    const/16 v1, 0xc

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/39;->A0Z(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ii;->A02(Ljava/lang/String;)V

    .line 8175
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/39;->A0p(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8176
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0m()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 8177
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/Bj;->A07:I

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Df;->A0z(J)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/Bj;->A07:I

    .line 8178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WZ;->A07()V

    .line 8179
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->A10(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v0

    .line 8180
    .restart local p0    # "result":I
    if-ne v0, v4, :cond_5

    .line 8181
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/39;->A0W:Lcom/facebook/ads/redexgen/X/AM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "H5HsHl4f2eN3vdaE4L0NqH64hfjdivD8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/AM;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/39;->A1L(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    goto :goto_2

    .line 8182
    :cond_5
    if-ne v0, v5, :cond_7

    .line 8183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 8184
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/39;->A0M:Z

    .line 8185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    goto :goto_2

    .line 8186
    :cond_6
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ii;->A00()V

    .line 8187
    .end local p0    # "result":I
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0U:Lcom/facebook/ads/redexgen/X/Bj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bj;->A00()V

    .line 8188
    return-void

    .line 8189
    :cond_8
    if-ne v0, v5, :cond_a

    .line 8190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Y:Lcom/facebook/ads/redexgen/X/WZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Be;->A04()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A04(Z)V

    .line 8191
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/39;->A0M:Z

    .line 8192
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/39;->A0d()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_9

    .line 8193
    sget-object v2, Lcom/facebook/ads/redexgen/X/39;->A0e:[Ljava/lang/String;

    const-string v1, "aKhyH6I995l1LklLucgRLjJ4pFFWcDrl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 8194
    :cond_a
    return-void
.end method

.method public final AEv(Lcom/facebook/ads/internal/exoplayer2/Format;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A9;
        }
    .end annotation

    .line 8195
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/39;->A0a:Lcom/facebook/ads/redexgen/X/Dt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/39;->A0Z:Lcom/facebook/ads/redexgen/X/C9;

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/39;->A1B(Lcom/facebook/ads/redexgen/X/Dt;Lcom/facebook/ads/redexgen/X/C9;Lcom/facebook/ads/internal/exoplayer2/Format;)I

    move-result v0

    return v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Dw; {:try_start_0 .. :try_end_0} :catch_0

    .line 8196
    :catch_0
    move-exception v1

    .line 8197
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Dw;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Df;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/A9;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/A9;

    move-result-object v0

    throw v0
.end method

.method public final AEx()I
    .locals 1

    .line 8198
    const/16 v0, 0x8

    return v0
.end method
