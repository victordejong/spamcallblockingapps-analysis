.class public final Lcom/facebook/ads/redexgen/X/T5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T4;->A0T(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/T4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T4;I)V
    .locals 0

    .line 53661
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/T4;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/T5;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAB()V
    .locals 2

    .line 53662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/T4;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/T4;->A0R(Lcom/facebook/ads/redexgen/X/T4;Z)Z

    .line 53663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/T4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T4;->A0S()V

    .line 53664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/T4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/T4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T4;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 53665
    return-void
.end method

.method public final ABj(F)V
    .locals 3

    .line 53666
    iget v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A00:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    .line 53667
    .local p1, "percentage":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:Lcom/facebook/ads/redexgen/X/T4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/T4;->A0C:Lcom/facebook/ads/redexgen/X/MT;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setProgress(F)V

    .line 53668
    return-void
.end method
