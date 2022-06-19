.class public final Lcom/facebook/ads/redexgen/X/P9;
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
        "Lcom/facebook/ads/redexgen/X/Kr;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 48258
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kr;)V
    .locals 2

    .line 48259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7x;->A0C(Lcom/facebook/ads/redexgen/X/7x;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48260
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/7x;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7x;->A0D(Lcom/facebook/ads/redexgen/X/7x;Z)Z

    .line 48261
    return-void

    .line 48262
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/P9;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0X()V

    .line 48263
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Kr;",
            ">;"
        }
    .end annotation

    .line 48264
    const-class v0, Lcom/facebook/ads/redexgen/X/Kr;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 48265
    check-cast p1, Lcom/facebook/ads/redexgen/X/Kr;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/P9;->A00(Lcom/facebook/ads/redexgen/X/Kr;)V

    return-void
.end method
