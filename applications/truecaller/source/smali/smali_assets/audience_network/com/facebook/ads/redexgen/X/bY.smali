.class public final Lcom/facebook/ads/redexgen/X/bY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eq;->A0f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 0

    .line 69318
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3h;)V
    .locals 5

    .line 69319
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3h;->A00:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 69320
    :goto_0
    return-void

    .line 69321
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/4M;->A1S(Lcom/facebook/ads/redexgen/X/Eq;III)V

    goto :goto_0

    .line 69322
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3h;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1T(Lcom/facebook/ads/redexgen/X/Eq;IILjava/lang/Object;)V

    .line 69323
    goto :goto_0

    .line 69324
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1R(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 69325
    goto :goto_0

    .line 69326
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3h;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3h;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A1Q(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 69327
    goto :goto_0
.end method


# virtual methods
.method public final A5N(I)Lcom/facebook/ads/redexgen/X/4e;
    .locals 4

    .line 69328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1G(IZ)Lcom/facebook/ads/redexgen/X/4e;

    move-result-object v3

    .line 69329
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4e;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 69330
    return-object v2

    .line 69331
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A01:Lcom/facebook/ads/redexgen/X/3k;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3k;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69332
    return-object v2

    .line 69333
    :cond_1
    return-object v3
.end method

.method public final A9K(IILjava/lang/Object;)V
    .locals 2

    .line 69334
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eq;->A1f(IILjava/lang/Object;)V

    .line 69335
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0H:Z

    .line 69336
    return-void
.end method

.method public final A9d(II)V
    .locals 2

    .line 69337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A1c(II)V

    .line 69338
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 69339
    return-void
.end method

.method public final A9e(II)V
    .locals 2

    .line 69340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A1d(II)V

    .line 69341
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 69342
    return-void
.end method

.method public final A9f(II)V
    .locals 2

    .line 69343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A1g(IIZ)V

    .line 69344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 69345
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4b;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4b;->A00:I

    add-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4b;->A00:I

    .line 69346
    return-void
.end method

.method public final A9g(II)V
    .locals 2

    .line 69347
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1g(IIZ)V

    .line 69348
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bY;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0G:Z

    .line 69349
    return-void
.end method

.method public final AAJ(Lcom/facebook/ads/redexgen/X/3h;)V
    .locals 0

    .line 69350
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bY;->A00(Lcom/facebook/ads/redexgen/X/3h;)V

    .line 69351
    return-void
.end method

.method public final AAL(Lcom/facebook/ads/redexgen/X/3h;)V
    .locals 0

    .line 69352
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bY;->A00(Lcom/facebook/ads/redexgen/X/3h;)V

    .line 69353
    return-void
.end method
