.class public final Lcom/facebook/ads/redexgen/X/OT;
.super Lcom/facebook/ads/redexgen/X/9P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9P<",
        "Lcom/facebook/ads/redexgen/X/7t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 47233
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OT;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7t;)V
    .locals 3

    .line 47234
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mj;->A00()I

    move-result v2

    .line 47235
    .local p0, "currentPositionMS":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OT;->A00:Lcom/facebook/ads/redexgen/X/7x;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OT;->A00:Lcom/facebook/ads/redexgen/X/7x;

    .line 47236
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7x;->A09(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getDuration()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OT;->A00:Lcom/facebook/ads/redexgen/X/7x;

    .line 47237
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7x;->A09(Lcom/facebook/ads/redexgen/X/7x;)Lcom/facebook/ads/redexgen/X/Po;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Po;->getDuration()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OT;->A00:Lcom/facebook/ads/redexgen/X/7x;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    if-le v1, v0, :cond_0

    .line 47238
    return-void

    .line 47239
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OT;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ms;->A0c(I)V

    .line 47240
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7t;",
            ">;"
        }
    .end annotation

    .line 47241
    const-class v0, Lcom/facebook/ads/redexgen/X/7t;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 47242
    check-cast p1, Lcom/facebook/ads/redexgen/X/7t;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OT;->A00(Lcom/facebook/ads/redexgen/X/7t;)V

    return-void
.end method
