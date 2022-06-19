.class public final Lcom/facebook/ads/redexgen/X/7q;
.super Lcom/facebook/ads/redexgen/X/Kq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/KF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KF;)V
    .locals 0

    .line 17395
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kq;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 4

    .line 17396
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A07(Lcom/facebook/ads/redexgen/X/KF;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A08(Lcom/facebook/ads/redexgen/X/KF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KF;->A0B(Lcom/facebook/ads/redexgen/X/KF;Z)Z

    .line 17398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A04:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A0A(Lcom/facebook/ads/redexgen/X/KF;Lcom/facebook/ads/redexgen/X/Q5;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    .line 17399
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A09(Lcom/facebook/ads/redexgen/X/KF;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17400
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KF;->A0C(Lcom/facebook/ads/redexgen/X/KF;Z)Z

    .line 17401
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A01(Lcom/facebook/ads/redexgen/X/KF;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/KJ;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/KJ;-><init>(Lcom/facebook/ads/redexgen/X/7q;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    .line 17402
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A00(Lcom/facebook/ads/redexgen/X/KF;)I

    move-result v0

    int-to-long v0, v0

    .line 17403
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17404
    :cond_1
    :goto_0
    return-void

    .line 17405
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A0A(Lcom/facebook/ads/redexgen/X/KF;Lcom/facebook/ads/redexgen/X/Q5;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17406
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A04(Lcom/facebook/ads/redexgen/X/KF;)V

    .line 17407
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7q;->A00:Lcom/facebook/ads/redexgen/X/KF;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/KF;->A05(Lcom/facebook/ads/redexgen/X/KF;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17408
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7q;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
