.class public final Lcom/facebook/ads/redexgen/X/7s;
.super Lcom/facebook/ads/redexgen/X/L3;
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

    .line 17415
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L3;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7u;)V
    .locals 3

    .line 17416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A01(Lcom/facebook/ads/redexgen/X/KF;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17417
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/KF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A0A(Lcom/facebook/ads/redexgen/X/KF;Lcom/facebook/ads/redexgen/X/Q5;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 17418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A04(Lcom/facebook/ads/redexgen/X/KF;)V

    .line 17419
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/KF;

    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/KF;->A05(Lcom/facebook/ads/redexgen/X/KF;ZZ)V

    .line 17420
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7s;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KF;->A0B(Lcom/facebook/ads/redexgen/X/KF;Z)Z

    .line 17421
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17422
    check-cast p1, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7s;->A00(Lcom/facebook/ads/redexgen/X/7u;)V

    return-void
.end method
