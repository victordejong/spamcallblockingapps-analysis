.class public final Lcom/facebook/ads/redexgen/X/5I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Ju;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 13781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13782
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ju;->A00(I)Lcom/facebook/ads/redexgen/X/Ju;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/Ju;

    .line 13783
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 13784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/Ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ju;->A03()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 13785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/Ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ju;->A04()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 13786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/Ju;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ju;->A05()I

    move-result v0

    return v0
.end method
