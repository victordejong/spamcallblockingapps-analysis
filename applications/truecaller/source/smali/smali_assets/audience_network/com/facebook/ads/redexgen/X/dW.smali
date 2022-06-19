.class public final Lcom/facebook/ads/redexgen/X/dW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotDelta"
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/dj;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/ads/redexgen/X/dj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73907
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Ljava/util/Map;

    .line 73908
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/dX;)V
    .locals 0

    .line 73909
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dW;-><init>()V

    return-void
.end method

.method private A00()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/dj;",
            ">;"
        }
    .end annotation

    .line 73910
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Ljava/util/Set;

    return-object v0
.end method

.method private A01()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/dj;",
            ">;"
        }
    .end annotation

    .line 73911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/dW;)Ljava/util/Collection;
    .locals 0

    .line 73912
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dW;->A01()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/dW;)Ljava/util/Collection;
    .locals 0

    .line 73913
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dW;->A00()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private A04()V
    .locals 4

    .line 73914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/dj;

    .line 73916
    .local v0, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Ljava/util/Map;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/dj;->A03:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73917
    .end local v0    # "viewpointData":Lcom/facebook/ads/redexgen/X/dj;
    goto :goto_0

    .line 73918
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 73919
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/dW;)V
    .locals 0

    .line 73920
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dW;->A04()V

    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/dj;)Z
    .locals 2

    .line 73921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dW;->A01:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dW;->A00:Ljava/util/Map;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A03:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73923
    const/4 v0, 0x1

    return v0

    .line 73924
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/dW;Lcom/facebook/ads/redexgen/X/dj;)Z
    .locals 0

    .line 73925
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/dW;->A06(Lcom/facebook/ads/redexgen/X/dj;)Z

    move-result p0

    return p0
.end method
