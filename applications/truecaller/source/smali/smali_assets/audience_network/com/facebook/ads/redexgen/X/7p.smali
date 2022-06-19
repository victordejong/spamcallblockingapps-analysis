.class public final Lcom/facebook/ads/redexgen/X/7p;
.super Lcom/facebook/ads/redexgen/X/Kh;
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

    .line 17388
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7p;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kh;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7t;)V
    .locals 3

    .line 17389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7p;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A08(Lcom/facebook/ads/redexgen/X/KF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7p;->A00:Lcom/facebook/ads/redexgen/X/KF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    .line 17390
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A0A(Lcom/facebook/ads/redexgen/X/KF;Lcom/facebook/ads/redexgen/X/Q5;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7p;->A00:Lcom/facebook/ads/redexgen/X/KF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KF;->A04(Lcom/facebook/ads/redexgen/X/KF;)V

    .line 17392
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7p;->A00:Lcom/facebook/ads/redexgen/X/KF;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KF;->A05(Lcom/facebook/ads/redexgen/X/KF;ZZ)V

    .line 17393
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17394
    check-cast p1, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7p;->A00(Lcom/facebook/ads/redexgen/X/7t;)V

    return-void
.end method
