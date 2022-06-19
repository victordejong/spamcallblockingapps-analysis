.class public final Lcom/facebook/ads/redexgen/X/XZ;
.super Lcom/facebook/ads/redexgen/X/6z;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/6z<",
        "Lcom/facebook/ads/redexgen/X/6V;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/6x;Lcom/facebook/ads/redexgen/X/6V;)V
    .locals 6
    .param p3    # Lcom/facebook/ads/redexgen/X/6x;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 66265
    sget-object v5, Lcom/facebook/ads/redexgen/X/6y;->A0D:Lcom/facebook/ads/redexgen/X/6y;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/6z;-><init>(JLcom/facebook/ads/redexgen/X/6x;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/6y;)V

    .line 66266
    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 66267
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6V;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6V;->A09()I

    move-result v0

    return v0
.end method

.method public final A08(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 66268
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6V;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6V;->A0A(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/6z;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/6z<",
            "Lcom/facebook/ads/redexgen/X/6V;",
            ">;)Z"
        }
    .end annotation

    .line 66269
    .local v1, "newSignalValueTypeDef":Lcom/facebook/ads/redexgen/X/6z;, "Lcom/facebook/ads/internal/botdetection/signals/model/signal_value/SignalValueTypeDef<Lcom/facebook/ads/internal/botdetection/signals/biometric/model/TouchSignalRawValue;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/6V;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6z;->A07()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6V;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0B(Lcom/facebook/ads/redexgen/X/6V;)Z

    move-result v0

    return v0
.end method
