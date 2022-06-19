.class public final Lcom/facebook/ads/redexgen/X/Hg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/UT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReleaseTask"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hf;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hf;)V
    .locals 0

    .line 37043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37044
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hg;->A00:Lcom/facebook/ads/redexgen/X/Hf;

    .line 37045
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

    .line 37046
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Hg;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hg;->A00:Lcom/facebook/ads/redexgen/X/Hf;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Hf;->AB7()V

    .line 37047
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hg;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Kn;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
