.class public final Lcom/facebook/ads/redexgen/X/QL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadConfig"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/QM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QM;J)V
    .locals 0

    .line 49776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49777
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/QM;

    .line 49778
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:J

    .line 49779
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/QM;JLcom/facebook/ads/redexgen/X/QK;)V
    .locals 0

    .line 49780
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/QL;-><init>(Lcom/facebook/ads/redexgen/X/QM;J)V

    return-void
.end method
