.class public final Lcom/facebook/ads/redexgen/X/I5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Q6;


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Q5;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 37845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37846
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 37847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    .line 37848
    iput p2, p0, Lcom/facebook/ads/redexgen/X/I5;->A03:I

    .line 37849
    iput p3, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    .line 37850
    iput p4, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:I

    .line 37851
    return-void
.end method

.method private A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 37852
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 37853
    .local p0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A03:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37854
    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Lcom/facebook/ads/redexgen/X/I5;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37855
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/I5;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37856
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/I5;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37857
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/I5;)Landroid/view/View;
    .locals 0

    .line 37858
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/I5;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;
    .locals 0

    .line 37859
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/I5;Z)V
    .locals 0

    .line 37860
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I5;->A07(Z)V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/I5;Z)V
    .locals 0

    .line 37861
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I5;->A08(Z)V

    return-void
.end method

.method private A07(Z)V
    .locals 3

    .line 37862
    if-eqz p1, :cond_0

    .line 37863
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A06:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 37864
    iget v2, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    .line 37865
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>(Lcom/facebook/ads/redexgen/X/I5;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37867
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/I5;
    :goto_0
    return-void

    .line 37868
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 37869
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37870
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37871
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0H(Landroid/view/View;)V

    .line 37872
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method

.method private A08(Z)V
    .locals 3

    .line 37873
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0L(Landroid/view/View;)V

    .line 37874
    if-eqz p1, :cond_0

    .line 37875
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A04:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    .line 37876
    iget v2, p0, Lcom/facebook/ads/redexgen/X/I5;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    .line 37877
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Q7;-><init>(Lcom/facebook/ads/redexgen/X/I5;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37878
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37879
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/I5;
    :goto_0
    return-void

    .line 37880
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 37881
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37882
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37883
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_0
.end method


# virtual methods
.method public final A3L(ZZ)V
    .locals 0

    .line 37884
    if-eqz p2, :cond_0

    .line 37885
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I5;->A07(Z)V

    .line 37886
    :goto_0
    return-void

    .line 37887
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/I5;->A08(Z)V

    goto :goto_0
.end method

.method public final A7R()Lcom/facebook/ads/redexgen/X/Q5;
    .locals 1

    .line 37888
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 37889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 37890
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37891
    :cond_0
    return-void
.end method
