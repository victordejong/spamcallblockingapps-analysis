.class public final Lcom/appnext/nativeads/designed_native_ads/views/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/nativeads/designed_native_ads/views/b;->setPrivacyIcon(Lcom/appnext/core/AppnextAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

.field public final synthetic gZ:Lcom/appnext/core/AppnextAd;


# direct methods
.method public constructor <init>(Lcom/appnext/nativeads/designed_native_ads/views/b;Lcom/appnext/core/AppnextAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$4;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    iput-object p2, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$4;->gZ:Lcom/appnext/core/AppnextAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$4;->gZ:Lcom/appnext/core/AppnextAd;

    invoke-static {p1}, Lcom/appnext/core/g;->e(Lcom/appnext/core/AppnextAd;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/appnext/nativeads/designed_native_ads/views/b$4;->gX:Lcom/appnext/nativeads/designed_native_ads/views/b;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DesignedNativeAdView$buildView"

    .line 5
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
