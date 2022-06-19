.class public Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final adChoiceOverlay:Le/i/b/r1/e;

.field private final delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;)V
    .locals 1
    .annotation build Lcom/criteo/publisher/annotation/Internal;
        value = {
            "MoPub Adapter",
            "AdMob Adapter"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->g()Le/i/b/r1/e;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Le/i/b/r1/e;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;Le/i/b/r1/e;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    .line 4
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Le/i/b/r1/e;

    return-void
.end method


# virtual methods
.method public createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Le/i/b/r1/e;

    iget-object v1, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v1, p1, p2}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->createNativeView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 4
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, 0x5

    .line 11
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget-object p2, v0, Le/i/b/r1/e;->c:Le/i/b/s2/c;

    iget-object v3, v0, Le/i/b/r1/e;->b:Le/i/b/s2/f;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x13

    invoke-virtual {p2, v3}, Le/i/b/s2/c;->b(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 13
    iget-object p2, v0, Le/i/b/r1/e;->c:Le/i/b/s2/c;

    iget-object v3, v0, Le/i/b/r1/e;->b:Le/i/b/s2/f;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Le/i/b/s2/c;->b(I)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    iget p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 15
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 16
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setElevation(F)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 18
    iget-object p1, v0, Le/i/b/r1/e;->a:Ljava/util/Map;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->adChoiceOverlay:Le/i/b/r1/e;

    .line 2
    invoke-virtual {v0, p2}, Le/i/b/r1/e;->a(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/AdChoiceOverlayNativeRenderer;->delegate:Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/criteo/publisher/advancednative/CriteoNativeRenderer;->renderNativeView(Lcom/criteo/publisher/advancednative/RendererHelper;Landroid/view/View;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    :cond_1
    return-void
.end method
