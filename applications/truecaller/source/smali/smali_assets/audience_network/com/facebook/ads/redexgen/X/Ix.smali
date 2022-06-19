.class public final Lcom/facebook/ads/redexgen/X/Ix;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DefaultDisplayListener"
.end annotation


# instance fields
.field public final A00:Landroid/hardware/display/DisplayManager;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Iz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Iz;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 39751
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ix;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39752
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ix;->A00:Landroid/hardware/display/DisplayManager;

    .line 39753
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 39754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ix;->A00:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 39755
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 39756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ix;->A00:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 39757
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 39758
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 39759
    if-nez p1, :cond_0

    .line 39760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ix;->A01:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iz;->A05(Lcom/facebook/ads/redexgen/X/Iz;)V

    .line 39761
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 39762
    return-void
.end method
