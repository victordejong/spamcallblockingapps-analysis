.class public Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final accessOrder:Z

.field public transient firstEntry:I

.field public transient lastEntry:I

.field public transient links:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    return-void
.end method


# virtual methods
.method public accessEntry(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 3
    aget-wide v2, v0, p1

    long-to-int v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 5
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 v0, -0x2

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    :cond_0
    return-void
.end method

.method public adjustAfterRemove(II)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public allocArrays()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()I

    move-result v0

    .line 2
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    return v0
.end method

.method public clear()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 3
    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 6
    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    return-object v0
.end method

.method public createHashFloodingResistantDelegate(I)Ljava/util/Map;
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

    iget-boolean v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->accessOrder:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method

.method public firstEntryIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    return v0
.end method

.method public final getPredecessor(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    long-to-int p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public getSuccessor(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, v0, p1

    long-to-int p1, v1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public init(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    const/4 p1, -0x2

    .line 2
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    .line 3
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    return-void
.end method

.method public insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    const/4 v1, 0x0

    invoke-static {p4, v1, p5}, Ln3/g0/y;->maskCombine(III)I

    move-result p4

    aput p4, v0, p1

    .line 2
    iget-object p4, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, p4, p1

    .line 3
    iget-object p2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object p3, p2, p1

    .line 4
    iget p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    const/4 p2, -0x2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    return-void
.end method

.method public moveLastEntry(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 3
    iget-object p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v1, p2, p1

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    aget-wide v2, p2, p1

    long-to-int p2, v2

    add-int/lit8 p2, p2, -0x1

    .line 5
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    if-ge p1, v0, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getPredecessor(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->getSuccessor(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->setSucceeds(II)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    const-wide/16 v1, 0x0

    aput-wide v1, p1, v0

    return-void
.end method

.method public resizeEntries(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    return-void
.end method

.method public final setSucceeds(II)V
    .locals 8

    const-wide v0, 0xffffffffL

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    .line 1
    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->firstEntry:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v4, v3, p1

    const-wide v6, -0x100000000L

    and-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    int-to-long v6, v6

    and-long/2addr v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v3, p1

    :goto_0
    if-ne p2, v2, :cond_1

    .line 3
    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->lastEntry:I

    goto :goto_1

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->links:[J

    aget-wide v3, v2, p2

    and-long/2addr v0, v3

    add-int/lit8 p1, p1, 0x1

    int-to-long v3, p1

    const/16 p1, 0x20

    shl-long/2addr v3, p1

    or-long/2addr v0, v3

    aput-wide v0, v2, p2

    :goto_1
    return-void
.end method
