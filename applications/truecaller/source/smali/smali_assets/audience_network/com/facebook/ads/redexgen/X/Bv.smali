.class public final Lcom/facebook/ads/redexgen/X/Bv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandlerAndListener"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/Bx;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Bx;)V
    .locals 0

    .line 24805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24806
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bv;->A00:Landroid/os/Handler;

    .line 24807
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bv;->A01:Lcom/facebook/ads/redexgen/X/Bx;

    .line 24808
    return-void
.end method
