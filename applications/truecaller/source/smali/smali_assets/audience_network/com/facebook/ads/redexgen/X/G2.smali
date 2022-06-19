.class public final Lcom/facebook/ads/redexgen/X/G2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/dR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleControllerListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/da;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/da;)V
    .locals 0

    .line 33919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33920
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Lcom/facebook/ads/redexgen/X/da;

    .line 33921
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/da;Lcom/facebook/ads/redexgen/X/dS;)V
    .locals 0

    .line 33922
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/G2;-><init>(Lcom/facebook/ads/redexgen/X/da;)V

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 1

    .line 33923
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Lcom/facebook/ads/redexgen/X/da;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/da;->A0A()V

    .line 33924
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 33925
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G2;->A00:Lcom/facebook/ads/redexgen/X/da;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/da;->A09()V

    .line 33926
    return-void
.end method
