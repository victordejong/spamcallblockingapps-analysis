.class public final Lcom/facebook/ads/redexgen/X/cn;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cl;)V
    .locals 0

    .line 72110
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cn;->A00:Lcom/facebook/ads/redexgen/X/cl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 72111
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A00:Lcom/facebook/ads/redexgen/X/cl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cl;->A05(Lcom/facebook/ads/redexgen/X/cl;)Lcom/facebook/ads/redexgen/X/15;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cn;->A00:Lcom/facebook/ads/redexgen/X/cl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/cl;->A05(Lcom/facebook/ads/redexgen/X/cl;)Lcom/facebook/ads/redexgen/X/15;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/15;->AA6()V

    .line 72113
    :cond_0
    return-void
.end method
