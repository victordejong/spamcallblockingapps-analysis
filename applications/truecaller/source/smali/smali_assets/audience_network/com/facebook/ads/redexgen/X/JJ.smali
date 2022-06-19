.class public final Lcom/facebook/ads/redexgen/X/JJ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/XS;

.field public final A02:Lcom/facebook/ads/redexgen/X/JT;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Z

.field public final A06:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XS;Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 1

    .line 40447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40448
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JJ;->A03:Ljava/lang/String;

    .line 40449
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JJ;->A01:Lcom/facebook/ads/redexgen/X/XS;

    .line 40450
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A08()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A02:Lcom/facebook/ads/redexgen/X/JT;

    .line 40451
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JJ;->A00:Landroid/view/View;

    .line 40452
    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/JJ;->A05:Z

    .line 40453
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A04:Ljava/util/HashMap;

    .line 40454
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/JJ;->A06:Z

    .line 40455
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/View;
    .locals 1

    .line 40456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/XS;
    .locals 1

    .line 40457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A01:Lcom/facebook/ads/redexgen/X/XS;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/JT;
    .locals 1

    .line 40458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A02:Lcom/facebook/ads/redexgen/X/JT;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 40459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A04()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40460
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A04:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A05()Z
    .locals 1

    .line 40461
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A05:Z

    return v0
.end method

.method public final A06()Z
    .locals 1

    .line 40462
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JJ;->A06:Z

    return v0
.end method
