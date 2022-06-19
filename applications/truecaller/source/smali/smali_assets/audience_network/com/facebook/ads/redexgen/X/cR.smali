.class public final Lcom/facebook/ads/redexgen/X/cR;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F7;->A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/d0;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1p;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/F7;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F7;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/d0;)V
    .locals 0

    .line 71705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/F7;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cR;->A01:Lcom/facebook/ads/redexgen/X/1p;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/d0;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 71706
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/F7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cR;->A01:Lcom/facebook/ads/redexgen/X/1p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0N(Lcom/facebook/ads/redexgen/X/1p;)V

    .line 71707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/F7;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cR;->A00:Lcom/facebook/ads/redexgen/X/d0;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0K(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71708
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/F7;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 71709
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K3;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/K3;

    move-result-object v3

    .line 71710
    .local p0, "error":Lcom/facebook/ads/redexgen/X/K3;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/F7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71711
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    .line 71712
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/K3;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/F7;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71714
    return-void
.end method
