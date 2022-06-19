.class public final Lcom/facebook/ads/redexgen/X/Nl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Nm;->onMainAssetLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Nm;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Nn;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nm;Lcom/facebook/ads/redexgen/X/Nn;)V
    .locals 0

    .line 46085
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:Lcom/facebook/ads/redexgen/X/Nm;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:Lcom/facebook/ads/redexgen/X/Nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Kn;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 46086
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Nl;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Nl;->A01:Lcom/facebook/ads/redexgen/X/Nn;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nn;->A9r()V

    .line 46087
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Nl;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
