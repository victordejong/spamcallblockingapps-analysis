.class public final Lcom/facebook/ads/redexgen/X/Py;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ij;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Jb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ij;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ij;)V
    .locals 0

    .line 49445
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 49446
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Py;
    .local v3, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A01(Lcom/facebook/ads/redexgen/X/Ij;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0b:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 49447
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A00(Lcom/facebook/ads/redexgen/X/Ij;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2y()V

    .line 49448
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A02(Lcom/facebook/ads/redexgen/X/Ij;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    if-nez v0, :cond_1

    .line 49449
    return-void

    .line 49450
    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A08(Lcom/facebook/ads/redexgen/X/Ij;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49451
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A02(Lcom/facebook/ads/redexgen/X/Ij;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVolume(F)V

    .line 49452
    :goto_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A09()V

    goto :goto_1

    .line 49453
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Py;
    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A02(Lcom/facebook/ads/redexgen/X/Ij;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Po;->setVolume(F)V

    goto :goto_0

    .line 49454
    :goto_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
