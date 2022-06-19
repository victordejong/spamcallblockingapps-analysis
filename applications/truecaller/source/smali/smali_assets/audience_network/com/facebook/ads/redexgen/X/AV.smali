.class public final Lcom/facebook/ads/redexgen/X/AV;
.super Lcom/facebook/ads/redexgen/X/Mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/AA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AA;)V
    .locals 0

    .line 22177
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 1

    .line 22178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A00(Lcom/facebook/ads/redexgen/X/AA;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22179
    return-void

    .line 22180
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AV;->A00:Lcom/facebook/ads/redexgen/X/AA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AA;->A00(Lcom/facebook/ads/redexgen/X/AA;)Lcom/facebook/ads/redexgen/X/Mc;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mc;->AA9()V

    .line 22181
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 22182
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/AV;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
