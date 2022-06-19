.class public final Lcom/facebook/ads/redexgen/X/Jc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Jd;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ja;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ja;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 0

    .line 40744
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 40745
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 40746
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 40747
    return-void
.end method
