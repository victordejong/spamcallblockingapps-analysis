.class public final Lcom/appnext/nativeads/NativeAd$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/NativeAd;->load(Lcom/appnext/nativeads/NativeAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fP:Lcom/appnext/nativeads/NativeAd;

.field public final synthetic fR:Lcom/appnext/nativeads/NativeAdRequest;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    iput-object p2, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const-string p1, "NativeAd$load"

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$100(Lcom/appnext/nativeads/NativeAd;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appnext/nativeads/NativeAd;->access$002(Lcom/appnext/nativeads/NativeAd;Z)Z

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0, v1}, Lcom/appnext/nativeads/NativeAd;->access$402(Lcom/appnext/nativeads/NativeAd;Z)Z

    .line 4
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoLength()Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v0

    sget-object v1, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v1

    const-string v2, "default_video_length"

    invoke-virtual {v1, v2}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAdRequest$VideoLength;->fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoLength;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoLength(Lcom/appnext/nativeads/NativeAdRequest$VideoLength;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v0}, Lcom/appnext/nativeads/NativeAdRequest;->getVideoQuality()Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v0

    sget-object v1, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v1

    const-string v2, "default_video_quality"

    invoke-virtual {v1, v2}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/NativeAdRequest;->setVideoQuality(Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;)Lcom/appnext/nativeads/NativeAdRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :try_start_1
    invoke-static {}, Lcom/appnext/nativeads/b;->be()Lcom/appnext/nativeads/b;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v2}, Lcom/appnext/nativeads/NativeAd;->access$700(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdObject;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v3}, Lcom/appnext/nativeads/NativeAd;->access$700(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdObject;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v1, v2, v3, v4}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Lcom/appnext/nativeads/NativeAdRequest;)Lcom/appnext/core/AppnextAd;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_2
    invoke-static {p1, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$900(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    const-string v1, "error_no_ads"

    invoke-static {v0, v1}, Lcom/appnext/nativeads/NativeAd;->access$1000(Lcom/appnext/nativeads/NativeAd;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$900(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    new-instance v2, Lcom/appnext/core/AppnextError;

    const-string v3, "No Ads"

    invoke-direct {v2, v3}, Lcom/appnext/core/AppnextError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/appnext/nativeads/NativeAdListener;->onError(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextError;)V

    :cond_3
    return-void

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd$4;->fR:Lcom/appnext/nativeads/NativeAdRequest;

    invoke-virtual {v1, v0, v2}, Lcom/appnext/nativeads/NativeAd;->setLoadedAd(Lcom/appnext/core/AppnextAd;Lcom/appnext/nativeads/NativeAdRequest;)V

    .line 14
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$1100(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/MediaView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$1100(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/MediaView;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v2}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v4}, Lcom/appnext/nativeads/NativeAd;->access$1200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdRequest$CreativeType;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/appnext/nativeads/NativeAd;->access$1300(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdRequest$CreativeType;)Lcom/appnext/nativeads/MediaView$MediaType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/appnext/nativeads/MediaView;->a(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdData;Lcom/appnext/nativeads/MediaView$MediaType;)V

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 17
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v2}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object v3

    iget-object v4, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v4}, Lcom/appnext/nativeads/NativeAd;->access$1400(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView$a;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/appnext/nativeads/NativeAdView;->a(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/nativeads/NativeAdData;Lcom/appnext/nativeads/NativeAdView$a;)V

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$900(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 19
    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$900(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getCreativeType()Lcom/appnext/core/AppnextAdCreativeType;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/appnext/nativeads/NativeAdListener;->onAdLoaded(Lcom/appnext/nativeads/NativeAd;Lcom/appnext/core/AppnextAdCreativeType;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    return-void

    :catchall_1
    move-exception v0

    .line 20
    invoke-static {p1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iget-object p1, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    const-string v0, "Internal error"

    invoke-static {p1, v0}, Lcom/appnext/nativeads/NativeAd;->access$1500(Lcom/appnext/nativeads/NativeAd;Ljava/lang/String;)V

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$4;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0, p1}, Lcom/appnext/nativeads/NativeAd;->access$1500(Lcom/appnext/nativeads/NativeAd;Ljava/lang/String;)V

    return-void
.end method
