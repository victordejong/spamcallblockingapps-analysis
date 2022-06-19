.class public final Lcom/facebook/ads/redexgen/X/PY;
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
        "Lcom/facebook/ads/redexgen/X/KR;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 48821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KR;)V
    .locals 1

    .line 48822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PY;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0Y()V

    .line 48823
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/KR;",
            ">;"
        }
    .end annotation

    .line 48824
    const-class v0, Lcom/facebook/ads/redexgen/X/KR;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 48825
    check-cast p1, Lcom/facebook/ads/redexgen/X/KR;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PY;->A00(Lcom/facebook/ads/redexgen/X/KR;)V

    return-void
.end method
