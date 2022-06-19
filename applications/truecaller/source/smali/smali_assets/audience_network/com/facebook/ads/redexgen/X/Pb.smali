.class public final Lcom/facebook/ads/redexgen/X/Pb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Po;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 0

    .line 48853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 48854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/Po;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Po;->A09(Lcom/facebook/ads/redexgen/X/Po;)Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/KP;-><init>(Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9O;->A02(Lcom/facebook/ads/redexgen/X/9N;)V

    .line 48855
    const/4 v0, 0x0

    return v0
.end method
