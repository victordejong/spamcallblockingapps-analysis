.class public final Lcom/facebook/ads/redexgen/X/Pz;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PZ;


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Lcom/facebook/ads/NativeBannerAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/XT;

.field public final A02:Ljava/util/ArrayList;
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
    .locals 2

    .line 49455
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pz;->A04:I

    .line 49456
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pz;->A03:I

    .line 49457
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pz;->A05:I

    .line 49458
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pz;->A07:I

    .line 49459
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pz;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/redexgen/X/Ju;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 14

    .line 49460
    move-object v1, p0

    move-object v9, p1

    invoke-direct {p0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Pz;->A02:Ljava/util/ArrayList;

    .line 49462
    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Pz;->A00:Lcom/facebook/ads/NativeBannerAd;

    .line 49463
    iput-object v9, v1, Lcom/facebook/ads/redexgen/X/Pz;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 49464
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pz;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49465
    .local v0, "commonLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49466
    move-object/from16 v11, p4

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Pz;->A00(Lcom/facebook/ads/redexgen/X/Ju;)I

    move-result v2

    .line 49467
    .local v0, "iconSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Pz;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v6, Lcom/facebook/ads/redexgen/X/OB;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/OB;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 49468
    .local v3, "iconContainer":Lcom/facebook/ads/redexgen/X/OB;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/OB;->setFullCircleCorners(Z)V

    .line 49469
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49470
    .local v4, "iconContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49471
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, p5

    invoke-virtual {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/OB;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49472
    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49473
    new-instance v8, Lcom/facebook/ads/redexgen/X/PW;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/Pz;->A00:Lcom/facebook/ads/NativeBannerAd;

    const/16 v6, 0x10

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/PW;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/Ju;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/AdOptionsView;)V

    .line 49474
    .local v12, "contentView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A06:I

    invoke-virtual {v8, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 49475
    const/4 v7, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49476
    .local v11, "contentViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49477
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49478
    invoke-virtual {v3, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49479
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ju;->A0A:Lcom/facebook/ads/redexgen/X/Ju;

    if-ne v11, v0, :cond_0

    .line 49480
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Pz;->setPadding(IIII)V

    .line 49481
    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/Pz;->setOrientation(I)V

    .line 49482
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49483
    .local v1, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49484
    .local v2, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A07:I

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 49485
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 49486
    invoke-virtual {v1, v3, v6}, Lcom/facebook/ads/redexgen/X/Pz;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49487
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pz;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49488
    .local v1, "ctaButton":Landroid/widget/TextView;
    sget v3, Lcom/facebook/ads/redexgen/X/Pz;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A07:I

    invoke-virtual {v4, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49489
    invoke-virtual {v12, v4}, Lcom/facebook/ads/redexgen/X/Jt;->A05(Landroid/widget/TextView;)V

    .line 49490
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Pz;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49491
    invoke-virtual {v1, v4, v5}, Lcom/facebook/ads/redexgen/X/Pz;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49492
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Pz;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49493
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Pz;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49494
    return-void

    .line 49495
    .end local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "ctaButton":Landroid/widget/TextView;
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Pz;->setPadding(IIII)V

    .line 49496
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pz;->setOrientation(I)V

    .line 49497
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49498
    .local v13, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49499
    .restart local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A06:I

    invoke-virtual {v3, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Ju;)I
    .locals 2

    .line 49500
    sget-object v1, Lcom/facebook/ads/redexgen/X/PX;->A00:[I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ju;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 49501
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A05:I

    return v0

    .line 49502
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A03:I

    return v0

    .line 49503
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Pz;->A04:I

    return v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 49504
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

    .line 49505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pz;->A02:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final unregisterView()V
    .locals 1

    .line 49506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pz;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 49507
    return-void
.end method
