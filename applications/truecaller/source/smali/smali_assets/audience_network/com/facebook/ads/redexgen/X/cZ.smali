.class public final Lcom/facebook/ads/redexgen/X/cZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/1b;->A08(Lcom/facebook/ads/redexgen/X/XT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1b;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1b;)V
    .locals 0

    .line 71991
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:Lcom/facebook/ads/redexgen/X/1b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9p()V
    .locals 1

    .line 71992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:Lcom/facebook/ads/redexgen/X/1b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9j()V

    .line 71993
    return-void
.end method

.method public final A9q()V
    .locals 2

    .line 71994
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cZ;->A00:Lcom/facebook/ads/redexgen/X/1b;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1b;->A03(Lcom/facebook/ads/redexgen/X/1b;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9i(Lcom/facebook/ads/AdError;)V

    .line 71995
    return-void
.end method
