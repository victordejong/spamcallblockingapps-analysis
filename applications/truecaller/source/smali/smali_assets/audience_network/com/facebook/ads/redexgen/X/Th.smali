.class public final Lcom/facebook/ads/redexgen/X/Th;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Av;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Av;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/K3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Av;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 0

    .line 54264
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Lcom/facebook/ads/redexgen/X/Av;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 54265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Lcom/facebook/ads/redexgen/X/Av;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Av;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A00:Lcom/facebook/ads/redexgen/X/Av;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Av;->A00:Lcom/facebook/ads/NativeAdBase;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Th;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LK;->A00(Lcom/facebook/ads/redexgen/X/K3;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/NativeAdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 54266
    return-void
.end method
