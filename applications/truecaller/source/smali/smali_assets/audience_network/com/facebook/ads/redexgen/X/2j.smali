.class public final Lcom/facebook/ads/redexgen/X/2j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/ViewParent;

.field public A01:Landroid/view/ViewParent;

.field public A02:Z

.field public A03:[I

.field public final A04:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "efs8eZdEWHsCfUb6qOzicmMnQm4SneBY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GPD1kjm6fR3i7blABsL8PkfqVt5tQ0ec"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1ZMAOqgxiysbgCK2QhJ8YR6mzQdOOVTU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tADzoHnDRwqyF4JfOWpRm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2dCxtsKJi8key4A0"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YZUwpVg0T4azRRaUQd2X9mlkfrI9cQeh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "C6BrW2LKkOXM7XSn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    .line 6146
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6148
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    .line 6149
    return-void
.end method

.method private A00(I)Landroid/view/ViewParent;
    .locals 1

    .line 6150
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6151
    const/4 v0, 0x0

    return-object v0

    .line 6152
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Landroid/view/ViewParent;

    return-object v0

    .line 6153
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Landroid/view/ViewParent;

    return-object v0
.end method

.method private A01(ILandroid/view/ViewParent;)V
    .locals 1

    .line 6154
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 6155
    :goto_0
    return-void

    .line 6156
    :cond_0
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2j;->A00:Landroid/view/ViewParent;

    goto :goto_0

    .line 6157
    :cond_1
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2j;->A01:Landroid/view/ViewParent;

    .line 6158
    goto :goto_0
.end method


# virtual methods
.method public final A02()V
    .locals 1

    .line 6159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2j;->A03(I)V

    .line 6160
    return-void
.end method

.method public final A03(I)V
    .locals 2

    .line 6161
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 6162
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 6163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/3H;->A02(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 6164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2j;->A01(ILandroid/view/ViewParent;)V

    .line 6165
    :cond_0
    return-void
.end method

.method public final A04(Z)V
    .locals 1

    .line 6166
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A02:Z

    if-eqz v0, :cond_0

    .line 6167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/31;->A08(Landroid/view/View;)V

    .line 6168
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2j;->A02:Z

    .line 6169
    return-void
.end method

.method public final A05()Z
    .locals 1

    .line 6170
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2j;->A09(I)Z

    move-result v0

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 6171
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A02:Z

    return v0
.end method

.method public final A07(FF)Z
    .locals 2

    .line 6172
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2j;->A06()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 6173
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 6174
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 6175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3H;->A06(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    return v0

    .line 6176
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v0
.end method

.method public final A08(FFZ)Z
    .locals 2

    .line 6177
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2j;->A06()Z

    move-result v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 6178
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)Landroid/view/ViewParent;

    move-result-object v1

    .line 6179
    .local p0, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_0

    .line 6180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3H;->A07(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    .line 6181
    .end local p0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v0
.end method

.method public final A09(I)Z
    .locals 1

    .line 6182
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0A(I)Z
    .locals 1

    .line 6183
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2j;->A0B(II)Z

    move-result v0

    return v0
.end method

.method public final A0B(II)Z
    .locals 5

    .line 6184
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/2j;->A09(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 6185
    return v4

    .line 6186
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2j;->A06()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6187
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    .line 6188
    .local p0, "p":Landroid/view/ViewParent;
    sget-object v2, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const-string v1, "WHooJguTbRSPJrOooyt3LEnarcCTCzBe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "8Bjeqw0rr3DdKBFvYwfvH0FxnGa8049d"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    .line 6189
    .local p2, "child":Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_4

    .line 6190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static {v3, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3H;->A08(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6191
    invoke-direct {p0, p2, v3}, Lcom/facebook/ads/redexgen/X/2j;->A01(ILandroid/view/ViewParent;)V

    .line 6192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static {v3, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3H;->A05(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 6193
    return v4

    .line 6194
    :cond_1
    instance-of v0, v3, Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6195
    move-object v1, v3

    check-cast v1, Landroid/view/View;

    .line 6196
    :cond_2
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6197
    .end local p0    # "p":Landroid/view/ViewParent;
    .end local p2    # "child":Landroid/view/View;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public final A0C(IIII[I)Z
    .locals 7
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6198
    const/4 v6, 0x0

    move-object v0, p0

    move v2, p2

    move v1, p1

    move v3, p3

    move-object v5, p5

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/2j;->A0D(IIII[II)Z

    move-result v0

    return v0
.end method

.method public final A0D(IIII[II)Z
    .locals 14
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6199
    move-object v6, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2j;->A06()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 6200
    move/from16 v13, p6

    invoke-direct {p0, v13}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)Landroid/view/ViewParent;

    move-result-object v7

    .line 6201
    .local v13, "parent":Landroid/view/ViewParent;
    if-nez v7, :cond_0

    .line 6202
    return v5

    .line 6203
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v4, p5

    move/from16 v10, p2

    move v9, p1

    move/from16 v11, p3

    move/from16 v12, p4

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v11, :cond_1

    if-eqz v12, :cond_4

    .line 6204
    :cond_1
    const/4 v2, 0x0

    .line 6205
    .local v12, "startX":I
    const/4 v1, 0x0

    .line 6206
    .local v4, "startY":I
    if-eqz v4, :cond_2

    .line 6207
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6208
    aget v2, v4, v5

    .line 6209
    aget v1, v4, v3

    .line 6210
    .end local v12    # "startX":I
    .end local v4    # "startY":I
    .local v3, "startX":I
    .local v2, "startY":I
    :cond_2
    iget-object v8, v6, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/3H;->A03(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 6211
    if-eqz v4, :cond_3

    .line 6212
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6213
    aget v0, v4, v5

    sub-int/2addr v0, v2

    aput v0, v4, v5

    .line 6214
    aget v0, v4, v3

    sub-int/2addr v0, v1

    aput v0, v4, v3

    .line 6215
    :cond_3
    return v3

    .line 6216
    :cond_4
    if-eqz v4, :cond_5

    .line 6217
    aput v5, v4, v5

    .line 6218
    aput v5, v4, v3

    .line 6219
    :cond_5
    return v5
.end method

.method public final A0E(II[I[I)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6220
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p2

    move v1, p1

    move-object v4, p4

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/2j;->A0F(II[I[II)Z

    move-result v0

    return v0
.end method

.method public final A0F(II[I[II)Z
    .locals 16
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v14, p3

    .line 6221
    move-object/from16 v1, p0

    move-object v4, v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2j;->A06()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_b

    .line 6222
    move/from16 v15, p5

    invoke-direct {v1, v15}, Lcom/facebook/ads/redexgen/X/2j;->A00(I)Landroid/view/ViewParent;

    move-result-object v10

    .line 6223
    .local v15, "parent":Landroid/view/ViewParent;
    if-nez v10, :cond_0

    .line 6224
    return v9

    .line 6225
    :cond_0
    const/4 v8, 0x1

    move/from16 v13, p2

    move-object/from16 v3, p4

    move/from16 v12, p1

    if-nez v12, :cond_1

    if-eqz v13, :cond_a

    .line 6226
    :cond_1
    const/4 v7, 0x0

    .line 6227
    .local v3, "startX":I
    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_9

    .line 6228
    .local v15, "startY":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const-string v1, "3VbjZKhXDsexEmt2meqPVZABMNEQkFPW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    .line 6229
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6230
    aget v7, v3, v9

    .line 6231
    aget v6, v3, v8

    .line 6232
    .end local v3    # "startX":I
    .end local v15    # "startY":I
    .local v8, "startX":I
    .local v7, "startY":I
    :cond_2
    if-nez v14, :cond_4

    .line 6233
    iget-object v5, v4, Lcom/facebook/ads/redexgen/X/2j;->A03:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    .line 6234
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, v4, Lcom/facebook/ads/redexgen/X/2j;->A03:[I

    .line 6235
    :cond_3
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/2j;->A03:[I

    .line 6236
    .end local v1
    .local v3, "consumed":[I
    .end local v1
    .local v6, "consumed":[I
    :cond_4
    aput v9, v14, v9

    .line 6237
    aput v9, v14, v8

    .line 6238
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-static/range {v10 .. v15}, Lcom/facebook/ads/redexgen/X/3H;->A04(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 6239
    if-eqz v3, :cond_5

    .line 6240
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/2j;->A04:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 6241
    aget v0, v3, v9

    sub-int/2addr v0, v7

    aput v0, v3, v9

    .line 6242
    aget v0, v3, v8

    sub-int/2addr v0, v6

    aput v0, v3, v8

    .line 6243
    :cond_5
    aget v0, v14, v9

    if-nez v0, :cond_6

    aget v0, v14, v8

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return v8

    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/2j;->A05:[Ljava/lang/String;

    const-string v1, "gHL5QaZEq3qu3ZW6"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "on2hgQBHubksAtN0"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    goto :goto_0

    .line 6244
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 6245
    :cond_a
    if-eqz v3, :cond_b

    .line 6246
    aput v9, v3, v9

    .line 6247
    aput v9, v3, v8

    .line 6248
    :cond_b
    return v9
.end method
