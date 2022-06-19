.class public final Lcom/facebook/ads/redexgen/X/cz;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cy;->A07(Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cy;

.field public final synthetic A01:Ljava/util/Map;

.field public final synthetic A02:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cy;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 72587
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cz;->A00:Lcom/facebook/ads/redexgen/X/cy;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cz;->A02:Ljava/util/Map;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cz;->A01:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 72588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cz;->A00:Lcom/facebook/ads/redexgen/X/cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cy;->A02(Lcom/facebook/ads/redexgen/X/cy;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72589
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72590
    .local p0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cz;->A02:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cz;->A01:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cz;->A00:Lcom/facebook/ads/redexgen/X/cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cy;->A00(Lcom/facebook/ads/redexgen/X/cy;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cz;->A00:Lcom/facebook/ads/redexgen/X/cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cy;->A00(Lcom/facebook/ads/redexgen/X/cy;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cz;->A00:Lcom/facebook/ads/redexgen/X/cy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cy;->A02(Lcom/facebook/ads/redexgen/X/cy;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JT;->A9B(Ljava/lang/String;Ljava/util/Map;)V

    .line 72594
    .end local p0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
