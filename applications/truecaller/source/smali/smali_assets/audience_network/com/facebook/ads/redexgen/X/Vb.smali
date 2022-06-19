.class public final Lcom/facebook/ads/redexgen/X/Vb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DV;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Cb;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/CV;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IV;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "KDszHDzXfqF59CRVRWftd3HVsRnCigSQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mt1wJ32vNuSPyEC341LvOqJuOPF0PUkp"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WrM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XaAyFYRGYfBBBZw7eK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eDOzUgm8HT4q1AQmalgqs20fTFsFJUGd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BoW68Cbgp4ULkXl8fLSwM62hHrGuEs23"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bWE7L7mx05VAedoWHIxzCG4hfzqVFa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OpD2t2SPaq7VaFKSNzknI6aN9MYETC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    .line 59140
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vb;-><init>(Ljava/lang/String;)V

    .line 59142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 59143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59144
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    .line 59145
    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    .line 59146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v0, -0x1

    aput-byte v0, v1, v2

    .line 59147
    new-instance v0, Lcom/facebook/ads/redexgen/X/CV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    .line 59148
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A0B:Ljava/lang/String;

    .line 59149
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 10

    .line 59150
    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    .line 59151
    .local p0, "data":[B
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v4

    .line 59152
    .local p1, "startOffset":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v7

    .line 59153
    .local v5, "endOffset":I
    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_5

    .line 59154
    aget-byte v1, v5, v4

    const/16 v0, 0xff

    and-int/2addr v1, v0

    const/4 v6, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_4

    const/4 v9, 0x1

    .line 59155
    .local v7, "byteIsFF":Z
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A08:Z

    if-eqz v0, :cond_1

    aget-byte v8, v5, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const-string v1, "UcL2wMN6HBGwWkWL4B"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jB5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0xe0

    and-int/2addr v8, v0

    if-ne v8, v0, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 59156
    .local v4, "found":Z
    :goto_2
    iput-boolean v9, p0, Lcom/facebook/ads/redexgen/X/Vb;->A08:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 59157
    if-eqz v8, :cond_3

    .line 59158
    :goto_3
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59159
    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/Vb;->A08:Z

    .line 59160
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    aget-byte v0, v5, v4

    aput-byte v0, v1, v3

    .line 59161
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    .line 59162
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    .line 59163
    return-void

    .line 59164
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const-string v1, "AyJ6e7KDyRqb1r0P1KBKVEJakZlKMKHZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "2ThmXJimQn9uK6mMidfBhWUlfDYnBKkO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v8, :cond_3

    goto :goto_3

    .line 59165
    .end local v7    # "byteIsFF":Z
    .end local v4    # "found":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59166
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 59167
    .end local v4
    :cond_5
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59168
    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 7

    .line 59169
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59170
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 59171
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    .line 59172
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vb;->A01:I

    if-ge v0, v4, :cond_0

    .line 59173
    return-void

    .line 59174
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A04:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Cb;->AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V

    .line 59175
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vb;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A03:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Vb;->A04:J

    .line 59176
    const/4 v3, 0x0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 59177
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const-string v1, "ScjCWzDsMvlE6C4iVMEuFqkFuKCicUAb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "udpHDrUjrNQxaJr25pS4UodeWrrvfUFS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    .line 59178
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 16

    .line 59179
    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    const/4 v3, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 59180
    .local v5, "bytesToRead":I
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    invoke-virtual {v5, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 59181
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    .line 59182
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    if-ge v0, v3, :cond_0

    .line 59183
    return-void

    .line 59184
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59185
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result v4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/CV;->A04(ILcom/facebook/ads/redexgen/X/CV;)Z

    move-result v0

    .line 59186
    .local v2, "parsedHeader":Z
    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 59187
    iput v1, v2, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    .line 59188
    iput v4, v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    .line 59189
    return-void

    .line 59190
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A02:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A01:I

    .line 59191
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A07:Z

    if-nez v0, :cond_2

    .line 59192
    const-wide/32 v5, 0xf4240

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A04:I

    int-to-long v7, v0

    mul-long/2addr v7, v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CV;->A03:I

    int-to-long v5, v0

    div-long/2addr v7, v5

    iput-wide v7, v2, Lcom/facebook/ads/redexgen/X/Vb;->A03:J

    .line 59193
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/Vb;->A06:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/CV;->A06:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x1000

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/CV;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A09:Lcom/facebook/ads/redexgen/X/CV;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/CV;->A03:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/Vb;->A0B:Ljava/lang/String;

    .line 59194
    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v5

    .line 59195
    .local v4, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/Cb;->A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59196
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/Vb;->A07:Z

    .line 59197
    .end local v4    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 59198
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Vb;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A0A:Lcom/facebook/ads/redexgen/X/IV;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Cb;->AE4(Lcom/facebook/ads/redexgen/X/IV;I)V

    .line 59199
    const/4 v0, 0x2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    .line 59200
    return-void
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 5

    .line 59201
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v0

    if-lez v0, :cond_4

    .line 59202
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vb;->A0C:[Ljava/lang/String;

    const-string v1, "DlgSkZ7kUmj97mVCMXW7YS18xBC70U7G"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "tybkSaN9ICkxBJ48s31m7V5Ixzqz2U6M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_1

    goto :goto_0

    .line 59203
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vb;->A01(Lcom/facebook/ads/redexgen/X/IV;)V

    goto :goto_0

    .line 59204
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vb;->A02(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 59205
    goto :goto_0

    .line 59206
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vb;->A00(Lcom/facebook/ads/redexgen/X/IV;)V

    .line 59207
    goto :goto_0

    .line 59208
    :cond_4
    return-void
.end method

.method public final A4T(Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 2

    .line 59209
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A05()V

    .line 59210
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A06:Ljava/lang/String;

    .line 59211
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Dj;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CR;->AF1(II)Lcom/facebook/ads/redexgen/X/Cb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A05:Lcom/facebook/ads/redexgen/X/Cb;

    .line 59212
    return-void
.end method

.method public final ACl()V
    .locals 0

    .line 59213
    return-void
.end method

.method public final ACm(JZ)V
    .locals 0

    .line 59214
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Vb;->A04:J

    .line 59215
    return-void
.end method

.method public final AE8()V
    .locals 1

    .line 59216
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A02:I

    .line 59217
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A00:I

    .line 59218
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vb;->A08:Z

    .line 59219
    return-void
.end method
