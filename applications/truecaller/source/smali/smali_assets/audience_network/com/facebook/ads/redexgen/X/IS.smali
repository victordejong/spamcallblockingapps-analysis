.class public final Lcom/facebook/ads/redexgen/X/IS;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# static fields
.field public static A08:[B

.field public static final A09:I


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ObjectAnimator;

.field public A02:Landroid/widget/ProgressBar;

.field public A03:Lcom/facebook/ads/redexgen/X/9P;

.field public A04:Lcom/facebook/ads/redexgen/X/9P;

.field public A05:Lcom/facebook/ads/redexgen/X/9P;

.field public A06:Lcom/facebook/ads/redexgen/X/9P;

.field public A07:Lcom/facebook/ads/redexgen/X/Po;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 38748
    invoke-static {}, Lcom/facebook/ads/redexgen/X/IS;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/IS;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 38749
    sget v2, Lcom/facebook/ads/redexgen/X/IS;->A09:I

    const v1, -0xbf7f01

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IS;-><init>(Lcom/facebook/ads/redexgen/X/XT;III)V

    .line 38750
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;III)V
    .locals 4

    .line 38751
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38752
    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:I

    .line 38753
    new-instance v0, Lcom/facebook/ads/redexgen/X/5t;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/5t;-><init>(Lcom/facebook/ads/redexgen/X/IS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A06:Lcom/facebook/ads/redexgen/X/9P;

    .line 38754
    new-instance v0, Lcom/facebook/ads/redexgen/X/4i;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4i;-><init>(Lcom/facebook/ads/redexgen/X/IS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A04:Lcom/facebook/ads/redexgen/X/9P;

    .line 38755
    new-instance v0, Lcom/facebook/ads/redexgen/X/4a;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4a;-><init>(Lcom/facebook/ads/redexgen/X/IS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A05:Lcom/facebook/ads/redexgen/X/9P;

    .line 38756
    new-instance v0, Lcom/facebook/ads/redexgen/X/4O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4O;-><init>(Lcom/facebook/ads/redexgen/X/IS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A03:Lcom/facebook/ads/redexgen/X/9P;

    .line 38757
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    .line 38758
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/IS;->A06(II)V

    .line 38759
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 38760
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38761
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/IS;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38762
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IS;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 38763
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IS;->A07:Lcom/facebook/ads/redexgen/X/Po;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IS;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 38764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 38765
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 38766
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 38767
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    .line 38768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 38769
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/IS;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x47t
        -0x45t
        -0x48t
        -0x50t
        -0x45t
        -0x52t
        -0x44t
        -0x44t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/IS;)V
    .locals 0

    .line 38770
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A02()V

    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 5

    .line 38771
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A02()V

    .line 38772
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    .line 38773
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38774
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 38776
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:I

    .line 38777
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final A06(II)V
    .locals 7

    .line 38778
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 38779
    .local p0, "bckgrndDr":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 38780
    .local p1, "secProgressDr":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v3, 0x800003

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v1, v4, v3, v2, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    .line 38781
    .local p2, "progressDr":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v6, v0, v4

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 38782
    .local v6, "resultDr":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 38783
    const v0, 0x102000f

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 38784
    const v0, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 38785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38786
    return-void
.end method

.method public final A07(Z)V
    .locals 8

    .line 38787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A07:Lcom/facebook/ads/redexgen/X/Po;

    if-nez v0, :cond_0

    .line 38788
    return-void

    .line 38789
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IS;->A02()V

    .line 38790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A07:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getCurrentPositionInMillis()I

    move-result v7

    .line 38791
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A07:Lcom/facebook/ads/redexgen/X/Po;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getDuration()I

    move-result v6

    .line 38792
    .local p1, "duration":I
    const/4 v2, 0x0

    if-lez v6, :cond_2

    mul-int/lit16 v3, v7, 0x2710

    div-int/2addr v3, v6

    .line 38793
    .local v0, "progress":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:I

    if-ge v1, v3, :cond_1

    if-gt v6, v7, :cond_3

    .line 38794
    :cond_1
    return-void

    .line 38795
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 38796
    :cond_3
    if-eqz p1, :cond_4

    .line 38797
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    const/4 v0, 0x2

    new-array v4, v0, [I

    aput v1, v4, v2

    const/4 v0, 0x1

    aput v3, v4, v0

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IS;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    .line 38798
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xfa

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 38799
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A01:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 38801
    :goto_1
    iput v3, p0, Lcom/facebook/ads/redexgen/X/IS;->A00:I

    .line 38802
    return-void

    .line 38803
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public final A8f(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 4

    .line 38804
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IS;->A07:Lcom/facebook/ads/redexgen/X/Po;

    .line 38805
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A04:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A05:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A06:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A03:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38806
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 38807
    return-void
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 4

    .line 38808
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A06:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A05:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A04:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IS;->A03:Lcom/facebook/ads/redexgen/X/9P;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38809
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A04([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 38810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IS;->A07:Lcom/facebook/ads/redexgen/X/Po;

    .line 38811
    return-void
.end method
