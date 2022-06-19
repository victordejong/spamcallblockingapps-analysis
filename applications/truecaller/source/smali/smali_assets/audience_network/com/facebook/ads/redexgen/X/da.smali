.class public final Lcom/facebook/ads/redexgen/X/da;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/de;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Landroid/graphics/Rect;

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/Rn;

.field public final A06:Lcom/facebook/ads/redexgen/X/dl;

.field public final A07:Lcom/facebook/ads/redexgen/X/dc;

.field public final A08:Lcom/facebook/ads/redexgen/X/G3;

.field public final A09:Ljava/lang/Runnable;

.field public final A0A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YcCIPLCDTe1wGTKdO7xqYhpFwQzvmXtt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "FfIdHaSVTal814YVh5tJNVr21T0wsSAo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HLDls6wic6LzndIKtUvgWnGJ4QMP07cO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ccYpD8PuArRKO9YkPTuVfhIh5pDN1br2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LFFD576NBTVByEN649EglQB81U0zBBuc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sO5gz1O188I9hNkbLLxzl8j4JWiDgVKK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Hord6YvHX1lmSPmhXyMRW660HCYjcXOm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5HbQDpK1pfSpB47EOovGOWVGJlrw1BSl"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/da;->A0D:[Ljava/lang/String;

    .line 73933
    invoke-static {}, Lcom/facebook/ads/redexgen/X/da;->A04()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/redexgen/X/G3;Lcom/facebook/ads/redexgen/X/dc;Landroid/os/Handler;)V
    .locals 7

    .line 73934
    const/16 v6, 0x64

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/da;-><init>(Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/redexgen/X/G3;Lcom/facebook/ads/redexgen/X/dc;Landroid/os/Handler;I)V

    .line 73935
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dl;Lcom/facebook/ads/redexgen/X/Rn;Lcom/facebook/ads/redexgen/X/G3;Lcom/facebook/ads/redexgen/X/dc;Landroid/os/Handler;I)V
    .locals 1

    .line 73936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73937
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A03:Landroid/graphics/Rect;

    .line 73938
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A02:Landroid/graphics/Rect;

    .line 73939
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0B:Ljava/util/List;

    .line 73940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0A:Ljava/util/List;

    .line 73941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/da;->A01:Z

    .line 73942
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/da;->A06:Lcom/facebook/ads/redexgen/X/dl;

    .line 73943
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/da;->A05:Lcom/facebook/ads/redexgen/X/Rn;

    .line 73944
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    .line 73945
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/da;->A07:Lcom/facebook/ads/redexgen/X/dc;

    .line 73946
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/da;->A04:Landroid/os/Handler;

    .line 73947
    new-instance v0, Lcom/facebook/ads/redexgen/X/db;

    invoke-direct {v0, p0, p6}, Lcom/facebook/ads/redexgen/X/db;-><init>(Lcom/facebook/ads/redexgen/X/da;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A09:Ljava/lang/Runnable;

    .line 73948
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/da;)Landroid/os/Handler;
    .locals 0

    .line 73949
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/da;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/da;)Lcom/facebook/ads/redexgen/X/Rn;
    .locals 0

    .line 73950
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/da;->A05:Lcom/facebook/ads/redexgen/X/Rn;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/da;)Ljava/lang/Runnable;
    .locals 0

    .line 73951
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/da;->A09:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/da;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x49

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/da;->A0C:[B

    return-void

    :array_0
    .array-data 1
        -0x4t
        -0x5t
        -0x20t
        -0x10t
        -0x12t
        -0x5t
        -0x2et
        -0x5t
        -0xft
    .end array-data
.end method

.method private A05(J)V
    .locals 2

    .line 73952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 73953
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A06:Lcom/facebook/ads/redexgen/X/dl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0A:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dl;->A7j(Ljava/util/List;)V

    .line 73954
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0A:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/G3;->A3o(JLjava/util/List;)V

    .line 73955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/G3;->A5B()V

    .line 73956
    return-void
.end method

.method private A06(J)V
    .locals 7

    .line 73957
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A06:Lcom/facebook/ads/redexgen/X/dl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0A:Ljava/util/List;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dl;->A7j(Ljava/util/List;)V

    .line 73958
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0A:Ljava/util/List;

    invoke-interface {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/G3;->A3o(JLjava/util/List;)V

    .line 73959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkState(Z)V

    .line 73960
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A07:Lcom/facebook/ads/redexgen/X/dc;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0B:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/dc;->A03(Ljava/util/Collection;)V

    .line 73961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 73962
    .local p1, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A07:Lcom/facebook/ads/redexgen/X/dc;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/dc;->A00(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/dj;

    move-result-object v4

    .line 73963
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 73964
    .local v0, "containerRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A03:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A02:Landroid/graphics/Rect;

    invoke-static {v5, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/dT;->A00(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/dj;->A06:Lcom/facebook/ads/redexgen/X/dj;

    if-eq v4, v0, :cond_1

    .line 73965
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A03:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A02:Landroid/graphics/Rect;

    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/G3;->A3I(Lcom/facebook/ads/redexgen/X/dj;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 73966
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/G3;->A5B()V

    .line 73967
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/da;->A00:Lcom/facebook/ads/redexgen/X/de;

    sget-object v1, Lcom/facebook/ads/redexgen/X/da;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/da;->A0D:[Ljava/lang/String;

    const-string v1, "BhrT0c14O8Thrmtg3HRzOfRcpCyh5HNl"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_4

    .line 73968
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/da;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73969
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73970
    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/da;J)V
    .locals 0

    .line 73971
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/da;->A06(J)V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/da;)Z
    .locals 0

    .line 73972
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/da;->A01:Z

    return p0
.end method


# virtual methods
.method public final A09()V
    .locals 2

    .line 73973
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/da;->A01:Z

    if-eqz v0, :cond_0

    .line 73974
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A09:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73975
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A05:Lcom/facebook/ads/redexgen/X/Rn;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Rn;->A9Y()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/da;->A05(J)V

    .line 73976
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/da;->A01:Z

    .line 73977
    return-void
.end method

.method public final A0A()V
    .locals 2

    .line 73978
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/da;->A01:Z

    if-nez v0, :cond_0

    .line 73979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/da;->A01:Z

    .line 73980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/da;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A09:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73981
    :cond_0
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/dg;)V
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/dg;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/da;->A08:Lcom/facebook/ads/redexgen/X/G3;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/G3;->AEY(Lcom/facebook/ads/redexgen/X/dg;)V

    .line 73983
    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/de;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/de;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 73984
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/da;->A00:Lcom/facebook/ads/redexgen/X/de;

    .line 73985
    return-void
.end method
