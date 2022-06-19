.class public final Lcom/facebook/ads/redexgen/X/7d;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JX;)V
    .locals 0

    .line 17288
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 2

    .line 17289
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A02(Lcom/facebook/ads/redexgen/X/JX;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-nez v0, :cond_0

    .line 17290
    return-void

    .line 17291
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/KP;->A00()Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 17292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A00(Lcom/facebook/ads/redexgen/X/JX;)Landroid/os/Handler;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17293
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pu;-><init>(Lcom/facebook/ads/redexgen/X/7d;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JX;->A0B(Lcom/facebook/ads/redexgen/X/JX;Landroid/animation/AnimatorListenerAdapter;)V

    .line 17294
    :cond_1
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 17295
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7d;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method
