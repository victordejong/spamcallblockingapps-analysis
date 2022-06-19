.class public final Lcom/facebook/ads/redexgen/X/89;
.super Lcom/facebook/ads/redexgen/X/Mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/87;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/87;)V
    .locals 0

    .line 18124
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/89;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 3

    .line 18125
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/89;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/87;->A02(Lcom/facebook/ads/redexgen/X/87;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QW;->A06:Lcom/facebook/ads/redexgen/X/QW;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, p1, v0}, Lcom/facebook/ads/redexgen/X/87;->A09(Lcom/facebook/ads/redexgen/X/87;Lcom/facebook/ads/redexgen/X/7v;Z)V

    .line 18126
    return-void

    .line 18127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 18128
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/89;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
