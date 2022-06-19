.class public final Lcom/facebook/ads/redexgen/X/As;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/At;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/Ao;

.field public final A06:Lcom/facebook/ads/redexgen/X/FL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/Ao;ILcom/facebook/ads/redexgen/X/FL;JJJ)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22515
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/As;->A03:J

    .line 22516
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/As;->A05:Lcom/facebook/ads/redexgen/X/Ao;

    .line 22517
    iput p4, p0, Lcom/facebook/ads/redexgen/X/As;->A00:I

    .line 22518
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/As;->A06:Lcom/facebook/ads/redexgen/X/FL;

    .line 22519
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/As;->A02:J

    .line 22520
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/As;->A01:J

    .line 22521
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/As;->A04:J

    .line 22522
    return-void
.end method
