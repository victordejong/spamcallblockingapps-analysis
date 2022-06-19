.class public final Lcom/facebook/ads/redexgen/X/3d;
.super Lcom/facebook/ads/redexgen/X/G8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnknownClientBundleResponse"
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4E;)V
    .locals 1

    .line 10028
    sget-object v0, Lcom/facebook/ads/redexgen/X/RE;->A05:Lcom/facebook/ads/redexgen/X/RE;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/G8;-><init>(Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/RE;)V

    .line 10029
    return-void
.end method


# virtual methods
.method public final A3M(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/R4;",
            "Lcom/facebook/ads/redexgen/X/RR;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/facebook/ads/redexgen/X/GD;",
            "Lcom/facebook/ads/redexgen/X/RE;",
            ">;)V"
        }
    .end annotation

    .line 10030
    .local p2, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G8;->A01:Lcom/facebook/ads/redexgen/X/4E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4E;->A06()V

    .line 10031
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/G8;->A3M(Ljava/util/Map;Ljava/util/Map;)V

    .line 10032
    return-void
.end method
