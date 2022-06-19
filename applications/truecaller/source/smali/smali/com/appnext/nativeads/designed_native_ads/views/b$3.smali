.class public final Lcom/appnext/nativeads/designed_native_ads/views/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/designed_native_ads/views/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

.field public final synthetic gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->c(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;

    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-virtual {v0}, Lcom/appnext/core/AppnextAd;->getAdPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->c(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/views/b$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/appnext/nativeads/designed_native_ads/views/b$a;->onAdClicked(Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {p1}, Lcom/appnext/nativeads/designed_native_ads/views/b;->b(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/d;

    move-result-object p1

    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$3;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-virtual {p1, v0}, Lcom/appnext/nativeads/designed_native_ads/d;->a(Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$register"

    .line 5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
