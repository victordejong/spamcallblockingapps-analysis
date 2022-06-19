.class public final Lcom/facebook/ads/redexgen/X/QP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Hh;->setFullScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;)V
    .locals 0

    .line 49866
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 49867
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 49868
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 49870
    :cond_0
    :goto_0
    return v1

    .line 49871
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QP;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
