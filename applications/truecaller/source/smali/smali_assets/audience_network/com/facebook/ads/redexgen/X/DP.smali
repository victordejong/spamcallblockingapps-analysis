.class public final Lcom/facebook/ads/redexgen/X/DP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommentHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    .line 27405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27406
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DP;->A01:Ljava/lang/String;

    .line 27407
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DP;->A02:[Ljava/lang/String;

    .line 27408
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DP;->A00:I

    .line 27409
    return-void
.end method
