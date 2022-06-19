.class public abstract Lcom/facebook/ads/redexgen/X/G8;
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
    name = "ClientBundleResponse"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/RE;

.field public final A01:Lcom/facebook/ads/redexgen/X/4E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4E;Lcom/facebook/ads/redexgen/X/RE;)V
    .locals 0

    .line 33974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G8;->A01:Lcom/facebook/ads/redexgen/X/4E;

    .line 33976
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G8;->A00:Lcom/facebook/ads/redexgen/X/RE;

    .line 33977
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

    .line 33978
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G8;->A01:Lcom/facebook/ads/redexgen/X/4E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G8;->A00:Lcom/facebook/ads/redexgen/X/RE;

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33979
    return-void
.end method
