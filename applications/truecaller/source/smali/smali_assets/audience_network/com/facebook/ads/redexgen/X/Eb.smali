.class public final Lcom/facebook/ads/redexgen/X/Eb;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5E;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5E;)V
    .locals 0

    .line 30213
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 2

    .line 30214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Lcom/facebook/ads/redexgen/X/5E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5E;->A08:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 30215
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Lcom/facebook/ads/redexgen/X/5E;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/5E;->A08:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v1

    .line 30216
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Tj;->A1a(ZZ)V

    .line 30217
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eb;->A00:Lcom/facebook/ads/redexgen/X/5E;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5E;->A00(Lcom/facebook/ads/redexgen/X/5E;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPlayed()V

    .line 30218
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 30219
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eb;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
