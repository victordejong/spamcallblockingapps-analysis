.class public final Lcom/facebook/ads/redexgen/X/cw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FB;->A0C(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FB;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FB;Z)V
    .locals 0

    .line 72316
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/cw;->A01:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9p()V
    .locals 5

    .line 72317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A02(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A01:Z

    if-eqz v0, :cond_0

    .line 72318
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    .line 72319
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/FB;->A02(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    .line 72320
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A01(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cf;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/cx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cx;-><init>(Lcom/facebook/ads/redexgen/X/cw;)V

    .line 72321
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oo;->A01(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;ILcom/facebook/ads/redexgen/X/Ol;)Lcom/facebook/ads/redexgen/X/On;

    move-result-object v0

    .line 72322
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/FB;->A03(Lcom/facebook/ads/redexgen/X/FB;Lcom/facebook/ads/redexgen/X/On;)Lcom/facebook/ads/redexgen/X/On;

    .line 72323
    :goto_0
    return-void

    .line 72324
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A05(Lcom/facebook/ads/redexgen/X/FB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABx(Lcom/facebook/ads/redexgen/X/co;)V

    goto :goto_0
.end method

.method public final A9q()V
    .locals 3

    .line 72326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cw;->A00:Lcom/facebook/ads/redexgen/X/FB;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    .line 72327
    return-void
.end method
