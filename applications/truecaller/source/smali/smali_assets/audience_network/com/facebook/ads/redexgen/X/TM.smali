.class public final Lcom/facebook/ads/redexgen/X/TM;
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
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Ln;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ln;I)V
    .locals 0

    .line 54037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54038
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    .line 54039
    iput p2, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:I

    .line 54040
    return-void
.end method


# virtual methods
.method public final AD2(Ljava/lang/String;)V
    .locals 1

    .line 54041
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:I

    if-lez v0, :cond_0

    .line 54042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ln;->AD2(Ljava/lang/String;)V

    .line 54043
    iget v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A00:I

    .line 54044
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 54045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TM;->A01:Lcom/facebook/ads/redexgen/X/Ln;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ln;->flush()V

    .line 54046
    return-void
.end method
