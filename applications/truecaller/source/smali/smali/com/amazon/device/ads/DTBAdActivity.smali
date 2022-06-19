.class public Lcom/amazon/device/ads/DTBAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final ADTYPE_ATTR:Ljava/lang/String; = "ad_state"

.field public static final EXPANDED:Ljava/lang/String; = "expanded"

.field public static final INDEX_ATTR:Ljava/lang/String; = "cntrl_index"

.field public static final TWO_PART_EXPAND:Ljava/lang/String; = "two_part_expand"

.field public static final URL_ATTR:Ljava/lang/String; = "url"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field public adView:Lcom/amazon/device/ads/DTBAdView;

.field public index:I

.field public pageLayout:Landroid/widget/RelativeLayout;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    const-class v0, Lcom/amazon/device/ads/DTBAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private createExpanded()V
    .locals 5

    .line 1
    new-instance v0, Lcom/amazon/device/ads/DTBAdView;

    new-instance v1, Lcom/amazon/device/ads/DTBAdActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBAdActivity$1;-><init>(Lcom/amazon/device/ads/DTBAdActivity;)V

    iget v2, p0, Lcom/amazon/device/ads/DTBAdActivity;->index:I

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/device/ads/DTBAdView;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/DTBAdExpandedListener;I)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdActivity;->adView:Lcom/amazon/device/ads/DTBAdView;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "two_part_expand"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdActivity;->pageLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdActivity;->adView:Lcom/amazon/device/ads/DTBAdView;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 6
    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdActivity;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/DTBAdView;->fetchAdWithLocation(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdActivity;->adView:Lcom/amazon/device/ads/DTBAdView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/DTBAdView;->setScrollEnabled(Z)V

    .line 8
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdActivity;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;

    .line 9
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->setTwoPartExpand(Z)V

    .line 10
    invoke-virtual {v1}, Lcom/amazon/device/ads/DTBAdMRAIDExpandedController;->addCloseIndicator()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdActivity;->adView:Lcom/amazon/device/ads/DTBAdView;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdView;->getController()Lcom/amazon/device/ads/DTBAdMRAIDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->closeExpandedPartTwo()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute finish method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public foo()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    return-void
.end method

.method public handleOrientation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "orientation"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    check-cast v0, Ljava/util/Map;

    const-string v1, "allowOrientationChange"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "forceOrientation"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "portrait"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const-string v2, "landscape"

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Lcom/amazon/device/ads/DisplayUtils;->determineSimpleOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x6

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdActivity;->type:Ljava/lang/String;

    const-string v1, "expanded"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdActivity;->pageLayout:Landroid/widget/RelativeLayout;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ad_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdActivity;->type:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cntrl_index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/device/ads/DTBAdActivity;->index:I

    .line 6
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdActivity;->type:Ljava/lang/String;

    const-string v0, "expanded"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdActivity;->createExpanded()V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdActivity;->handleOrientation()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/amazon/device/ads/DTBAdActivity;->isExpanded()Z

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public straightFinish()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
