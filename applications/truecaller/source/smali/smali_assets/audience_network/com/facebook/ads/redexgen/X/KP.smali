.class public final Lcom/facebook/ads/redexgen/X/KP;
.super Lcom/facebook/ads/redexgen/X/9N;
.source ""


# instance fields
.field public final A00:Landroid/view/MotionEvent;

.field public final A01:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    .line 41497
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9N;-><init>()V

    .line 41498
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KP;->A01:Landroid/view/View;

    .line 41499
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Landroid/view/MotionEvent;

    .line 41500
    return-void
.end method


# virtual methods
.method public final A00()Landroid/view/MotionEvent;
    .locals 1

    .line 41501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KP;->A00:Landroid/view/MotionEvent;

    return-object v0
.end method
