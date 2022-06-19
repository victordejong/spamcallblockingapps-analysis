.class public final Lcom/facebook/ads/redexgen/X/FZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadEventInfo"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/HV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HV;JJJ)V
    .locals 0

    .line 33415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33416
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FZ;->A03:Lcom/facebook/ads/redexgen/X/HV;

    .line 33417
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/FZ;->A01:J

    .line 33418
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/FZ;->A02:J

    .line 33419
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/FZ;->A00:J

    .line 33420
    return-void
.end method
