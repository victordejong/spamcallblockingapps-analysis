.class public final synthetic Le/c/b/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBAdMRAIDController;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/webkit/ValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdMRAIDController;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/s;->a:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iput-object p2, p0, Le/c/b/a/s;->b:Ljava/lang/String;

    iput-object p3, p0, Le/c/b/a/s;->c:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/c/b/a/s;->a:Lcom/amazon/device/ads/DTBAdMRAIDController;

    iget-object v1, p0, Le/c/b/a/s;->b:Ljava/lang/String;

    iget-object v2, p0, Le/c/b/a/s;->c:Landroid/webkit/ValueCallback;

    .line 1
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBAdMRAIDController;->getAdView()Lcom/amazon/device/ads/DTBAdView;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DTBAdView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
