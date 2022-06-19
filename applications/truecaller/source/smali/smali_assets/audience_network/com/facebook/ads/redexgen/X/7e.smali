.class public final Lcom/facebook/ads/redexgen/X/7e;
.super Lcom/facebook/ads/redexgen/X/Mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JX;)V
    .locals 0

    .line 17296
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 2

    .line 17297
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A03(Lcom/facebook/ads/redexgen/X/JX;)Lcom/facebook/ads/redexgen/X/Pw;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pw;->A04:Lcom/facebook/ads/redexgen/X/Pw;

    if-eq v1, v0, :cond_0

    .line 17298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A01(Lcom/facebook/ads/redexgen/X/JX;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 17299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7e;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A01(Lcom/facebook/ads/redexgen/X/JX;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 17300
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17301
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7e;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
