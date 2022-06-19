.class public Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;
.super Lcom/appnext/core/c;
.source "SourceFile"


# instance fields
.field private gl:Ljava/lang/String;

.field private gm:Ljava/lang/String;

.field private mSpecificCategories:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/appnext/core/c;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->gl:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->mSpecificCategories:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->gm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->gl:Ljava/lang/String;

    return-object v0
.end method

.method public getPostBack()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->gm:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificCategories()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->mSpecificCategories:Ljava/lang/String;

    return-object v0
.end method

.method public setCategories(Ljava/lang/String;)Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->gl:Ljava/lang/String;

    return-object p0
.end method

.method public setPostBack(Ljava/lang/String;)Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->gm:Ljava/lang/String;

    return-object p0
.end method

.method public setSpecificCategories(Ljava/lang/String;)Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/DesignNativeAdsRequest;->mSpecificCategories:Ljava/lang/String;

    return-object p0
.end method
