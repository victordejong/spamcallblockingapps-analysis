.class public final Lcom/facebook/ads/redexgen/X/Ty;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tu;->A02(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Tu;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V
    .locals 0

    .line 55269
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:Lcom/facebook/ads/redexgen/X/Tu;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEO()V
    .locals 2

    .line 55270
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A00:Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->setVolume(F)V

    .line 55271
    return-void
.end method

.method public final AER(Lcom/facebook/ads/NativeAd;)V
    .locals 3

    .line 55272
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:Lcom/facebook/ads/redexgen/X/Tu;

    .line 55273
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tj;->A0J(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v1

    .line 55274
    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tu;->A0G(Lcom/facebook/ads/redexgen/X/Tu;Lcom/facebook/ads/redexgen/X/Tj;Lcom/facebook/ads/redexgen/X/Jk;)V

    .line 55275
    return-void
.end method

.method public final AF6()V
    .locals 1

    .line 55276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:Lcom/facebook/ads/redexgen/X/Tu;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tu;->A0F(Lcom/facebook/ads/redexgen/X/Tu;)V

    .line 55277
    return-void
.end method
