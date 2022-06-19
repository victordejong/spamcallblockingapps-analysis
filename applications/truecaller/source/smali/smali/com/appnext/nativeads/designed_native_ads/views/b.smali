.class public abstract Lcom/appnext/nativeads/designed_native_ads/views/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/nativeads/designed_native_ads/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/nativeads/designed_native_ads/views/b$b;,
        Lcom/appnext/nativeads/designed_native_ads/views/b$a;
    }
.end annotation


# instance fields
.field private aM:Landroid/content/Context;

.field private gR:Lcom/appnext/nativeads/designed_native_ads/a;

.field private gS:Lcom/appnext/nativeads/designed_native_ads/d;

.field private gT:Landroid/widget/ImageView;

.field private gU:I

.field private gV:Lcom/appnext/nativeads/designed_native_ads/views/b$a;

.field private gp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->aM:Landroid/content/Context;

    const/16 p1, 0x8

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->aM:Landroid/content/Context;

    sget p2, Lcom/appnext/nativeads/R$layout;->design_native_ads_layout:I

    invoke-static {p1, p2, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->bn()I

    move-result p2

    int-to-float p2, p2

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p3

    float-to-int p2, p2

    const/4 p3, -0x1

    .line 7
    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    invoke-direct {p0, p3}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setSuggestedAppsBackgroundColor(I)V

    .line 9
    sget p1, Lcom/appnext/nativeads/R$id;->privacy_icon:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gT:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 11
    invoke-virtual {p0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->getContentResource()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 12
    sget p2, Lcom/appnext/nativeads/R$id;->design_native_ads_container:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 13
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "DesignedNativeAdView$buildView"

    .line 14
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/appnext/nativeads/designed_native_ads/views/b;)V
    .locals 2

    .line 8
    :try_start_0
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTitle(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "title_text_color"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTitleTextColor(I)V

    .line 10
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "amount_of_icons"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setAmountOfApps(I)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "designed - amount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "present_titles"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->a(Z)V

    .line 13
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "app_title_text_color"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setIconAppTitleTextColor(I)V

    .line 14
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "local_direction"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setLocalDirection(Z)V

    .line 15
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "background_color"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setSuggestedBackgroundColor(I)V

    .line 16
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    const-string v1, "transparency"

    invoke-virtual {v0, v1}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTransparency(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "DesignedNativeAdView$initParameters"

    .line 17
    invoke-static {v0, p0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gS:Lcom/appnext/nativeads/designed_native_ads/d;

    return-object p0
.end method

.method public static synthetic c(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/views/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gV:Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    return-object p0
.end method

.method private setPrivacyIcon(Lcom/appnext/core/AppnextAd;)V
    .locals 2

    .line 1
    sget v0, Lcom/appnext/nativeads/R$id;->privacy_icon_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/appnext/nativeads/designed_native_ads/views/b$4;

    invoke-direct {v1, p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b$4;-><init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/core/AppnextAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/appnext/core/i;->a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/SettingsManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gT:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/appnext/core/i;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gT:Landroid/widget/ImageView;

    sget v0, Lcom/appnext/nativeads/R$drawable;->apnxt_na_i_icon_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setSuggestedAppsBackgroundColor(I)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p1, 0x41f00000    # 30.0f

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$setSuggestedAppsBackgroundColor"

    .line 5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;Lcom/appnext/nativeads/designed_native_ads/views/b$a;)V
    .locals 2

    .line 4
    :try_start_0
    iput-object p3, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gV:Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    .line 5
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gp:Ljava/lang/String;

    .line 6
    iget-object p3, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gR:Lcom/appnext/nativeads/designed_native_ads/a;

    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->aM:Landroid/content/Context;

    iget v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gU:I

    invoke-virtual {p3, v0, p1, p2, v1}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "DesignedNativeAdView$load"

    .line 7
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/views/b$b;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-direct {v0}, Lcom/appnext/nativeads/designed_native_ads/a;-><init>()V

    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gR:Lcom/appnext/nativeads/designed_native_ads/a;

    .line 2
    invoke-virtual {v0, p0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a$a;)V

    .line 3
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/appnext/nativeads/designed_native_ads/views/b$1;

    invoke-direct {v2, p0, p2}, Lcom/appnext/nativeads/designed_native_ads/views/b$1;-><init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/nativeads/designed_native_ads/views/b$b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/appnext/core/SettingsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/SettingsManager$ConfigCallback;)V

    return-void
.end method

.method public abstract a(Z)V
.end method

.method public abstract bn()I
.end method

.method public final e(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/AppnextAd;

    invoke-direct {p0, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setPrivacyIcon(Lcom/appnext/core/AppnextAd;)V

    .line 4
    new-instance v0, Lcom/appnext/nativeads/designed_native_ads/d;

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->aM:Landroid/content/Context;

    iget-object v2, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gp:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/appnext/nativeads/designed_native_ads/d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gS:Lcom/appnext/nativeads/designed_native_ads/d;

    .line 5
    invoke-virtual {p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->g(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gV:Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b$a;->onAdsLoadedSuccessfully()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gV:Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    if-eqz p1, :cond_1

    .line 10
    new-instance v0, Lcom/appnext/core/AppnextError;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/appnext/nativeads/designed_native_ads/views/b$a;->onError(Lcom/appnext/core/AppnextError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$onLoaded"

    .line 11
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public abstract g(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContentResource()I
.end method

.method public final onError(Lcom/appnext/core/AppnextError;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gV:Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b$a;->onError(Lcom/appnext/core/AppnextError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$onError"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setAmountOfApps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b;->gU:I

    return-void
.end method

.method public setIconAppTitleTextColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setIconTitleTextColor(I)V

    return-void
.end method

.method public abstract setIconTitleTextColor(I)V
.end method

.method public setLocalDirection(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$setLocalDirection"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setPresentTitles(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->a(Z)V

    return-void
.end method

.method public setSuggestedBackgroundColor(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setSuggestedAppsBackgroundColor(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method public abstract setTitleText(Ljava/lang/String;)V
.end method

.method public setTitleTextColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTitleTextColorForAdUnit(I)V

    return-void
.end method

.method public abstract setTitleTextColorForAdUnit(I)V
.end method

.method public setTransparency(I)V
    .locals 2

    const/16 v0, 0x64

    .line 1
    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$setTransparency"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
