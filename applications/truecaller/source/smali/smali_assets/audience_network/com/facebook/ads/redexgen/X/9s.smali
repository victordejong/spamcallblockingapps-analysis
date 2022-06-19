.class public final Lcom/facebook/ads/redexgen/X/9s;
.super Lcom/facebook/ads/redexgen/X/KM;
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

    .line 21060
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 2

    .line 21061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A00(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/Rh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0P()Lcom/facebook/ads/redexgen/X/OZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9s;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9m;->getVideoView()Lcom/facebook/ads/redexgen/X/PG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OZ;->setVolume(F)V

    .line 21062
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 21063
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9s;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method
