.class public final Lcom/facebook/ads/redexgen/X/A0;
.super Lcom/facebook/ads/redexgen/X/KM;
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

    .line 21396
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KM;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KN;)V
    .locals 2

    .line 21397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->getVideoView()Lcom/facebook/ads/redexgen/X/PG;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21398
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:Lcom/facebook/ads/redexgen/X/9v;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A07:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0P()Lcom/facebook/ads/redexgen/X/OZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/A0;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9v;->getVideoView()Lcom/facebook/ads/redexgen/X/PG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OZ;->setVolume(F)V

    .line 21399
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 21400
    check-cast p1, Lcom/facebook/ads/redexgen/X/KN;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/A0;->A00(Lcom/facebook/ads/redexgen/X/KN;)V

    return-void
.end method
