.class public final Lcom/facebook/ads/redexgen/X/cL;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F4;->A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FB;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/1p;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/F4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F4;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/FB;)V
    .locals 0

    .line 71520
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Lcom/facebook/ads/redexgen/X/F4;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cL;->A01:Lcom/facebook/ads/redexgen/X/1p;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4

    .line 71521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A01:Lcom/facebook/ads/redexgen/X/1p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0N(Lcom/facebook/ads/redexgen/X/1p;)V

    .line 71522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cS;->A0K(Lcom/facebook/ads/redexgen/X/0n;)V

    .line 71523
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Lcom/facebook/ads/redexgen/X/F4;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/cS;->A00:Lcom/facebook/ads/redexgen/X/0n;

    .line 71524
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->RV_AD_TIMEOUT:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 71525
    .local p0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A02:Lcom/facebook/ads/redexgen/X/F4;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    const-string v1, ""

    new-instance v0, Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/K3;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71527
    return-void
.end method
