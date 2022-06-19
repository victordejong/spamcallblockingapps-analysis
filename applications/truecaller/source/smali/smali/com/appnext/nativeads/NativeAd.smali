.class public Lcom/appnext/nativeads/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/nativeads/NativeAd$a;
    }
.end annotation


# instance fields
.field private adListener:Lcom/appnext/nativeads/NativeAdListener;

.field private adViewActions:Lcom/appnext/nativeads/NativeAdView$a;

.field private clicked:Z

.field private clicksListView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private creativeType:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

.field private handler:Landroid/os/Handler;

.field private language:Ljava/lang/String;

.field private loadedAd:Lcom/appnext/nativeads/NativeAdData;

.field private mediaView:Lcom/appnext/nativeads/MediaView;

.field private nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

.field private nativeAdView:Lcom/appnext/nativeads/NativeAdView;

.field private privacyPolicyColor:I

.field private privacyPolicyPosition:I

.field private privacyPolicyVisibility:I

.field private reportedImpression:Z

.field private reportedVTA:Z

.field private userAction:Lcom/appnext/core/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/appnext/nativeads/NativeAd;->reportedImpression:Z

    .line 3
    iput-boolean v0, p0, Lcom/appnext/nativeads/NativeAd;->reportedVTA:Z

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyPosition:I

    .line 5
    iput v0, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyColor:I

    .line 6
    iput v0, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyVisibility:I

    .line 7
    iput-boolean v0, p0, Lcom/appnext/nativeads/NativeAd;->clicked:Z

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/appnext/nativeads/NativeAd;->createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    .line 9
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdObject;->getTID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tid"

    invoke-virtual {v0, v2, v1}, Lcom/appnext/core/SettingsManager;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/appnext/core/SettingsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/SettingsManager$ConfigCallback;)V

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/appnext/nativeads/NativeAd;->clicksListView:Ljava/util/List;

    .line 12
    new-instance p2, Lcom/appnext/nativeads/NativeAd$1;

    invoke-direct {p2, p0}, Lcom/appnext/nativeads/NativeAd$1;-><init>(Lcom/appnext/nativeads/NativeAd;)V

    iput-object p2, p0, Lcom/appnext/nativeads/NativeAd;->adViewActions:Lcom/appnext/nativeads/NativeAdView$a;

    .line 13
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/appnext/nativeads/NativeAd;->handler:Landroid/os/Handler;

    .line 14
    new-instance p2, Lcom/appnext/core/q;

    new-instance v0, Lcom/appnext/nativeads/NativeAd$2;

    invoke-direct {v0, p0}, Lcom/appnext/nativeads/NativeAd$2;-><init>(Lcom/appnext/nativeads/NativeAd;)V

    invoke-direct {p2, p1, v0}, Lcom/appnext/core/q;-><init>(Landroid/content/Context;Lcom/appnext/core/q$a;)V

    iput-object p2, p0, Lcom/appnext/nativeads/NativeAd;->userAction:Lcom/appnext/core/q;

    return-void
.end method

.method public static synthetic access$000(Lcom/appnext/nativeads/NativeAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/appnext/nativeads/NativeAd;->reportedImpression:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/appnext/nativeads/NativeAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/appnext/nativeads/NativeAd;->reportedImpression:Z

    return p1
.end method

.method public static synthetic access$100(Lcom/appnext/nativeads/NativeAd;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/appnext/nativeads/NativeAd;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->report(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/MediaView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->mediaView:Lcom/appnext/nativeads/MediaView;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdRequest$CreativeType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->creativeType:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdRequest$CreativeType;)Lcom/appnext/nativeads/MediaView$MediaType;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->creativeToMediaType(Lcom/appnext/nativeads/NativeAdRequest$CreativeType;)Lcom/appnext/nativeads/MediaView$MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->adViewActions:Lcom/appnext/nativeads/NativeAdView$a;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/appnext/nativeads/NativeAd;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/appnext/nativeads/NativeAd;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->openResultPage(Z)V

    return-void
.end method

.method public static synthetic access$1802(Lcom/appnext/nativeads/NativeAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/appnext/nativeads/NativeAd;->clicked:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdView:Lcom/appnext/nativeads/NativeAdView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/appnext/nativeads/NativeAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appnext/nativeads/NativeAd;->impression()V

    return-void
.end method

.method public static synthetic access$400(Lcom/appnext/nativeads/NativeAd;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/appnext/nativeads/NativeAd;->reportedVTA:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/appnext/nativeads/NativeAd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/appnext/nativeads/NativeAd;->reportedVTA:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/core/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->userAction:Lcom/appnext/core/q;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->load(Lcom/appnext/nativeads/NativeAdRequest;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    return-object p0
.end method

.method private creativeToMediaType(Lcom/appnext/nativeads/NativeAdRequest$CreativeType;)Lcom/appnext/nativeads/MediaView$MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/nativeads/NativeAdRequest$CreativeType;->STATIC_ONLY:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/appnext/nativeads/MediaView$MediaType;->STATIC:Lcom/appnext/nativeads/MediaView$MediaType;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/appnext/nativeads/MediaView$MediaType;->VIDEO:Lcom/appnext/nativeads/MediaView$MediaType;

    return-object p1
.end method

.method private fillListWithSubviews(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p2, Lcom/appnext/nativeads/PrivacyIcon;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/appnext/a/a;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/appnext/nativeads/NativeAd;->fillListWithSubviews(Ljava/util/ArrayList;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "NativeAd$fillListWithSubviews"

    .line 7
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private impression()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/appnext/nativeads/NativeAd;->reportedImpression:Z

    const-string v0, "impression_event"

    .line 3
    invoke-direct {p0, v0}, Lcom/appnext/nativeads/NativeAd;->report(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->userAction:Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v0, v1}, Lcom/appnext/core/q;->d(Lcom/appnext/core/AppnextAd;)V

    .line 5
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Lcom/appnext/nativeads/NativeAd$5;

    invoke-direct {v1, p0}, Lcom/appnext/nativeads/NativeAd$5;-><init>(Lcom/appnext/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p0}, Lcom/appnext/nativeads/NativeAdListener;->adImpression(Lcom/appnext/nativeads/NativeAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NativeAd$impression"

    .line 8
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private load(Lcom/appnext/nativeads/NativeAdRequest;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/appnext/nativeads/NativeAd$4;

    invoke-direct {v4, p0, p1}, Lcom/appnext/nativeads/NativeAd$4;-><init>(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdRequest;)V

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/nativeads/NativeAdRequest;)V

    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const-string v0, "No Ads"

    if-eqz p1, :cond_1

    .line 2
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Internal error"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/appnext/nativeads/NativeAd;->report(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, p1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "error_no_ads"

    .line 5
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->report(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "NativeAd$load"

    .line 7
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private openResultPage(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/appnext/core/result/d;->aX()Lcom/appnext/core/result/d;

    move-result-object v0

    new-instance v1, Lcom/appnext/nativeads/NativeAd$6;

    invoke-direct {v1, p0}, Lcom/appnext/nativeads/NativeAd$6;-><init>(Lcom/appnext/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/result/d;->a(Lcom/appnext/core/result/c;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/appnext/core/result/ResultPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "shouldClose"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {p1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private report(Ljava/lang/String;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->getTID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->getVID()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->getAUID()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    .line 2
    invoke-virtual {v0}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->getSessionId()Ljava/lang/String;

    move-result-object v6

    const-string v8, "pub_control"

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, ""

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v7

    :goto_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getCampaignID()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object v10, v7

    :goto_1
    move-object v7, p1

    .line 4
    invoke-static/range {v1 .. v10}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "NativeAd$onWindowVisibilityChanged"

    .line 5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->userAction:Lcom/appnext/core/q;

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdData;->getAppURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/appnext/nativeads/NativeAdListener;->onAdClicked(Lcom/appnext/nativeads/NativeAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NativeAd$click"

    .line 4
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public createAd(Landroid/content/Context;Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdObject;
    .locals 1

    .line 1
    new-instance v0, Lcom/appnext/nativeads/NativeAdObject;

    invoke-direct {v0, p1, p2}, Lcom/appnext/nativeads/NativeAdObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->clicksListView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->clicksListView:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->userAction:Lcom/appnext/core/q;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/appnext/core/q;->destroy()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/appnext/core/Ad;->destroy()V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->mediaView:Lcom/appnext/nativeads/MediaView;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/appnext/nativeads/MediaView;->destroy()V

    .line 13
    :cond_5
    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->handler:Landroid/os/Handler;

    .line 14
    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->adViewActions:Lcom/appnext/nativeads/NativeAdView$a;

    .line 15
    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->mediaView:Lcom/appnext/nativeads/MediaView;

    .line 16
    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    .line 17
    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    .line 18
    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdView:Lcom/appnext/nativeads/NativeAdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NativeAd$destroy"

    .line 19
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public downloadAndDisplayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/appnext/core/j;->ax()Lcom/appnext/core/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/appnext/core/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcom/appnext/core/j$a;)V

    return-void
.end method

.method public getAdByPackage(Lcom/appnext/nativeads/NativeAdRequest;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/g;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    if-eqz p1, :cond_0

    .line 3
    new-instance p2, Lcom/appnext/core/AppnextError;

    const-string v0, "Connection Error"

    invoke-direct {p2, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    new-instance v0, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {v0, p1}, Lcom/appnext/nativeads/NativeAdRequest;-><init>(Lcom/appnext/nativeads/NativeAdRequest;)V

    .line 6
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setPackageName(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getCategories()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setCategories(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getSpecificCategories()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setSpecificCategories(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getPostback()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setPostback(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getMinVideoLength()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setMinVideoLength(I)V

    .line 11
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getMaxVideoLength()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/appnext/core/Ad;->setMaxVideoLength(I)V

    .line 12
    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getCreativeType()Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd;->creativeType:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "caching_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getCachingPolicy()Lcom/appnext/nativeads/NativeAdRequest$CachingPolicy;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->report(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object p1

    iget-object p2, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {p2}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appnext/nativeads/NativeAd$3;

    invoke-direct {v2, p0, v0}, Lcom/appnext/nativeads/NativeAd$3;-><init>(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdRequest;)V

    invoke-virtual {p1, p2, v1, v2}, Lcom/appnext/core/SettingsManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/core/SettingsManager$ConfigCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "NativeAd$getAdByPackage"

    .line 15
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getAdDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAppSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCTAText()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/appnext/core/g;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdData;->getButtonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "existing"

    const-string v4, "new"

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/a/a;->q(Landroid/content/Context;)Lcom/appnext/core/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAd;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v4

    const-string v5, "existing_button_text"

    invoke-virtual {v4, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appnext/core/a/a;->q(Landroid/content/Context;)Lcom/appnext/core/a/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAd;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v3

    const-string v5, "new_button_text"

    invoke-virtual {v3, v5}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/appnext/core/a/a;->q(Landroid/content/Context;)Lcom/appnext/core/a/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/appnext/nativeads/NativeAd;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v1}, Lcom/appnext/nativeads/NativeAdData;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v3, v1}, Lcom/appnext/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    const-string v2, "NativeAd$getCTAText"

    .line 7
    invoke-static {v2, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getCategories()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getECPM()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getECPM()F

    move-result v0

    return v0
.end method

.method public getIconURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaView()Lcom/appnext/nativeads/MediaView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->mediaView:Lcom/appnext/nativeads/MediaView;

    return-object v0
.end method

.method public getNativeAdView()Lcom/appnext/nativeads/NativeAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdView:Lcom/appnext/nativeads/NativeAdView;

    return-object v0
.end method

.method public getPPR()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getPPR()F

    move-result v0

    return v0
.end method

.method public getPPU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/appnext/core/g;->e(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyPolicyColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyColor:I

    return v0
.end method

.method public getPrivacyPolicyPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyPosition:I

    return v0
.end method

.method public getPrivacyPolicyVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyVisibility:I

    return v0
.end method

.method public getSpecificCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getSpecificCategories()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreDownloads()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getStoreDownloads()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreRating()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getStoreRating()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getSupportedVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdData;->getSelectedVideo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWideImageURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getWideImageURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7f82b46

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/appnext/nativeads/NativeAd;->reportedImpression:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/appnext/nativeads/NativeAd;->impression()V

    :cond_0
    return-void
.end method

.method public isGPRD()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->isGdpr()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdObject;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Lcom/appnext/nativeads/NativeAdRequest;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/appnext/nativeads/NativeAd;->getAdByPackage(Lcom/appnext/nativeads/NativeAdRequest;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/appnext/nativeads/NativeAd;->clicked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/appnext/nativeads/NativeAd;->clicked:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/appnext/nativeads/NativeAd;->openResultPage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "NativeAd$onWindowVisibilityChanged"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerClickableViews(Landroid/view/View;)V
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/appnext/nativeads/NativeAd;->fillListWithSubviews(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/appnext/nativeads/NativeAd;->registerClickableViews(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "NativeAd$registerClickableViews"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public registerClickableViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 5
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/appnext/nativeads/NativeAd$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appnext/nativeads/NativeAd$a;-><init>(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAd$1;)V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 8
    instance-of v2, v1, Lcom/appnext/nativeads/PrivacyIcon;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/appnext/a/a;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/appnext/nativeads/MediaView$a;

    if-nez v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->clicksListView:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    const-string v0, "NativeAd$registerClickableViews"

    .line 13
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setAdListener(Lcom/appnext/nativeads/NativeAdListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd;->adListener:Lcom/appnext/nativeads/NativeAdListener;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd;->language:Ljava/lang/String;

    return-void
.end method

.method public setLoadedAd(Lcom/appnext/core/AppnextAd;Lcom/appnext/nativeads/NativeAdRequest;)V
    .locals 4

    const-string v0, "&tem_id="

    .line 1
    :try_start_0
    new-instance v1, Lcom/appnext/nativeads/NativeAdData;

    invoke-direct {v1, p1}, Lcom/appnext/nativeads/NativeAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    iput-object v1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdData;->getAppURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v3, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v2, v3}, Lcom/appnext/nativeads/NativeAdObject;->getTemId(Lcom/appnext/nativeads/NativeAdData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/appnext/nativeads/NativeAdData;->setAppURL(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdData;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdObject:Lcom/appnext/nativeads/NativeAdObject;

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {v0, v2}, Lcom/appnext/nativeads/NativeAdObject;->getTemId(Lcom/appnext/nativeads/NativeAdData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appnext/nativeads/NativeAdData;->setImpressionURL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-static {p2, p1}, Lcom/appnext/nativeads/b;->a(Lcom/appnext/nativeads/NativeAdRequest;Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    invoke-virtual {p2, p1}, Lcom/appnext/nativeads/NativeAdData;->J(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    return-void

    :catchall_1
    move-exception p1

    const-string p2, "NativeAd$setLoadedAd"

    .line 7
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setMediaView(Lcom/appnext/nativeads/MediaView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd;->mediaView:Lcom/appnext/nativeads/MediaView;

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->creativeType:Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    invoke-direct {p0, v1}, Lcom/appnext/nativeads/NativeAd;->creativeToMediaType(Lcom/appnext/nativeads/NativeAdRequest$CreativeType;)Lcom/appnext/nativeads/MediaView$MediaType;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdData;Lcom/appnext/nativeads/MediaView$MediaType;)V

    :cond_0
    return-void
.end method

.method public setNativeAdView(Lcom/appnext/nativeads/NativeAdView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdView:Lcom/appnext/nativeads/NativeAdView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdView;->bd()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd;->nativeAdView:Lcom/appnext/nativeads/NativeAdView;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd;->loadedAd:Lcom/appnext/nativeads/NativeAdData;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd;->adViewActions:Lcom/appnext/nativeads/NativeAdView$a;

    invoke-virtual {p1, p0, v0, v1}, Lcom/appnext/nativeads/NativeAdView;->a(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdData;Lcom/appnext/nativeads/NativeAdView$a;)V

    :cond_1
    return-void
.end method

.method public setParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/appnext/core/SettingsManager;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPrivacyPolicyColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyColor:I

    return-void
.end method

.method public setPrivacyPolicyPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyPosition:I

    return-void
.end method

.method public setPrivacyPolicyVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/appnext/nativeads/NativeAd;->privacyPolicyVisibility:I

    return-void
.end method
