.class public final Lcom/facebook/ads/redexgen/X/FP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FY;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FY;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Fb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 0

    .line 33287
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FP;->A00:Lcom/facebook/ads/redexgen/X/FY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 33288
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FP;
    :try_start_0
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FP;->A00:Lcom/facebook/ads/redexgen/X/FY;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FP;->A00:Lcom/facebook/ads/redexgen/X/FY;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/FL;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fb;->ABG(ILcom/facebook/ads/redexgen/X/FL;)V

    .line 33289
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FP;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
