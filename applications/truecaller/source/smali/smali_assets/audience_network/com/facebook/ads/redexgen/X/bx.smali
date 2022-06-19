.class public final Lcom/facebook/ads/redexgen/X/bx;
.super Lcom/facebook/ads/redexgen/X/2Z;
.source ""

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/2Z<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/2W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2W<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70784
    .local p0, "this":Lcom/facebook/ads/redexgen/X/bx;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2Z;-><init>()V

    .line 70785
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/2W;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/2W<",
            "TK;TV;>;"
        }
    .end annotation

    .line 70786
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bx;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/2W;

    if-nez v0, :cond_0

    .line 70787
    new-instance v0, Lcom/facebook/ads/redexgen/X/by;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/by;-><init>(Lcom/facebook/ads/redexgen/X/bx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/2W;

    .line 70788
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bx;->A00:Lcom/facebook/ads/redexgen/X/2W;

    return-object v0
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 70789
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bx;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bx;->A00()Lcom/facebook/ads/redexgen/X/2W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2W;->A0B()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 70790
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bx;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bx;->A00()Lcom/facebook/ads/redexgen/X/2W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2W;->A0C()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 70791
    .local v1, "this":Lcom/facebook/ads/redexgen/X/bx;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v1, p0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/2Z;->A0D(I)V

    .line 70792
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70793
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2Z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70794
    .end local p1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 70795
    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 70796
    .local v0, "this":Lcom/facebook/ads/redexgen/X/bx;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bx;->A00()Lcom/facebook/ads/redexgen/X/2W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2W;->A09()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
