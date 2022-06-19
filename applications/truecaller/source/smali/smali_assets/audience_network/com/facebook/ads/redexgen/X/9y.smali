.class public final Lcom/facebook/ads/redexgen/X/9y;
.super Lcom/facebook/ads/redexgen/X/Kq;
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

    .line 21382
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 2

    .line 21383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A06(Lcom/facebook/ads/redexgen/X/9v;)V

    .line 21384
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:Lcom/facebook/ads/redexgen/X/9v;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A07:Lcom/facebook/ads/redexgen/X/Rh;

    .line 21385
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0O()Lcom/facebook/ads/redexgen/X/OY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9y;->A00:Lcom/facebook/ads/redexgen/X/9v;

    .line 21386
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->ACX(Landroid/view/View;)V

    .line 21387
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 21388
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9y;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
