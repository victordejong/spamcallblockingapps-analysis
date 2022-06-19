.class public final Lcom/facebook/ads/redexgen/X/PA;
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
        "Lcom/facebook/ads/redexgen/X/7u;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 48266
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PA;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7u;)V
    .locals 8

    .line 48267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PA;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0W()V

    .line 48268
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/PA;->A00:Lcom/facebook/ads/redexgen/X/7x;

    .line 48269
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mj;->A00()I

    move-result v6

    .line 48270
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mj;->A00()I

    move-result v0

    int-to-double v4, v0

    const/4 v3, 0x0

    const-wide v1, 0x409f400000000000L    # 2000.0

    cmpg-double v0, v4, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 48271
    :goto_0
    invoke-virtual {v7, v6, v3, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0f(IZZ)V

    .line 48272
    return-void

    .line 48273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7u;",
            ">;"
        }
    .end annotation

    .line 48274
    const-class v0, Lcom/facebook/ads/redexgen/X/7u;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 48275
    check-cast p1, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PA;->A00(Lcom/facebook/ads/redexgen/X/7u;)V

    return-void
.end method
