.class public final Lcom/facebook/ads/redexgen/X/AI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPosition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/Ao;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ao;IJ)V
    .locals 0

    .line 21699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AI;->A02:Lcom/facebook/ads/redexgen/X/Ao;

    .line 21701
    iput p2, p0, Lcom/facebook/ads/redexgen/X/AI;->A00:I

    .line 21702
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/AI;->A01:J

    .line 21703
    return-void
.end method
