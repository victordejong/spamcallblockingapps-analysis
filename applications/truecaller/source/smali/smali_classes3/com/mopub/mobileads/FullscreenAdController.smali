.class public Lcom/mopub/mobileads/FullscreenAdController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;
.implements Lcom/mopub/mraid/MraidController$UseCustomCloseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/FullscreenAdController$d;,
        Lcom/mopub/mobileads/FullscreenAdController$e;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/mopub/common/UrlAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/app/Activity;

.field public b:Lcom/mopub/mobileads/BaseVideoViewController;

.field public final c:Lcom/mopub/mobileads/MoPubWebViewController;

.field public final d:Lcom/mopub/mobileads/AdData;

.field public e:Lcom/mopub/mobileads/FullscreenAdController$e;

.field public f:Lcom/mopub/common/CloseableLayout;

.field public g:Lcom/mopub/mobileads/RadialCountdownWidget;

.field public h:Lcom/mopub/mobileads/FullscreenAdController$d;

.field public i:Lcom/mopub/mobileads/VastCompanionAdConfig;

.field public j:Landroid/widget/ImageView;

.field public k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

.field public l:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:I

.field public t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/mopub/common/UrlAction;

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_PHONE_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/FullscreenAdController;->u:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Lcom/mopub/mobileads/AdData;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 3
    iput-object v1, v7, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    .line 4
    iput-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/mobileads/WebViewCacheService;->popWebViewConfig(Ljava/lang/Long;)Lcom/mopub/mobileads/WebViewCacheService$Config;

    move-result-object v3

    const-string v4, "html"

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v3}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v5

    iput-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-static {v1, v5}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;

    move-result-object v5

    iput-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    goto :goto_0

    .line 11
    :cond_1
    new-instance v5, Lcom/mopub/mraid/MraidController;

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 13
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v9

    invoke-direct {v5, v1, v6, v8, v9}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V

    iput-object v5, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    .line 14
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    .line 16
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "MoPubFullscreenActivity received an empty HTML body. Finishing the activity."

    aput-object v3, v2, v9

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 18
    :cond_2
    iget-object v6, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    instance-of v10, v6, Lcom/mopub/mraid/MraidController;

    if-eqz v10, :cond_3

    .line 19
    check-cast v6, Lcom/mopub/mraid/MraidController;

    invoke-virtual {v6, v7}, Lcom/mopub/mraid/MraidController;->setUseCustomCloseListener(Lcom/mopub/mraid/MraidController$UseCustomCloseListener;)V

    .line 20
    :cond_3
    iget-object v6, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/mopub/mobileads/MoPubWebViewController;->setDebugListener(Lcom/mopub/mraid/WebViewDebugListener;)V

    .line 21
    iget-object v6, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    new-instance v11, Lcom/mopub/mobileads/FullscreenAdController$a;

    invoke-direct {v11, v7, v1, v0}, Lcom/mopub/mobileads/FullscreenAdController$a;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V

    invoke-virtual {v6, v11}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    .line 22
    new-instance v6, Lcom/mopub/common/CloseableLayout;

    invoke-direct {v6, v1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    .line 23
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v6

    const-string v11, "vast"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    new-instance v8, Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastVideoViewController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;JLcom/mopub/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V

    .line 26
    iput-object v8, v7, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 27
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->VIDEO:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 28
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastVideoViewController;->c()V

    return-void

    .line 29
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object v6

    const-string v11, "json"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v11, -0x1

    if-eqz v6, :cond_6

    .line 30
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$e;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 31
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "image"

    .line 32
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "w"

    .line 33
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v3, "h"

    .line 34
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v3, "clk"

    .line 35
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->m:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    .line 37
    invoke-static/range {p1 .. p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object v12

    new-instance v14, Lcom/mopub/mobileads/FullscreenAdController$b;

    invoke-direct {v14, v7, v13}, Lcom/mopub/mobileads/FullscreenAdController$b;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Ljava/lang/String;)V

    sget-object v17, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v12 .. v17}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 38
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 39
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Le/n/b/v;

    invoke-direct {v3, v7}, Le/n/b/v;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 43
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v9}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 45
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v9}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 46
    :cond_5
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_2

    .line 47
    :catch_0
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "Unable to load image into fullscreen container."

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    const-string v0, "com.mopub.action.fullscreen.fail"

    invoke-static {v1, v2, v3, v0}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 49
    iget-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    if-eqz v3, :cond_7

    .line 50
    invoke-virtual {v3}, Lcom/mopub/mobileads/WebViewCacheService$Config;->getController()Lcom/mopub/mobileads/MoPubWebViewController;

    move-result-object v3

    if-nez v3, :cond_8

    .line 51
    :cond_7
    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    .line 52
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v6

    sget-object v12, Le/n/b/u;->a:Le/n/b/u;

    .line 53
    invoke-virtual {v3, v5, v6, v12}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    .line 54
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 55
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    goto :goto_1

    .line 56
    :cond_9
    iput-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 57
    :goto_1
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Le/n/b/s;

    invoke-direct {v3, v7}, Le/n/b/s;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v2, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 58
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubWebViewController;->getAdContainer()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 60
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v9}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 61
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v2, v9}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 62
    :cond_a
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v2, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    .line 64
    :goto_2
    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/mopub/mobileads/FullscreenAdController$e;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v3, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 65
    :cond_b
    sget-object v2, Lcom/mopub/common/CreativeOrientation;->DEVICE:Lcom/mopub/common/CreativeOrientation;

    .line 66
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 67
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getOrientation()Lcom/mopub/common/CreativeOrientation;

    move-result-object v2

    .line 68
    :cond_c
    invoke-static {v1, v2}, Lcom/mopub/common/util/DeviceUtils;->lockOrientation(Landroid/app/Activity;Lcom/mopub/common/CreativeOrientation;)V

    .line 69
    :cond_d
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x4

    .line 70
    invoke-virtual {v7, v1, v2}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/content/Context;I)V

    .line 71
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$e;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v2, v7, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 72
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    if-ltz v1, :cond_e

    .line 73
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_3

    :cond_e
    const/16 v0, 0x1388

    :goto_3
    iput v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    goto :goto_5

    .line 74
    :cond_f
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    if-ltz v1, :cond_10

    .line 75
    invoke-virtual/range {p4 .. p4}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_4

    :cond_10
    const/16 v0, 0x7530

    :goto_4
    iput v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    .line 76
    :goto_5
    iget-object v0, v7, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    iget v1, v7, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 77
    iput-boolean v8, v7, Lcom/mopub/mobileads/FullscreenAdController;->q:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 79
    new-instance v1, Lcom/mopub/mobileads/FullscreenAdController$d;

    invoke-direct {v1, v7, v0, v10}, Lcom/mopub/mobileads/FullscreenAdController$d;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$a;)V

    iput-object v1, v7, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/mobileads/FullscreenAdController$d;

    goto :goto_6

    .line 80
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/FullscreenAdController;->c()V

    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-direct {v0, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    .line 2
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    .line 4
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 8
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 9
    invoke-static {p2, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 p1, 0x35

    .line 10
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 11
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    const-string v1, "com.mopub.action.fullscreen.click"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 3
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->s:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8
    invoke-static {v0, v2, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 9
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleClick(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v3

    invoke-static {p1, v3, v4, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 15
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickTrackers()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->s:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    invoke-static {p2, v2, v0, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 21
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 22
    new-instance p1, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {p1}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    .line 23
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    sget-object p2, Lcom/mopub/mobileads/FullscreenAdController;->u:Ljava/util/EnumSet;

    .line 24
    invoke-virtual {p1, p2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Ljava/util/EnumSet;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->m:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v0, :cond_4

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    :cond_3
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->p:Z

    .line 2
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v2

    const-string v4, "com.mopub.action.rewardedad.complete"

    invoke-static {v1, v2, v3, v4}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    .line 8
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->r:Z

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 10
    new-instance v1, Le/n/b/q;

    invoke-direct {v1, p0}, Le/n/b/q;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->a()V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->d()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/mobileads/FullscreenAdController$d;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v1

    const-string v3, "com.mopub.action.fullscreen.dismiss"

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->broadcastAction(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/mopub/mobileads/BaseVideoViewController;->b(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCompanionAdsReady(Ljava/util/Set;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CloseableLayout is null. This should not happen."

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    .line 7
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v0, v4

    .line 8
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move-object v5, v4

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {v6, v3, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->calculateScore(II)D

    move-result-wide v7

    .line 10
    invoke-virtual {v5, v3, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->calculateScore(II)D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    :cond_3
    move-object v5, v6

    goto :goto_0

    .line 11
    :cond_4
    iput-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v5, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getHtmlResourceValue()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return-void

    .line 15
    :cond_6
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 16
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 17
    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    .line 18
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getResource()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mopub/mobileads/FullscreenAdController$c;

    invoke-direct {v2, p0, p1}, Lcom/mopub/mobileads/FullscreenAdController$c;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Lcom/mopub/mobileads/VastResource;)V

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 19
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getWidth()I

    move-result v3

    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getHeight()I

    move-result v4

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/mopub/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    .line 21
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    new-instance p2, Le/n/b/t;

    invoke-direct {p2, p0}, Le/n/b/t;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 22
    :cond_7
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 23
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    .line 24
    new-instance v3, Le/n/b/p;

    invoke-direct {v3, p0}, Le/n/b/p;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object v4, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-direct {v0, v3, v4, p2}, Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;-><init>(Landroid/media/MediaMetadataRetriever;Landroid/widget/ImageView;I)V

    iput-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->l:Lcom/mopub/mobileads/VastVideoBlurLastVideoFrameTask;

    new-array p2, v2, [Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastResource;->getResource()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getClickThroughUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 28
    new-instance p1, Lcom/mopub/mobileads/VideoCtaButtonWidget;

    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-direct {p1, p2, v1, v2}, Lcom/mopub/mobileads/VideoCtaButtonWidget;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    .line 29
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 31
    iget-object p2, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    .line 32
    iget-object p2, p2, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a:Lcom/mopub/mobileads/resource/CtaButtonDrawable;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/resource/CtaButtonDrawable;->setCtaText(Ljava/lang/String;)V

    .line 33
    :cond_8
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    .line 34
    iput-boolean v2, p1, Lcom/mopub/mobileads/VideoCtaButtonWidget;->c:Z

    .line 35
    iput-boolean v2, p1, Lcom/mopub/mobileads/VideoCtaButtonWidget;->d:Z

    .line 36
    invoke-virtual {p1}, Lcom/mopub/mobileads/VideoCtaButtonWidget;->a()V

    .line 37
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    new-instance p2, Le/n/b/o;

    invoke-direct {p2, p0}, Le/n/b/o;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 38
    :cond_9
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {p1, v0, v4, v4}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onSetContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onSetRequestedOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onStartActivityForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p3}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Activity "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-static {p1, v1, v2}, Le/d/c/a/a;->b2(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onVideoFinish(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->t:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->t:Z

    .line 4
    iput p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->s:I

    .line 5
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseVideoViewController;->e()V

    .line 7
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    invoke-virtual {v1}, Lcom/mopub/mobileads/BaseVideoViewController;->d()V

    .line 8
    iput-object v2, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 10
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    new-instance v3, Le/n/b/r;

    invoke-direct {v3, p0}, Le/n/b/r;-><init>(Lcom/mopub/mobileads/FullscreenAdController;)V

    invoke-virtual {v1, v3}, Lcom/mopub/common/CloseableLayout;->setOnCloseListener(Lcom/mopub/common/CloseableLayout$OnCloseListener;)V

    .line 11
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v1

    .line 12
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->STATIC_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    sget-object v3, Lcom/mopub/mobileads/VastResource$CreativeType;->IMAGE:Lcom/mopub/mobileads/VastResource$CreativeType;

    .line 13
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getCreativeType()Lcom/mopub/mobileads/VastResource$CreativeType;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    sget-object v3, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    .line 14
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 15
    :cond_4
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$e;->IMAGE:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 16
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    if-nez v1, :cond_5

    .line 17
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Companion image null. Skipping."

    aput-object v1, v0, v4

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 19
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 22
    iget-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 24
    iget-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 25
    :cond_6
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 26
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    if-eqz v3, :cond_8

    .line 27
    invoke-virtual {v3}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 28
    iget-object v5, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 29
    :cond_7
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->k:Lcom/mopub/mobileads/VideoCtaButtonWidget;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 30
    :cond_8
    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 31
    :cond_9
    sget-object v1, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    .line 32
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubWebViewController;->getAdContainer()Landroid/view/View;

    move-result-object v3

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 34
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v4}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 35
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v4}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 36
    :cond_a
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 37
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/MoPubWebViewController;->onShow(Landroid/app/Activity;)V

    .line 38
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 39
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    if-ltz v1, :cond_b

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    .line 40
    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getRewardedDurationSeconds()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    goto :goto_1

    :cond_b
    const/16 v1, 0x7530

    :goto_1
    iput v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    if-ge p1, v1, :cond_d

    .line 41
    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->BLURRED_LAST_FRAME:Lcom/mopub/mobileads/VastResource$Type;

    iget-object v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 42
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastCompanionAdConfig;->getVastResource()Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/VastResource;->getType()Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_2

    .line 44
    :cond_c
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lcom/mopub/mobileads/FullscreenAdController;->a(Landroid/content/Context;I)V

    .line 45
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    iget v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    invoke-virtual {v1, v3}, Lcom/mopub/mobileads/RadialCountdownWidget;->calibrateAndMakeVisible(I)V

    .line 46
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->g:Lcom/mopub/mobileads/RadialCountdownWidget;

    iget v3, p0, Lcom/mopub/mobileads/FullscreenAdController;->o:I

    invoke-virtual {v1, v3, p1}, Lcom/mopub/mobileads/RadialCountdownWidget;->updateCountdownProgress(II)V

    .line 47
    iput-boolean v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->q:Z

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    new-instance v1, Lcom/mopub/mobileads/FullscreenAdController$d;

    invoke-direct {v1, p0, v0, v2}, Lcom/mopub/mobileads/FullscreenAdController$d;-><init>(Lcom/mopub/mobileads/FullscreenAdController;Landroid/os/Handler;Lcom/mopub/mobileads/FullscreenAdController$a;)V

    iput-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/mobileads/FullscreenAdController$d;

    .line 50
    iput p1, v1, Lcom/mopub/mobileads/FullscreenAdController$d;->e:I

    const-wide/16 v2, 0xfa

    .line 51
    invoke-virtual {v1, v2, v3}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    goto :goto_3

    .line 52
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->c()V

    goto :goto_3

    .line 54
    :cond_e
    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    invoke-virtual {v1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseAlwaysInteractable(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->c()V

    .line 56
    :goto_3
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->i:Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/mopub/mobileads/VastCompanionAdConfig;->handleImpression(Landroid/content/Context;I)V

    return-void

    .line 57
    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/mopub/mobileads/FullscreenAdController;->destroy()V

    .line 58
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->e()V

    .line 3
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubWebViewController;->c(Z)V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/mobileads/FullscreenAdController$d;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->stop()V

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->b:Lcom/mopub/mobileads/BaseVideoViewController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseVideoViewController;->f()V

    .line 3
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->HTML:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mopub/mobileads/FullscreenAdController$e;->MRAID:Lcom/mopub/mobileads/FullscreenAdController$e;

    iget-object v1, p0, Lcom/mopub/mobileads/FullscreenAdController;->e:Lcom/mopub/mobileads/FullscreenAdController$e;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->c:Lcom/mopub/mobileads/MoPubWebViewController;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubWebViewController;->d()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->h:Lcom/mopub/mobileads/FullscreenAdController$d;

    if-eqz v0, :cond_3

    const-wide/16 v1, 0xfa

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;->startRepeating(J)V

    :cond_3
    return-void
.end method

.method public useCustomCloseChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->d:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    return-void

    .line 4
    :cond_1
    iget-boolean p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->p:Z

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController;->f:Lcom/mopub/common/CloseableLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    :cond_2
    return-void
.end method
