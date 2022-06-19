.class public final Lcom/facebook/ads/redexgen/X/GR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GQ;
    }
.end annotation


# static fields
.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public final A05:Ljava/lang/StringBuilder;

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GQ;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cHi9U0Pg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VGea8qk0EPS8OqQ4obSD5aeRlTRdn39K"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UkvFMUtno93mVTdlP0lNSPxeQZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4fCjFf2htdfAP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "I6h5KAyxQwYPDLtwjcMWBd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QYcuKDWzo7FBs229Db5R79YAEK36tHpY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    .line 34159
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 34160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    .line 34162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    .line 34163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    .line 34164
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/GR;->A09(I)V

    .line 34165
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/GR;->A0A(I)V

    .line 34166
    return-void
.end method

.method private final A00()Landroid/text/SpannableString;
    .locals 15

    .line 34167
    move-object v10, p0

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 34168
    .local v10, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    .line 34169
    .local v0, "length":I
    const/4 v7, -0x1

    .line 34170
    .local v8, "underlineStartPosition":I
    const/4 v6, -0x1

    .line 34171
    .local v9, "italicStartPosition":I
    const/4 v5, 0x0

    .line 34172
    .local v7, "colorStartPosition":I
    const/4 v4, -0x1

    .line 34173
    .local v6, "color":I
    const/4 v14, 0x0

    .line 34174
    .local v5, "nextItalic":Z
    const/4 v11, -0x1

    .line 34175
    .local v4, "nextColor":I
    const/4 v3, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    .line 34176
    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/GQ;

    .line 34177
    .local v11, "cueStyle":Lcom/facebook/ads/redexgen/X/GQ;
    iget-boolean v1, v12, Lcom/facebook/ads/redexgen/X/GQ;->A02:Z

    .line 34178
    .local v0, "underline":Z
    iget v2, v12, Lcom/facebook/ads/redexgen/X/GQ;->A01:I

    .line 34179
    .local v0, "style":I
    const/16 v0, 0x8

    if-eq v2, v0, :cond_0

    .line 34180
    const/4 v0, 0x7

    if-ne v2, v0, :cond_9

    const/4 v14, 0x1

    .line 34181
    :goto_1
    if-ne v2, v0, :cond_8

    .line 34182
    :cond_0
    :goto_2
    iget v2, v12, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    .line 34183
    .local v0, "position":I
    add-int/lit8 v12, v3, 0x1

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    iget-object v12, v10, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GQ;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    .line 34184
    .local v3, "nextPosition":I
    :goto_3
    if-ne v2, v0, :cond_2

    .line 34185
    .end local v11    # "cueStyle":Lcom/facebook/ads/redexgen/X/GQ;
    .end local v3    # "nextPosition":I
    .end local v0    # "position":I
    .end local v0
    .end local v0
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34186
    :cond_2
    const/4 v0, -0x1

    if-eq v7, v0, :cond_6

    if-nez v1, :cond_6

    .line 34187
    invoke-static {v8, v7, v2}, Lcom/facebook/ads/redexgen/X/GR;->A02(Landroid/text/SpannableStringBuilder;II)V

    .line 34188
    const/4 v7, -0x1

    .line 34189
    :cond_3
    :goto_5
    const/4 v13, -0x1

    sget-object v12, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v12, v0

    const/4 v0, 0x5

    aget-object v0, v12, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a

    sget-object v12, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const-string v1, "lr4TMFgGLuEdpqEBom9kPNzU6S"

    const/4 v0, 0x4

    aput-object v1, v12, v0

    const-string v1, "0zdhGbgYXkwlZ"

    const/4 v0, 0x5

    aput-object v1, v12, v0

    if-eq v6, v13, :cond_5

    if-nez v14, :cond_5

    .line 34190
    invoke-static {v8, v6, v2}, Lcom/facebook/ads/redexgen/X/GR;->A01(Landroid/text/SpannableStringBuilder;II)V

    .line 34191
    const/4 v6, -0x1

    .line 34192
    :cond_4
    :goto_6
    if-eq v11, v4, :cond_1

    .line 34193
    invoke-static {v8, v5, v2, v4}, Lcom/facebook/ads/redexgen/X/GR;->A03(Landroid/text/SpannableStringBuilder;III)V

    .line 34194
    move v4, v11

    .line 34195
    move v5, v2

    goto :goto_4

    .line 34196
    :cond_5
    const/4 v0, -0x1

    if-ne v6, v0, :cond_4

    if-eqz v14, :cond_4

    .line 34197
    move v6, v2

    goto :goto_6

    .line 34198
    :cond_6
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    if-eqz v1, :cond_3

    .line 34199
    move v7, v2

    goto :goto_5

    .line 34200
    :cond_7
    move v0, v9

    goto :goto_3

    .line 34201
    :cond_8
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2v;->A0J()[I

    move-result-object v0

    aget v11, v0, v2

    goto :goto_2

    .line 34202
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 34203
    .end local v14    # "i":I
    :cond_b
    const/4 v0, -0x1

    if-eq v7, v0, :cond_c

    if-eq v7, v9, :cond_c

    .line 34204
    invoke-static {v8, v7, v9}, Lcom/facebook/ads/redexgen/X/GR;->A02(Landroid/text/SpannableStringBuilder;II)V

    .line 34205
    :cond_c
    if-eq v6, v0, :cond_d

    if-eq v6, v9, :cond_d

    .line 34206
    invoke-static {v8, v6, v9}, Lcom/facebook/ads/redexgen/X/GR;->A01(Landroid/text/SpannableStringBuilder;II)V

    .line 34207
    :cond_d
    if-eq v5, v9, :cond_e

    .line 34208
    invoke-static {v8, v5, v9, v4}, Lcom/facebook/ads/redexgen/X/GR;->A03(Landroid/text/SpannableStringBuilder;III)V

    .line 34209
    :cond_e
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A01(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 34210
    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34211
    return-void
.end method

.method public static A02(Landroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 34212
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34213
    return-void
.end method

.method public static A03(Landroid/text/SpannableStringBuilder;III)V
    .locals 2

    .line 34214
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 34215
    return-void

    .line 34216
    :cond_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v0, 0x21

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 34217
    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 34218
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    return v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/GK;
    .locals 16

    .line 34219
    move-object/from16 v3, p0

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 34220
    .local v3, "cueString":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 34221
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const-string v1, "JfGeCXNtH9OkzyiNPcVTkTkkVF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "U8fcuMPJKIItC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v8, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 34222
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 34223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34224
    .end local v8    # "i":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/GR;->A00()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 34225
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 34226
    const/4 v0, 0x0

    return-object v0

    .line 34227
    :cond_2
    iget v7, v3, Lcom/facebook/ads/redexgen/X/GR;->A02:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A04:I

    add-int/2addr v7, v0

    .line 34228
    .local v1, "startPadding":I
    rsub-int/lit8 v6, v7, 0x20

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v6, v0

    .line 34229
    .local v0, "endPadding":I
    sub-int v5, v7, v6

    .line 34230
    .local v2, "startEndPaddingDelta":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A00:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x3

    if-lt v1, v0, :cond_3

    if-gez v6, :cond_6

    .line 34231
    :cond_3
    const/high16 v13, 0x3f000000    # 0.5f

    .line 34232
    .local v8, "position":F
    const/4 v14, 0x1

    .line 34233
    .local v4, "positionAnchor":I
    .end local v0    # "endPadding":I
    .local v0, "position":F
    .local v1, "positionAnchor":I
    :goto_1
    iget v1, v3, Lcom/facebook/ads/redexgen/X/GR;->A00:I

    const/4 v0, 0x1

    if-eq v1, v0, :cond_4

    iget v1, v3, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_5

    .line 34234
    .end local v8    # "position":F
    .end local v4    # "positionAnchor":I
    :cond_4
    const/4 v12, 0x2

    .line 34235
    .restart local v8    # "position":F
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    add-int/lit8 v0, v0, -0xf

    .line 34236
    .restart local v4    # "positionAnchor":I
    add-int/lit8 v0, v0, -0x2

    .line 34237
    .end local v8    # "position":F
    .end local v4    # "positionAnchor":I
    .local v0, "line":I
    .local v0, "lineAnchor":I
    :goto_2
    new-instance v7, Lcom/facebook/ads/redexgen/X/GK;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v10, v0

    const/4 v11, 0x1

    const/4 v15, 0x1

    .end local v0    # "lineAnchor":I
    .local v1, "line":I
    invoke-direct/range {v7 .. v15}, Lcom/facebook/ads/redexgen/X/GK;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v7

    .line 34238
    :cond_5
    const/4 v12, 0x0

    .line 34239
    .local v8, "lineAnchor":I
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    .local v4, "line":I
    goto :goto_2

    .line 34240
    .end local v8    # "lineAnchor":I
    .end local v4    # "line":I
    :cond_6
    iget v0, v3, Lcom/facebook/ads/redexgen/X/GR;->A00:I

    const v2, 0x3dcccccd    # 0.1f

    const v13, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x42000000    # 32.0f

    if-ne v0, v4, :cond_7

    if-lez v5, :cond_7

    .line 34241
    rsub-int/lit8 v0, v6, 0x20

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 34242
    .restart local v8    # "lineAnchor":I
    mul-float/2addr v13, v0

    add-float/2addr v13, v2

    .line 34243
    .end local v8    # "lineAnchor":I
    .local v0, "position":F
    const/4 v14, 0x2

    .local v8, "positionAnchor":I
    goto :goto_1

    .line 34244
    .end local v8    # "positionAnchor":I
    .end local v0    # "position":F
    :cond_7
    int-to-float v0, v7

    div-float/2addr v0, v1

    .line 34245
    .local v8, "position":F
    mul-float/2addr v13, v0

    add-float/2addr v13, v2

    .line 34246
    .end local v8    # "position":F
    .restart local v0    # "position":F
    const/4 v14, 0x0

    goto :goto_1
.end method

.method public final A06()V
    .locals 6

    .line 34247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 34248
    .local p0, "length":I
    if-lez v4, :cond_1

    .line 34249
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v1, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 34250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 34251
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const-string v1, "cQse4OX3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "MGHTHr2HMLcimDeu5sZkGF"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/GQ;

    .line 34252
    .local v4, "style":Lcom/facebook/ads/redexgen/X/GQ;
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    if-ne v0, v4, :cond_1

    .line 34253
    iget v0, v1, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/GQ;->A00:I

    .line 34254
    .end local v4    # "style":Lcom/facebook/ads/redexgen/X/GQ;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 34255
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final A07()V
    .locals 3

    .line 34256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/GR;->A00()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34259
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GR;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 34260
    .local p0, "numRows":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 34261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 34262
    :cond_0
    return-void
.end method

.method public final A08(C)V
    .locals 1

    .line 34263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34264
    return-void
.end method

.method public final A09(I)V
    .locals 2

    .line 34265
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GR;->A00:I

    .line 34266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 34268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 34269
    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    .line 34270
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GR;->A02:I

    .line 34271
    iput v1, p0, Lcom/facebook/ads/redexgen/X/GR;->A04:I

    .line 34272
    return-void
.end method

.method public final A0A(I)V
    .locals 0

    .line 34273
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GR;->A01:I

    .line 34274
    return-void
.end method

.method public final A0B(I)V
    .locals 0

    .line 34275
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GR;->A02:I

    .line 34276
    return-void
.end method

.method public final A0C(I)V
    .locals 0

    .line 34277
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GR;->A03:I

    .line 34278
    return-void
.end method

.method public final A0D(I)V
    .locals 0

    .line 34279
    iput p1, p0, Lcom/facebook/ads/redexgen/X/GR;->A04:I

    .line 34280
    return-void
.end method

.method public final A0E(IZ)V
    .locals 3

    .line 34281
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GQ;

    invoke-direct {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/GQ;-><init>(IZI)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34282
    return-void
.end method

.method public final A0F()Z
    .locals 4

    .line 34283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A07:Ljava/util/List;

    .line 34284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 34285
    sget-object v2, Lcom/facebook/ads/redexgen/X/GR;->A08:[Ljava/lang/String;

    const-string v1, "ONSLHBaiVChTiCDyCbz7MeGvMb5ZJwv8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "WV9KVve3dIDV1UZxgbczLfOjx2KW4DPJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34286
    :goto_0
    return v0

    .line 34287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 34288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GR;->A05:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
