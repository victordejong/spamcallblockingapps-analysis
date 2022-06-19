.class public final Lcom/facebook/ads/redexgen/X/Ap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Ac;Lcom/facebook/ads/redexgen/X/I9;)Lcom/facebook/ads/redexgen/X/Wk;
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/Ac;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22428
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wk;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wk;-><init>(Lcom/facebook/ads/redexgen/X/Ac;Lcom/facebook/ads/redexgen/X/I9;)V

    return-object v0
.end method
