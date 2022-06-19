.class public final Lcom/appnext/nativeads/designed_native_ads/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/core/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/designed_native_ads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic gt:Lcom/appnext/nativeads/designed_native_ads/d;

.field private gv:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

.field private gy:Lcom/appnext/nativeads/NativeAdObject;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/d;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$b;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/appnext/nativeads/NativeAdObject;

    invoke-static {p1}, Lcom/appnext/nativeads/designed_native_ads/d;->b(Lcom/appnext/nativeads/designed_native_ads/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/appnext/nativeads/designed_native_ads/d;->c(Lcom/appnext/nativeads/designed_native_ads/d;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/appnext/nativeads/NativeAdObject;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$b;->gy:Lcom/appnext/nativeads/NativeAdObject;

    .line 3
    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/d$b;->gv:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    return-void
.end method


# virtual methods
.method public final c()Lcom/appnext/core/Ad;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$b;->gy:Lcom/appnext/nativeads/NativeAdObject;

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/appnext/core/AppnextAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$b;->gv:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    return-object v0
.end method

.method public final e()Lcom/appnext/core/SettingsManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v0

    return-object v0
.end method

.method public final report(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
