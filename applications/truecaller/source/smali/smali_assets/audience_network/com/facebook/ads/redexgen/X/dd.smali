.class public final Lcom/facebook/ads/redexgen/X/dd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/de;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/dg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/de;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/dR;

.field public final A03:Lcom/facebook/ads/redexgen/X/dn;

.field public final A04:Lcom/facebook/ads/redexgen/X/df;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dn;Lcom/facebook/ads/redexgen/X/df;)V
    .locals 0
    .param p2    # Lcom/facebook/ads/redexgen/X/df;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dd;->A03:Lcom/facebook/ads/redexgen/X/dn;

    .line 74007
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dd;->A04:Lcom/facebook/ads/redexgen/X/df;

    .line 74008
    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/dd;
    .locals 3

    .line 74009
    new-instance v2, Lcom/facebook/ads/redexgen/X/G5;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/G5;-><init>()V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/dd;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/dd;-><init>(Lcom/facebook/ads/redexgen/X/dn;Lcom/facebook/ads/redexgen/X/df;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/dh;Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/G3;)V
    .locals 2

    .line 74010
    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/dR;->A00(Lcom/facebook/ads/redexgen/X/dh;Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/G3;)Lcom/facebook/ads/redexgen/X/dR;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dd;->A02:Lcom/facebook/ads/redexgen/X/dR;

    .line 74011
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dd;->A00:Lcom/facebook/ads/redexgen/X/dg;

    if-eqz v1, :cond_0

    .line 74012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dd;->A02:Lcom/facebook/ads/redexgen/X/dR;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/dR;->A03(Lcom/facebook/ads/redexgen/X/dg;)V

    .line 74013
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dd;->A01:Lcom/facebook/ads/redexgen/X/de;

    if-eqz v1, :cond_1

    .line 74014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dd;->A02:Lcom/facebook/ads/redexgen/X/dR;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/dR;->A04(Lcom/facebook/ads/redexgen/X/de;)V

    .line 74015
    :cond_1
    return-void
.end method


# virtual methods
.method public final A02(Landroid/view/View;)V
    .locals 1

    .line 74016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dd;->A02:Lcom/facebook/ads/redexgen/X/dR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/dR;->A01(Landroid/view/View;)V

    .line 74017
    return-void
.end method

.method public final A03(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dj;)V
    .locals 1

    .line 74018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dd;->A02:Lcom/facebook/ads/redexgen/X/dR;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/dR;->A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dj;)V

    .line 74019
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/dh;Landroid/view/View;)V
    .locals 3

    .line 74020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dd;->A03:Lcom/facebook/ads/redexgen/X/dn;

    new-instance v2, Lcom/facebook/ads/redexgen/X/G4;

    invoke-direct {v2, p2, v0}, Lcom/facebook/ads/redexgen/X/G4;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/dn;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dd;->A04:Lcom/facebook/ads/redexgen/X/df;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3Z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3Z;-><init>(Lcom/facebook/ads/redexgen/X/df;)V

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/ads/redexgen/X/dd;->A01(Lcom/facebook/ads/redexgen/X/dh;Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/G3;)V

    .line 74021
    return-void
.end method
