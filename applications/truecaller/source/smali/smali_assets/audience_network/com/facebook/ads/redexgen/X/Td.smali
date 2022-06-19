.class public final Lcom/facebook/ads/redexgen/X/Td;
.super Lcom/facebook/ads/redexgen/X/Ki;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Av;->AB9()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Av;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Av;)V
    .locals 0

    .line 54252
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Lcom/facebook/ads/redexgen/X/Av;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ki;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 54253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Lcom/facebook/ads/redexgen/X/Av;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Av;->A01:Lcom/facebook/ads/NativeAdListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Lcom/facebook/ads/redexgen/X/Av;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Av;->A00:Lcom/facebook/ads/NativeAdBase;

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 54254
    return-void
.end method
