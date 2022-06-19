.class public final Lcom/facebook/ads/redexgen/X/Sp;
.super Lcom/facebook/ads/redexgen/X/N1;
.source ""


# static fields
.field public static A05:[B

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public final A00:Landroid/widget/HorizontalScrollView;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Landroid/widget/LinearLayout;

.field public final A03:Landroid/widget/LinearLayout;

.field public final A04:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 52726
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sp;->A0B()V

    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sp;->A08:I

    .line 52727
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sp;->A07:I

    .line 52728
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sp;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V
    .locals 6

    .line 52729
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V

    .line 52730
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 52731
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    .line 52732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/Sp;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 52733
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 52735
    sget v0, Lcom/facebook/ads/redexgen/X/Sp;->A06:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52736
    .local p0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52737
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    .line 52738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52739
    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52740
    .local p1, "contentParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52741
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/HorizontalScrollView;

    invoke-direct {v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A00:Landroid/widget/HorizontalScrollView;

    .line 52742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 52743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52744
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A00:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52745
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sp;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    .line 52746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52747
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 52748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 52749
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52750
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A00:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Sp;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 52753
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sp;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sp;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x39t
        -0x1at
        -0x18t
        -0x10t
        -0x5ct
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x7ft
        -0x5et
        -0x3bt
        -0x7ft
        -0x4dt
        -0x3at
        -0x2ft
        -0x30t
        -0x2dt
        -0x2bt
        -0x36t
        -0x31t
        -0x38t
    .end array-data
.end method


# virtual methods
.method public final A0K()V
    .locals 6

    .line 52754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0F:Lcom/facebook/ads/redexgen/X/MD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52755
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NA;-><init>(Lcom/facebook/ads/redexgen/X/Sp;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52756
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v5, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52758
    .local p0, "hideAdView":Lcom/facebook/ads/redexgen/X/N5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 52759
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0B(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    .line 52760
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52761
    new-instance v0, Lcom/facebook/ads/redexgen/X/NB;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/NB;-><init>(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/N5;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v4, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52763
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/N5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 52764
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0F(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    .line 52765
    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52766
    new-instance v0, Lcom/facebook/ads/redexgen/X/NC;

    invoke-direct {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/NC;-><init>(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/N5;)V

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52767
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v3, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52768
    .local v0, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/N5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    .line 52769
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0G(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A07:Lcom/facebook/ads/redexgen/X/MD;

    .line 52770
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52771
    new-instance v0, Lcom/facebook/ads/redexgen/X/ND;

    invoke-direct {v0, p0, v3}, Lcom/facebook/ads/redexgen/X/ND;-><init>(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/N5;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52772
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52773
    .local v0, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Sp;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52779
    return-void
.end method

.method public final A0L()V
    .locals 0

    .line 52780
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0I(Landroid/view/View;)V

    .line 52781
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52782
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 4

    .line 52783
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52784
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sp;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52785
    .local p0, "reviewText":Landroid/widget/TextView;
    const/4 v1, 0x1

    const/16 v0, 0xe

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 52786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A07(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52787
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52790
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52791
    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 6

    .line 52792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A03:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52793
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A09:Lcom/facebook/ads/redexgen/X/MD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NE;-><init>(Lcom/facebook/ads/redexgen/X/Sp;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52795
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sp;->A01:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sp;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52797
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sp;->A00:Landroid/widget/HorizontalScrollView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 52798
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52799
    .local p0, "optionItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/Sp;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v5, v0, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52800
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2D;->A05()Ljava/util/List;

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

    .line 52801
    .local p2, "option":Lcom/facebook/ads/redexgen/X/2D;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A04:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52802
    .local v0, "optionView":Lcom/facebook/ads/redexgen/X/N5;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2D;->A04()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52803
    new-instance v0, Lcom/facebook/ads/redexgen/X/NF;

    invoke-direct {v0, p0, v2, v3}, Lcom/facebook/ads/redexgen/X/NF;-><init>(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/N5;Lcom/facebook/ads/redexgen/X/2D;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sp;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52805
    .end local p2    # "option":Lcom/facebook/ads/redexgen/X/2D;
    .end local v0    # "optionView":Lcom/facebook/ads/redexgen/X/N5;
    goto :goto_0

    .line 52806
    :cond_0
    return-void
.end method

.method public final A0O()Z
    .locals 1

    .line 52807
    const/4 v0, 0x1

    return v0
.end method
