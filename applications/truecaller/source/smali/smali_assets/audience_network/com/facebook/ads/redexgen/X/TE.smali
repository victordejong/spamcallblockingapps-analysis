.class public final Lcom/facebook/ads/redexgen/X/TE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/50;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TB;)V
    .locals 0

    .line 53788
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/TB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8E()Z
    .locals 1

    .line 53789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A02(Lcom/facebook/ads/redexgen/X/TB;)Lcom/facebook/ads/redexgen/X/Sm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sm;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A02(Lcom/facebook/ads/redexgen/X/TB;)Lcom/facebook/ads/redexgen/X/Sm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sm;->goBack()V

    .line 53791
    const/4 v0, 0x1

    return v0

    .line 53792
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
