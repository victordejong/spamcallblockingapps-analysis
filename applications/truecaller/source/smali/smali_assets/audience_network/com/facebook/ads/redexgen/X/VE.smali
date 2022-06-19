.class public final Lcom/facebook/ads/redexgen/X/VE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/E3;


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ih;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/IU;

.field public final A02:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TasyJMHsWGEkz863ImR0Q5Lz0Jv5KZRl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wAvcoPGmhTOD2UdnkI7mjYYyFDdz6tY4"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tIFolEUfJcQQhLLKuuKqSvXZilOQ0d41"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "wnba1Mxhk7UAzMMhJxuW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "IqdHVgHf3sWcJ9J53HVfrlZmkyidEDTw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kUaC4Xj2GLTFGhk3U8FgQLf5h3yptWRi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yAL9OJMifRSpz7GOwtKlA6RWbWPVLH5t"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1By3yk2Axs3IVYX9txEI"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VE;->A03:[Ljava/lang/String;

    .line 58023
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58025
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    .line 58026
    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IU;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    .line 58027
    return-void
.end method


# virtual methods
.method public final A4f(Lcom/facebook/ads/redexgen/X/Cp;)Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/E4;
        }
    .end annotation

    .line 58028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    if-eqz v0, :cond_0

    iget-wide v3, p1, Lcom/facebook/ads/redexgen/X/Cp;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58029
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ih;->A05()J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 58030
    :cond_0
    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ih;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ih;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58031
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Cp;->A00:J

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Ih;->A06(J)J

    .line 58032
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A01:Ljava/nio/ByteBuffer;

    .line 58033
    .local p0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 58034
    .local p1, "data":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 58035
    .local v0, "size":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0b([BI)V

    .line 58036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IU;->A0C([BI)V

    .line 58037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    int-to-long v2, v0

    .line 58039
    .local v0, "ptsAdjustment":J
    const/16 v1, 0x20

    shl-long/2addr v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v0

    int-to-long v0, v0

    or-long/2addr v2, v0

    .line 58040
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58041
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v5

    .line 58042
    .local v3, "spliceCommandLength":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A01:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v7

    .line 58043
    .local v7, "spliceCommandType":I
    const/4 v0, 0x0

    .line 58044
    .local v0, "command":Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceCommand;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    const/16 v1, 0xe

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58045
    if-eqz v7, :cond_8

    const/16 v1, 0xff

    if-eq v7, v1, :cond_6

    const/4 v1, 0x4

    if-eq v7, v1, :cond_5

    const/4 v1, 0x5

    if-eq v7, v1, :cond_4

    const/4 v1, 0x6

    if-eq v7, v1, :cond_3

    .line 58046
    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-array v1, v2, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;-><init>([Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;)V

    :goto_1
    return-object v0

    :cond_2
    new-array v1, v6, [Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;

    aput-object v0, v1, v2

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata;-><init>([Lcom/facebook/ads/internal/exoplayer2/metadata/Metadata$Entry;)V

    goto :goto_1

    .line 58047
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;->A01(Lcom/facebook/ads/redexgen/X/IV;JLcom/facebook/ads/redexgen/X/Ih;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    .line 58048
    goto :goto_0

    .line 58049
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A00:Lcom/facebook/ads/redexgen/X/Ih;

    .line 58050
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceInsertCommand;->A00(Lcom/facebook/ads/redexgen/X/IV;JLcom/facebook/ads/redexgen/X/Ih;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object v0

    .line 58051
    goto :goto_0

    .line 58052
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    invoke-static {v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;->A00(Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;

    move-result-object v0

    .line 58053
    goto :goto_0

    .line 58054
    :cond_6
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/VE;->A02:Lcom/facebook/ads/redexgen/X/IV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VE;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/VE;->A03:[Ljava/lang/String;

    const-string v1, "IAVDgnOrTVyqUqMF0jCb"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "AiSzseiiVBo4zRVGAcCm"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    invoke-static {v7, v5, v2, v3}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;->A00(Lcom/facebook/ads/redexgen/X/IV;IJ)Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/PrivateCommand;

    move-result-object v0

    .line 58055
    goto :goto_0

    .line 58056
    :cond_8
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceNullCommand;

    invoke-direct {v0}, Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceNullCommand;-><init>()V

    .line 58057
    goto :goto_0
.end method
