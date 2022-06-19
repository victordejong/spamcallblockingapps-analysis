.class public final Lcom/facebook/ads/redexgen/X/59;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)Lcom/facebook/ads/redexgen/X/0R;
    .locals 0

    .line 13400
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object p0

    .line 13401
    .local p0, "sdkContext":Lcom/facebook/ads/redexgen/X/XS;
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/8L;->A6e(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object p0

    .line 13402
    .local p1, "funnelModule":Lcom/facebook/ads/redexgen/X/0U;
    if-eqz p0, :cond_0

    .line 13403
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/0U;->A9J()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object p0

    return-object p0

    .line 13404
    :cond_0
    new-instance p0, Lcom/facebook/ads/redexgen/X/dA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dA;-><init>()V

    return-object p0
.end method

.method public static A01(Landroid/app/Activity;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 3

    .line 13405
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/59;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XT;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 13406
    return-object v0
.end method

.method public static A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 3

    .line 13407
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/dA;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/dA;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A03(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 3

    .line 13408
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/59;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A04(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 3

    .line 13409
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JD;->A0o(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13410
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/59;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0R;)V

    .line 13411
    return-object v0

    .line 13412
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/59;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 3

    .line 13413
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/59;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/XT;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0R;)V

    return-object v0
.end method

.method public static A06(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Dr;
    .locals 3

    .line 13414
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/59;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8L;->A6e(Lcom/facebook/ads/redexgen/X/8J;)Lcom/facebook/ads/redexgen/X/0U;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dr;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Dr;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;Lcom/facebook/ads/redexgen/X/0U;)V

    .line 13415
    return-object v0
.end method

.method public static A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/XS;
    .locals 2

    .line 13416
    invoke-static {}, Lcom/facebook/ads/redexgen/X/59;->A08()Lcom/facebook/ads/redexgen/X/8L;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/XS;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/8L;)V

    return-object v0
.end method

.method public static declared-synchronized A08()Lcom/facebook/ads/redexgen/X/8L;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/59;

    monitor-enter v1

    .line 13417
    :try_start_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/X3;->A02()Lcom/facebook/ads/redexgen/X/X3;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
