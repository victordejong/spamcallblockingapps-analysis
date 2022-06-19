.class public final synthetic Le/c/b/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBInterstitialActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBInterstitialActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/f0;->a:Lcom/amazon/device/ads/DTBInterstitialActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/c/b/a/f0;->a:Lcom/amazon/device/ads/DTBInterstitialActivity;

    .line 1
    iget-object v1, v0, Lcom/amazon/device/ads/DTBInterstitialActivity;->closeIndicatorRegion:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBInterstitialActivity;->getUseCustomClose()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
