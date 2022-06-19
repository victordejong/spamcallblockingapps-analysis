.class public final Lcom/appnext/nativeads/designed_native_ads/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/d;->c(Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gq:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

.field public final synthetic gt:Lcom/appnext/nativeads/designed_native_ads/d;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/d;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$4;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/d$4;->gq:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$4;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    invoke-static {v0}, Lcom/appnext/nativeads/designed_native_ads/d;->b(Lcom/appnext/nativeads/designed_native_ads/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/adswatched/a;->o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/d$4;->gq:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-virtual {v1}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "950"

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/adswatched/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
