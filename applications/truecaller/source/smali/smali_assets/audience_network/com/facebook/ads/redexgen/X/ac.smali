.class public final Lcom/facebook/ads/redexgen/X/ac;
.super Lcom/facebook/ads/redexgen/X/6X;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6S;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6H;

.field public final A01:Lcom/facebook/ads/redexgen/X/61;

.field public final A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/6h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .line 68136
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/6X;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)V

    .line 68137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ac;->A02:Ljava/util/Map;

    .line 68138
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ac;->A01:Lcom/facebook/ads/redexgen/X/61;

    .line 68139
    return-void
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/6h;)V
    .locals 2

    .line 68140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ac;->A02:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/6h;->A00()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68141
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/6l;Landroid/content/Context;)V
    .locals 2

    .line 68142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ac;->A01:Lcom/facebook/ads/redexgen/X/61;

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/6H;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/61;)Lcom/facebook/ads/redexgen/X/6H;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ac;->A00:Lcom/facebook/ads/redexgen/X/6H;

    .line 68143
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ac;->A00:Lcom/facebook/ads/redexgen/X/6H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ac;->A02:Ljava/util/Map;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/6H;->A04(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/6l;)V

    .line 68144
    return-void
.end method

.method public final ACo()V
    .locals 1

    .line 68145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ac;->A00:Lcom/facebook/ads/redexgen/X/6H;

    if-eqz v0, :cond_0

    .line 68146
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6H;->A03()V

    .line 68147
    :cond_0
    return-void
.end method
