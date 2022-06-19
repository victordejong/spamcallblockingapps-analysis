.class public final Lcom/facebook/ads/redexgen/X/29;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/28;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/28;

.field public A01:Lcom/facebook/ads/redexgen/X/28;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4775
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/29;-><init>(DD)V

    .line 4776
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    .line 4777
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/29;-><init>(DD)V

    .line 4778
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .line 4779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4780
    new-instance v0, Lcom/facebook/ads/redexgen/X/28;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/28;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/28;

    .line 4781
    new-instance v0, Lcom/facebook/ads/redexgen/X/28;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/28;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A01:Lcom/facebook/ads/redexgen/X/28;

    .line 4782
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/29;->A02()V

    .line 4783
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/28;
    .locals 1

    .line 4784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/28;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/28;
    .locals 1

    .line 4785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A01:Lcom/facebook/ads/redexgen/X/28;

    return-object v0
.end method

.method public final A02()V
    .locals 1

    .line 4786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/28;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/28;->A06()V

    .line 4787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A01:Lcom/facebook/ads/redexgen/X/28;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/28;->A06()V

    .line 4788
    return-void
.end method

.method public final A03()V
    .locals 1

    .line 4789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/28;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/28;->A07()V

    .line 4790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A01:Lcom/facebook/ads/redexgen/X/28;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/28;->A07()V

    .line 4791
    return-void
.end method

.method public final A04(DD)V
    .locals 1

    .line 4792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/28;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/28;->A08(DD)V

    .line 4793
    return-void
.end method

.method public final A05(DD)V
    .locals 1

    .line 4794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A01:Lcom/facebook/ads/redexgen/X/28;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/28;->A08(DD)V

    .line 4795
    return-void
.end method
