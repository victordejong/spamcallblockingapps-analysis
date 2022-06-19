.class public final Lcom/facebook/ads/redexgen/X/TL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ln;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Lp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Lm;

.field public final A01:Lcom/facebook/ads/redexgen/X/Ln;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ln;II)V
    .locals 1

    .line 54023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54024
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TL;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    .line 54025
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lm;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Lm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    .line 54026
    return-void
.end method


# virtual methods
.method public final AD2(Ljava/lang/String;)V
    .locals 2

    .line 54027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Lm;->A04(Ljava/lang/String;)V

    .line 54028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lm;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lp;->A09(Lcom/facebook/ads/redexgen/X/Lm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TL;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ln;->AD2(Ljava/lang/String;)V

    .line 54030
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 54031
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lm;->A03()V

    .line 54032
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lm;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lp;->A09(Lcom/facebook/ads/redexgen/X/Lm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54034
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TL;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lm;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ln;->AD2(Ljava/lang/String;)V

    .line 54035
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TL;->A00:Lcom/facebook/ads/redexgen/X/Lm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lm;->A03()V

    goto :goto_0

    .line 54036
    :cond_1
    return-void
.end method
