.class public final Lcom/appnext/nativeads/designed_native_ads/views/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/nativeads/designed_native_ads/views/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/views/a;->load(Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;ILcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gM:Ljava/lang/String;

.field public final synthetic gN:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;

.field public final synthetic gO:Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;

.field public final synthetic gP:Lcom/appnext/nativeads/designed_native_ads/views/a;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/views/a;Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gM:Ljava/lang/String;

    iput-object p3, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gN:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;

    iput-object p4, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gO:Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bm()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->a(Lcom/appnext/nativeads/designed_native_ads/views/a;Z)Z

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->a(Lcom/appnext/nativeads/designed_native_ads/views/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->a(Lcom/appnext/nativeads/designed_native_ads/views/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTitle(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->c(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->c(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTitleTextColorForAdUnit(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->d(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->d(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->d(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setAmountOfApps(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->e(Lcom/appnext/nativeads/designed_native_ads/views/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->f(Lcom/appnext/nativeads/designed_native_ads/views/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setPresentTitles(Z)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->g(Lcom/appnext/nativeads/designed_native_ads/views/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->h(Lcom/appnext/nativeads/designed_native_ads/views/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setLocalDirection(Z)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->i(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->i(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setIconAppTitleTextColor(I)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->j(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->j(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setSuggestedBackgroundColor(I)V

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->k(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v0

    if-ltz v0, :cond_7

    .line 17
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/views/a;->k(Lcom/appnext/nativeads/designed_native_ads/views/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->setTransparency(I)V

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 19
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/a;->b(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/views/b;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gM:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gN:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;

    new-instance v3, Lcom/appnext/nativeads/designed_native_ads/views/a$a;

    iget-object v4, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gP:Lcom/appnext/nativeads/designed_native_ads/views/a;

    invoke-static {v4}, Lcom/appnext/nativeads/designed_native_ads/views/a;->l(Lcom/appnext/nativeads/designed_native_ads/views/a;)Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/appnext/nativeads/designed_native_ads/views/a$a;-><init>(Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/nativeads/designed_native_ads/views/b;->a(Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;Lcom/appnext/nativeads/designed_native_ads/views/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AppnextDesignedNativeAdViewProxy$load"

    .line 21
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/a$1;->gO:Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;

    if-eqz v0, :cond_8

    .line 23
    new-instance v1, Lcom/appnext/core/AppnextError;

    const-string v2, "Internal error"

    invoke-direct {v1, v2}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/interfaces/AppnextDesignedNativeAdViewCallbacks;->onAppnextAdsError(Lcom/appnext/core/AppnextError;)V

    :cond_8
    return-void
.end method
