.class public Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gb:Ljava/lang/String;

.field private gc:Ljava/lang/String;

.field private gd:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;->gb:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;->gc:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;->gd:J

    return-void
.end method


# virtual methods
.method public getAdClickedTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;->gd:J

    return-wide v0
.end method

.method public getAdPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;->gb:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/AppnextDesignedNativeAdData;->gc:Ljava/lang/String;

    return-object v0
.end method
