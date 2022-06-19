.class public final Lcom/facebook/ads/redexgen/X/BE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/BF;->A01(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/BF;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/BF;I)V
    .locals 0

    .line 23474
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BE;->A01:Lcom/facebook/ads/redexgen/X/BF;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 23475
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BE;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/BE;->A01:Lcom/facebook/ads/redexgen/X/BF;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BF;->A00(Lcom/facebook/ads/redexgen/X/BF;)Lcom/facebook/ads/redexgen/X/BG;

    move-result-object v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/BE;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/BG;->A9w(I)V

    .line 23476
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/BE;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
