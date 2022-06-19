.class public final Lcom/facebook/ads/redexgen/X/RO;
.super Lcom/facebook/ads/redexgen/X/OB;
.source ""


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 4

    .line 50647
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OB;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 50648
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RO;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 50649
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Landroid/widget/ImageView;

    .line 50650
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 50651
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/RO;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50652
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 3

    .line 50653
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RO;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RO;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 50654
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Sb;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    .line 50655
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 50656
    return-void
.end method
