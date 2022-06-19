.class public final Lcom/appnext/nativeads/designed_native_ads/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gg:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;

.field public final synthetic gh:I

.field public final synthetic gi:Lcom/appnext/nativeads/designed_native_ads/a;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/a;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gg:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;

    iput p3, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/nativeads/designed_native_ads/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "No Ads"

    if-nez p1, :cond_2

    .line 3
    :try_start_1
    new-instance p1, Lcom/appnext/core/AppnextError;

    invoke-direct {p1, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/appnext/nativeads/designed_native_ads/a$a;->onError(Lcom/appnext/core/AppnextError;)V

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gg:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {v4}, Lcom/appnext/nativeads/NativeAdRequest;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, p1}, Lcom/appnext/nativeads/b;->a(Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 6
    new-instance p1, Lcom/appnext/core/AppnextError;

    invoke-direct {p1, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/appnext/nativeads/designed_native_ads/a$a;->onError(Lcom/appnext/core/AppnextError;)V

    return-void

    .line 7
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gh:I

    if-le v0, v1, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;Ljava/util/List;)Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/core/AppnextAd;

    .line 11
    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getImageURL()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    iget-object v2, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v2}, Lcom/appnext/nativeads/designed_native_ads/a;->b(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-direct {v3, v0, v1}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;-><init>(Lcom/appnext/core/AppnextAd;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Designed - ads count with icon = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->b(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    new-instance v0, Lcom/appnext/nativeads/designed_native_ads/a$1$1;

    invoke-direct {v0, p0}, Lcom/appnext/nativeads/designed_native_ads/a$1$1;-><init>(Lcom/appnext/nativeads/designed_native_ads/a$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignNativeAdsController$loadAds"

    .line 17
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a$1;->gi:Lcom/appnext/nativeads/designed_native_ads/a;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/a;->a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/nativeads/designed_native_ads/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "No Ads"

    if-eqz p1, :cond_3

    .line 3
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Internal error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    new-instance v1, Lcom/appnext/core/AppnextError;

    invoke-direct {v1, p1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/a$a;->onError(Lcom/appnext/core/AppnextError;)V

    return-void

    .line 5
    :cond_3
    :goto_0
    new-instance p1, Lcom/appnext/core/AppnextError;

    invoke-direct {p1, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/appnext/nativeads/designed_native_ads/a$a;->onError(Lcom/appnext/core/AppnextError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "DesignNativeAdsController$loadAds"

    .line 6
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
