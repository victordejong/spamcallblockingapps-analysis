.class public final Lcom/facebook/ads/redexgen/X/So;
.super Lcom/facebook/ads/redexgen/X/N1;
.source ""


# static fields
.field public static A04:[B

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Landroid/widget/LinearLayout;

.field public final A02:Landroid/widget/ScrollView;

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 52624
    invoke-static {}, Lcom/facebook/ads/redexgen/X/So;->A0B()V

    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/So;->A07:I

    .line 52625
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/So;->A06:I

    .line 52626
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/So;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V
    .locals 4

    .line 52627
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;)V

    .line 52628
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 52629
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/So;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    .line 52630
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    sget v0, Lcom/facebook/ads/redexgen/X/So;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 52631
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    const v0, -0x9f9890

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 52632
    sget v0, Lcom/facebook/ads/redexgen/X/So;->A05:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52633
    .local p0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v0, 0x3

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52635
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/So;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    .line 52636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 52637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    const v0, -0xd000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 52638
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/So;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    .line 52639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52640
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/So;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52641
    const/4 v3, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52642
    .local p1, "mainLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52643
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52644
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/So;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x37

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/So;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x35t
        0x16t
        0x14t
        0x1ct
        0x69t
        0x46t
        0x45t
        0x59t
        0x4ft
        0xat
        0x6bt
        0x4et
        0xat
        0x78t
        0x4ft
        0x5at
        0x45t
        0x58t
        0x5et
        0x43t
        0x44t
        0x4dt
    .end array-data
.end method


# virtual methods
.method public final A0K()V
    .locals 9

    .line 52645
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0F:Lcom/facebook/ads/redexgen/X/MD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52646
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NK;-><init>(Lcom/facebook/ads/redexgen/X/So;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52647
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x4

    const/16 v1, 0x12

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52648
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52649
    .local p0, "hideAdView":Lcom/facebook/ads/redexgen/X/N5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 52650
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0B(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    .line 52651
    invoke-virtual {v7, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52652
    new-instance v0, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Lcom/facebook/ads/redexgen/X/So;Lcom/facebook/ads/redexgen/X/N5;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v6, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52654
    .local v1, "reportAdView":Lcom/facebook/ads/redexgen/X/N5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 52655
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0F(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    .line 52656
    invoke-virtual {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52657
    new-instance v0, Lcom/facebook/ads/redexgen/X/NM;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/NM;-><init>(Lcom/facebook/ads/redexgen/X/So;Lcom/facebook/ads/redexgen/X/N5;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v5, Lcom/facebook/ads/redexgen/X/N5;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/N5;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52659
    .local v0, "whyAmISeeingThisView":Lcom/facebook/ads/redexgen/X/N5;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 52660
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0G(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A07:Lcom/facebook/ads/redexgen/X/MD;

    .line 52661
    invoke-virtual {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/N5;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52662
    new-instance v0, Lcom/facebook/ads/redexgen/X/NN;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/NN;-><init>(Lcom/facebook/ads/redexgen/X/So;Lcom/facebook/ads/redexgen/X/N5;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/N5;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52663
    const/4 v8, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52664
    .local v0, "menuItemParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/So;->A07:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52665
    const/16 v1, 0x11

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52666
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/So;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52667
    .local v3, "menuLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52668
    const/4 v0, 0x0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52669
    .local v1, "menuParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52670
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52675
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52676
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52677
    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52678
    return-void
.end method

.method public final A0L()V
    .locals 0

    .line 52679
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0I(Landroid/view/View;)V

    .line 52680
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52681
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 6

    .line 52682
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52683
    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A05:Lcom/facebook/ads/redexgen/X/2B;

    if-ne p2, v0, :cond_0

    .line 52684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A09(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v5

    .line 52685
    .local p0, "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    .line 52686
    .local p1, "icon":Lcom/facebook/ads/redexgen/X/MD;
    const v3, -0x86dc5

    .line 52687
    .local p2, "iconBackground":I
    .restart local p2    # "iconBackground":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Mz;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Mz;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 52688
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Mz;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 52689
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A07(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    .line 52690
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2D;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52691
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mz;->A0K(Z)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52692
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Mz;->A0E(Lcom/facebook/ads/redexgen/X/MD;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52693
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Mz;->A0D(I)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52694
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mz;->A0L(Z)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52695
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Mz;->A0J(Z)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52696
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0M()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v3

    .line 52697
    .local v1, "adHiddenView":Lcom/facebook/ads/redexgen/X/N0;
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52698
    .local v0, "adHiddenViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52699
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 52702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52704
    return-void

    .line 52705
    .end local p0    # "title":Ljava/lang/String;
    .end local p1    # "icon":Lcom/facebook/ads/redexgen/X/MD;
    .end local p2    # "iconBackground":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0B(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v5

    .line 52706
    .restart local p0    # "title":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    .line 52707
    .restart local p1    # "icon":Lcom/facebook/ads/redexgen/X/MD;
    const v3, -0xca871b

    goto :goto_0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 6

    .line 52708
    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A05:Lcom/facebook/ads/redexgen/X/2B;

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    .line 52709
    .local p0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/So;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    .line 52710
    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    :goto_1
    new-instance v4, Lcom/facebook/ads/redexgen/X/NJ;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/N3;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52711
    .local p2, "optionChooserView":Landroid/view/View;
    const/4 v0, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52712
    .local p1, "optionChooserParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52713
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52714
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A09:Lcom/facebook/ads/redexgen/X/MD;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ME;->A01(Lcom/facebook/ads/redexgen/X/MD;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NO;-><init>(Lcom/facebook/ads/redexgen/X/So;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52716
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/So;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52718
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A02:Landroid/widget/ScrollView;

    const/16 v0, 0x21

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 52719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52720
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A00:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 52721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/So;->A01:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52722
    return-void

    .line 52723
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    goto :goto_1

    .line 52724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0O()Z
    .locals 1

    .line 52725
    const/4 v0, 0x1

    return v0
.end method
