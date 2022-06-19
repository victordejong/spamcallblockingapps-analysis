.class public final Lcom/facebook/ads/redexgen/X/Gf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/IV;

.field public final A08:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dgnk6daQ0T87wOoHtyty7iRYaKvd8BzP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TK3sWG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "r0T7HSyuXxeUz69yLbXIR4BhIiF2UDCf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E94UIter8sht222SneNEBcgvWBNv8GHv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qg4jsBrtjCwX7ZbqQAPOhxC1noKxQthL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "sUrKaEkRL4ABh9brwle2ScDHOfoRuahW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YVc6k2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Gf;->A09:[Ljava/lang/String;

    .line 35062
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35064
    new-instance v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    .line 35065
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:[I

    .line 35066
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Gf;Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 0

    .line 35067
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gf;->A05(Lcom/facebook/ads/redexgen/X/IV;I)V

    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Gf;Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 0

    .line 35068
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gf;->A03(Lcom/facebook/ads/redexgen/X/IV;I)V

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Gf;Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 0

    .line 35069
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Gf;->A04(Lcom/facebook/ads/redexgen/X/IV;I)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 4

    .line 35070
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 35071
    return-void

    .line 35072
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 35073
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 35074
    .local p1, "isBaseSection":Z
    :goto_0
    add-int/lit8 v3, p2, -0x4

    .line 35075
    if-eqz v0, :cond_4

    .line 35076
    const/4 v0, 0x7

    if-ge v3, v0, :cond_2

    .line 35077
    return-void

    .line 35078
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 35079
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0G()I

    move-result v2

    .line 35080
    .local p2, "totalLength":I
    if-ge v2, v1, :cond_3

    .line 35081
    return-void

    .line 35082
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    .line 35083
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:I

    .line 35084
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    add-int/lit8 v0, v2, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 35085
    add-int/lit8 v3, v3, -0x7

    .line 35086
    .end local p2    # "totalLength":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v2

    .line 35087
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v0

    .line 35088
    .local p2, "limit":I
    if-ge v2, v0, :cond_5

    if-lez v3, :cond_5

    .line 35089
    sub-int/2addr v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 35090
    .local v1, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0c([BII)V

    .line 35091
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 35092
    .end local v1    # "bytesToRead":I
    :cond_5
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 1

    .line 35093
    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    .line 35094
    return-void

    .line 35095
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    .line 35096
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    .line 35097
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 35098
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    .line 35099
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A03:I

    .line 35100
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 16

    .line 35101
    move-object/from16 v5, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 35102
    return-void

    .line 35103
    :cond_0
    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 35104
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Gf;->A08:[I

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    .line 35105
    div-int/lit8 v7, p2, 0x5

    .line 35106
    .local p2, "entryCount":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v4, v7, :cond_1

    .line 35107
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v15

    .line 35108
    .local v0, "index":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v9

    .line 35109
    .local v6, "y":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v12

    .line 35110
    .local v1, "cr":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v14

    .line 35111
    .local v0, "cb":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v13

    .line 35112
    .local v7, "a":I
    int-to-double v0, v9

    const-wide v10, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v2, v12, -0x80

    int-to-double v2, v2

    mul-double/2addr v2, v10

    add-double/2addr v0, v2

    double-to-int v8, v0

    .line 35113
    .local v4, "r":I
    int-to-double v2, v9

    const-wide v10, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v0, v14, -0x80

    .end local v1    # "cr":I
    .local v0, "i":I
    int-to-double v0, v0

    mul-double/2addr v0, v10

    sub-double/2addr v2, v0

    const-wide v10, 0x3fe6da3c21187e7cL    # 0.71414

    add-int/lit8 v0, v12, -0x80

    int-to-double v0, v0

    mul-double/2addr v0, v10

    sub-double/2addr v2, v0

    double-to-int v10, v2

    .line 35114
    .local v5, "g":I
    int-to-double v2, v9

    const-wide v11, 0x3ffc5a1cac083127L    # 1.772

    add-int/lit8 v0, v14, -0x80

    .end local p2    # "entryCount":I
    .local v13, "entryCount":I
    int-to-double v0, v0

    mul-double/2addr v0, v11

    add-double/2addr v2, v0

    double-to-int v9, v2

    .line 35115
    .local v6, "b":I
    iget-object v11, v5, Lcom/facebook/ads/redexgen/X/Gf;->A08:[I

    shl-int/lit8 v3, v13, 0x18

    .line 35116
    const/16 v2, 0xff

    const/4 v1, 0x0

    invoke-static {v8, v1, v2}, Lcom/facebook/ads/redexgen/X/Il;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v3, v0

    .line 35117
    invoke-static {v10, v1, v2}, Lcom/facebook/ads/redexgen/X/Il;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v3, v0

    .line 35118
    invoke-static {v9, v1, v2}, Lcom/facebook/ads/redexgen/X/Il;->A06(III)I

    move-result v0

    or-int/2addr v3, v0

    aput v3, v11, v15

    .line 35119
    .end local v6    # "b":I
    .end local v5    # "g":I
    .end local v0    # "i":I
    .end local v6
    .end local v1
    .end local v0
    .end local v7    # "a":I
    .end local v4    # "r":I
    add-int/lit8 v4, v4, 0x1

    .end local v0
    .restart local v1    # "cr":I
    goto :goto_0

    .line 35120
    .end local v1    # "cr":I
    .end local v13    # "entryCount":I
    .restart local p2    # "entryCount":I
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Gf;->A06:Z

    .line 35121
    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/GK;
    .locals 11

    .line 35122
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    .line 35123
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    .line 35124
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A07()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:Z

    if-nez v0, :cond_1

    .line 35125
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Gf;
    .end local v0
    .end local v0
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 35126
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 35127
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:I

    mul-int/2addr v1, v0

    new-array v4, v1, [I

    .line 35128
    .local p0, "argbBitmapData":[I
    const/4 v5, 0x0

    .line 35129
    .local v0, "argbBitmapDataIndex":I
    :cond_2
    :goto_0
    array-length v0, v4

    if-ge v5, v0, :cond_7

    .line 35130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v2

    .line 35131
    .local v0, "colorIndex":I
    if-eqz v2, :cond_3

    .line 35132
    add-int/lit8 v1, v5, 0x1

    .end local v0    # "colorIndex":I
    .local v0, "argbBitmapDataIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:[I

    aget v0, v0, v2

    aput v0, v4, v5

    move v5, v1

    goto :goto_0

    .line 35133
    .end local v0    # "argbBitmapDataIndex":I
    .restart local v0    # "argbBitmapDataIndex":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v2

    .line 35134
    .local v0, "switchBits":I
    if-eqz v2, :cond_2

    .line 35135
    and-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_6

    .line 35136
    and-int/lit8 v1, v2, 0x3f

    .line 35137
    .local v0, "runLength":I
    :goto_1
    and-int/lit16 v0, v2, 0x80

    if-nez v0, :cond_4

    const/4 v2, 0x0

    .line 35138
    .local v0, "color":I
    :goto_2
    add-int v0, v5, v1

    invoke-static {v4, v5, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 35139
    add-int/2addr v5, v1

    goto :goto_0

    .line 35140
    :cond_4
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Gf;->A08:[I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    sget-object v3, Lcom/facebook/ads/redexgen/X/Gf;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v2, v3, v0

    const/4 v0, 0x2

    aget-object v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/Gf;->A09:[Ljava/lang/String;

    const-string v2, "LobxqobSp0chhe0OZFFwjgoplyKrXQLj"

    const/4 v0, 0x6

    aput-object v2, v3, v0

    const-string v2, "nSlIIcYQrdb8UpaoVkH7kLQAXSG8FoO0"

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    aget v2, v6, v0

    goto :goto_2

    .line 35141
    :cond_6
    and-int/lit8 v0, v2, 0x3f

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_1

    .line 35142
    :cond_7
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 35143
    invoke-static {v4, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 35144
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Lcom/facebook/ads/redexgen/X/GK;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    int-to-float v5, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    int-to-float v0, v2

    div-float/2addr v5, v0

    const/4 v6, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A03:I

    int-to-float v7, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    int-to-float v0, v1

    div-float/2addr v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    int-to-float v9, v0

    int-to-float v0, v2

    div-float/2addr v9, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:I

    int-to-float v10, v0

    int-to-float v0, v1

    div-float/2addr v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/GK;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v3
.end method

.method public final A07()V
    .locals 2

    .line 35145
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A05:I

    .line 35146
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A04:I

    .line 35147
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A02:I

    .line 35148
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A03:I

    .line 35149
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A01:I

    .line 35150
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A00:I

    .line 35151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Gf;->A07:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0W(I)V

    .line 35152
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Gf;->A06:Z

    .line 35153
    return-void
.end method
