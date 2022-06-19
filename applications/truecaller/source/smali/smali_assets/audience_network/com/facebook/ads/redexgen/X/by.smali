.class public final Lcom/facebook/ads/redexgen/X/by;
.super Lcom/facebook/ads/redexgen/X/2W;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bx;->A00()Lcom/facebook/ads/redexgen/X/2W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2W<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bx;)V
    .locals 0

    .line 70797
    .local p0, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2W;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 70798
    .local v0, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/2Z;->A00:I

    return v0
.end method

.method public final A05(Ljava/lang/Object;)I
    .locals 1

    .line 70799
    .local p1, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A08(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A06(Ljava/lang/Object;)I
    .locals 1

    .line 70800
    .local p1, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A07(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A07(II)Ljava/lang/Object;
    .locals 2

    .line 70801
    .local p2, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/2Z;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A08(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 70802
    .local p1, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2Z;->A0C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 70803
    .local v0, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    return-object v0
.end method

.method public final A0D()V
    .locals 1

    .line 70804
    .local v0, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2Z;->clear()V

    .line 70805
    return-void
.end method

.method public final A0E(I)V
    .locals 1

    .line 70806
    .local p1, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2Z;->A0A(I)Ljava/lang/Object;

    .line 70807
    return-void
.end method

.method public final A0F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 70808
    .local p1, "this":Lcom/facebook/ads/redexgen/X/by;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/by;->A00:Lcom/facebook/ads/redexgen/X/bx;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2Z;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70809
    return-void
.end method
