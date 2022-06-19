.class public final Lcom/facebook/ads/redexgen/X/6I;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6S;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14911
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A00:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 14912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6S;

    .line 14913
    .local v0, "biometricSignalLifecycleHandler":Lcom/facebook/ads/redexgen/X/6S;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/6S;->ACo()V

    .end local v0    # "biometricSignalLifecycleHandler":Lcom/facebook/ads/redexgen/X/6S;
    goto :goto_0

    .line 14914
    :cond_0
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/6S;)V
    .locals 1

    .line 14915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6I;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14916
    return-void
.end method
