.class public Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B%\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0002J\u0008\u0010\u0012\u001a\u00020\u0008H\u0002J\u0012\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u001a\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0017\u001a\u00020\u0011H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0012\u0010 \u001a\u00020\u00112\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u000e\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\u001aR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;",
        "Landroid/widget/FrameLayout;",
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "anCollectionView",
        "Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;",
        "mAppnextSuggestedAppsWiderDataContainer",
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;",
        "mAppnextSuggestedAppsWiderViewCallbacks",
        "Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;",
        "addANSuggestedAppsWiderAdView",
        "",
        "getTemplate",
        "initANSuggestedAppsWiderAdView",
        "load",
        "appnextSuggestedAppsWiderDataContainer",
        "appnextSuggestedAppsWiderViewCallbacks",
        "loadAds",
        "onAdClicked",
        "packageName",
        "",
        "onAdGotImpression",
        "onAdsLoadedSuccessfully",
        "onError",
        "error",
        "Lcom/appnext/core/AppnextError;",
        "setParams",
        "setTitle",
        "title",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$a;

.field private static final DEFAULT_TEMPLATE_TYPE:I = 0x1

.field private static final TEMPLATE:Ljava/lang/String; = "template"

.field private static final TEMPLATE_WEIGHT:Ljava/lang/String; = "weight"


# instance fields
.field private anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

.field private mAppnextSuggestedAppsWiderDataContainer:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;

.field private mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->Companion:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    invoke-direct {p0, p2}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->initANSuggestedAppsWiderAdView(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final addANSuggestedAppsWiderAdView()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->getViewWidthPixel()I

    move-result v1

    iget-object v2, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->getViewHeightPixel()I

    move-result v2

    .line 3
    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    iget-object v1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final getTemplate()I
    .locals 8

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/suggestedappswider/b/d;->bs()Lcom/appnext/suggestedappswider/b/d;

    move-result-object v0

    const-string v1, "templates"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "weight"

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v4, v3

    move v5, v4

    :goto_0
    add-int/lit8 v6, v4, 0x1

    .line 4
    :try_start_1
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    if-lt v6, v0, :cond_0

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v5, v3

    .line 6
    :goto_1
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lez v0, :cond_4

    move v5, v3

    :goto_2
    add-int/lit8 v6, v3, 0x1

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 8
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    if-le v5, v4, :cond_2

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "template"

    .line 10
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_2
    if-lt v6, v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v1, "ANCollectionAdViewProxy$getTemplate"

    .line 11
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    return v0
.end method

.method private final initANSuggestedAppsWiderAdView(Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "Internal error"

    .line 1
    :try_start_0
    sget-object v1, Lcom/appnext/suggestedappswider/views/a;->hx:Lcom/appnext/suggestedappswider/views/a$a;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->getTemplate()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Lcom/appnext/suggestedappswider/views/a$a;->a(Landroid/content/Context;I)Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    move-result-object v1

    .line 5
    iput-object v1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    if-nez v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->addANSuggestedAppsWiderAdView()V

    .line 8
    invoke-direct {p0, p1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->setParams(Landroid/util/AttributeSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v1, "ANCollectionAdViewProxy$initANSuggestedAppsWiderAdView"

    .line 9
    invoke-static {v1, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-object p1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewError(Lcom/appnext/core/AppnextError;)V

    :cond_2
    return-void
.end method

.method private final loadAds()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderDataContainer:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;

    invoke-virtual {v0, v1, p0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->a(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView$ANCollectionAdViewCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/appnext/core/AppnextError;

    const-string v3, "Internal error"

    invoke-direct {v2, v3}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    const-string v1, "ANCollectionAdViewProxy$loadAds"

    .line 3
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final setParams(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/appnext/suggestedappswider/R$styleable;->AppnextSuggestedAppsWiderView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttributes(it, R.styleable.AppnextSuggestedAppsWiderView)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Lcom/appnext/suggestedappswider/R$styleable;->AppnextSuggestedAppsWiderView_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->setTitle(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method


# virtual methods
.method public load(Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;)V
    .locals 1

    const-string v0, "appnextSuggestedAppsWiderDataContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/g;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/appnext/core/AppnextError;

    const-string v0, "Connection Error"

    invoke-direct {p1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderDataContainer:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderDataContainer;

    .line 4
    iput-object p2, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    .line 5
    invoke-direct {p0}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->loadAds()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    if-eqz p2, :cond_2

    .line 6
    new-instance p1, Lcom/appnext/core/AppnextError;

    const-string v0, "Internal error"

    invoke-direct {p1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewError(Lcom/appnext/core/AppnextError;)V

    :cond_2
    return-void
.end method

.method public onAdClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onAdClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdGotImpression(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onAdImpressionReceived(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAdsLoadedSuccessfully()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewLoadedSuccessfully()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/appnext/core/AppnextError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->mAppnextSuggestedAppsWiderViewCallbacks:Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;->onViewError(Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdViewProxy;->anCollectionView:Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/appnext/suggestedappswider/views/ANSuggestedAppsWiderAdView;->setTitle(Ljava/lang/String;)V

    return-void
.end method
