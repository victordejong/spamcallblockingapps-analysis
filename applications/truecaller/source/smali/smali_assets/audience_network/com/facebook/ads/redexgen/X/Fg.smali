.class public final Lcom/facebook/ads/redexgen/X/Fg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/V2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocationNode"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Fg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/HI;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Z

.field public final A03:J

.field public final A04:J


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 33757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33758
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A04:J

    .line 33759
    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A03:J

    .line 33760
    return-void
.end method


# virtual methods
.method public final A00(J)I
    .locals 2

    .line 33761
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A04:J

    sub-long/2addr p1, v0

    long-to-int v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/HI;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Fg;
    .locals 2

    .line 33762
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 33763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    .line 33764
    .local v1, "temp":Lcom/facebook/ads/redexgen/X/Fg;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    .line 33765
    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/Fg;)V
    .locals 1

    .line 33766
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fg;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 33767
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Fg;->A00:Lcom/facebook/ads/redexgen/X/Fg;

    .line 33768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fg;->A02:Z

    .line 33769
    return-void
.end method
