.class public final Lcom/facebook/ads/redexgen/X/Gx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StyleMatch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/Gx;",
        ">;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Gt;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Gt;)V
    .locals 0

    .line 36079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36080
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Gx;->A00:I

    .line 36081
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Gx;->A01:Lcom/facebook/ads/redexgen/X/Gt;

    .line 36082
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Gx;)I
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/Gx;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36083
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Gx;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Gx;->A00:I

    sub-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36084
    check-cast p1, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Gx;->A00(Lcom/facebook/ads/redexgen/X/Gx;)I

    move-result v0

    return v0
.end method
