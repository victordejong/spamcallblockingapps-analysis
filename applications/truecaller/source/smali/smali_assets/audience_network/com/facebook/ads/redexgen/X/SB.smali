.class public final Lcom/facebook/ads/redexgen/X/SB;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9a;)V
    .locals 0

    .line 51416
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/9a;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 51417
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/9a;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9a;->A00(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SB;->A00:Lcom/facebook/ads/redexgen/X/9a;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9a;->A00(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A05()V

    .line 51419
    :cond_0
    return-void
.end method
