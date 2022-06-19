.class public final Lcom/facebook/ads/redexgen/X/6h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/6k;

.field public final A02:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/EnumSet;Lcom/facebook/ads/redexgen/X/6k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6o;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/6k;",
            ")V"
        }
    .end annotation

    .line 16028
    .local p2, "signalFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/internal/botdetection/signals/model/SignalFlagsEnum;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16029
    iput p1, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:I

    .line 16030
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6h;->A02:Ljava/util/EnumSet;

    .line 16031
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/6k;

    .line 16032
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 16033
    iget v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A00:I

    return v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/6k;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6h;->A02:Ljava/util/EnumSet;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6o;->A07:Lcom/facebook/ads/redexgen/X/6o;

    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/6k;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/6l;)Lcom/facebook/ads/redexgen/X/6k;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16035
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6h;->A04(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A01:Lcom/facebook/ads/redexgen/X/6k;

    return-object v0

    .line 16037
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A03()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/redexgen/X/6o;",
            ">;"
        }
    .end annotation

    .line 16038
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6h;->A02:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/6l;)Z
    .locals 2

    .line 16039
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/78;->A0E(Lcom/facebook/ads/redexgen/X/6l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6h;->A02:Ljava/util/EnumSet;

    .line 16040
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6l;->A03()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6o;->A00(I)Lcom/facebook/ads/redexgen/X/6o;

    move-result-object v0

    .line 16041
    invoke-virtual {v1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 16042
    :goto_0
    return v0

    .line 16043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
