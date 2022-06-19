.class public final Lcom/facebook/ads/redexgen/X/Nd;
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
        "Lcom/facebook/ads/redexgen/X/KK;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 45852
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KK;)V
    .locals 1

    .line 45853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nd;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0b()V

    .line 45854
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/KK;",
            ">;"
        }
    .end annotation

    .line 45855
    const-class v0, Lcom/facebook/ads/redexgen/X/KK;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 45856
    check-cast p1, Lcom/facebook/ads/redexgen/X/KK;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nd;->A00(Lcom/facebook/ads/redexgen/X/KK;)V

    return-void
.end method
