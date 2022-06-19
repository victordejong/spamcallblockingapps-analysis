.class public final Le/m/a/c/l1/s$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/l1/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final synthetic b:Le/m/a/c/l1/s;


# direct methods
.method public constructor <init>(Le/m/a/c/l1/s;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/l1/s$e;->b:Le/m/a/c/l1/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/m/a/c/l1/s$e;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s$e;->b:Le/m/a/c/l1/s;

    iget v1, p0, Le/m/a/c/l1/s$e;->a:I

    .line 2
    iget-object v2, v0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v1, v2, v1

    .line 3
    iget-object v2, v1, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Le/m/a/c/f1/c;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v1, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    invoke-interface {v0}, Le/m/a/c/f1/c;->b()Le/m/a/c/f1/c$a;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    throw v0

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Le/m/a/c/l1/s;->y()V

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s$e;->b:Le/m/a/c/l1/s;

    iget v1, p0, Le/m/a/c/l1/s$e;->a:I

    .line 2
    invoke-virtual {v0}, Le/m/a/c/l1/s;->B()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v1, v2, v1

    iget-boolean v0, v0, Le/m/a/c/l1/s;->O:Z

    invoke-virtual {v1, v0}, Le/m/a/c/l1/v;->m(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(J)I
    .locals 10

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s$e;->b:Le/m/a/c/l1/s;

    iget v1, p0, Le/m/a/c/l1/s$e;->a:I

    .line 2
    invoke-virtual {v0}, Le/m/a/c/l1/s;->B()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Le/m/a/c/l1/s;->w(I)V

    .line 4
    iget-object v2, v0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v2, v2, v1

    .line 5
    iget-boolean v4, v0, Le/m/a/c/l1/s;->O:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Le/m/a/c/l1/v;->h()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget p1, v2, Le/m/a/c/l1/v;->o:I

    iget p2, v2, Le/m/a/c/l1/v;->r:I

    sub-int p2, p1, p2

    .line 8
    iput p1, v2, Le/m/a/c/l1/v;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v2

    move v3, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 10
    :cond_1
    monitor-enter v2

    .line 11
    :try_start_1
    iget v4, v2, Le/m/a/c/l1/v;->r:I

    invoke-virtual {v2, v4}, Le/m/a/c/l1/v;->j(I)I

    move-result v5

    .line 12
    invoke-virtual {v2}, Le/m/a/c/l1/v;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v2, Le/m/a/c/l1/v;->l:[J

    aget-wide v6, v4, v5

    cmp-long v4, p1, v6

    if-gez v4, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget v4, v2, Le/m/a/c/l1/v;->o:I

    iget v6, v2, Le/m/a/c/l1/v;->r:I

    sub-int v6, v4, v6

    const/4 v9, 0x1

    move-object v4, v2

    move-wide v7, p1

    .line 14
    invoke-virtual/range {v4 .. v9}, Le/m/a/c/l1/v;->g(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 15
    monitor-exit v2

    goto :goto_1

    .line 16
    :cond_3
    :try_start_2
    iget p2, v2, Le/m/a/c/l1/v;->r:I

    add-int/2addr p2, p1

    iput p2, v2, Le/m/a/c/l1/v;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 17
    monitor-exit v2

    move v3, p1

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    monitor-exit v2

    :goto_1
    if-nez v3, :cond_5

    .line 19
    invoke-virtual {v0, v1}, Le/m/a/c/l1/s;->x(I)V

    :cond_5
    :goto_2
    return v3

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v2

    throw p1
.end method

.method public d(Le/m/a/c/g0;Le/m/a/c/e1/e;Z)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Le/m/a/c/l1/s$e;->b:Le/m/a/c/l1/s;

    iget v4, v1, Le/m/a/c/l1/s$e;->a:I

    .line 2
    invoke-virtual {v3}, Le/m/a/c/l1/s;->B()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, -0x3

    goto/16 :goto_17

    .line 3
    :cond_0
    invoke-virtual {v3, v4}, Le/m/a/c/l1/s;->w(I)V

    .line 4
    iget-object v5, v3, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    aget-object v5, v5, v4

    iget-boolean v7, v3, Le/m/a/c/l1/s;->O:Z

    iget-wide v8, v3, Le/m/a/c/l1/s;->K:J

    .line 5
    iget-object v10, v5, Le/m/a/c/l1/v;->b:Le/m/a/c/l1/v$a;

    .line 6
    monitor-enter v5

    const/4 v11, 0x0

    .line 7
    :try_start_0
    iput-boolean v11, v2, Le/m/a/c/e1/e;->c:Z

    const/4 v13, -0x1

    .line 8
    :goto_0
    invoke-virtual {v5}, Le/m/a/c/l1/v;->l()Z

    move-result v14

    const/4 v15, 0x2

    const/4 v12, 0x1

    if-eqz v14, :cond_7

    .line 9
    iget v13, v5, Le/m/a/c/l1/v;->r:I

    invoke-virtual {v5, v13}, Le/m/a/c/l1/v;->j(I)I

    move-result v13

    .line 10
    iget-object v6, v5, Le/m/a/c/l1/v;->l:[J

    aget-wide v17, v6, v13

    cmp-long v6, v17, v8

    if-gez v6, :cond_7

    .line 11
    iget-object v6, v5, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    .line 12
    sget-object v17, Le/m/a/c/q1/q;->a:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "audio/mpeg"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v11, "audio/mp4a-latm"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, v15

    goto :goto_2

    :sswitch_2
    const-string v11, "audio/mpeg-L2"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v12

    goto :goto_2

    :sswitch_3
    const-string v11, "audio/mpeg-L1"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    if-eqz v6, :cond_6

    if-eq v6, v12, :cond_6

    if-eq v6, v15, :cond_6

    const/4 v11, 0x3

    if-eq v6, v11, :cond_6

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    move v6, v12

    :goto_4
    if-eqz v6, :cond_7

    .line 14
    :try_start_1
    iget v6, v5, Le/m/a/c/l1/v;->r:I

    add-int/2addr v6, v12

    iput v6, v5, Le/m/a/c/l1/v;->r:I

    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    const/4 v11, 0x4

    if-nez v14, :cond_c

    if-nez v7, :cond_b

    .line 15
    iget-boolean v7, v5, Le/m/a/c/l1/v;->u:Z

    if-eqz v7, :cond_8

    goto :goto_5

    .line 16
    :cond_8
    iget-object v7, v5, Le/m/a/c/l1/v;->x:Lcom/google/android/exoplayer2/Format;

    if-eqz v7, :cond_a

    if-nez p3, :cond_9

    iget-object v8, v5, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;

    if-eq v7, v8, :cond_a

    .line 17
    :cond_9
    invoke-virtual {v5, v7, v0}, Le/m/a/c/l1/v;->o(Lcom/google/android/exoplayer2/Format;Le/m/a/c/g0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit v5

    goto :goto_b

    .line 19
    :cond_a
    monitor-exit v5

    goto :goto_6

    .line 20
    :cond_b
    :goto_5
    :try_start_2
    invoke-virtual {v2, v11}, Le/m/a/c/e1/a;->setFlags(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    monitor-exit v5

    goto :goto_8

    :cond_c
    if-nez p3, :cond_12

    .line 22
    :try_start_3
    iget-object v7, v5, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    aget-object v7, v7, v13

    iget-object v14, v5, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;

    if-eq v7, v14, :cond_d

    goto :goto_a

    .line 23
    :cond_d
    invoke-virtual {v5, v13}, Le/m/a/c/l1/v;->n(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 24
    iput-boolean v12, v2, Le/m/a/c/e1/e;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    monitor-exit v5

    :goto_6
    const/4 v0, -0x3

    goto :goto_9

    .line 26
    :cond_e
    :try_start_4
    iget-object v0, v5, Le/m/a/c/l1/v;->k:[I

    aget v0, v0, v13

    invoke-virtual {v2, v0}, Le/m/a/c/e1/a;->setFlags(I)V

    .line 27
    iget-object v0, v5, Le/m/a/c/l1/v;->l:[J

    aget-wide v6, v0, v13

    iput-wide v6, v2, Le/m/a/c/e1/e;->d:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_f

    const/high16 v0, -0x80000000

    .line 28
    invoke-virtual {v2, v0}, Le/m/a/c/e1/a;->addFlag(I)V

    .line 29
    :cond_f
    iget-object v0, v2, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_10

    iget v0, v2, Le/m/a/c/e1/e;->f:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_10

    move v0, v12

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_11

    .line 30
    monitor-exit v5

    goto :goto_8

    .line 31
    :cond_11
    :try_start_5
    iget-object v0, v5, Le/m/a/c/l1/v;->j:[I

    aget v0, v0, v13

    iput v0, v10, Le/m/a/c/l1/v$a;->a:I

    .line 32
    iget-object v0, v5, Le/m/a/c/l1/v;->i:[J

    aget-wide v6, v0, v13

    iput-wide v6, v10, Le/m/a/c/l1/v$a;->b:J

    .line 33
    iget-object v0, v5, Le/m/a/c/l1/v;->m:[Le/m/a/c/g1/s$a;

    aget-object v0, v0, v13

    iput-object v0, v10, Le/m/a/c/l1/v$a;->c:Le/m/a/c/g1/s$a;

    .line 34
    iget v0, v5, Le/m/a/c/l1/v;->r:I

    add-int/2addr v0, v12

    iput v0, v5, Le/m/a/c/l1/v;->r:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35
    monitor-exit v5

    :goto_8
    const/4 v0, -0x4

    :goto_9
    const/4 v6, -0x4

    goto :goto_c

    .line 36
    :cond_12
    :goto_a
    :try_start_6
    iget-object v6, v5, Le/m/a/c/l1/v;->n:[Lcom/google/android/exoplayer2/Format;

    aget-object v6, v6, v13

    invoke-virtual {v5, v6, v0}, Le/m/a/c/l1/v;->o(Lcom/google/android/exoplayer2/Format;Le/m/a/c/g0;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 37
    monitor-exit v5

    :goto_b
    const/4 v0, -0x5

    goto :goto_9

    :goto_c
    if-ne v0, v6, :cond_22

    .line 38
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/e1/a;->isEndOfStream()Z

    move-result v6

    if-nez v6, :cond_22

    .line 39
    iget-object v6, v2, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_13

    iget v6, v2, Le/m/a/c/e1/e;->f:I

    if-nez v6, :cond_13

    move v6, v12

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    :goto_d
    if-nez v6, :cond_22

    .line 40
    iget-object v6, v5, Le/m/a/c/l1/v;->a:Le/m/a/c/l1/u;

    iget-object v5, v5, Le/m/a/c/l1/v;->b:Le/m/a/c/l1/v$a;

    .line 41
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v7, 0x40000000    # 2.0f

    .line 42
    invoke-virtual {v2, v7}, Le/m/a/c/e1/a;->getFlag(I)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 43
    iget-wide v7, v5, Le/m/a/c/l1/v$a;->b:J

    .line 44
    iget-object v9, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v9, v12}, Le/m/a/c/q1/t;->y(I)V

    .line 45
    iget-object v9, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    iget-object v9, v9, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v6, v7, v8, v9, v12}, Le/m/a/c/l1/u;->e(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 46
    iget-object v9, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    iget-object v9, v9, Le/m/a/c/q1/t;->a:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    and-int/lit16 v10, v9, 0x80

    if-eqz v10, :cond_14

    move v10, v12

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    and-int/lit8 v9, v9, 0x7f

    .line 47
    iget-object v13, v2, Le/m/a/c/e1/e;->a:Le/m/a/c/e1/b;

    .line 48
    iget-object v14, v13, Le/m/a/c/e1/b;->a:[B

    if-nez v14, :cond_15

    const/16 v14, 0x10

    new-array v14, v14, [B

    .line 49
    iput-object v14, v13, Le/m/a/c/e1/b;->a:[B

    goto :goto_f

    :cond_15
    const/4 v12, 0x0

    .line 50
    invoke-static {v14, v12}, Ljava/util/Arrays;->fill([BB)V

    .line 51
    :goto_f
    iget-object v12, v13, Le/m/a/c/e1/b;->a:[B

    invoke-virtual {v6, v7, v8, v12, v9}, Le/m/a/c/l1/u;->e(J[BI)V

    int-to-long v11, v9

    add-long/2addr v7, v11

    if-eqz v10, :cond_16

    .line 52
    iget-object v9, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v9, v15}, Le/m/a/c/q1/t;->y(I)V

    .line 53
    iget-object v9, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    iget-object v9, v9, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v6, v7, v8, v9, v15}, Le/m/a/c/l1/u;->e(J[BI)V

    const-wide/16 v11, 0x2

    add-long/2addr v7, v11

    .line 54
    iget-object v9, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v9}, Le/m/a/c/q1/t;->v()I

    move-result v12

    goto :goto_10

    :cond_16
    const/4 v12, 0x1

    .line 55
    :goto_10
    iget-object v9, v13, Le/m/a/c/e1/b;->b:[I

    if-eqz v9, :cond_17

    .line 56
    array-length v11, v9

    if-ge v11, v12, :cond_18

    .line 57
    :cond_17
    new-array v9, v12, [I

    .line 58
    :cond_18
    iget-object v11, v13, Le/m/a/c/e1/b;->c:[I

    if-eqz v11, :cond_19

    .line 59
    array-length v15, v11

    if-ge v15, v12, :cond_1a

    .line 60
    :cond_19
    new-array v11, v12, [I

    :cond_1a
    if-eqz v10, :cond_1c

    mul-int/lit8 v10, v12, 0x6

    .line 61
    iget-object v15, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v15, v10}, Le/m/a/c/q1/t;->y(I)V

    .line 62
    iget-object v15, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    iget-object v15, v15, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v6, v7, v8, v15, v10}, Le/m/a/c/l1/u;->e(J[BI)V

    int-to-long v14, v10

    add-long/2addr v7, v14

    .line 63
    iget-object v10, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Le/m/a/c/q1/t;->C(I)V

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v12, :cond_1b

    .line 64
    iget-object v14, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v14}, Le/m/a/c/q1/t;->v()I

    move-result v14

    aput v14, v9, v10

    .line 65
    iget-object v14, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v14

    aput v14, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_1b
    move-object/from16 p3, v11

    goto :goto_12

    :cond_1c
    const/4 v10, 0x0

    .line 66
    aput v10, v9, v10

    .line 67
    iget v14, v5, Le/m/a/c/l1/v$a;->a:I

    move-object/from16 p3, v11

    iget-wide v10, v5, Le/m/a/c/l1/v$a;->b:J

    sub-long v10, v7, v10

    long-to-int v10, v10

    sub-int/2addr v14, v10

    const/4 v10, 0x0

    aput v14, p3, v10

    .line 68
    :goto_12
    iget-object v10, v5, Le/m/a/c/l1/v$a;->c:Le/m/a/c/g1/s$a;

    .line 69
    iget-object v11, v10, Le/m/a/c/g1/s$a;->b:[B

    iget-object v14, v13, Le/m/a/c/e1/b;->a:[B

    iget v15, v10, Le/m/a/c/g1/s$a;->a:I

    iget v1, v10, Le/m/a/c/g1/s$a;->c:I

    iget v10, v10, Le/m/a/c/g1/s$a;->d:I

    .line 70
    iput-object v9, v13, Le/m/a/c/e1/b;->b:[I

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    .line 71
    iput-object v3, v13, Le/m/a/c/e1/b;->c:[I

    .line 72
    iput-object v14, v13, Le/m/a/c/e1/b;->a:[B

    move/from16 v17, v4

    .line 73
    iget-object v4, v13, Le/m/a/c/e1/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    iput v12, v4, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 74
    iput-object v9, v4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 75
    iput-object v3, v4, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 76
    iput-object v11, v4, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 77
    iput-object v14, v4, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 78
    iput v15, v4, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 79
    sget v3, Le/m/a/c/q1/d0;->a:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1d

    .line 80
    iget-object v3, v13, Le/m/a/c/e1/b;->e:Le/m/a/c/e1/b$b;

    .line 81
    iget-object v4, v3, Le/m/a/c/e1/b$b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v4, v1, v10}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 82
    iget-object v1, v3, Le/m/a/c/e1/b$b;->a:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v3, v3, Le/m/a/c/e1/b$b;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    invoke-virtual {v1, v3}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 83
    :cond_1d
    iget-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    sub-long/2addr v7, v3

    long-to-int v1, v7

    int-to-long v7, v1

    add-long/2addr v3, v7

    .line 84
    iput-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    .line 85
    iget v3, v5, Le/m/a/c/l1/v$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v5, Le/m/a/c/l1/v$a;->a:I

    goto :goto_13

    :cond_1e
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 86
    :goto_13
    invoke-virtual/range {p2 .. p2}, Le/m/a/c/e1/a;->hasSupplementalData()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 87
    iget-object v1, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Le/m/a/c/q1/t;->y(I)V

    .line 88
    iget-wide v7, v5, Le/m/a/c/l1/v$a;->b:J

    iget-object v1, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v6, v7, v8, v1, v3}, Le/m/a/c/l1/u;->e(J[BI)V

    .line 89
    iget-object v1, v6, Le/m/a/c/l1/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v1}, Le/m/a/c/q1/t;->t()I

    move-result v1

    .line 90
    iget-wide v7, v5, Le/m/a/c/l1/v$a;->b:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    iput-wide v7, v5, Le/m/a/c/l1/v$a;->b:J

    .line 91
    iget v4, v5, Le/m/a/c/l1/v$a;->a:I

    sub-int/2addr v4, v3

    iput v4, v5, Le/m/a/c/l1/v$a;->a:I

    .line 92
    invoke-virtual {v2, v1}, Le/m/a/c/e1/e;->g(I)V

    .line 93
    iget-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    iget-object v7, v2, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3, v4, v7, v1}, Le/m/a/c/l1/u;->d(JLjava/nio/ByteBuffer;I)V

    .line 94
    iget-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    int-to-long v7, v1

    add-long/2addr v3, v7

    iput-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    .line 95
    iget v3, v5, Le/m/a/c/l1/v$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v5, Le/m/a/c/l1/v$a;->a:I

    .line 96
    iget-object v1, v2, Le/m/a/c/e1/e;->e:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v3, :cond_1f

    goto :goto_14

    .line 97
    :cond_1f
    iget-object v1, v2, Le/m/a/c/e1/e;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_15

    .line 98
    :cond_20
    :goto_14
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v2, Le/m/a/c/e1/e;->e:Ljava/nio/ByteBuffer;

    .line 99
    :goto_15
    iget-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    iget-object v1, v2, Le/m/a/c/e1/e;->e:Ljava/nio/ByteBuffer;

    iget v2, v5, Le/m/a/c/l1/v$a;->a:I

    invoke-virtual {v6, v3, v4, v1, v2}, Le/m/a/c/l1/u;->d(JLjava/nio/ByteBuffer;I)V

    goto :goto_16

    .line 100
    :cond_21
    iget v1, v5, Le/m/a/c/l1/v$a;->a:I

    invoke-virtual {v2, v1}, Le/m/a/c/e1/e;->g(I)V

    .line 101
    iget-wide v3, v5, Le/m/a/c/l1/v$a;->b:J

    iget-object v1, v2, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    iget v2, v5, Le/m/a/c/l1/v$a;->a:I

    invoke-virtual {v6, v3, v4, v1, v2}, Le/m/a/c/l1/u;->d(JLjava/nio/ByteBuffer;I)V

    goto :goto_16

    :cond_22
    move-object/from16 v16, v3

    move/from16 v17, v4

    :goto_16
    const/4 v1, -0x3

    if-ne v0, v1, :cond_23

    move-object/from16 v1, v16

    move/from16 v2, v17

    .line 102
    invoke-virtual {v1, v2}, Le/m/a/c/l1/s;->x(I)V

    :cond_23
    move v6, v0

    :goto_17
    return v6

    :catchall_0
    move-exception v0

    .line 103
    monitor-exit v5

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x19cc928c -> :sswitch_3
        -0x19cc928b -> :sswitch_2
        -0x3313c2e -> :sswitch_1
        0x59b1e81e -> :sswitch_0
    .end sparse-switch
.end method
