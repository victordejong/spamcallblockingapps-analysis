.class public final Lcom/facebook/ads/redexgen/X/FQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FY;->A0A(Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FY;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FZ;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Fa;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/Fb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FY;Lcom/facebook/ads/redexgen/X/Fb;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V
    .locals 0

    .line 33290
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FQ;->A03:Lcom/facebook/ads/redexgen/X/Fb;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FQ;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FQ;->A02:Lcom/facebook/ads/redexgen/X/Fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 33291
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FQ;
    :try_start_0
    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/FQ;->A03:Lcom/facebook/ads/redexgen/X/Fb;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FY;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/FY;->A00:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FQ;->A00:Lcom/facebook/ads/redexgen/X/FY;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/FY;->A01:Lcom/facebook/ads/redexgen/X/FL;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/FQ;->A01:Lcom/facebook/ads/redexgen/X/FZ;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/FQ;->A02:Lcom/facebook/ads/redexgen/X/Fa;

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fb;->AB6(ILcom/facebook/ads/redexgen/X/FL;Lcom/facebook/ads/redexgen/X/FZ;Lcom/facebook/ads/redexgen/X/Fa;)V

    .line 33292
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FQ;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
