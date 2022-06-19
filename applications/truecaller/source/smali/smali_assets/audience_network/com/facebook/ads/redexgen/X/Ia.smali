.class public final Lcom/facebook/ads/redexgen/X/Ia;
.super Lcom/facebook/ads/redexgen/X/9P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9P<",
        "Lcom/facebook/ads/redexgen/X/7v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7b;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7b;)V
    .locals 0

    .line 39185
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/7b;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 2

    .line 39186
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Lcom/facebook/ads/redexgen/X/7b;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7b;->setVisibility(I)V

    .line 39187
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/7v;",
            ">;"
        }
    .end annotation

    .line 39188
    const-class v0, Lcom/facebook/ads/redexgen/X/7v;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 39189
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ia;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
