.class public final Lcom/facebook/ads/redexgen/X/Pu;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7d;->A00(Lcom/facebook/ads/redexgen/X/KP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7d;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7d;)V
    .locals 0

    .line 49291
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/7d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 49292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pu;->A00:Lcom/facebook/ads/redexgen/X/7d;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7d;->A00:Lcom/facebook/ads/redexgen/X/JX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JX;->A00(Lcom/facebook/ads/redexgen/X/JX;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/JZ;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/JZ;-><init>(Lcom/facebook/ads/redexgen/X/Pu;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49293
    return-void
.end method
