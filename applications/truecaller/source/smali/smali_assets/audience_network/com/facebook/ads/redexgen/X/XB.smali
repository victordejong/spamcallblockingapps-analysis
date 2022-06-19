.class public final Lcom/facebook/ads/redexgen/X/XB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8f;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8J;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 0

    .line 65925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65926
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:Lcom/facebook/ads/redexgen/X/8J;

    .line 65927
    return-void
.end method


# virtual methods
.method public final A6T()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65928
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9H;->A00()Lcom/facebook/ads/redexgen/X/9H;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:Lcom/facebook/ads/redexgen/X/8J;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A02(Lcom/facebook/ads/redexgen/X/8J;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A8W()Z
    .locals 1

    .line 65929
    invoke-static {}, Lcom/facebook/ads/redexgen/X/LJ;->A04()Z

    move-result v0

    return v0
.end method
