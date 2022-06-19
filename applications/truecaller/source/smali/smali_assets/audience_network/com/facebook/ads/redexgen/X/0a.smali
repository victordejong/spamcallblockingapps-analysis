.class public Lcom/facebook/ads/redexgen/X/0a;
.super Lcom/facebook/ads/redexgen/X/0d;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/31;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi21Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2142
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0d;-><init>()V

    return-void
.end method


# virtual methods
.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3I;)Lcom/facebook/ads/redexgen/X/3I;
    .locals 2

    .line 2143
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3I;->A01(Lcom/facebook/ads/redexgen/X/3I;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 2144
    .local p0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 2145
    .local p1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    .line 2146
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2147
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3I;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/3I;

    move-result-object v0

    return-object v0
.end method

.method public final A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3I;)Lcom/facebook/ads/redexgen/X/3I;
    .locals 2

    .line 2148
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3I;->A01(Lcom/facebook/ads/redexgen/X/3I;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    .line 2149
    .local p0, "unwrapped":Landroid/view/WindowInsets;
    invoke-virtual {p1, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 2150
    .local p1, "result":Landroid/view/WindowInsets;
    if-eq v0, v1, :cond_0

    .line 2151
    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    .line 2152
    :cond_0
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3I;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/3I;

    move-result-object v0

    return-object v0
.end method

.method public final A0B(Landroid/view/View;)V
    .locals 0

    .line 2153
    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    .line 2154
    return-void
.end method

.method public final A0F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/2l;)V
    .locals 1

    .line 2155
    if-nez p2, :cond_0

    .line 2156
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2157
    return-void

    .line 2158
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/2z;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/2z;-><init>(Lcom/facebook/ads/redexgen/X/0a;Lcom/facebook/ads/redexgen/X/2l;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 2159
    return-void
.end method
