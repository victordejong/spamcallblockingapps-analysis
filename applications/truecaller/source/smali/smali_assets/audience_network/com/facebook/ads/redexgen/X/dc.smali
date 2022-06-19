.class public final Lcom/facebook/ads/redexgen/X/dc;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/facebook/ads/redexgen/X/dj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73992
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dc;->A00:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final A00(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/dj;
    .locals 1

    .line 73993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dc;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dj;

    .line 73994
    .local p0, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;
    if-nez v0, :cond_0

    .line 73995
    sget-object v0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/dj;

    return-object v0

    .line 73996
    :cond_0
    return-object v0
.end method

.method public final A01(Landroid/view/View;)V
    .locals 1

    .line 73997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dc;->A00:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73998
    return-void
.end method

.method public final A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dj;)V
    .locals 1

    .line 73999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dc;->A00:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74000
    return-void
.end method

.method public final A03(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 74001
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dc;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 74002
    .local p1, "view":Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 74003
    .end local p1    # "view":Landroid/view/View;
    goto :goto_0

    .line 74004
    :cond_0
    return-void
.end method
