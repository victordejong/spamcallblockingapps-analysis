.class public final Lcom/facebook/ads/redexgen/X/NJ;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/2D;

.field public final A01:Lcom/facebook/ads/redexgen/X/XT;

.field public final A02:Lcom/facebook/ads/redexgen/X/N3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45446
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42200000    # 40.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NJ;->A03:I

    .line 45447
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NJ;->A04:I

    .line 45448
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NJ;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/MD;)V
    .locals 6

    .line 45449
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v5, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/NJ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/N3;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 45450
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/N3;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V
    .locals 7
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 45451
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45452
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 45453
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NJ;->A00:Lcom/facebook/ads/redexgen/X/2D;

    .line 45454
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NJ;->A02:Lcom/facebook/ads/redexgen/X/N3;

    .line 45455
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/NJ;->setOrientation(I)V

    .line 45456
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45457
    .local p1, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 45458
    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/NJ;->A01(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    .line 45459
    .local p3, "headerView":Landroid/view/View;
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 45460
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45461
    .local p5, "separator":Landroid/view/View;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45462
    const v0, -0x9f9890

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 45463
    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/NJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45464
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/NJ;->addView(Landroid/view/View;)V

    .line 45465
    .end local p3    # "headerView":Landroid/view/View;
    .end local p5    # "separator":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A00:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A00:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/facebook/ads/redexgen/X/NJ;->A00(Lcom/facebook/ads/redexgen/X/MD;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45467
    .local p0, "subHeaderView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/NJ;->A05:I

    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 45468
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/NJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45469
    .end local p0    # "subHeaderView":Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/NJ;->A02()Landroid/view/ViewGroup;

    move-result-object v1

    .line 45470
    .local p0, "optionsView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/NJ;->A05:I

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 45471
    invoke-virtual {p0, v1, v3}, Lcom/facebook/ads/redexgen/X/NJ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45472
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/MD;Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 45473
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45474
    .local p0, "iconView":Landroid/widget/ImageView;
    const v1, -0x9f9890

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45475
    sget v0, Lcom/facebook/ads/redexgen/X/NJ;->A04:I

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45476
    .local p2, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45477
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45478
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45479
    .local v0, "textView":Landroid/widget/TextView;
    const/4 v4, 0x1

    const/16 v0, 0xe

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 45480
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45481
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45482
    .local p1, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45483
    sget v0, Lcom/facebook/ads/redexgen/X/NJ;->A05:I

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 45484
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 45485
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45486
    .local v7, "subHeaderView":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45487
    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45488
    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45489
    return-object v0
.end method

.method private A01(Ljava/lang/String;)Landroid/view/View;
    .locals 8

    .line 45490
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45491
    .local p0, "arrowImageView":Landroid/widget/ImageView;
    const v0, -0x9f9890

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45492
    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A09:Lcom/facebook/ads/redexgen/X/MD;

    .line 45493
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45494
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 45495
    sget v1, Lcom/facebook/ads/redexgen/X/NJ;->A05:I

    mul-int/lit8 v0, v1, 0x2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 45496
    sget v0, Lcom/facebook/ads/redexgen/X/NJ;->A03:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45497
    .local p1, "arrowParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Lcom/facebook/ads/redexgen/X/NH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NH;-><init>(Lcom/facebook/ads/redexgen/X/NJ;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45498
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45499
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 45500
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45501
    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 45502
    const v0, -0xe3e1df

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45503
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45504
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/NJ;->A03:I

    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 45505
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45506
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NJ;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45507
    .local v0, "header":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45508
    invoke-virtual {v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45509
    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45510
    return-object v0
.end method

.method private A02()Landroid/view/ViewGroup;
    .locals 6

    .line 45511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v5, Lcom/facebook/ads/redexgen/X/NP;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/NP;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 45512
    .local p0, "reportOptionsView":Lcom/facebook/ads/redexgen/X/NP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A00:Lcom/facebook/ads/redexgen/X/2D;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2D;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/2D;

    .line 45513
    .local v5, "reason":Lcom/facebook/ads/redexgen/X/2D;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 45514
    .local v0, "chipView":Lcom/facebook/ads/redexgen/X/N5;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2D;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 45515
    new-instance v0, Lcom/facebook/ads/redexgen/X/NI;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/NI;-><init>(Lcom/facebook/ads/redexgen/X/NJ;Lcom/facebook/ads/redexgen/X/N5;Lcom/facebook/ads/redexgen/X/2D;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45516
    invoke-virtual {v5, v2}, Lcom/facebook/ads/redexgen/X/NP;->addView(Landroid/view/View;)V

    .line 45517
    .end local v5    # "reason":Lcom/facebook/ads/redexgen/X/2D;
    .end local v0    # "chipView":Lcom/facebook/ads/redexgen/X/N5;
    goto :goto_0

    .line 45518
    :cond_0
    return-object v5
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/NJ;)Lcom/facebook/ads/redexgen/X/N3;
    .locals 0

    .line 45519
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/NJ;->A02:Lcom/facebook/ads/redexgen/X/N3;

    return-object p0
.end method
