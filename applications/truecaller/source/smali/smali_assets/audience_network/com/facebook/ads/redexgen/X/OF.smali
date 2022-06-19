.class public final Lcom/facebook/ads/redexgen/X/OF;
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
        "Lcom/facebook/ads/redexgen/X/7v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7x;)V
    .locals 0

    .line 46923
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OF;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 3

    .line 46924
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Mj;->A00()I

    move-result v2

    .line 46925
    .local p0, "currentPosition":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7v;->A01()I

    move-result v1

    .line 46926
    .local p1, "duration":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OF;->A00:Lcom/facebook/ads/redexgen/X/7x;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    if-lez v0, :cond_0

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OF;->A00:Lcom/facebook/ads/redexgen/X/7x;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    if-le v1, v0, :cond_0

    .line 46927
    return-void

    .line 46928
    :cond_0
    add-int/lit16 v0, v2, 0x1f4

    if-ge v1, v0, :cond_2

    .line 46929
    if-nez v1, :cond_1

    .line 46930
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OF;->A00:Lcom/facebook/ads/redexgen/X/7x;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/7x;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ms;->A0d(I)V

    .line 46931
    :goto_0
    return-void

    .line 46932
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OF;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ms;->A0d(I)V

    goto :goto_0

    .line 46933
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OF;->A00:Lcom/facebook/ads/redexgen/X/7x;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ms;->A0d(I)V

    goto :goto_0
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

    .line 46934
    const-class v0, Lcom/facebook/ads/redexgen/X/7v;

    return-object v0
.end method

.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 46935
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/OF;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
