.class public final Lcom/facebook/ads/redexgen/X/PO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewOffTargetClickListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PP;)V
    .locals 0

    .line 48496
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/PP;Lcom/facebook/ads/redexgen/X/82;)V
    .locals 0

    .line 48497
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PO;-><init>(Lcom/facebook/ads/redexgen/X/PP;)V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 48498
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 48499
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/PP;->A01(Lcom/facebook/ads/redexgen/X/PP;J)J

    .line 48500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A00(Lcom/facebook/ads/redexgen/X/PP;)I

    .line 48501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A03(Lcom/facebook/ads/redexgen/X/PP;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    .line 48502
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A02(Lcom/facebook/ads/redexgen/X/PP;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    .line 48503
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PO;->A00:Lcom/facebook/ads/redexgen/X/PP;

    .line 48504
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 48505
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 48506
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A90(Ljava/lang/String;Ljava/util/Map;)V

    .line 48507
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
