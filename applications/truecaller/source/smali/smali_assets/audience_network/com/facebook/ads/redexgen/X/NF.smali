.class public final Lcom/facebook/ads/redexgen/X/NF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sp;->A0N(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2D;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/N5;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Sp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/N5;Lcom/facebook/ads/redexgen/X/2D;)V
    .locals 0

    .line 45402
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NF;->A02:Lcom/facebook/ads/redexgen/X/Sp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NF;->A01:Lcom/facebook/ads/redexgen/X/N5;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NF;->A00:Lcom/facebook/ads/redexgen/X/2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 45403
    .local p0, "this":Lcom/facebook/ads/redexgen/X/NF;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/NF;->A01:Lcom/facebook/ads/redexgen/X/N5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/N5;->A01()V

    .line 45404
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/NF;->A02:Lcom/facebook/ads/redexgen/X/Sp;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/NF;->A00:Lcom/facebook/ads/redexgen/X/2D;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/N3;->ABQ(Lcom/facebook/ads/redexgen/X/2D;)V

    .line 45405
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/NF;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
