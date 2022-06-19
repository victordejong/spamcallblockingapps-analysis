.class Lcom/google/common/collect/n;
.super Lcom/google/common/collect/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient p:[J

.field private transient q:I

.field private transient r:I

.field private final s:Z


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/n;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/n;-><init>(IZ)V

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/l;-><init>(I)V

    .line 4
    iput-boolean p2, p0, Lcom/google/common/collect/n;->s:Z

    return-void
.end method

.method public static K()Lcom/google/common/collect/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/n<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/n;

    invoke-direct {v0}, Lcom/google/common/collect/n;-><init>()V

    return-object v0
.end method

.method private L(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n;->p:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private M(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n;->p:[J

    aget-wide v1, v0, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method

.method private N(II)V
    .locals 1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/n;->q:I

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/n;->O(II)V

    :goto_0
    if-ne p2, v0, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/n;->r:I

    goto :goto_1

    .line 4
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/n;->M(II)V

    :goto_1
    return-void
.end method

.method private O(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n;->p:[J

    aget-wide v1, v0, p1

    const-wide v3, -0x100000000L

    and-long/2addr v1, v3

    add-int/lit8 p2, p2, 0x1

    int-to-long v3, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    return-void
.end method


# virtual methods
.method A(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/l;->A(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 2
    iget p2, p0, Lcom/google/common/collect/n;->r:I

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/n;->N(II)V

    const/4 p2, -0x2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/n;->N(II)V

    return-void
.end method

.method C(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/l;->C(II)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/common/collect/n;->L(I)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n;->v(I)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/n;->N(II)V

    if-ge p1, v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/google/common/collect/n;->L(I)I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/n;->N(II)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/collect/n;->v(I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/n;->N(II)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/n;->p:[J

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    return-void
.end method

.method F(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/l;->F(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n;->p:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/n;->p:[J

    return-void
.end method

.method public clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/n;->q:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/n;->r:I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/n;->p:[J

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 6
    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/l;->clear()V

    return-void
.end method

.method i(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/n;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/n;->L(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n;->v(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/n;->N(II)V

    .line 3
    iget v0, p0, Lcom/google/common/collect/n;->r:I

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/n;->N(II)V

    const/4 v0, -0x2

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/n;->N(II)V

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/l;->x()V

    :cond_0
    return-void
.end method

.method j(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/l;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method k()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/l;->k()I

    move-result v0

    .line 2
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/n;->p:[J

    return v0
.end method

.method l()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/l;->l()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/common/collect/n;->p:[J

    return-object v0
.end method

.method o(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-boolean v1, p0, Lcom/google/common/collect/n;->s:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/n;->q:I

    return v0
.end method

.method v(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/n;->p:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method z(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/l;->z(I)V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/google/common/collect/n;->q:I

    .line 3
    iput p1, p0, Lcom/google/common/collect/n;->r:I

    return-void
.end method
