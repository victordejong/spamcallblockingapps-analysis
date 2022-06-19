.class public final Lcom/appnext/nativeads/NativeAd$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/NativeAd$1;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic fQ:Lcom/appnext/nativeads/NativeAd$1;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/NativeAd$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v0, v0, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v0, v0, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$400(Lcom/appnext/nativeads/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v0, v0, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v0, v0, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v1, v1, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$200(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/nativeads/NativeAdView;->getVisiblePercent(Landroid/view/View;)I

    move-result v0

    invoke-static {}, Lcom/appnext/nativeads/a;->bc()Lcom/appnext/nativeads/a;

    move-result-object v1

    const-string v2, "min_vta_precentage"

    invoke-virtual {v1, v2}, Lcom/appnext/core/SettingsManager;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v0, v0, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v0}, Lcom/appnext/nativeads/NativeAd;->access$600(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/core/q;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v1, v1, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v1}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v2, v2, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    invoke-static {v2}, Lcom/appnext/nativeads/NativeAd;->access$500(Lcom/appnext/nativeads/NativeAd;)Lcom/appnext/nativeads/NativeAdData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdData;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    .line 6
    iget-object v0, p0, Lcom/appnext/nativeads/NativeAd$1$2;->fQ:Lcom/appnext/nativeads/NativeAd$1;

    iget-object v0, v0, Lcom/appnext/nativeads/NativeAd$1;->fP:Lcom/appnext/nativeads/NativeAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appnext/nativeads/NativeAd;->access$402(Lcom/appnext/nativeads/NativeAd;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "NativeAd$NativeAd"

    .line 7
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
