.class public final Lcom/facebook/ads/redexgen/X/47;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 10751
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 10752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0D:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10753
    :cond_0
    return-void

    .line 10754
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:Z

    if-nez v0, :cond_2

    .line 10755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->requestLayout()V

    .line 10756
    return-void

    .line 10757
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0I:Z

    if-eqz v0, :cond_3

    .line 10758
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0J:Z

    .line 10759
    return-void

    .line 10760
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/47;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1J()V

    .line 10761
    return-void
.end method
