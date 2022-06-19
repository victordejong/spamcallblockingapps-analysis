.class public final Lcom/appnext/nativeads/designed_native_ads/views/d;
.super Lcom/appnext/nativeads/designed_native_ads/views/b;
.source "SourceFile"


# static fields
.field private static hc:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/appnext/nativeads/designed_native_ads/views/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    :try_start_0
    sget v0, Lcom/appnext/nativeads/R$id;->title1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget v0, Lcom/appnext/nativeads/R$id;->title2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    sget v0, Lcom/appnext/nativeads/R$id;->title3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    sget v0, Lcom/appnext/nativeads/R$id;->title4:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    sget v0, Lcom/appnext/nativeads/R$id;->title5:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "SuggestedAppsView$presentTitles"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bn()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/appnext/nativeads/R$integer;->suggested_apps_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    sget v0, Lcom/appnext/nativeads/designed_native_ads/views/d;->hc:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-gt v2, v0, :cond_5

    if-eq v2, v1, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    sget v3, Lcom/appnext/nativeads/R$id;->image5:I

    .line 3
    sget v4, Lcom/appnext/nativeads/R$id;->title5:I

    .line 4
    sget v5, Lcom/appnext/nativeads/R$id;->native_ad_view5:I

    goto :goto_1

    .line 5
    :cond_1
    sget v3, Lcom/appnext/nativeads/R$id;->image4:I

    .line 6
    sget v4, Lcom/appnext/nativeads/R$id;->title4:I

    .line 7
    sget v5, Lcom/appnext/nativeads/R$id;->native_ad_view4:I

    goto :goto_1

    .line 8
    :cond_2
    sget v3, Lcom/appnext/nativeads/R$id;->image3:I

    .line 9
    sget v4, Lcom/appnext/nativeads/R$id;->title3:I

    .line 10
    sget v5, Lcom/appnext/nativeads/R$id;->native_ad_view3:I

    goto :goto_1

    .line 11
    :cond_3
    sget v3, Lcom/appnext/nativeads/R$id;->image2:I

    .line 12
    sget v4, Lcom/appnext/nativeads/R$id;->title2:I

    .line 13
    sget v5, Lcom/appnext/nativeads/R$id;->native_ad_view2:I

    goto :goto_1

    .line 14
    :cond_4
    sget v3, Lcom/appnext/nativeads/R$id;->image1:I

    .line 15
    sget v4, Lcom/appnext/nativeads/R$id;->title1:I

    .line 16
    sget v5, Lcom/appnext/nativeads/R$id;->native_ad_view1:I

    :goto_1
    add-int/lit8 v6, v2, -0x1

    .line 17
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    .line 18
    invoke-static {}, Lcom/appnext/core/j;->ax()Lcom/appnext/core/j;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/appnext/core/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ILcom/appnext/core/j$a;)V

    .line 19
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/appnext/nativeads/designed_native_ads/views/DesignedNativeAdViewContainer;

    .line 21
    new-instance v4, Lcom/appnext/nativeads/designed_native_ads/views/b$2;

    invoke-direct {v4, p0, v6}, Lcom/appnext/nativeads/designed_native_ads/views/b$2;-><init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V

    invoke-virtual {v3, v4}, Lcom/appnext/nativeads/designed_native_ads/views/c;->register(Lcom/appnext/nativeads/designed_native_ads/views/c$a;)V

    .line 22
    new-instance v4, Lcom/appnext/nativeads/designed_native_ads/views/b$3;

    invoke-direct {v4, p0, v6}, Lcom/appnext/nativeads/designed_native_ads/views/b$3;-><init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 p1, v0, 0x1

    .line 23
    :goto_3
    sget v2, Lcom/appnext/nativeads/designed_native_ads/views/d;->hc:I

    if-gt p1, v2, :cond_b

    if-eq p1, v1, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    sget v2, Lcom/appnext/nativeads/R$id;->fl5container:I

    goto :goto_4

    .line 25
    :cond_7
    sget v2, Lcom/appnext/nativeads/R$id;->fl4container:I

    goto :goto_4

    .line 26
    :cond_8
    sget v2, Lcom/appnext/nativeads/R$id;->fl3container:I

    goto :goto_4

    .line 27
    :cond_9
    sget v2, Lcom/appnext/nativeads/R$id;->fl2container:I

    goto :goto_4

    .line 28
    :cond_a
    sget v2, Lcom/appnext/nativeads/R$id;->fl1container:I

    .line 29
    :goto_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 30
    :cond_b
    sget p1, Lcom/appnext/nativeads/R$id;->apps_container:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "SuggestedAppsView$onAdsLoaded"

    .line 31
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getContentResource()I
    .locals 1

    .line 1
    sget v0, Lcom/appnext/nativeads/R$layout;->suggested_apps_view_layout:I

    return v0
.end method

.method public final setIconTitleTextColor(I)V
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lcom/appnext/nativeads/R$id;->title1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    sget v0, Lcom/appnext/nativeads/R$id;->title2:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    sget v0, Lcom/appnext/nativeads/R$id;->title3:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    sget v0, Lcom/appnext/nativeads/R$id;->title4:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    sget v0, Lcom/appnext/nativeads/R$id;->title5:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "SuggestedAppsView$setIconTitleTextColor"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/appnext/nativeads/R$id;->suggested_apps_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleTextColorForAdUnit(I)V
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lcom/appnext/nativeads/R$id;->suggested_apps_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "SuggestedAppsView$setTitleTextColorForAdUnit"

    .line 2
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
