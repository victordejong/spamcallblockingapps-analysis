.class public final Lcom/appnext/nativeads/designed_native_ads/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/designed_native_ads/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private aY:Ljava/lang/String;

.field public final synthetic gt:Lcom/appnext/nativeads/designed_native_ads/d;

.field private gv:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

.field private gw:Z

.field private gx:Z


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/d;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/appnext/core/AppnextAd;->getBannerID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->aY:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gv:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gx:Z

    .line 5
    iput-boolean p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gw:Z

    return-void
.end method


# virtual methods
.method public final bh()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gw:Z

    return-void
.end method

.method public final bi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gx:Z

    return-void
.end method

.method public final bj()Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gv:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    return-object v0
.end method

.method public final bk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gw:Z

    return v0
.end method

.method public final bl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->gx:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/appnext/nativeads/designed_native_ads/d$a;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/appnext/nativeads/designed_native_ads/d$a;

    .line 3
    iget-object v0, v0, Lcom/appnext/nativeads/designed_native_ads/d$a;->aY:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/d$a;->aY:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    const-string v1, "DesignedNativeAdsActionsController$Reports"

    .line 6
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
