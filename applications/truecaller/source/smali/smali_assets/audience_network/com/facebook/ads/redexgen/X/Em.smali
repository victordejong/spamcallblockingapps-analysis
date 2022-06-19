.class public final Lcom/facebook/ads/redexgen/X/Em;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/En;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/offline/DownloadManager$TaskState$State;
    }
.end annotation


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

.field public final A05:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V
    .locals 0

    .line 30368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30369
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Em;->A02:I

    .line 30370
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Em;->A04:Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 30371
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Em;->A01:I

    .line 30372
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Em;->A00:F

    .line 30373
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Em;->A03:J

    .line 30374
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/Em;->A05:Ljava/lang/Throwable;

    .line 30375
    return-void
.end method

.method public synthetic constructor <init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;Lcom/facebook/ads/redexgen/X/Ec;)V
    .locals 0

    .line 30376
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Em;-><init>(ILcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;IFJLjava/lang/Throwable;)V

    return-void
.end method
