.class public final Lcom/facebook/ads/redexgen/X/9x;
.super Lcom/facebook/ads/redexgen/X/L3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 21375
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L3;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7u;)V
    .locals 2

    .line 21376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A05(Lcom/facebook/ads/redexgen/X/9v;)V

    .line 21377
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:Lcom/facebook/ads/redexgen/X/9v;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A07:Lcom/facebook/ads/redexgen/X/Rh;

    .line 21378
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0O()Lcom/facebook/ads/redexgen/X/OY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9x;->A00:Lcom/facebook/ads/redexgen/X/9v;

    .line 21379
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->ACV(Landroid/view/View;)V

    .line 21380
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 21381
    check-cast p1, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9x;->A00(Lcom/facebook/ads/redexgen/X/7u;)V

    return-void
.end method
