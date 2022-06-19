.class public final Lcom/facebook/ads/redexgen/X/db;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/da;-><init>(Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/redexgen/X/G3;Lcom/facebook/ads/redexgen/X/dc;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/da;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/da;I)V
    .locals 0

    .line 73986
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/db;->A01:Lcom/facebook/ads/redexgen/X/da;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/db;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 73987
    .local p0, "this":Lcom/facebook/ads/redexgen/X/db;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/db;->A01:Lcom/facebook/ads/redexgen/X/da;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/da;->A08(Lcom/facebook/ads/redexgen/X/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73988
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/db;->A01:Lcom/facebook/ads/redexgen/X/da;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/db;->A01:Lcom/facebook/ads/redexgen/X/da;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/da;->A01(Lcom/facebook/ads/redexgen/X/da;)Lcom/facebook/ads/redexgen/X/Rn;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Rn;->A9Y()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/da;->A07(Lcom/facebook/ads/redexgen/X/da;J)V

    .line 73989
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/db;->A01:Lcom/facebook/ads/redexgen/X/da;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/da;->A00(Lcom/facebook/ads/redexgen/X/da;)Landroid/os/Handler;

    move-result-object v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/db;->A01:Lcom/facebook/ads/redexgen/X/da;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/da;->A02(Lcom/facebook/ads/redexgen/X/da;)Ljava/lang/Runnable;

    move-result-object v2

    iget v0, v4, Lcom/facebook/ads/redexgen/X/db;->A00:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73990
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/db;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
