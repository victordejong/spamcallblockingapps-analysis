.class public final Lcom/facebook/ads/redexgen/X/58;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/5w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13395
    new-instance v0, Lcom/facebook/ads/redexgen/X/5w;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5w;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/redexgen/X/5w;

    .line 13396
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/5w;
    .locals 1

    .line 13397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/redexgen/X/5w;

    return-object v0
.end method

.method public final getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 13398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/58;->A00:Lcom/facebook/ads/redexgen/X/5w;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A06(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
