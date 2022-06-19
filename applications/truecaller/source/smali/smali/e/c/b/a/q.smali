.class public final synthetic Le/c/b/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBAdMRAIDController;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/q;->a:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iput-object p2, p0, Le/c/b/a/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/c/b/a/q;->a:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iget-object v1, p0, Le/c/b/a/q;->b:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v2

    new-instance v3, Lcom/amazon/device/ads/DTBAdMRAIDController$1;

    invoke-direct {v3, v0, v1}, Lcom/amazon/device/ads/DTBAdMRAIDController$1;-><init>(Lcom/amazon/device/ads/DTBAdMRAIDController;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/amazon/device/ads/DTBAdView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method
