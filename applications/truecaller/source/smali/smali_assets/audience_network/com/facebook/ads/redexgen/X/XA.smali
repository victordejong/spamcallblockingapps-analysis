.class public final Lcom/facebook/ads/redexgen/X/XA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFU(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/8J;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/8J;",
            ")V"
        }
    .end annotation

    .line 65923
    .local p3, "staticEnvironmentData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8k;->A00()Lcom/facebook/ads/redexgen/X/8j;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8j;->AFU(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/8J;)V

    .line 65924
    return-void
.end method
