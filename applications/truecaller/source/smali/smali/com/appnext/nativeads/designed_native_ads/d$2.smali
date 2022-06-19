.class public final Lcom/appnext/nativeads/designed_native_ads/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/d;->b(Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gq:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

.field public final synthetic gs:Lcom/appnext/nativeads/designed_native_ads/d$a;

.field public final synthetic gt:Lcom/appnext/nativeads/designed_native_ads/d;

.field public final synthetic gu:I


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/d;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;ILcom/appnext/nativeads/designed_native_ads/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gq:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    iput p3, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gu:I

    iput-object p4, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gs:Lcom/appnext/nativeads/designed_native_ads/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/appnext/nativeads/designed_native_ads/d$a;

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    iget-object v2, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gq:Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    invoke-direct {v0, v1, v2}, Lcom/appnext/nativeads/designed_native_ads/d$a;-><init>(Lcom/appnext/nativeads/designed_native_ads/d;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V

    .line 2
    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/d;->a(Lcom/appnext/nativeads/designed_native_ads/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    invoke-static {v1}, Lcom/appnext/nativeads/designed_native_ads/d;->a(Lcom/appnext/nativeads/designed_native_ads/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appnext/nativeads/designed_native_ads/d$a;

    invoke-virtual {v0}, Lcom/appnext/nativeads/designed_native_ads/d$a;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gu:I

    invoke-static {}, Lcom/appnext/nativeads/designed_native_ads/c;->bg()Lcom/appnext/nativeads/designed_native_ads/c;

    move-result-object v1

    const-string v2, "min_vta_precentage"

    invoke-virtual {v1, v2}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gs:Lcom/appnext/nativeads/designed_native_ads/d$a;

    invoke-virtual {v0}, Lcom/appnext/nativeads/designed_native_ads/d$a;->bh()V

    .line 6
    iget-object v0, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gt:Lcom/appnext/nativeads/designed_native_ads/d;

    iget-object v1, p0, Lcom/appnext/nativeads/designed_native_ads/d$2;->gs:Lcom/appnext/nativeads/designed_native_ads/d$a;

    invoke-virtual {v1}, Lcom/appnext/nativeads/designed_native_ads/d$a;->bj()Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appnext/nativeads/designed_native_ads/d;->b(Lcom/appnext/nativeads/designed_native_ads/d;Lcom/appnext/nativeads/designed_native_ads/DesignNativeAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "DesignedNativeAdsActionsController$impressionIfNecessary"

    .line 7
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
