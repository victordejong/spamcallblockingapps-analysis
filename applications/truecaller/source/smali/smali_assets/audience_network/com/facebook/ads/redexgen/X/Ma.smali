.class public final Lcom/facebook/ads/redexgen/X/Ma;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static final A01:I


# instance fields
.field public final A00:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44683
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ma;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 44684
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 44685
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    .line 44686
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44687
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0A:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ld;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Ld;)V

    .line 44688
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Ma;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44689
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    const v0, -0x7f000001

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 44690
    sget v0, Lcom/facebook/ads/redexgen/X/Ma;->A01:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ma;->setPadding(IIII)V

    .line 44691
    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 44692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 44693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Landroid/widget/ImageView;

    return-object v0
.end method
