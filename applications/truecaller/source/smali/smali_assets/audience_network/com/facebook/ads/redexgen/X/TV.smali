.class public final Lcom/facebook/ads/redexgen/X/TV;
.super Lcom/facebook/ads/redexgen/X/Ka;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/94;)V
    .locals 2
    .param p3    # Lcom/facebook/ads/redexgen/X/94;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 54125
    sget-object v1, Lcom/facebook/ads/redexgen/X/KZ;->A03:Lcom/facebook/ads/redexgen/X/KZ;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/Ka;-><init>(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/94;Ljava/lang/String;)V

    .line 54126
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:I

    .line 54127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TV;->A01:Ljava/lang/String;

    .line 54128
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Lcom/facebook/ads/redexgen/X/94;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54129
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Ka;->A00()Lcom/facebook/ads/redexgen/X/94;

    move-result-object v0

    return-object v0
.end method

.method public final A03()I
    .locals 1

    .line 54130
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A00:I

    return v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 54131
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TV;->A01:Ljava/lang/String;

    return-object v0
.end method
