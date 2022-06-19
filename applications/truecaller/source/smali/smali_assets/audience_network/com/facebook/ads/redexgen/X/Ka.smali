.class public Lcom/facebook/ads/redexgen/X/Ka;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KZ;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/94;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/KZ;

.field public final A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KZ;)V
    .locals 1

    .line 41825
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Ka;-><init>(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/94;Ljava/lang/String;)V

    .line 41826
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KZ;Lcom/facebook/ads/redexgen/X/94;Ljava/lang/String;)V
    .locals 0
    .param p2    # Lcom/facebook/ads/redexgen/X/94;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41828
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/KZ;

    .line 41829
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/94;

    .line 41830
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/lang/String;

    .line 41831
    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/94;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A00:Lcom/facebook/ads/redexgen/X/94;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/KZ;
    .locals 1

    .line 41833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A01:Lcom/facebook/ads/redexgen/X/KZ;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ka;->A02:Ljava/lang/String;

    return-object v0
.end method
