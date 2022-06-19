.class public final Lcom/facebook/ads/redexgen/X/9u;
.super Lcom/facebook/ads/redexgen/X/SU;
.source ""


# static fields
.field public static final A02:I


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 21192
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/facebook/ads/redexgen/X/9u;->A02:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Z)V
    .locals 6

    .line 21193
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/SU;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 21194
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/9u;->A01:Z

    .line 21195
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A00:Landroid/view/View;

    .line 21196
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->A0f()V

    .line 21197
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A01:Z

    const/4 v5, -0x1

    if-eqz v0, :cond_0

    .line 21198
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A02()Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21199
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/9u;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/ON;
    .end local p2    # null:Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->bringToFront()V

    .line 21200
    return-void

    .line 21201
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21202
    .local p0, "insideContainerLayout":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21203
    .local p2, "insideContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SU;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21204
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21205
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 21206
    .local p1, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21207
    sget v2, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 21208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A00:Landroid/view/View;

    invoke-virtual {v4, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21209
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/9u;->addView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final A02()Z
    .locals 1

    .line 21210
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0B()Z
    .locals 1

    .line 21211
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A01:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A02()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 4
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21212
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/SU;->A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 21213
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A01:Z

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    .line 21214
    sget v1, Lcom/facebook/ads/redexgen/X/9u;->A02:I

    sget v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    .line 21215
    .local p0, "availableWidthPx":I
    int-to-double v2, v1

    div-double/2addr v2, p3

    double-to-int v1, v2

    .line 21216
    .local p1, "mediaHeight":I
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 21217
    .local p2, "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21218
    sget v2, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 21219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A00:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21220
    .end local p0    # "availableWidthPx":I
    .end local p1    # "mediaHeight":I
    .end local p2    # "mediaViewParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public final A0c()Z
    .locals 1

    .line 21221
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9u;->A01:Z

    return v0
.end method
