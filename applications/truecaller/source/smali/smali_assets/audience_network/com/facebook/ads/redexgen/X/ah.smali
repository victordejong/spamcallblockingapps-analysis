.class public final Lcom/facebook/ads/redexgen/X/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/5x;->A03(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 68252
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 68253
    .local p0, "mCallBack":Landroid/view/Window$Callback;
    :goto_0
    if-eqz v0, :cond_0

    .line 68254
    new-instance v1, Lcom/facebook/ads/redexgen/X/L7;

    invoke-direct {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/L7;-><init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V

    .line 68255
    .local p1, "activityInterceptorCallback":Lcom/facebook/ads/redexgen/X/L7;
    new-instance v0, Lcom/facebook/ads/redexgen/X/ai;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ai;-><init>(Lcom/facebook/ads/redexgen/X/ah;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/L7;->A00(Lcom/facebook/ads/redexgen/X/L6;)V

    .line 68256
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 68257
    .end local p1    # "activityInterceptorCallback":Lcom/facebook/ads/redexgen/X/L7;
    :cond_0
    return-void

    .line 68258
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
