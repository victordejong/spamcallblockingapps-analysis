.class public final Lcom/facebook/ads/redexgen/X/TP;
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
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Ln;

.field public final A02:Lcom/facebook/ads/redexgen/X/Ln;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ln;ILcom/facebook/ads/redexgen/X/Ln;)V
    .locals 0

    .line 54081
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54082
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    .line 54083
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:I

    .line 54084
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TP;->A02:Lcom/facebook/ads/redexgen/X/Ln;

    .line 54085
    return-void
.end method


# virtual methods
.method public final AD2(Ljava/lang/String;)V
    .locals 1

    .line 54086
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:I

    if-lez v0, :cond_0

    .line 54087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ln;->AD2(Ljava/lang/String;)V

    .line 54088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ln;->flush()V

    .line 54089
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:I

    .line 54090
    :goto_0
    return-void

    .line 54091
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A02:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ln;->AD2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 54092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A02:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ln;->flush()V

    .line 54093
    return-void
.end method
