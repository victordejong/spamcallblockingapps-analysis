.class public final Lcom/facebook/ads/redexgen/X/MW;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Landroid/widget/TextView;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/Jt;

.field public final A07:Lcom/facebook/ads/redexgen/X/Sv;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uC9D5qmNt6hBQ30WTqHbWjXyd7i1Eya7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gODvKHA4maP1ueedVTfLSKuHicNhKgsI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CsSG52h0mPiGpGKpZqt1sL51qY2PgKJk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t8ZdPgNdDyW7PJ5OFmmKGTW0QKkF2iLl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "957CjoSzFmlmvQzAWdXFvCjH6Z48RGY7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Wj5TDMvsQRhldaVPvD6nNpKwpdYrUsC9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EcmINfrxIVIGvxUX8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "04S0zAGn7nkSUB63PmP3o85Q9zROVkT0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MW;->A08:[Ljava/lang/String;

    .line 44496
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A09:I

    .line 44497
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0H:I

    .line 44498
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0D:I

    .line 44499
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0B:I

    .line 44500
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0G:I

    .line 44501
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0E:I

    .line 44502
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0C:I

    .line 44503
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0F:I

    .line 44504
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/MW;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Jt;)V
    .locals 1

    .line 44505
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 44506
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    .line 44507
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    .line 44508
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    .line 44509
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    .line 44510
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    .line 44511
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    .line 44512
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/RelativeLayout;

    .line 44513
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sv;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    .line 44514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A09()V

    .line 44515
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0D()V

    .line 44516
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A05()V

    .line 44517
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0A()V

    .line 44518
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A00()V

    .line 44519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0B()V

    .line 44520
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A03()V

    .line 44521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0A()V

    .line 44522
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A08()V

    .line 44523
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A0C()V

    .line 44524
    return-void
.end method

.method private A00()V
    .locals 3

    .line 44525
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44526
    .local p0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 44527
    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44528
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44529
    return-void
.end method

.method private A01()V
    .locals 4

    .line 44530
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44531
    .local p0, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 44533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44534
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44535
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0G:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 44537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 44538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44539
    return-void
.end method

.method private A02()V
    .locals 3

    .line 44540
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44541
    .local p0, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/MW;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0D:I

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 44543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44544
    return-void
.end method

.method private A03()V
    .locals 3

    .line 44545
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44546
    .local p0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44547
    return-void
.end method

.method private A04()V
    .locals 4

    .line 44548
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44549
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sv;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sv;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44551
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sv;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44552
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/MW;->A0G:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 44553
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 44554
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44555
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 44556
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44557
    return-void

    :array_0
    .array-data 4
        -0x34000000    # -3.3554432E7f
        0x0
    .end array-data
.end method

.method private A05()V
    .locals 2

    .line 44558
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44559
    .local p0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44560
    return-void
.end method

.method private A06()V
    .locals 2

    .line 44561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44562
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44564
    return-void
.end method

.method private A07()V
    .locals 3

    .line 44565
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0H:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->setMaxWidth(I)V

    .line 44566
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44567
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jt;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44568
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44570
    return-void
.end method

.method private A08()V
    .locals 2

    .line 44571
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0C:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44572
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44574
    return-void
.end method

.method private A09()V
    .locals 3

    .line 44575
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MW;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44576
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44577
    .local p0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A01()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44578
    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0F:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 44579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A06:Lcom/facebook/ads/redexgen/X/Jt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jt;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 44580
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/MW;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44581
    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0A:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/MW;->setPadding(IIII)V

    .line 44582
    return-void
.end method

.method private A0A()V
    .locals 1

    .line 44583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44584
    return-void
.end method

.method private A0B()V
    .locals 6

    .line 44585
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Sv;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44586
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    const/16 v0, 0x8

    new-array v3, v0, [F

    sget v5, Lcom/facebook/ads/redexgen/X/MW;->A0F:I

    int-to-float v1, v5

    const/4 v0, 0x0

    aput v1, v3, v0

    int-to-float v0, v5

    const/4 v2, 0x1

    aput v0, v3, v2

    int-to-float v1, v5

    const/4 v0, 0x2

    aput v1, v3, v0

    int-to-float v1, v5

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v1, 0x0

    const/4 v0, 0x4

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/OA;->setRadius([F)V

    .line 44587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Sv;->setAdjustViewBounds(Z)V

    .line 44588
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 44589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44590
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 44591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44595
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44596
    .local p0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0E:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44598
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 44599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 44601
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44602
    .local v0, "subTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44603
    sget v0, Lcom/facebook/ads/redexgen/X/MW;->A0E:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44605
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 44606
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 44608
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 44609
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 44610
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A07:Lcom/facebook/ads/redexgen/X/Sv;

    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 44611
    sget v0, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    float-to-int v1, v0

    .line 44612
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MW;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0C(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    .line 44613
    .local p0, "heightThreshold":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 44614
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/MW;->A08:[Ljava/lang/String;

    const-string v1, "15DEnWMwGzueTnQFE8qATib1q5d5oHj9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kyJeuSgnvxhO6LbcYzomu9S0GmVFz9Qa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 44615
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A01()V

    .line 44616
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A07()V

    .line 44617
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->onMeasure(II)V

    .line 44618
    return-void

    .line 44619
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A02()V

    .line 44620
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A04()V

    .line 44621
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MW;->A06()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 4

    .line 44622
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44623
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MW;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44624
    return-void

    .line 44625
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 44626
    .local p0, "spanString":Landroid/text/SpannableString;
    const/4 v0, 0x1

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 44627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44628
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 44629
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44630
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44631
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44632
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 44633
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44634
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44635
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MW;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44636
    return-void
.end method
