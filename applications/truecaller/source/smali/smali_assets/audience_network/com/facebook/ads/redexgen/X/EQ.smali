.class public final Lcom/facebook/ads/redexgen/X/EQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 30049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30050
    iput p1, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:I

    .line 30051
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:J

    .line 30052
    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/EP;)V
    .locals 0

    .line 30053
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/EQ;-><init>(IJ)V

    return-void
.end method

.method public static A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EQ;
    .locals 4

    .line 30054
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EQ;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/EQ;-><init>(IJ)V

    return-object v0
.end method

.method public static synthetic A01(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EQ;
    .locals 0

    .line 30055
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/EQ;->A00(Landroid/os/Parcel;)Lcom/facebook/ads/redexgen/X/EQ;

    move-result-object p0

    return-object p0
.end method

.method private A02(Landroid/os/Parcel;)V
    .locals 2

    .line 30056
    iget v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A00:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30057
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/EQ;->A01:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30058
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/EQ;Landroid/os/Parcel;)V
    .locals 0

    .line 30059
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EQ;->A02(Landroid/os/Parcel;)V

    return-void
.end method
