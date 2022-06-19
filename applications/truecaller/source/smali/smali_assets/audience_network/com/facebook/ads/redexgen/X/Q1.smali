.class public final Lcom/facebook/ads/redexgen/X/Q1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6e;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6e;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6e;)V
    .locals 0

    .line 49525
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 49526
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Q1;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A02(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49527
    return-void

    .line 49528
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A01(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 49529
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A01(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0n:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 49530
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Q1;
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A00(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2s()V

    .line 49531
    sget-object v1, Lcom/facebook/ads/redexgen/X/Q2;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A03(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getState()Lcom/facebook/ads/redexgen/X/QW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QW;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 49532
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A04(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A05:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0xc

    .line 49533
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    goto :goto_1

    .line 49534
    :goto_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    .line 49535
    :goto_1
    return-void

    .line 49536
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Q1;->A00:Lcom/facebook/ads/redexgen/X/6e;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6e;->A05(Lcom/facebook/ads/redexgen/X/6e;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Po;->A0e(ZI)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49537
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
