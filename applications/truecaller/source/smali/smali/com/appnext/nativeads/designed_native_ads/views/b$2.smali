.class public final Lcom/appnext/nativeads/designed_native_ads/views/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/nativeads/designed_native_ads/views/c$a;


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
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$2;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$2;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$2;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->b(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$2;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-virtual {v0, v1, p1}, Lcom/appnext/nativeads/designed_native_ads/d;->b(Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;I)V

    .line 2
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$2;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/views/b;->b(Lcom/appnext/nativeads/designed_native_ads/views/b;)Lcom/appnext/nativeads/designed_native_ads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$2;->gY:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-virtual {v0, v1, p1}, Lcom/appnext/nativeads/designed_native_ads/d;->a(Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$register"

    .line 3
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
