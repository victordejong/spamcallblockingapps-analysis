.class public Le/a/q2/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q2/d0$b;,
        Le/a/q2/d0$c;
    }
.end annotation


# static fields
.field public static final f:J

.field public static final g:J


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Le/a/q2/b1/d;

.field public final e:Le/a/q2/b1/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Le/a/q2/d0;->f:J

    const-wide/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Le/a/q2/d0;->g:J

    return-void
.end method

.method public constructor <init>(Le/a/q2/b1/a;Le/a/q2/b1/d;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q2/d0;->e:Le/a/q2/b1/a;

    const-string v0, "uploadEventsMaxBatchSize"

    const/16 v1, 0x64

    .line 3
    invoke-interface {p1, v0, v1}, Le/a/q2/b1/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Le/a/q2/d0;->a:I

    const-string v0, "uploadEventsMinBatchSize"

    .line 4
    invoke-interface {p1, v0, v1}, Le/a/q2/b1/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Le/a/q2/d0;->b:I

    const-string v0, "uploadEventsRetryJitter"

    const-wide/16 v1, 0x2710

    .line 5
    invoke-interface {p1, v0, v1, v2}, Le/a/q2/b1/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Le/a/q2/d0;->c:J

    .line 6
    iput-object p2, p0, Le/a/q2/d0;->d:Le/a/q2/b1/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Le/a/q2/i;Lu3/e0;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/q2/d0;->e:Le/a/q2/b1/a;

    const-string v1, "analyticsUploadEnhancedBatchSize"

    iget v2, p0, Le/a/q2/d0;->a:I

    invoke-interface {v0, v1, v2}, Le/a/q2/b1/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Le/a/q2/i;->a()Lu3/z;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4
    monitor-exit p0

    return v3

    :cond_0
    move v2, v3

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    iget-object v4, p0, Le/a/q2/d0;->d:Le/a/q2/b1/d;

    invoke-interface {v4, v0}, Le/a/q2/b1/d;->b(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_a

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/q2/b1/c;

    .line 8
    iget-object v7, v7, Le/a/q2/b1/c;->b:[B

    .line 9
    invoke-static {v7}, Le/a/q2/y;->a([B)Lcom/truecaller/tracking/events/EventRecordVersionedV2;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    iget-object v5, p0, Le/a/q2/d0;->d:Le/a/q2/b1/d;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/b1/c;

    .line 13
    iget-wide v6, v4, Le/a/q2/b1/c;->a:J

    .line 14
    invoke-interface {v5, v6, v7}, Le/a/q2/b1/d;->c(J)I

    goto :goto_0

    :cond_4
    move v5, v3

    move v7, v5

    :goto_2
    const/4 v8, 0x3

    if-ge v5, v8, :cond_8

    .line 15
    invoke-virtual {p0, p1, p2, v1}, Le/a/q2/d0;->e(Le/a/q2/i;Lu3/e0;Ljava/util/ArrayList;)Le/a/q2/d0$c;

    move-result-object v7

    .line 16
    iget-boolean v8, v7, Le/a/q2/d0$c;->a:Z

    if-eqz v8, :cond_5

    .line 17
    iget-object v5, p0, Le/a/q2/d0;->d:Le/a/q2/b1/d;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/b1/c;

    .line 18
    iget-wide v9, v4, Le/a/q2/b1/c;->a:J

    .line 19
    invoke-interface {v5, v9, v10}, Le/a/q2/b1/d;->c(J)I

    add-int/2addr v2, v0

    .line 20
    iget-wide v4, v7, Le/a/q2/d0$c;->b:J

    invoke-virtual {p0, v0, v4, v5, v6}, Le/a/q2/d0;->d(IJZ)I

    move-result v0

    move v7, v8

    goto :goto_3

    .line 21
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upload failed. Server response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v10, v7, Le/a/q2/d0$c;->c:Ljava/lang/Integer;

    if-nez v10, :cond_6

    const-string v10, "none"

    :cond_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    iget-wide v9, v7, Le/a/q2/d0$c;->b:J

    invoke-virtual {p0, v0, v9, v10, v3}, Le/a/q2/d0;->d(IJZ)I

    move-result v0

    .line 24
    invoke-virtual {p0, v5, v7}, Le/a/q2/d0;->c(ILe/a/q2/d0$c;)Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_7

    .line 25
    monitor-exit p0

    return v3

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v7, v8

    goto :goto_2

    :cond_8
    :goto_3
    if-nez v7, :cond_9

    .line 26
    monitor-exit p0

    return v3

    :cond_9
    const/16 v4, 0x7d0

    if-lt v2, v4, :cond_1

    .line 27
    :cond_a
    monitor-exit p0

    return v6

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Le/a/q2/i;Lu3/e0;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q2/i;",
            "Lu3/e0;",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/tracking/events/EventRecordVersionedV2;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Le/a/q2/d0;->e(Le/a/q2/i;Lu3/e0;Ljava/util/ArrayList;)Le/a/q2/d0$c;

    move-result-object v2

    .line 2
    iget-boolean v3, v2, Le/a/q2/d0$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 3
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload failed. Server response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v4, v2, Le/a/q2/d0$c;->c:Ljava/lang/Integer;

    if-nez v4, :cond_1

    const-string v4, "none"

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v1, v2}, Le/a/q2/d0;->c(ILe/a/q2/d0$c;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    .line 7
    monitor-exit p0

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 8
    :cond_3
    monitor-exit p0

    return v0
.end method

.method public final c(ILe/a/q2/d0$c;)Z
    .locals 6

    .line 1
    iget-object p2, p2, Le/a/q2/d0$c;->c:Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v2, 0x1f4

    if-lt p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double p1, p1

    .line 2
    :try_start_0
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    mul-double/2addr p1, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-wide v4, p0, Le/a/q2/d0;->c:J

    long-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v2, p1

    double-to-long p1, v2

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    return v1
.end method

.method public final d(IJZ)I
    .locals 2

    if-eqz p4, :cond_2

    .line 1
    sget-wide v0, Le/a/q2/d0;->g:J

    cmp-long p4, p2, v0

    if-lez p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-wide v0, Le/a/q2/d0;->f:J

    cmp-long p2, p2, v0

    if-gez p2, :cond_1

    mul-int/lit16 p2, p1, 0x85

    .line 3
    div-int/lit8 p2, p2, 0x64

    iget p3, p0, Le/a/q2/d0;->a:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_1
    move p2, p1

    goto :goto_1

    :cond_2
    :goto_0
    mul-int/lit8 p2, p1, 0x42

    .line 4
    div-int/lit8 p2, p2, 0x64

    iget p3, p0, Le/a/q2/d0;->b:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    if-eq p1, p2, :cond_3

    .line 5
    iget-object p1, p0, Le/a/q2/d0;->e:Le/a/q2/b1/a;

    const-string p3, "analyticsUploadEnhancedBatchSize"

    invoke-interface {p1, p3, p2}, Le/a/q2/b1/a;->putInt(Ljava/lang/String;I)V

    :cond_3
    return p2
.end method

.method public final e(Le/a/q2/i;Lu3/e0;Ljava/util/ArrayList;)Le/a/q2/d0$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/q2/i;",
            "Lu3/e0;",
            "Ljava/util/ArrayList<",
            "Lcom/truecaller/tracking/events/EventRecordVersionedV2;",
            ">;)",
            "Le/a/q2/d0$c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/q2/d0$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/q2/d0$c;-><init>(Le/a/q2/d0;Le/a/q2/d0$a;)V

    .line 2
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 4
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->BATCHLOG:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v2}, Lcom/truecaller/common/network/util/KnownEndpoints;->url()Lu3/a0;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lu3/a0;->f()Lu3/a0$a;

    move-result-object v2

    const-string v3, "/v5/events"

    const-string v4, "encodedPath"

    .line 10
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const-string v5, "/"

    const/4 v6, 0x0

    .line 11
    invoke-static {v3, v5, v6, v4}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0xa

    .line 12
    invoke-virtual {v2, v3, v6, v4}, Lu3/a0$a;->i(Ljava/lang/String;II)V

    .line 13
    invoke-virtual {v2}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Le/a/q2/i;->a()Lu3/z;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 15
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uploading events to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ". Batch size: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    new-instance v5, Le/a/q2/d0$b;

    .line 18
    sget-object v7, Lcom/truecaller/tracking/events/PacketVersionedV2;->b:Lorg/apache/avro/Schema;

    new-instance v7, Lcom/truecaller/tracking/events/PacketVersionedV2$b;

    invoke-direct {v7, v1}, Lcom/truecaller/tracking/events/PacketVersionedV2$b;-><init>(Lcom/truecaller/tracking/events/PacketVersionedV2$a;)V

    .line 19
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v7, v1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-object p3, v7, Lcom/truecaller/tracking/events/PacketVersionedV2$b;->a:Ljava/util/List;

    .line 21
    invoke-virtual {v7}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p3

    const/4 v1, 0x1

    aput-boolean v1, p3, v6

    .line 22
    invoke-virtual {v7}, Lcom/truecaller/tracking/events/PacketVersionedV2$b;->a()Lcom/truecaller/tracking/events/PacketVersionedV2;

    move-result-object p3

    invoke-direct {v5, p3}, Le/a/q2/d0$b;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    .line 23
    new-instance p3, Lu3/g0$a;

    invoke-direct {p3}, Lu3/g0$a;-><init>()V

    .line 24
    invoke-virtual {p3, v5}, Lu3/g0$a;->f(Lu3/j0;)Lu3/g0$a;

    .line 25
    invoke-virtual {p3, p1}, Lu3/g0$a;->d(Lu3/z;)Lu3/g0$a;

    const-string p1, "Content-Encoding"

    const-string v1, "gzip"

    const-string v5, "name"

    .line 26
    invoke-static {p1, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "value"

    invoke-static {v1, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v5, p3, Lu3/g0$a;->c:Lu3/z$a;

    invoke-virtual {v5, p1, v1}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 28
    invoke-virtual {p3, v2}, Lu3/g0$a;->j(Lu3/a0;)Lu3/g0$a;

    .line 29
    invoke-virtual {p3}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object p1

    check-cast p1, Lu3/p0/g/e;

    invoke-virtual {p1}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object p1

    .line 30
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v3

    iput-wide p2, v0, Le/a/q2/d0$c;->b:J

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1}, Lu3/k0;->j()Z

    move-result p2

    iput-boolean p2, v0, Le/a/q2/d0$c;->a:Z

    .line 32
    iget p2, p1, Lu3/k0;->e:I

    .line 33
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Le/a/q2/d0$c;->c:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1}, Lu3/k0;->close()V

    :cond_5
    return-object v0

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 35
    :try_start_1
    invoke-virtual {p1}, Lu3/k0;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    throw p2

    .line 36
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unexpected encodedPath: /v5/events"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
