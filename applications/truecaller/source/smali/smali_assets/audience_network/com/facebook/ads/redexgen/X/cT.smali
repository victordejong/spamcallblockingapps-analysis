.class public final Lcom/facebook/ads/redexgen/X/cT;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/cS;->AAW(Lcom/facebook/ads/redexgen/X/K3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/cS;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/K3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cS;Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 0

    .line 71907
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Lcom/facebook/ads/redexgen/X/cS;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 71908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Lcom/facebook/ads/redexgen/X/cS;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/cS;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 71909
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Lcom/facebook/ads/redexgen/X/K3;

    .line 71910
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K3;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4X(ILjava/lang/String;)V

    .line 71911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A00:Lcom/facebook/ads/redexgen/X/cS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cT;->A01:Lcom/facebook/ads/redexgen/X/K3;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0G(Lcom/facebook/ads/redexgen/X/K3;)V

    .line 71912
    return-void
.end method
