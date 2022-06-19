.class public final Lcom/facebook/ads/redexgen/X/J8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/J9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/J9;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/J9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 39899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39900
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    .line 39901
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    .line 39902
    return-void

    .line 39903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/J8;)Lcom/facebook/ads/redexgen/X/J9;
    .locals 0

    .line 39904
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    return-object p0
.end method


# virtual methods
.method public final A01(IIIF)V
    .locals 7

    .line 39905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/J5;

    move-object v2, p0

    move v4, p2

    move v3, p1

    move v6, p4

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/J5;-><init>(Lcom/facebook/ads/redexgen/X/J8;IIIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39907
    :cond_0
    return-void
.end method

.method public final A02(IJ)V
    .locals 2

    .line 39908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39909
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/J4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/J4;-><init>(Lcom/facebook/ads/redexgen/X/J8;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39910
    :cond_0
    return-void
.end method

.method public final A03(Landroid/view/Surface;)V
    .locals 2

    .line 39911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39912
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/J6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/J6;-><init>(Lcom/facebook/ads/redexgen/X/J8;Landroid/view/Surface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39913
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 39914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39915
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/J3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/J3;-><init>(Lcom/facebook/ads/redexgen/X/J8;Lcom/facebook/ads/internal/exoplayer2/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39916
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 2

    .line 39917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39918
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/J7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/J7;-><init>(Lcom/facebook/ads/redexgen/X/J8;Lcom/facebook/ads/redexgen/X/Bj;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39919
    :cond_0
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 2

    .line 39920
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39921
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/J1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/J1;-><init>(Lcom/facebook/ads/redexgen/X/J8;Lcom/facebook/ads/redexgen/X/Bj;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39922
    :cond_0
    return-void
.end method

.method public final A07(Ljava/lang/String;JJ)V
    .locals 8

    .line 39923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A01:Lcom/facebook/ads/redexgen/X/J9;

    if-eqz v0, :cond_0

    .line 39924
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/J8;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/J2;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/J2;-><init>(Lcom/facebook/ads/redexgen/X/J8;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39925
    :cond_0
    return-void
.end method
