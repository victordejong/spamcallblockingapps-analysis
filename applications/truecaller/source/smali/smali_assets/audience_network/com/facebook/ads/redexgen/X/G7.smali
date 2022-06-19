.class public abstract Lcom/facebook/ads/redexgen/X/G7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/RM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/GG;

.field public final A01:Lcom/facebook/ads/redexgen/X/RR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GG;Lcom/facebook/ads/redexgen/X/RR;)V
    .locals 0

    .line 33968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/GG;

    .line 33970
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G7;->A01:Lcom/facebook/ads/redexgen/X/RR;

    .line 33971
    return-void
.end method


# virtual methods
.method public A3M(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
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

    .line 33972
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/GG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G7;->A01:Lcom/facebook/ads/redexgen/X/RR;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33973
    return-void
.end method
