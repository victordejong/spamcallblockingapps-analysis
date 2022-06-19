.class public final Lcom/facebook/ads/redexgen/X/Vn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/extractor/ts/Ac3Reader$State;
    }
.end annotation


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A06:Lcom/facebook/ads/redexgen/X/Cb;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/IU;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "nJiMpwDCR7ZAmhQyp9AOHiC56UVcRx0k"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lCnqxh0y89Em7p481QheNATB6nErTPja"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EOgZonHCFyaPw1rQOdlgFposS9KMweND"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oVFhsCJtzutno5RzvIOwcHRYGNjJYB0M"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "C7ZxqwSPJTae6vgKBRSPBAMVUD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Gg5xSTo0LtnMpcaC7QBiBySoh1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vn;->A0C:[Ljava/lang/String;

    .line 60151
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60152
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vn;-><init>(Ljava/lang/String;)V

    .line 60153
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 60154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60155
    const/16 v0, 0x80

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A09:Lcom/facebook/ads/redexgen/X/IU;

    .line 60156
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A09:Lcom/facebook/ads/redexgen/X/IU;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IU;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    .line 60157
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:I

    .line 60158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Ljava/lang/String;

    .line 60159
    return-void
.end method

.method private A00()V
    .locals 13

    .line 60160
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A09:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A07(I)V

    .line 60161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A09:Lcom/facebook/ads/redexgen/X/IU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ax;->A09(Lcom/facebook/ads/redexgen/X/IU;)Lcom/facebook/ads/redexgen/X/Aw;

    move-result-object v1

    .line 60162
    .local p0, "frameInfo":Lcom/facebook/ads/redexgen/X/Aw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_1

    iget v2, v1, Lcom/facebook/ads/redexgen/X/Aw;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    if-ne v2, v0, :cond_1

    iget v5, v1, Lcom/facebook/ads/redexgen/X/Aw;->A03:I

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Vn;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v3, v0

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v3, Lcom/facebook/ads/redexgen/X/Vn;->A0C:[Ljava/lang/String;

    const-string v2, "c77shWRMJ0xw1RnCUz3RaGOhMvVQh1Vq"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    if-ne v5, v0, :cond_1

    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/Aw;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    if-eq v2, v0, :cond_2

    .line 60163
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vn;->A07:Ljava/lang/String;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Aw;->A05:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, v1, Lcom/facebook/ads/redexgen/X/Aw;->A00:I

    iget v8, v1, Lcom/facebook/ads/redexgen/X/Aw;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0B:Ljava/lang/String;

    .line 60164
    invoke-static/range {v2 .. v12}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 60165
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vn;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 60166
    :cond_2
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Aw;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A01:I

    .line 60167
    const-wide/32 v4, 0xf4240

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Aw;->A02:I

    int-to-long v2, v0

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A05:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vn;->A03:J

    .line 60168
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/IV;)Z
    .locals 5

    .line 60169
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    const/4 v4, 0x0

    if-lez v0, :cond_4

    .line 60170
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    const/16 v3, 0xb

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 60171
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    .line 60172
    goto :goto_0

    .line 60173
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v1

    .line 60174
    .local p0, "secondByte":I
    const/16 v0, 0x77

    if-ne v1, v0, :cond_2

    .line 60175
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    .line 60176
    return v2

    .line 60177
    :cond_2
    if-ne v1, v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    .line 60178
    .end local p0    # "secondByte":I
    goto :goto_0

    .line 60179
    :cond_4
    return v4
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IV;[BI)Z
    .locals 2

    .line 60180
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60181
    .local p0, "bytesToRead":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 60182
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    .line 60183
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 10

    .line 60184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-lez v0, :cond_4

    .line 60185
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:I

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 60186
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60187
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 60188
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    .line 60189
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/Vn;->A01:I

    if-ne v0, v7, :cond_0

    .line 60190
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vn;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 60191
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A03:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    .line 60192
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:I

    goto :goto_0

    .line 60193
    .end local p0    # "bytesToRead":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/Vn;->A02(Lcom/facebook/ads/redexgen/X/IV;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60194
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vn;->A00()V

    .line 60195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 60196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 60197
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:I

    goto :goto_0

    .line 60198
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vn;->A01(Lcom/facebook/ads/redexgen/X/IV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60199
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:I

    .line 60200
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v0, 0xb

    aput-byte v0, v1, v2

    .line 60201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/16 v0, 0x77

    aput-byte v0, v1, v3

    .line 60202
    iput v4, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    goto :goto_0

    .line 60203
    :cond_4
    return-void
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 2

    .line 60204
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 60205
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A07:Ljava/lang/String;

    .line 60206
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A06:Lcom/facebook/ads/redexgen/X/Cb;

    .line 60207
    return-void
.end method

.method public final ACl()V
    .locals 0

    .line 60208
    return-void
.end method

.method public final ACm(JZ)V
    .locals 0

    .line 60209
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vn;->A04:J

    .line 60210
    return-void
.end method

.method public final AE8()V
    .locals 1

    .line 60211
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A02:I

    .line 60212
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A00:I

    .line 60213
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vn;->A08:Z

    .line 60214
    return-void
.end method
