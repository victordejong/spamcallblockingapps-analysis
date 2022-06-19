.class public final Lcom/facebook/ads/redexgen/X/OE;
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
        "Lcom/facebook/ads/redexgen/X/Ke;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 46918
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OE;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ke;)V
    .locals 3

    .line 46919
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OE;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ke;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ke;->A01()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0e(II)V

    .line 46920
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Ke;",
            ">;"
        }
    .end annotation

    .line 46921
    const-class v0, Lcom/facebook/ads/redexgen/X/Ke;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 46922
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ke;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OE;->A00(Lcom/facebook/ads/redexgen/X/Ke;)V

    return-void
.end method
