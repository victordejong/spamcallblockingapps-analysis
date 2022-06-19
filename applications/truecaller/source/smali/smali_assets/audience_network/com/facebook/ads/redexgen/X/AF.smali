.class public final Lcom/facebook/ads/redexgen/X/AF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Ao;

.field public final A01:Lcom/facebook/ads/redexgen/X/FN;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FN;Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V
    .locals 0

    .line 21658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AF;->A01:Lcom/facebook/ads/redexgen/X/FN;

    .line 21660
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AF;->A00:Lcom/facebook/ads/redexgen/X/Ao;

    .line 21661
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AF;->A02:Ljava/lang/Object;

    .line 21662
    return-void
.end method
