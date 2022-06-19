.class public Lcom/facebook/ads/redexgen/X/O4;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static final A0A:I

.field public static final A0B:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/1I;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:F

.field public final A07:I

.field public final A08:Ljava/lang/Runnable;

.field public final A09:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46640
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/O4;->A0A:I

    .line 46641
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/O4;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;)V
    .locals 2

    .line 46642
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 46643
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A03:Z

    .line 46644
    iput v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A01:I

    .line 46645
    iput v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:I

    .line 46646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A04:Z

    .line 46647
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A05:Z

    .line 46648
    new-instance v0, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/O4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A08:Ljava/lang/Runnable;

    .line 46649
    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/redexgen/X/O4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A09:Ljava/lang/Runnable;

    .line 46650
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/1I;

    .line 46651
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A03(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A07:I

    .line 46652
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A00(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A06:F

    .line 46653
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0X(Landroid/widget/TextView;ZI)V

    .line 46654
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/O4;->setGravity(I)V

    .line 46655
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A03()V

    .line 46656
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/O4;)I
    .locals 0

    .line 46657
    iget p0, p0, Lcom/facebook/ads/redexgen/X/O4;->A07:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/O4;)Ljava/lang/Runnable;
    .locals 0

    .line 46658
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O4;->A09:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/O4;)Ljava/lang/Runnable;
    .locals 0

    .line 46659
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/O4;->A08:Ljava/lang/Runnable;

    return-object p0
.end method

.method private A03()V
    .locals 2

    .line 46660
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/1I;

    if-eqz v1, :cond_0

    .line 46661
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:I

    .line 46662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A01:I

    .line 46663
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/O4;->A00:I

    .line 46664
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A04:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/O4;->A0B:I

    .line 46665
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0O(Landroid/view/View;II)V

    .line 46666
    iget v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/O4;->setTextColor(I)V

    .line 46667
    return-void

    .line 46668
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A04()V
    .locals 3

    .line 46669
    iget v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A07:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A03:Z

    if-eqz v0, :cond_1

    .line 46670
    :cond_0
    return-void

    .line 46671
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A03:Z

    .line 46672
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O4;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46673
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_2

    .line 46674
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/O4;->A08:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/O4;->A07:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/O4;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46675
    :cond_2
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 46676
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 46677
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A04()V

    .line 46678
    return-void
.end method

.method public setRoundedCornersEnabled(Z)V
    .locals 0

    .line 46679
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/O4;->A04:Z

    .line 46680
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A03()V

    .line 46681
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 46682
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46683
    return-void
.end method

.method public setUpButtonColors(Lcom/facebook/ads/redexgen/X/1I;)V
    .locals 0

    .line 46684
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O4;->A02:Lcom/facebook/ads/redexgen/X/1I;

    .line 46685
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A03()V

    .line 46686
    return-void
.end method

.method public setViewShowsOverMedia(Z)V
    .locals 0

    .line 46687
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/O4;->A05:Z

    .line 46688
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/O4;->A03()V

    .line 46689
    return-void
.end method
