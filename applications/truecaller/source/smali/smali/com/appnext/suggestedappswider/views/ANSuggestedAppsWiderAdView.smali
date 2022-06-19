.class public abstract Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001:\u0001(B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u001c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0015H\u0002J\u0008\u0010\u0019\u001a\u00020\u0012H$J\u0006\u0010\u001a\u001a\u00020\u0007J\u0008\u0010\u001b\u001a\u00020\u0012H$J\u0006\u0010\u001c\u001a\u00020\u0007J\u001a\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0016\u0010!\u001a\u00020\u001e2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015H$J\u0008\u0010#\u001a\u00020\u001eH$J\u0008\u0010$\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H&R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "anCollectionAdViewCallbacks",
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;",
        "getAnCollectionAdViewCallbacks",
        "()Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;",
        "setAnCollectionAdViewCallbacks",
        "(Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;)V",
        "viewHeightPixel",
        "viewWidthPixel",
        "convertDpToPx",
        "",
        "dp",
        "convertSuggestedAppsWiderModelsToSuggestedAppsWiderViewModels",
        "",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
        "suggestedAppsWiderModels",
        "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;",
        "getViewHeightDP",
        "getViewHeightPixel",
        "getViewWidthDP",
        "getViewWidthPixel",
        "load",
        "",
        "appnextSuggestedAppsWiderDataContainer",
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;",
        "loadAds",
        "suggestedAppsWiderViewModels",
        "onError",
        "setSuggestedAppsBackgroundColor",
        "setTitle",
        "title",
        "",
        "ANCollectionAdViewCallbacks",
        "SuggestedAppsWider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final hu:I

.field private final hv:I

.field private hw:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->getViewWidthDP()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->a(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hu:I

    .line 4
    invoke-virtual {p0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->getViewHeightDP()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->a(F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hv:I

    .line 5
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :try_start_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 p2, -0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p2, 0x41f00000    # 30.0f

    .line 9
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "DesignedNativeAdView$setSuggestedAppsBackgroundColor"

    .line 11
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILs1/z/c/f;)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public final a(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;)V
    .locals 3

    .line 2
    iput-object p2, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hw:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;

    const-string v0, "Internal error"

    if-eqz p1, :cond_3

    .line 3
    instance-of v1, p1, Lcom/appnext/suggestedappswider/models/a;

    if-eqz v1, :cond_3

    .line 4
    sget-object v1, Lcom/appnext/suggestedappswider/b/a;->hl:Lcom/appnext/suggestedappswider/b/a;

    .line 5
    check-cast p1, Lcom/appnext/suggestedappswider/models/a;

    invoke-virtual {p1}, Lcom/appnext/suggestedappswider/models/a;->bt()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/appnext/suggestedappswider/b/a;->M(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderModel;

    .line 11
    new-instance v2, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;

    invoke-direct {v2, v1}, Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;-><init>(Lcom/appnext/core/AppnextAd;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 12
    :goto_1
    invoke-virtual {p0, p1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->k(Ljava/util/List;)V

    .line 13
    invoke-interface {p2}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;->onAdsLoadedSuccessfully()V

    return-void

    .line 14
    :cond_2
    new-instance p1, Lcom/appnext/core/AppnextError;

    invoke-direct {p1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;->onError(Lcom/appnext/core/AppnextError;)V

    return-void

    .line 15
    :cond_3
    new-instance p1, Lcom/appnext/core/AppnextError;

    invoke-direct {p1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;->onError(Lcom/appnext/core/AppnextError;)V

    return-void
.end method

.method public final getAnCollectionAdViewCallbacks()Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hw:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;

    return-object v0
.end method

.method public abstract getViewHeightDP()F
.end method

.method public final getViewHeightPixel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hv:I

    return v0
.end method

.method public abstract getViewWidthDP()F
.end method

.method public final getViewWidthPixel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hu:I

    return v0
.end method

.method public abstract k(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/suggestedappswider/models/SuggestedAppsWiderViewModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public final setAnCollectionAdViewCallbacks(Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->hw:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;

    return-void
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
