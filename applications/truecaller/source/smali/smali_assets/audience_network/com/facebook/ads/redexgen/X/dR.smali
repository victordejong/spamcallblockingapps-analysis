.class public final Lcom/facebook/ads/redexgen/X/dR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/G2;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/dc;

.field public final A01:Lcom/facebook/ads/redexgen/X/da;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dh;Lcom/facebook/ads/redexgen/X/da;Lcom/facebook/ads/redexgen/X/dc;)V
    .locals 2

    .line 73851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73852
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dR;->A00:Lcom/facebook/ads/redexgen/X/dc;

    .line 73853
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dR;->A01:Lcom/facebook/ads/redexgen/X/da;

    .line 73854
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/G2;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/redexgen/X/G2;-><init>(Lcom/facebook/ads/redexgen/X/da;Lcom/facebook/ads/redexgen/X/dS;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/dh;->A02(Lcom/facebook/ads/redexgen/X/di;)V

    .line 73855
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/dh;Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/G3;)Lcom/facebook/ads/redexgen/X/dR;
    .locals 7

    .line 73856
    new-instance v5, Lcom/facebook/ads/redexgen/X/dc;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/dc;-><init>()V

    .line 73857
    .local p0, "viewpointRegistry":Lcom/facebook/ads/redexgen/X/dc;
    new-instance v1, Lcom/facebook/ads/redexgen/X/da;

    new-instance v3, Lcom/facebook/ads/redexgen/X/G6;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/G6;-><init>()V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/da;-><init>(Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/redexgen/X/G3;Lcom/facebook/ads/redexgen/X/dc;Landroid/os/Handler;)V

    .line 73858
    .local v2, "viewpointScanner":Lcom/facebook/ads/redexgen/X/da;
    new-instance v0, Lcom/facebook/ads/redexgen/X/dR;

    invoke-direct {v0, p0, v1, v5}, Lcom/facebook/ads/redexgen/X/dR;-><init>(Lcom/facebook/ads/redexgen/X/dh;Lcom/facebook/ads/redexgen/X/da;Lcom/facebook/ads/redexgen/X/dc;)V

    return-object v0
.end method


# virtual methods
.method public final A01(Landroid/view/View;)V
    .locals 1

    .line 73859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dR;->A00:Lcom/facebook/ads/redexgen/X/dc;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dc;->A01(Landroid/view/View;)V

    .line 73860
    return-void
.end method

.method public final A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dj;)V
    .locals 1

    .line 73861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dR;->A00:Lcom/facebook/ads/redexgen/X/dc;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/dc;->A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dj;)V

    .line 73862
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/dg;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/dg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dR;->A01:Lcom/facebook/ads/redexgen/X/da;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/da;->A0B(Lcom/facebook/ads/redexgen/X/dg;)V

    .line 73864
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/de;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/de;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dR;->A01:Lcom/facebook/ads/redexgen/X/da;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/da;->A0C(Lcom/facebook/ads/redexgen/X/de;)V

    .line 73866
    return-void
.end method
