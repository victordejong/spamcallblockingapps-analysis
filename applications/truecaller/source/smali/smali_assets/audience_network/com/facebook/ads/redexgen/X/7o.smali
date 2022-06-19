.class public final Lcom/facebook/ads/redexgen/X/7o;
.super Lcom/facebook/ads/redexgen/X/KO;
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

    .line 17374
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 4

    .line 17375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A02(Lcom/facebook/ads/redexgen/X/KF;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A07(Lcom/facebook/ads/redexgen/X/KF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17376
    :cond_0
    return-void

    .line 17377
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KP;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 17378
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A01(Lcom/facebook/ads/redexgen/X/KF;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17379
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A0A(Lcom/facebook/ads/redexgen/X/KF;Lcom/facebook/ads/redexgen/X/Q5;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A04(Lcom/facebook/ads/redexgen/X/KF;)V

    .line 17381
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A05(Lcom/facebook/ads/redexgen/X/KF;ZZ)V

    .line 17382
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A08(Lcom/facebook/ads/redexgen/X/KF;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17383
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A01(Lcom/facebook/ads/redexgen/X/KF;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/KG;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/KG;-><init>(Lcom/facebook/ads/redexgen/X/7o;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KF;

    .line 17384
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A00(Lcom/facebook/ads/redexgen/X/KF;)I

    move-result v0

    int-to-long v0, v0

    .line 17385
    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17386
    :cond_3
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17387
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7o;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method
