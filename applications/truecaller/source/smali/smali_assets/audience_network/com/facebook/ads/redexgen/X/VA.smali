.class public abstract Lcom/facebook/ads/redexgen/X/VA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FN;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Wo;

.field public A01:Lcom/facebook/ads/redexgen/X/Ao;

.field public A02:Ljava/lang/Object;

.field public final A03:Lcom/facebook/ads/redexgen/X/FY;

.field public final A04:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/FM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57927
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A04:Ljava/util/ArrayList;

    .line 57928
    new-instance v0, Lcom/facebook/ads/redexgen/X/FY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FY;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A03:Lcom/facebook/ads/redexgen/X/FY;

    .line 57929
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/FL;)Lcom/facebook/ads/redexgen/X/FY;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/FL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57930
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VA;->A03:Lcom/facebook/ads/redexgen/X/FY;

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/FY;->A02(ILcom/facebook/ads/redexgen/X/FL;J)Lcom/facebook/ads/redexgen/X/FY;

    move-result-object v0

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57931
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VA;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    .line 57932
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VA;->A02:Ljava/lang/Object;

    .line 57933
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FM;

    .line 57934
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/FM;
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FM;->AC6(Lcom/facebook/ads/redexgen/X/FN;Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V

    .line 57935
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/FM;
    goto :goto_0

    .line 57936
    :cond_0
    return-void
.end method

.method public abstract A02()V
.end method

.method public abstract A03(Lcom/facebook/ads/redexgen/X/Wo;Z)V
.end method

.method public final A3B(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 1

    .line 57937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A03:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/FY;->A07(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 57938
    return-void
.end method

.method public final AD1(Lcom/facebook/ads/redexgen/X/Wo;ZLcom/facebook/ads/redexgen/X/FM;)V
    .locals 2

    .line 57939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A00:Lcom/facebook/ads/redexgen/X/Wo;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 57940
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57941
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A00:Lcom/facebook/ads/redexgen/X/Wo;

    if-nez v0, :cond_2

    .line 57942
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VA;->A00:Lcom/facebook/ads/redexgen/X/Wo;

    .line 57943
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VA;->A03(Lcom/facebook/ads/redexgen/X/Wo;Z)V

    .line 57944
    :cond_1
    :goto_1
    return-void

    .line 57945
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VA;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    if-eqz v1, :cond_1

    .line 57946
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A02:Ljava/lang/Object;

    invoke-interface {p3, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FM;->AC6(Lcom/facebook/ads/redexgen/X/FN;Lcom/facebook/ads/redexgen/X/Ao;Ljava/lang/Object;)V

    goto :goto_1

    .line 57947
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADZ(Lcom/facebook/ads/redexgen/X/FM;)V
    .locals 1

    .line 57948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 57949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A00:Lcom/facebook/ads/redexgen/X/Wo;

    .line 57951
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A01:Lcom/facebook/ads/redexgen/X/Ao;

    .line 57952
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A02:Ljava/lang/Object;

    .line 57953
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/VA;->A02()V

    .line 57954
    :cond_0
    return-void
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Fb;)V
    .locals 1

    .line 57955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VA;->A03:Lcom/facebook/ads/redexgen/X/FY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/FY;->A0D(Lcom/facebook/ads/redexgen/X/Fb;)V

    .line 57956
    return-void
.end method
