.class public Lcom/amazon/device/ads/DTBRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTBRenderer"


# instance fields
.field public activity:Landroid/app/Activity;

.field public adUnitId:Ljava/lang/String;

.field public dtbAdResponse:Lcom/amazon/device/ads/DTBAdResponse;

.field public showOnLoad:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amazon/device/ads/DTBRenderer;->showOnLoad:Z

    .line 3
    iput-object p1, p0, Lcom/amazon/device/ads/DTBRenderer;->adUnitId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/amazon/device/ads/DTBRenderer;->dtbAdResponse:Lcom/amazon/device/ads/DTBAdResponse;

    .line 5
    iput-object p2, p0, Lcom/amazon/device/ads/DTBRenderer;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getEventDistributer()Lcom/amazon/device/ads/EventDistributor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getEventDistributer()Lcom/amazon/device/ads/EventDistributor;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lcom/amazon/device/ads/DTBAdSize;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBRenderer;->dtbAdResponse:Lcom/amazon/device/ads/DTBAdResponse;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdResponse;->getDTBAds()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBAdSize;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/amazon/device/ads/DTBRenderer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Fail to execute getSize method"

    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v1, Le/c/a/a/b/b;->b:Le/c/a/a/b/b;

    sget-object v3, Le/c/a/a/b/c;->a:Le/c/a/a/b/c;

    invoke-static {v1, v3, v2, v0}, Le/c/a/a/a;->a(Le/c/a/a/b/b;Le/c/a/a/b/c;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isShowOnLoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBRenderer;->showOnLoad:Z

    return v0
.end method

.method public onCustomBannerFailure(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCustomBannerSuccess(Landroid/view/View;)V
    .locals 0

    return-void
.end method
