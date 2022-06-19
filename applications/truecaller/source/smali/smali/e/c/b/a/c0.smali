.class public final synthetic Le/c/b/a/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/amazon/device/ads/DTBAdView$WebBridge;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/device/ads/DTBAdView$WebBridge;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/c/b/a/c0;->a:Lcom/amazon/device/ads/DTBAdView$WebBridge;

    iput-object p2, p0, Le/c/b/a/c0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/c/b/a/c0;->a:Lcom/amazon/device/ads/DTBAdView$WebBridge;

    iget-object v1, p0, Le/c/b/a/c0;->b:Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdView$WebBridge;->this$0:Lcom/amazon/device/ads/DTBAdView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/DTBAdView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
