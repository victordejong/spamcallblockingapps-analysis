.class public final Lcom/facebook/ads/redexgen/X/T7;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Mb;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mb;)V
    .locals 0

    .line 53672
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 53673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/Mb;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/52;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 53674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T7;->A00:Lcom/facebook/ads/redexgen/X/Mb;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/52;

    .line 53675
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/52;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v2

    .line 53676
    const/high16 v1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/AudienceNetworkActivity;->overridePendingTransition(II)V

    .line 53677
    return-void
.end method
