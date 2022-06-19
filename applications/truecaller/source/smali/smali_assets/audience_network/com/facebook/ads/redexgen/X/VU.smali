.class public final Lcom/facebook/ads/redexgen/X/VU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Dd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/VS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/VS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/VS;)V
    .locals 2

    .line 58837
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:Lcom/facebook/ads/redexgen/X/VS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58838
    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IU;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/IU;

    .line 58839
    return-void
.end method


# virtual methods
.method public final A46(Lcom/facebook/ads/redexgen/X/IV;)V
    .locals 7

    .line 58840
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    .line 58841
    .local p0, "tableId":I
    if-eqz v0, :cond_0

    .line 58842
    return-void

    .line 58843
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 58844
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A04()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    .line 58845
    .local p1, "programCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 58846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/IV;->A0a(Lcom/facebook/ads/redexgen/X/IU;I)V

    .line 58847
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/IU;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v2

    .line 58848
    .local v6, "programNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/IU;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58849
    const/16 v1, 0xd

    if-nez v2, :cond_1

    .line 58850
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A08(I)V

    .line 58851
    .end local v6    # "programNumber":I
    .end local v5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58852
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/IU;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IU;->A04(I)I

    move-result v3

    .line 58853
    .local v5, "pid":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A07(Lcom/facebook/ads/redexgen/X/VS;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:Lcom/facebook/ads/redexgen/X/VS;

    new-instance v1, Lcom/facebook/ads/redexgen/X/VT;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VT;-><init>(Lcom/facebook/ads/redexgen/X/VS;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VX;-><init>(Lcom/facebook/ads/redexgen/X/Dd;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A01(Lcom/facebook/ads/redexgen/X/VS;)I

    goto :goto_1

    .line 58855
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A02(Lcom/facebook/ads/redexgen/X/VS;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 58856
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:Lcom/facebook/ads/redexgen/X/VS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VS;->A07(Lcom/facebook/ads/redexgen/X/VS;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 58857
    :cond_3
    return-void
.end method

.method public final A8C(Lcom/facebook/ads/redexgen/X/Ih;Lcom/facebook/ads/redexgen/X/CR;Lcom/facebook/ads/redexgen/X/Dj;)V
    .locals 0

    .line 58858
    return-void
.end method
