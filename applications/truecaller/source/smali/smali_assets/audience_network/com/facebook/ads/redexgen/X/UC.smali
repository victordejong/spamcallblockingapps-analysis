.class public final Lcom/facebook/ads/redexgen/X/UC;
.super Lcom/facebook/ads/redexgen/X/dh;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final A00:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56013
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/dh;-><init>()V

    .line 56014
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UC;->A00:Landroid/view/View;

    .line 56015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UC;->A00:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 56016
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/UC;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dh;->A00()V

    .line 56018
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 0

    .line 56019
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dh;->A00()V

    .line 56020
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 56021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UC;->A00:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/31;->A0H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 56022
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dh;->A00()V

    .line 56023
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 56024
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/dh;->A01()V

    .line 56025
    return-void
.end method
