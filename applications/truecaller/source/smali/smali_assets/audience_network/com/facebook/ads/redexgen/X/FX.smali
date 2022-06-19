.class public final Lcom/facebook/ads/redexgen/X/FX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/FY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/Fb;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 0

    .line 33317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33318
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FX;->A00:Landroid/os/Handler;

    .line 33319
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FX;->A01:Lcom/facebook/ads/redexgen/X/Fb;

    .line 33320
    return-void
.end method
