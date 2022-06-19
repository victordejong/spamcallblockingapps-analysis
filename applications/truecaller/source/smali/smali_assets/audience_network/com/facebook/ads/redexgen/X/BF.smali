.class public final Lcom/facebook/ads/redexgen/X/BF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/BG;
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

.field public final A01:Lcom/facebook/ads/redexgen/X/BG;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/BG;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/ads/redexgen/X/BG;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23478
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/I6;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    .line 23479
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    .line 23480
    return-void

    .line 23481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/BF;)Lcom/facebook/ads/redexgen/X/BG;
    .locals 0

    .line 23482
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    return-object p0
.end method


# virtual methods
.method public final A01(I)V
    .locals 2

    .line 23483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v0, :cond_0

    .line 23484
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/redexgen/X/BF;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23485
    :cond_0
    return-void
.end method

.method public final A02(IJJ)V
    .locals 8

    .line 23486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v0, :cond_0

    .line 23487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/BC;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/BC;-><init>(Lcom/facebook/ads/redexgen/X/BF;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23488
    :cond_0
    return-void
.end method

.method public final A03(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 2

    .line 23489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v0, :cond_0

    .line 23490
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BB;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/BB;-><init>(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/internal/exoplayer2/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23491
    :cond_0
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 2

    .line 23492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v0, :cond_0

    .line 23493
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/BD;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/BD;-><init>(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/redexgen/X/Bj;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23494
    :cond_0
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Bj;)V
    .locals 2

    .line 23495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v0, :cond_0

    .line 23496
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/B9;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/B9;-><init>(Lcom/facebook/ads/redexgen/X/BF;Lcom/facebook/ads/redexgen/X/Bj;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23497
    :cond_0
    return-void
.end method

.method public final A06(Ljava/lang/String;JJ)V
    .locals 8

    .line 23498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A01:Lcom/facebook/ads/redexgen/X/BG;

    if-eqz v0, :cond_0

    .line 23499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BF;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/BA;

    move-object v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/BA;-><init>(Lcom/facebook/ads/redexgen/X/BF;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23500
    :cond_0
    return-void
.end method
