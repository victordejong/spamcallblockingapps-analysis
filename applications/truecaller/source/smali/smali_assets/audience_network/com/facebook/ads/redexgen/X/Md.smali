.class public final Lcom/facebook/ads/redexgen/X/Md;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/widget/Button;

.field public final A02:Landroid/widget/Button;

.field public final A03:Landroid/widget/ImageView;

.field public final A04:Landroid/widget/LinearLayout;

.field public final A05:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44702
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    .line 44703
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A07:I

    .line 44704
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    .line 44705
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A0A:I

    .line 44706
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44707
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44708
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A05:Landroid/widget/TextView;

    .line 44709
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    .line 44710
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    .line 44711
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A03:Landroid/widget/ImageView;

    .line 44712
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    .line 44713
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44714
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    .line 44715
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44716
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A05:Landroid/widget/TextView;

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 44718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    const/16 v4, 0x12

    if-eqz v0, :cond_1

    .line 44719
    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44721
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 44722
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A03:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 44726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 44727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setTextColor(I)V

    .line 44728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 44729
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    invoke-virtual {v0, p7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 44731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 44732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 44733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 44734
    invoke-static {p3, v2}, Lcom/facebook/ads/redexgen/X/2N;->A01(II)I

    move-result v2

    .line 44735
    .local p0, "negativeButtonColor":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A07:I

    invoke-static {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0O(Landroid/view/View;II)V

    .line 44736
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A07:I

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0O(Landroid/view/View;II)V

    .line 44737
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Md;->A00()V

    .line 44738
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Md;->setGravity(I)V

    .line 44739
    return-void
.end method

.method private A00()V
    .locals 7

    .line 44740
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0A:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Md;->setPadding(IIII)V

    .line 44741
    const/4 v6, -0x2

    const/4 v5, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44742
    .local p0, "containerLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44743
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Md;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44745
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44746
    .local v5, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44747
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44748
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A03:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44749
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44750
    .local v2, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A05:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 44754
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44755
    .local v0, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 44757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44758
    .end local v0    # "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44759
    .local v0, "btnParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44760
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:Landroid/widget/Button;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44762
    return-void
.end method
