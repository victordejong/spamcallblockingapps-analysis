.class public final Lcom/facebook/ads/redexgen/X/Wt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordFileBasedFetch"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/9i;",
            ">;"
        }
    .end annotation
.end field

.field public final A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ws;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ws;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/9Z;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65331
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    .local v5, "fetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wt;->A02:Lcom/facebook/ads/redexgen/X/Ws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65332
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Wt;->A01:Z

    .line 65333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Ljava/util/List;

    .line 65334
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9Z;

    .line 65335
    .local p0, "fetch":Lcom/facebook/ads/redexgen/X/9Z;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Z;->A01()Lcom/facebook/ads/redexgen/X/9Y;

    move-result-object v5

    .line 65336
    .local p1, "fileFetchResult":Lcom/facebook/ads/redexgen/X/9Y;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Ljava/util/List;

    .line 65337
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9Z;->A00()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Y;->A01()I

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/9W;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9W;-><init>(II)V

    .line 65338
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Y;->A00()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Y;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 65339
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/9Y;->A00()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9i;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/9i;-><init>(Lcom/facebook/ads/redexgen/X/9W;II)V

    .line 65340
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65341
    .end local p0    # "fetch":Lcom/facebook/ads/redexgen/X/9Z;
    .end local p1    # "fileFetchResult":Lcom/facebook/ads/redexgen/X/9Y;
    goto :goto_0

    .line 65342
    :cond_0
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/9i;
    .locals 2

    .line 65343
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/9i;
    .locals 2

    .line 65344
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    return-object v0
.end method

.method public final A4g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9n;
        }
    .end annotation

    .line 65345
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A02:Lcom/facebook/ads/redexgen/X/Ws;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Ws;->A04(Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Wt;)V

    .line 65346
    return-void
.end method

.method public final declared-synchronized A5K()I
    .locals 3

    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 65347
    const/4 v2, 0x0

    .line 65348
    .local p0, "count":I
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9i;

    .line 65349
    .local v0, "location":Lcom/facebook/ads/redexgen/X/9i;
    iget v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A01:I

    add-int/2addr v2, v0

    .line 65350
    .end local v0    # "location":Lcom/facebook/ads/redexgen/X/9i;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65351
    .end local v0
    :cond_0
    monitor-exit p0

    return v2

    .line 65352
    .end local p0    # "count":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A9L()Z
    .locals 1

    .line 65353
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A01:Z

    return v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65354
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Wt;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wt;->A02:Lcom/facebook/ads/redexgen/X/Ws;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Ws;->A07(Lcom/facebook/ads/redexgen/X/Ws;Lcom/facebook/ads/redexgen/X/Wt;)Z

    .line 65355
    return-void
.end method
