.class public final Lcom/facebook/ads/redexgen/X/Mx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N0;->A01(Lcom/facebook/ads/redexgen/X/Mz;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/N0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N0;)V
    .locals 0

    .line 45069
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mx;->A00:Lcom/facebook/ads/redexgen/X/N0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 45070
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mx;
    .local v1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mx;->A00:Lcom/facebook/ads/redexgen/X/N0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N0;->A03(Lcom/facebook/ads/redexgen/X/N0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45071
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mx;->A00:Lcom/facebook/ads/redexgen/X/N0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(Lcom/facebook/ads/redexgen/X/N0;)Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N3;->A40()V

    goto :goto_0

    .line 45072
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Mx;
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mx;->A00:Lcom/facebook/ads/redexgen/X/N0;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N0;->A02(Lcom/facebook/ads/redexgen/X/N0;)Lcom/facebook/ads/redexgen/X/N3;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/N3;->A41()V

    .line 45073
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
