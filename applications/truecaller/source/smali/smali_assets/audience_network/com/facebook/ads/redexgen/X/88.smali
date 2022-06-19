.class public final Lcom/facebook/ads/redexgen/X/88;
.super Lcom/facebook/ads/redexgen/X/M3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/87;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/87;)V
    .locals 0

    .line 18119
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/88;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M3;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Mh;)V
    .locals 2

    .line 18120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/P6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/P6;-><init>(Lcom/facebook/ads/redexgen/X/88;)V

    .line 18121
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18122
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 18123
    check-cast p1, Lcom/facebook/ads/redexgen/X/Mh;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/88;->A00(Lcom/facebook/ads/redexgen/X/Mh;)V

    return-void
.end method
