.class public final Lcom/facebook/ads/redexgen/X/Oc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9f;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9f;)V
    .locals 0

    .line 47328
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oc;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 47329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oc;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A08(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Oh;

    move-result-object v1

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47330
    const/4 v0, 0x0

    return v0
.end method
