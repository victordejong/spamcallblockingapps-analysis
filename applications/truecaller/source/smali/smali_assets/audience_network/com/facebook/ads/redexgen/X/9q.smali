.class public final Lcom/facebook/ads/redexgen/X/9q;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9m;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 21048
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 2

    .line 21049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A00(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/Rh;

    move-result-object v0

    .line 21050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0O()Lcom/facebook/ads/redexgen/X/OY;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:Lcom/facebook/ads/redexgen/X/9m;

    .line 21051
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OY;->ACX(Landroid/view/View;)V

    .line 21052
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 21053
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9q;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
