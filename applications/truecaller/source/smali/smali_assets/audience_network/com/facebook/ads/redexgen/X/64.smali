.class public final Lcom/facebook/ads/redexgen/X/64;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/63;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/64;->A00:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/63;)V
    .locals 1

    .line 14751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/64;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14752
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 2

    .line 14753
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/64;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/63;

    .line 14754
    .local p1, "reputationTierListener":Lcom/facebook/ads/redexgen/X/63;
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/63;->AF9(Lcom/facebook/ads/redexgen/X/6l;)V

    .end local p1    # "reputationTierListener":Lcom/facebook/ads/redexgen/X/63;
    goto :goto_0

    .line 14755
    :cond_0
    return-void
.end method
