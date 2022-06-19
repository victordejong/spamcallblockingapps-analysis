.class public final Lcom/facebook/ads/redexgen/X/F8;
.super Lcom/facebook/ads/redexgen/X/cS;
.source ""


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Dr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Dr;Lcom/facebook/ads/redexgen/X/1o;)V
    .locals 0

    .line 32968
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/cS;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1o;)V

    .line 32969
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    .line 32970
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/F8;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 32971
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/F8;)Lcom/facebook/ads/redexgen/X/Dr;
    .locals 0

    .line 32972
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    return-object p0
.end method


# virtual methods
.method public final A0J()V
    .locals 2

    .line 32973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 32974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3l()V

    .line 32975
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cS;->A06:Lcom/facebook/ads/redexgen/X/0o;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/0o;->A0E(Landroid/view/View;)V

    .line 32976
    :goto_0
    return-void

    .line 32977
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3m()V

    goto :goto_0
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/0n;Lcom/facebook/ads/redexgen/X/94;Lcom/facebook/ads/redexgen/X/92;Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 10

    move-object v4, p1

    .line 32978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3f()V

    .line 32979
    check-cast v4, Lcom/facebook/ads/redexgen/X/d1;

    .line 32980
    .local p0, "adapter":Lcom/facebook/ads/redexgen/X/d1;
    new-instance v3, Lcom/facebook/ads/redexgen/X/cV;

    move-object v9, p4

    invoke-direct {v3, p0, v9, v4}, Lcom/facebook/ads/redexgen/X/cV;-><init>(Lcom/facebook/ads/redexgen/X/F8;Lcom/facebook/ads/redexgen/X/1p;Lcom/facebook/ads/redexgen/X/d1;)V

    .line 32981
    .local v4, "bannerTimeout":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/cS;->A0C()Landroid/os/Handler;

    move-result-object v2

    .line 32982
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/94;->A05()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32983
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/cS;->A08:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cS;->A07:Lcom/facebook/ads/redexgen/X/1o;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/1o;->A06:Lcom/facebook/ads/redexgen/X/K8;

    new-instance v8, Lcom/facebook/ads/redexgen/X/cU;

    invoke-direct {v8, p0, v3}, Lcom/facebook/ads/redexgen/X/cU;-><init>(Lcom/facebook/ads/redexgen/X/F8;Ljava/lang/Runnable;)V

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/d1;->A0C(Lcom/facebook/ads/redexgen/X/Dr;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/K8;Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1p;)V

    .line 32984
    return-void
.end method

.method public final A0O(Ljava/lang/String;)V
    .locals 2

    .line 32985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A01:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3k(Z)V

    .line 32986
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/cS;->A0O(Ljava/lang/String;)V

    .line 32987
    return-void

    .line 32988
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0R(Z)V
    .locals 1

    .line 32989
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/cS;->A0R(Z)V

    .line 32990
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Landroid/view/View;

    .line 32991
    return-void
.end method
