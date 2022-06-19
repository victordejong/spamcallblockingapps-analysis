.class public final Lcom/facebook/ads/redexgen/X/Px;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PZ;


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public A00:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/MediaView;

.field public final A05:Lcom/facebook/ads/NativeAd;

.field public final A06:Lcom/facebook/ads/redexgen/X/Pa;

.field public final A07:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
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

    const-string v0, "LrUXeZd5oXG5wJ7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S6ePTdxfK6c7yhvbHMQjZqIgQsLDz3QO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YqVXoEdDoNpK3nL0El5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Exhg7LXIw6HgSAmcccR052cOKtX3WF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "59F20xOEewuTmZzPatOKMeF6XI6ZvB1j"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IRBrDKvf2o0dBHWjf99N02m12yrR0Bg7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KZ90h8EmVWfLUNKv0pT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    .line 49304
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Px;->A0E:I

    .line 49305
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Px;->A0D:I

    .line 49306
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    .line 49307
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x43af0000    # 350.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Px;->A0A:I

    .line 49308
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Px;->A09:I

    .line 49309
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x432f0000    # 175.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Px;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/redexgen/X/Ju;Lcom/facebook/ads/redexgen/X/OA;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 7

    .line 49310
    move-object v2, p1

    invoke-direct {p0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A07:Ljava/util/ArrayList;

    .line 49312
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    .line 49313
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    .line 49314
    new-instance v1, Lcom/facebook/ads/redexgen/X/Pa;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    move-object v4, p3

    move-object v6, p7

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeAd;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/redexgen/X/OA;Lcom/facebook/ads/AdOptionsView;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A06:Lcom/facebook/ads/redexgen/X/Pa;

    .line 49315
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Px;->A06:Lcom/facebook/ads/redexgen/X/Pa;

    sget v1, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0E:I

    invoke-virtual {v2, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/Pa;->setPadding(IIII)V

    .line 49316
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A06:Lcom/facebook/ads/redexgen/X/Pa;

    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Px;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49317
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ju;->A09:Lcom/facebook/ads/redexgen/X/Ju;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ju;->A0B:Lcom/facebook/ads/redexgen/X/Ju;

    if-ne p4, v0, :cond_1

    .line 49318
    :cond_0
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Px;->A07(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 49319
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49320
    .local p0, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Px;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49321
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ju;->A0B:Lcom/facebook/ads/redexgen/X/Ju;

    if-ne p4, v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    .line 49322
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCreativeType()Lcom/facebook/ads/NativeAd$AdCreativeType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/NativeAd$AdCreativeType;->CAROUSEL:Lcom/facebook/ads/NativeAd$AdCreativeType;

    if-eq v1, v0, :cond_3

    .line 49323
    :cond_2
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Px;->A06(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 49324
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Px;->A04(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 49325
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Px;->A05(Lcom/facebook/ads/redexgen/X/Jt;)V

    .line 49326
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A07:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A07:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49328
    return-void
.end method

.method private A00()I
    .locals 8

    .line 49329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 49330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    .line 49331
    .local p0, "linkDescHeight":I
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_5

    sget-object v3, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    const-string v1, "SrhbzBCrZmwJCsE1GN19GBhRpshhKBl4"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "lZXGEU0s5y97LRskCQS4IC0Q6rEMlB8o"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 49332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    .line 49333
    .local v2, "titleHeight":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 49334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    .line 49335
    .local v0, "subtitleHeight":I
    :goto_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_4

    sget-object v3, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    const-string v1, "nRuc5lutSXPKh9f7kKzdW2kIhLu3nB9m"

    const/4 v0, 0x6

    aput-object v1, v3, v0

    const-string v1, "FuxAmHJZMOFMUG38wB3yXnFuBZuRMBRE"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 49336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    add-int/2addr v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0D:I

    add-int/2addr v2, v0

    .line 49337
    .local v0, "ctaHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Px;->getMeasuredHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A06:Lcom/facebook/ads/redexgen/X/Pa;

    .line 49338
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pa;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v7

    sub-int/2addr v1, v6

    sub-int/2addr v1, v5

    sub-int/2addr v1, v2

    .line 49339
    return v1

    .line 49340
    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .line 49341
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 49342
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .locals 2

    .line 49343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49344
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 49345
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 49346
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 49347
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 49348
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 49349
    :cond_2
    return-void
.end method

.method private A02(I)V
    .locals 3

    .line 49350
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    .line 49351
    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0B:I

    const/4 v2, 0x0

    if-le p1, v0, :cond_2

    const/4 v0, 0x0

    .line 49352
    :goto_0
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 49353
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    .line 49354
    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0A:I

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    .line 49355
    :goto_1
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 49356
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    .line 49357
    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A09:I

    if-le p1, v0, :cond_0

    .line 49358
    :goto_2
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 49359
    return-void

    .line 49360
    :cond_0
    const/16 v2, 0x8

    goto :goto_2

    .line 49361
    :cond_1
    const/16 v0, 0x8

    goto :goto_1

    .line 49362
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static varargs A03(II[Landroid/widget/TextView;)V
    .locals 6

    .line 49363
    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, p2, v4

    .line 49364
    .local p2, "tv":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 49365
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/M5;->A04(Landroid/widget/TextView;I)I

    move-result v2

    .line 49366
    .local v5, "extraLines":I
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 49367
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 49368
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 49369
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v3, p0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 49370
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 49371
    .end local p2    # "tv":Landroid/widget/TextView;
    .end local v5    # "extraLines":I
    .end local v4    # "heightMeasureSpec":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49372
    :cond_1
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 4

    .line 49373
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49374
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Px;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    .line 49375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A06(Landroid/widget/TextView;)V

    .line 49376
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49377
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    sget v1, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49378
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Px;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49379
    :cond_0
    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 3

    .line 49380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49381
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Px;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    .line 49382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 49383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A05(Landroid/widget/TextView;)V

    .line 49384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49385
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0D:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49386
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 49387
    .local p0, "ctaParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Px;->A0D:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 49388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Px;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49389
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A07:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49390
    .end local p0    # "ctaParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 4

    .line 49391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49392
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Px;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    .line 49393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A07(Landroid/widget/TextView;)V

    .line 49394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49395
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    sget v2, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    sget v1, Lcom/facebook/ads/redexgen/X/Px;->A0D:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49396
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Px;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49397
    :cond_0
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 4

    .line 49398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    .line 49399
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49400
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Px;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    .line 49401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A06(Landroid/widget/TextView;)V

    .line 49402
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdLinkDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49403
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    sget v2, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0D:I

    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49404
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Px;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49405
    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 49406
    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 49407
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A07:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 4

    .line 49408
    .local p0, "top":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A06:Lcom/facebook/ads/redexgen/X/Pa;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Pa;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/redexgen/X/Pa;->layout(IIII)V

    .line 49409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A06:Lcom/facebook/ads/redexgen/X/Pa;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pa;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 49410
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 49411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 49412
    .local p1, "viewHeight":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    add-int v0, p3, v2

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 49413
    add-int/2addr p3, v2

    .line 49414
    .end local p1    # "viewHeight":I
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v1}, Lcom/facebook/ads/MediaView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Lcom/facebook/ads/MediaView;->layout(IIII)V

    .line 49415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 49416
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 49417
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 49418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, v0

    .line 49419
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 49420
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Px;->A08:[Ljava/lang/String;

    const-string v1, "gjv6mmFqHT0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {v3, p2, p3, p4, v0}, Landroid/widget/TextView;->layout(IIII)V

    .line 49421
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Px;->A01:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 49422
    sget v2, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    add-int/2addr v2, p2

    .line 49423
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    sub-int v1, p5, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Px;->A0C:I

    sub-int/2addr v1, v0

    sub-int/2addr p4, v0

    sub-int/2addr p5, v0

    .line 49424
    invoke-virtual {v3, v2, v1, p4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 49425
    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 49426
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Px;->A02(I)V

    .line 49427
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Px;->A01()V

    .line 49428
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 49429
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Px;->A00()I

    move-result v2

    .line 49430
    .local p0, "emptySpace":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 49431
    .end local p1    # null:I
    :cond_0
    move v3, v2

    .line 49432
    .restart local p1    # null:I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    const/high16 v0, 0x40000000    # 2.0f

    .line 49433
    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 49434
    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/MediaView;->measure(II)V

    .line 49435
    if-ge v3, v2, :cond_1

    .line 49436
    sub-int/2addr v2, v3

    const/4 v0, 0x3

    new-array v3, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A02:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A00:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A03:Landroid/widget/TextView;

    aput-object v0, v3, v1

    invoke-static {p1, v2, v3}, Lcom/facebook/ads/redexgen/X/Px;->A03(II[Landroid/widget/TextView;)V

    .line 49437
    :cond_1
    return-void

    .line 49438
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b8;->A0J()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49439
    move v3, v2

    .local p1, "mediaViewHeight":I
    goto :goto_0

    .line 49440
    .end local p1    # "mediaViewHeight":I
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaHeight()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 49441
    .local p1, "aspectRatio":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A04:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 49442
    .local p2, "requiredHeight":I
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .end local p2    # "requiredHeight":I
    .local p1, "mediaViewHeight":I
    goto :goto_0
.end method

.method public final unregisterView()V
    .locals 1

    .line 49443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Px;->A05:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 49444
    return-void
.end method
