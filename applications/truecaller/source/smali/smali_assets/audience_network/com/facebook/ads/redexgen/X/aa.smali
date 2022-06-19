.class public final Lcom/facebook/ads/redexgen/X/aa;
.super Lcom/facebook/ads/redexgen/X/6X;
.source ""


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/6h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 1

    .line 68119
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6X;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 68120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aa;->A00:Ljava/util/List;

    .line 68121
    return-void
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/6h;)V
    .locals 2

    .line 68122
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6h;->A03()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A0B:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aa;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68124
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/6l;)V
    .locals 1

    .line 68125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aa;->A00:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/6X;->A01(Lcom/facebook/ads/redexgen/X/6l;Ljava/util/List;)V

    .line 68126
    return-void
.end method
