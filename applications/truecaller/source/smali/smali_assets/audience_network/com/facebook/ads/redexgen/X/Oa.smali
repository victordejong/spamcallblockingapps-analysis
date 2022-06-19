.class public final Lcom/facebook/ads/redexgen/X/Oa;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/ON;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)Lcom/facebook/ads/redexgen/X/9m;
    .locals 1

    .line 47300
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 47301
    new-instance v0, Lcom/facebook/ads/redexgen/X/1g;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/1g;-><init>(Lcom/facebook/ads/redexgen/X/ON;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V

    .line 47302
    :goto_0
    return-object v0

    .line 47303
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/23;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/ads/redexgen/X/23;-><init>(Lcom/facebook/ads/redexgen/X/ON;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V

    goto :goto_0
.end method
