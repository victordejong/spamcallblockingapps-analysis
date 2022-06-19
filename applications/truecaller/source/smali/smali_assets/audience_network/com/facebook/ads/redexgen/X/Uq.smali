.class public final Lcom/facebook/ads/redexgen/X/Uq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/GL;


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/Uq;


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 57469
    new-instance v0, Lcom/facebook/ads/redexgen/X/Uq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Uq;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uq;->A01:Lcom/facebook/ads/redexgen/X/Uq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Ljava/util/List;

    .line 57472
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GK;)V
    .locals 1

    .line 57473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57474
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Ljava/util/List;

    .line 57475
    return-void
.end method


# virtual methods
.method public final A67(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/GK;",
            ">;"
        }
    .end annotation

    .line 57476
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uq;->A00:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final A6X(I)J
    .locals 2

    .line 57477
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 57478
    const-wide/16 v0, 0x0

    return-wide v0

    .line 57479
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6Y()I
    .locals 1

    .line 57480
    const/4 v0, 0x1

    return v0
.end method

.method public final A6v(J)I
    .locals 3

    .line 57481
    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
