.class public final Lcom/facebook/ads/redexgen/X/UD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/dm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/dm<",
        "Lcom/facebook/ads/redexgen/X/JJ;",
        "Lcom/facebook/ads/redexgen/X/JO;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UA;)V
    .locals 0

    .line 56026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56027
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UD;->A00:Lcom/facebook/ads/redexgen/X/UA;

    .line 56028
    return-void
.end method


# virtual methods
.method public final A5F(Lcom/facebook/ads/redexgen/X/dj;Lcom/facebook/ads/redexgen/X/dY;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dj<",
            "Lcom/facebook/ads/redexgen/X/JJ;",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dY;",
            ")V"
        }
    .end annotation

    .line 56029
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/JH;->A00:[I

    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/dY;->A7g(Lcom/facebook/ads/redexgen/X/dj;)Lcom/facebook/ads/redexgen/X/dZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dZ;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 56030
    :goto_0
    return-void

    .line 56031
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UD;->A00:Lcom/facebook/ads/redexgen/X/UA;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/UA;->A02(Lcom/facebook/ads/redexgen/X/dj;Lcom/facebook/ads/redexgen/X/dY;)V

    .line 56032
    goto :goto_0
.end method
