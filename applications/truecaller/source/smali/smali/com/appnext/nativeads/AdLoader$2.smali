.class public final Lcom/appnext/nativeads/AdLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/AdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fC:Lcom/appnext/nativeads/AdLoader;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/AdLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

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

    const-string v0, "No Ads"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    new-instance v2, Lcom/appnext/core/AppnextError;

    invoke-direct {v2, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v2

    if-nez v2, :cond_3

    .line 4
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    new-instance v2, Lcom/appnext/core/AppnextError;

    invoke-direct {v2, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    :cond_2
    return-void

    .line 6
    :cond_3
    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v2

    sget-object v3, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne v2, v3, :cond_4

    .line 7
    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v2

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v3

    const-string v4, "default_video_length"

    invoke-virtual {v3, v4}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoLength(Lcom/appnext/nativeads/NativeAdRequest$VideoLength;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 8
    :cond_4
    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v2

    sget-object v3, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    if-ne v2, v3, :cond_5

    .line 9
    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v2

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v3

    const-string v4, "default_video_quality"

    invoke-virtual {v3, v4}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoQuality(Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 10
    :cond_5
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v3}, Lcom/appnext/nativeads/AdLoader;->c(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v4}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v4

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4, p1}, Lcom/appnext/nativeads/b;->a(Ljava/lang/String;Lcom/appnext/nativeads/NativeAdRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 12
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    new-instance v2, Lcom/appnext/core/AppnextError;

    invoke-direct {v2, v0}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->d(Lcom/appnext/nativeads/AdLoader;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 15
    new-instance v1, Lcom/appnext/nativeads/NativeAd;

    iget-object v2, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v2}, Lcom/appnext/nativeads/AdLoader;->c(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v3}, Lcom/appnext/nativeads/AdLoader;->c(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appnext/core/Ad;->getPlacementID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/appnext/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appnext/core/AppnextAd;

    .line 17
    new-instance v3, Lcom/appnext/nativeads/NativeAdData;

    invoke-direct {v3, v2}, Lcom/appnext/nativeads/NativeAdData;-><init>(Lcom/appnext/core/AppnextAd;)V

    iget-object v4, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v4}, Lcom/appnext/nativeads/AdLoader;->b(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdRequest;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/appnext/nativeads/NativeAd;->setLoadedAd(Lcom/appnext/core/AppnextAd;Lcom/appnext/nativeads/NativeAdRequest;)V

    .line 18
    iget-object v3, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v3}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/appnext/nativeads/NativeAd;->setAdListener(Lcom/appnext/nativeads/NativeAdListener;)V

    .line 19
    iget-object v3, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v3}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 20
    iget-object v3, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v3}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v3

    invoke-virtual {v2}, Lcom/appnext/core/AppnextAd;->getCreativeType()Lcom/appnext/core/AppnextAdCreativeType;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/appnext/nativeads/NativeAdListener;->onAdLoaded(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextAdCreativeType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AdLoader$load"

    .line 21
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, "No Ads"

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Internal error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {v1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v1

    new-instance v2, Lcom/appnext/core/AppnextError;

    invoke-direct {v2, p1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->a(Lcom/appnext/nativeads/AdLoader;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object p1

    new-instance v2, Lcom/appnext/core/AppnextError;

    invoke-direct {v2, v1}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/appnext/nativeads/AdLoader$2;->fC:Lcom/appnext/nativeads/AdLoader;

    invoke-static {p1}, Lcom/appnext/nativeads/AdLoader;->e(Lcom/appnext/nativeads/AdLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AdLoader$load"

    .line 5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
