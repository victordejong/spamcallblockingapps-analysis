.class public final Lcom/facebook/ads/redexgen/X/JG;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/XS;Lcom/facebook/ads/redexgen/X/GC;)V
    .locals 2

    .line 40442
    sget-object v0, Lcom/facebook/ads/redexgen/X/R5;->A07:Lcom/facebook/ads/redexgen/X/R5;

    .line 40443
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/GC;->A4M(Lcom/facebook/ads/redexgen/X/R5;)Lcom/facebook/ads/redexgen/X/R4;

    move-result-object v1

    .line 40444
    .local p0, "syncBundle":Lcom/facebook/ads/redexgen/X/R4;
    new-instance v0, Lcom/facebook/ads/redexgen/X/UE;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/UE;-><init>(Lcom/facebook/ads/redexgen/X/R4;Lcom/facebook/ads/redexgen/X/XS;)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/R4;->A3E(Lcom/facebook/ads/redexgen/X/R6;)V

    .line 40445
    return-void
.end method
