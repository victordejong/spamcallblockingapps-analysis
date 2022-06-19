.class public final Lcom/facebook/ads/redexgen/X/V5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/G9;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/CS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/HQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/HQ;)V
    .locals 1

    .line 57815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57816
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V5;->A06:Lcom/facebook/ads/redexgen/X/HQ;

    .line 57817
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A01:I

    .line 57818
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A00:I

    .line 57819
    return-void
.end method


# virtual methods
.method public final A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/Bc;
    .locals 9

    .line 57820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A05:Z

    .line 57821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/CS;

    if-nez v0, :cond_0

    .line 57822
    new-instance v0, Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/CS;

    .line 57823
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bc;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V5;->A06:Lcom/facebook/ads/redexgen/X/HQ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/V5;->A02:Lcom/facebook/ads/redexgen/X/CS;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/V5;->A01:I

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/V5;->A04:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/V5;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/V5;->A03:Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Bc;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/CS;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/FJ;)V

    return-object v0
.end method
