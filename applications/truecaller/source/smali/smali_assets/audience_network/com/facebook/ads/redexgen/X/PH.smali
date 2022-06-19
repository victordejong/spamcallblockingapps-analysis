.class public final Lcom/facebook/ads/redexgen/X/PH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PK;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/PI;Lcom/facebook/ads/redexgen/X/PJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PK;)V
    .locals 0

    .line 48404
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/PK;

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

    .line 48405
    .local p0, "this":Lcom/facebook/ads/redexgen/X/PH;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/PK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PK;->A01(Lcom/facebook/ads/redexgen/X/PK;)Lcom/facebook/ads/redexgen/X/PJ;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/PH;->A00:Lcom/facebook/ads/redexgen/X/PK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PK;->A00(Lcom/facebook/ads/redexgen/X/PK;)Lcom/facebook/ads/redexgen/X/PI;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/PJ;->ACD(Lcom/facebook/ads/redexgen/X/PI;)V

    .line 48406
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/PH;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
