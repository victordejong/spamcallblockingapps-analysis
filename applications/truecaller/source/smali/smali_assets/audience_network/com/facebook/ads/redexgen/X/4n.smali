.class public final Lcom/facebook/ads/redexgen/X/4n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4o;)V
    .locals 0

    .line 12669
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4n;->A00:Lcom/facebook/ads/redexgen/X/4o;

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

    .line 12670
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4n;
    :try_start_0
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/4n;->A00:Lcom/facebook/ads/redexgen/X/4o;

    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4o;->A00(Lcom/facebook/ads/redexgen/X/4o;J)J

    .line 12671
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4n;->A00:Lcom/facebook/ads/redexgen/X/4o;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4o;->A03(Lcom/facebook/ads/redexgen/X/4o;Z)Z

    .line 12672
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4n;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
