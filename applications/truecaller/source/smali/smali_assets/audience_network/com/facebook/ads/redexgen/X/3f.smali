.class public final Lcom/facebook/ads/redexgen/X/3f;
.super Lcom/facebook/ads/redexgen/X/G7;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullServerBundleResponse"
.end annotation


# instance fields
.field public final A00:Lorg/json/JSONObject;

.field public final A01:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GG;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10035
    sget-object v0, Lcom/facebook/ads/redexgen/X/RR;->A03:Lcom/facebook/ads/redexgen/X/RR;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/G7;-><init>(Lcom/facebook/ads/redexgen/X/GG;Lcom/facebook/ads/redexgen/X/RR;)V

    .line 10036
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:Lorg/json/JSONObject;

    .line 10037
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lorg/json/JSONObject;

    .line 10038
    return-void
.end method


# virtual methods
.method public final A3M(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
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

    .line 10039
    .local v1, "serverBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncBundle;Lcom/facebook/ads/sync/SyncServerBundleResponseType;>;"
    .local v0, "clientBundleResponses":Ljava/util/Map;, "Ljava/util/Map<Lcom/facebook/ads/sync/SyncModifiableBundle;Lcom/facebook/ads/sync/SyncClientBundleResponseType;>;"
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/G7;->A00:Lcom/facebook/ads/redexgen/X/GG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3f;->A00:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3f;->A01:Lorg/json/JSONObject;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GG;->A05(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    .line 10040
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/G7;->A3M(Ljava/util/Map;Ljava/util/Map;)V

    .line 10041
    return-void
.end method
