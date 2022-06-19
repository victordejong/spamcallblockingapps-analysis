.class public final Lcom/facebook/ads/redexgen/X/IT;
.super Lcom/facebook/ads/redexgen/X/9P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9P<",
        "Lcom/facebook/ads/redexgen/X/Ko;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7R;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7R;)V
    .locals 0

    .line 38812
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Lcom/facebook/ads/redexgen/X/7R;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ko;)V
    .locals 2

    .line 38813
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Lcom/facebook/ads/redexgen/X/7R;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7R;->setVisibility(I)V

    .line 38814
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Ko;",
            ">;"
        }
    .end annotation

    .line 38815
    const-class v0, Lcom/facebook/ads/redexgen/X/Ko;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 38816
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ko;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IT;->A00(Lcom/facebook/ads/redexgen/X/Ko;)V

    return-void
.end method
