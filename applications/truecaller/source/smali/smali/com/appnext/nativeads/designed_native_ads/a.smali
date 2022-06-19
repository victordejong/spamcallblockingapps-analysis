.class public final Lcom/appnext/nativeads/designed_native_ads/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/nativeads/designed_native_ads/a$a;
    }
.end annotation


# instance fields
.field private ge:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/appnext/nativeads/designed_native_ads/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private gf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/designed_native_ads/a;->ge:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic a(Lcom/appnext/nativeads/designed_native_ads/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/a;->gf:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic b(Lcom/appnext/nativeads/designed_native_ads/a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/appnext/nativeads/designed_native_ads/a;->gf:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;I)V
    .locals 6

    .line 4
    new-instance v2, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;

    invoke-direct {v2, p1, p2}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->getCategories()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/appnext/core/Ad;->setCategories(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p3}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->getSpecificCategories()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/appnext/core/Ad;->setSpecificCategories(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p3}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->getPostBack()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/appnext/core/Ad;->setPostback(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/b;->bf()Lcom/appnext/nativeads/designed_native_ads/b;

    move-result-object v0

    new-instance v4, Lcom/appnext/nativeads/designed_native_ads/a$1;

    invoke-direct {v4, p0, v2, p4}, Lcom/appnext/nativeads/designed_native_ads/a$1;-><init>(Lcom/appnext/nativeads/designed_native_ads/a;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdObject;I)V

    .line 9
    new-instance v5, Lcom/appnext/nativeads/NativeAdRequest;

    invoke-direct {v5}, Lcom/appnext/nativeads/NativeAdRequest;-><init>()V

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->getCategories()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Lcom/appnext/nativeads/NativeAdRequest;->setCategories(Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 11
    invoke-virtual {p3}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->getSpecificCategories()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Lcom/appnext/nativeads/NativeAdRequest;->setSpecificCategories(Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdRequest;

    .line 12
    invoke-virtual {p3}, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->getPostBack()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Lcom/appnext/nativeads/NativeAdRequest;->setPostback(Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdRequest;

    :cond_1
    move-object v1, p1

    move-object v3, p2

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/appnext/nativeads/b;->a(Landroid/content/Context;Lcom/appnext/core/Ad;Ljava/lang/String;Lcom/appnext/core/d$a;Lcom/appnext/nativeads/NativeAdRequest;)V

    return-void
.end method

.method public final a(Lcom/appnext/nativeads/designed_native_ads/a$a;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/a;->ge:Ljava/lang/ref/WeakReference;

    return-void
.end method
