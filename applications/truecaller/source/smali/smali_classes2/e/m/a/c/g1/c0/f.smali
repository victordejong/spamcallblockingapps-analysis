.class public final Le/m/a/c/g1/c0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;
.implements Le/m/a/c/g1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/c0/f$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/t;

.field public final b:Le/m/a/c/q1/t;

.field public final c:Le/m/a/c/q1/t;

.field public final d:Le/m/a/c/q1/t;

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le/m/a/c/g1/c0/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:Le/m/a/c/q1/t;

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:Le/m/a/c/g1/i;

.field public p:[Le/m/a/c/g1/c0/f$a;

.field public q:[[J

.field public r:I

.field public s:J

.field public t:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Le/m/a/c/q1/t;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    .line 3
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    .line 4
    new-instance p1, Le/m/a/c/q1/t;

    sget-object v0, Le/m/a/c/q1/r;->a:[B

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>([B)V

    iput-object p1, p0, Le/m/a/c/g1/c0/f;->a:Le/m/a/c/q1/t;

    .line 5
    new-instance p1, Le/m/a/c/q1/t;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object p1, p0, Le/m/a/c/g1/c0/f;->b:Le/m/a/c/q1/t;

    .line 6
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Le/m/a/c/g1/c0/f;->k:I

    return-void
.end method

.method public static k(Le/m/a/c/g1/c0/l;JJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/a/c/g1/c0/l;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/m/a/c/g1/c0/l;->b(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, Le/m/a/c/g1/c0/l;->c:[J

    aget-wide p1, p0, v0

    .line 4
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/m/a/c/g1/c0/f;->i:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Le/m/a/c/g1/c0/f;->k:I

    .line 4
    iput v0, p0, Le/m/a/c/g1/c0/f;->l:I

    .line 5
    iput v0, p0, Le/m/a/c/g1/c0/f;->m:I

    .line 6
    iput v0, p0, Le/m/a/c/g1/c0/f;->n:I

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Le/m/a/c/g1/c0/f;->j()V

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Le/m/a/c/g1/c0/f;->p:[Le/m/a/c/g1/c0/f$a;

    if-eqz p1, :cond_2

    .line 9
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    .line 10
    iget-object v3, v2, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    .line 11
    invoke-virtual {v3, p3, p4}, Le/m/a/c/g1/c0/l;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 12
    invoke-virtual {v3, p3, p4}, Le/m/a/c/g1/c0/l;->b(J)I

    move-result v4

    .line 13
    :cond_1
    iput v4, v2, Le/m/a/c/g1/c0/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(J)Le/m/a/c/g1/q$a;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    sget-object v3, Le/m/a/c/g1/r;->c:Le/m/a/c/g1/r;

    iget-object v4, v0, Le/m/a/c/g1/c0/f;->p:[Le/m/a/c/g1/c0/f$a;

    array-length v5, v4

    if-nez v5, :cond_0

    .line 2
    new-instance v1, Le/m/a/c/g1/q$a;

    invoke-direct {v1, v3}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object v1

    :cond_0
    const-wide/16 v5, -0x1

    .line 3
    iget v7, v0, Le/m/a/c/g1/c0/f;->r:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    .line 4
    aget-object v4, v4, v7

    iget-object v4, v4, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    .line 5
    invoke-virtual {v4, v1, v2}, Le/m/a/c/g1/c0/l;->a(J)I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 6
    invoke-virtual {v4, v1, v2}, Le/m/a/c/g1/c0/l;->b(J)I

    move-result v7

    :cond_1
    if-ne v7, v10, :cond_2

    .line 7
    new-instance v1, Le/m/a/c/g1/q$a;

    invoke-direct {v1, v3}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object v1

    .line 8
    :cond_2
    iget-object v3, v4, Le/m/a/c/g1/c0/l;->f:[J

    aget-wide v11, v3, v7

    .line 9
    iget-object v3, v4, Le/m/a/c/g1/c0/l;->c:[J

    aget-wide v13, v3, v7

    cmp-long v3, v11, v1

    if-gez v3, :cond_3

    .line 10
    iget v3, v4, Le/m/a/c/g1/c0/l;->b:I

    add-int/2addr v3, v10

    if-ge v7, v3, :cond_3

    .line 11
    invoke-virtual {v4, v1, v2}, Le/m/a/c/g1/c0/l;->b(J)I

    move-result v1

    if-eq v1, v10, :cond_3

    if-eq v1, v7, :cond_3

    .line 12
    iget-object v2, v4, Le/m/a/c/g1/c0/l;->f:[J

    aget-wide v5, v2, v1

    .line 13
    iget-object v2, v4, Le/m/a/c/g1/c0/l;->c:[J

    aget-wide v1, v2, v1

    move-wide v15, v1

    move-wide v1, v5

    move-wide v5, v15

    goto :goto_0

    :cond_3
    move-wide v1, v8

    :goto_0
    move-wide v3, v1

    move-wide v1, v11

    goto :goto_1

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    move-wide v3, v8

    :goto_1
    const/4 v7, 0x0

    .line 14
    :goto_2
    iget-object v10, v0, Le/m/a/c/g1/c0/f;->p:[Le/m/a/c/g1/c0/f$a;

    array-length v11, v10

    if-ge v7, v11, :cond_7

    .line 15
    iget v11, v0, Le/m/a/c/g1/c0/f;->r:I

    if-eq v7, v11, :cond_6

    .line 16
    aget-object v10, v10, v7

    iget-object v10, v10, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    .line 17
    invoke-static {v10, v1, v2, v13, v14}, Le/m/a/c/g1/c0/f;->k(Le/m/a/c/g1/c0/l;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v8

    if-eqz v13, :cond_5

    .line 18
    invoke-static {v10, v3, v4, v5, v6}, Le/m/a/c/g1/c0/f;->k(Le/m/a/c/g1/c0/l;JJ)J

    move-result-wide v5

    :cond_5
    move-wide v13, v11

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 19
    :cond_7
    new-instance v7, Le/m/a/c/g1/r;

    invoke-direct {v7, v1, v2, v13, v14}, Le/m/a/c/g1/r;-><init>(JJ)V

    cmp-long v1, v3, v8

    if-nez v1, :cond_8

    .line 20
    new-instance v1, Le/m/a/c/g1/q$a;

    invoke-direct {v1, v7}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

    return-object v1

    .line 21
    :cond_8
    new-instance v1, Le/m/a/c/g1/r;

    invoke-direct {v1, v3, v4, v5, v6}, Le/m/a/c/g1/r;-><init>(JJ)V

    .line 22
    new-instance v2, Le/m/a/c/g1/q$a;

    invoke-direct {v2, v7, v1}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;Le/m/a/c/g1/r;)V

    return-object v2
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    iget v3, v0, Le/m/a/c/g1/c0/f;->f:I

    const v4, 0x66747970

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v11, 0x1

    if-eqz v3, :cond_1f

    const-wide/32 v12, 0x40000

    const/4 v14, 0x2

    if-eq v3, v11, :cond_16

    if-ne v3, v14, :cond_15

    .line 2
    iget-wide v3, v1, Le/m/a/c/g1/e;->d:J

    .line 3
    iget v7, v0, Le/m/a/c/g1/c0/f;->k:I

    if-ne v7, v8, :cond_b

    const-wide v15, 0x7fffffffffffffffL

    move/from16 v22, v8

    move/from16 v23, v22

    move v9, v11

    move/from16 v19, v9

    move-wide/from16 v17, v15

    move-wide/from16 v20, v17

    move-wide/from16 v24, v20

    const/4 v7, 0x0

    .line 4
    :goto_0
    iget-object v14, v0, Le/m/a/c/g1/c0/f;->p:[Le/m/a/c/g1/c0/f$a;

    array-length v10, v14

    if-ge v7, v10, :cond_8

    .line 5
    aget-object v10, v14, v7

    .line 6
    iget v14, v10, Le/m/a/c/g1/c0/f$a;->d:I

    .line 7
    iget-object v10, v10, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget v11, v10, Le/m/a/c/g1/c0/l;->b:I

    if-ne v14, v11, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    iget-object v10, v10, Le/m/a/c/g1/c0/l;->c:[J

    aget-wide v26, v10, v14

    .line 9
    iget-object v10, v0, Le/m/a/c/g1/c0/f;->q:[[J

    aget-object v10, v10, v7

    aget-wide v28, v10, v14

    sub-long v26, v26, v3

    cmp-long v10, v26, v5

    if-ltz v10, :cond_3

    cmp-long v10, v26, v12

    if-ltz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_4

    if-nez v9, :cond_5

    :cond_4
    if-ne v10, v9, :cond_6

    cmp-long v11, v26, v24

    if-gez v11, :cond_6

    :cond_5
    move/from16 v23, v7

    move v9, v10

    move-wide/from16 v24, v26

    move-wide/from16 v20, v28

    :cond_6
    cmp-long v11, v28, v17

    if-gez v11, :cond_7

    move/from16 v22, v7

    move/from16 v19, v10

    move-wide/from16 v17, v28

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x1

    goto :goto_0

    :cond_8
    cmp-long v7, v17, v15

    if-eqz v7, :cond_a

    if-eqz v19, :cond_a

    const-wide/32 v9, 0xa00000

    add-long v17, v17, v9

    cmp-long v7, v20, v17

    if-gez v7, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v7, v22

    goto :goto_5

    :cond_a
    :goto_4
    move/from16 v7, v23

    .line 10
    :goto_5
    iput v7, v0, Le/m/a/c/g1/c0/f;->k:I

    if-ne v7, v8, :cond_b

    goto/16 :goto_a

    .line 11
    :cond_b
    iget-object v7, v0, Le/m/a/c/g1/c0/f;->p:[Le/m/a/c/g1/c0/f$a;

    iget v9, v0, Le/m/a/c/g1/c0/f;->k:I

    aget-object v7, v7, v9

    .line 12
    iget-object v14, v7, Le/m/a/c/g1/c0/f$a;->c:Le/m/a/c/g1/s;

    .line 13
    iget v9, v7, Le/m/a/c/g1/c0/f$a;->d:I

    .line 14
    iget-object v10, v7, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget-object v11, v10, Le/m/a/c/g1/c0/l;->c:[J

    aget-wide v12, v11, v9

    .line 15
    iget-object v10, v10, Le/m/a/c/g1/c0/l;->d:[I

    aget v10, v10, v9

    sub-long v3, v12, v3

    .line 16
    iget v11, v0, Le/m/a/c/g1/c0/f;->l:I

    move/from16 v17, v9

    int-to-long v8, v11

    add-long/2addr v3, v8

    cmp-long v5, v3, v5

    if-ltz v5, :cond_14

    const-wide/32 v5, 0x40000

    cmp-long v5, v3, v5

    if-ltz v5, :cond_c

    goto/16 :goto_9

    .line 17
    :cond_c
    iget-object v2, v7, Le/m/a/c/g1/c0/f$a;->a:Le/m/a/c/g1/c0/i;

    iget v2, v2, Le/m/a/c/g1/c0/i;->g:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    add-int/lit8 v10, v10, -0x8

    :cond_d
    long-to-int v2, v3

    .line 18
    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    .line 19
    iget-object v2, v7, Le/m/a/c/g1/c0/f$a;->a:Le/m/a/c/g1/c0/i;

    iget v3, v2, Le/m/a/c/g1/c0/i;->j:I

    if-eqz v3, :cond_10

    .line 20
    iget-object v2, v0, Le/m/a/c/g1/c0/f;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/4 v4, 0x0

    .line 21
    aput-byte v4, v2, v4

    const/4 v5, 0x1

    .line 22
    aput-byte v4, v2, v5

    const/4 v5, 0x2

    .line 23
    aput-byte v4, v2, v5

    rsub-int/lit8 v5, v3, 0x4

    .line 24
    :goto_6
    iget v6, v0, Le/m/a/c/g1/c0/f;->m:I

    if-ge v6, v10, :cond_13

    .line 25
    iget v6, v0, Le/m/a/c/g1/c0/f;->n:I

    if-nez v6, :cond_f

    .line 26
    invoke-virtual {v1, v2, v5, v3, v4}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 27
    iget v6, v0, Le/m/a/c/g1/c0/f;->l:I

    add-int/2addr v6, v3

    iput v6, v0, Le/m/a/c/g1/c0/f;->l:I

    .line 28
    iget-object v6, v0, Le/m/a/c/g1/c0/f;->b:Le/m/a/c/q1/t;

    invoke-virtual {v6, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 29
    iget-object v6, v0, Le/m/a/c/g1/c0/f;->b:Le/m/a/c/q1/t;

    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v6

    if-ltz v6, :cond_e

    .line 30
    iput v6, v0, Le/m/a/c/g1/c0/f;->n:I

    .line 31
    iget-object v6, v0, Le/m/a/c/g1/c0/f;->a:Le/m/a/c/q1/t;

    invoke-virtual {v6, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 32
    iget-object v4, v0, Le/m/a/c/g1/c0/f;->a:Le/m/a/c/q1/t;

    const/4 v6, 0x4

    invoke-interface {v14, v4, v6}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 33
    iget v4, v0, Le/m/a/c/g1/c0/f;->m:I

    add-int/2addr v4, v6

    iput v4, v0, Le/m/a/c/g1/c0/f;->m:I

    add-int/2addr v10, v5

    goto :goto_7

    .line 34
    :cond_e
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_f
    invoke-interface {v14, v1, v6, v4}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v6

    .line 36
    iget v4, v0, Le/m/a/c/g1/c0/f;->l:I

    add-int/2addr v4, v6

    iput v4, v0, Le/m/a/c/g1/c0/f;->l:I

    .line 37
    iget v4, v0, Le/m/a/c/g1/c0/f;->m:I

    add-int/2addr v4, v6

    iput v4, v0, Le/m/a/c/g1/c0/f;->m:I

    .line 38
    iget v4, v0, Le/m/a/c/g1/c0/f;->n:I

    sub-int/2addr v4, v6

    iput v4, v0, Le/m/a/c/g1/c0/f;->n:I

    :goto_7
    const/4 v4, 0x0

    goto :goto_6

    .line 39
    :cond_10
    iget-object v2, v2, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 40
    iget v2, v0, Le/m/a/c/g1/c0/f;->m:I

    if-nez v2, :cond_11

    .line 41
    iget-object v2, v0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    invoke-static {v10, v2}, Le/m/a/c/c1/h;->a(ILe/m/a/c/q1/t;)V

    .line 42
    iget-object v2, v0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    const/4 v3, 0x7

    invoke-interface {v14, v2, v3}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    .line 43
    iget v2, v0, Le/m/a/c/g1/c0/f;->m:I

    add-int/2addr v2, v3

    iput v2, v0, Le/m/a/c/g1/c0/f;->m:I

    :cond_11
    add-int/lit8 v10, v10, 0x7

    .line 44
    :cond_12
    :goto_8
    iget v2, v0, Le/m/a/c/g1/c0/f;->m:I

    if-ge v2, v10, :cond_13

    sub-int v2, v10, v2

    const/4 v3, 0x0

    .line 45
    invoke-interface {v14, v1, v2, v3}, Le/m/a/c/g1/s;->d(Le/m/a/c/g1/e;IZ)I

    move-result v2

    .line 46
    iget v3, v0, Le/m/a/c/g1/c0/f;->l:I

    add-int/2addr v3, v2

    iput v3, v0, Le/m/a/c/g1/c0/f;->l:I

    .line 47
    iget v3, v0, Le/m/a/c/g1/c0/f;->m:I

    add-int/2addr v3, v2

    iput v3, v0, Le/m/a/c/g1/c0/f;->m:I

    .line 48
    iget v3, v0, Le/m/a/c/g1/c0/f;->n:I

    sub-int/2addr v3, v2

    iput v3, v0, Le/m/a/c/g1/c0/f;->n:I

    goto :goto_8

    :cond_13
    move/from16 v18, v10

    .line 49
    iget-object v1, v7, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget-object v2, v1, Le/m/a/c/g1/c0/l;->f:[J

    aget-wide v15, v2, v17

    iget-object v1, v1, Le/m/a/c/g1/c0/l;->g:[I

    aget v17, v1, v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v14 .. v20}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 50
    iget v1, v7, Le/m/a/c/g1/c0/f$a;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Le/m/a/c/g1/c0/f$a;->d:I

    const/4 v1, -0x1

    .line 51
    iput v1, v0, Le/m/a/c/g1/c0/f;->k:I

    const/4 v1, 0x0

    .line 52
    iput v1, v0, Le/m/a/c/g1/c0/f;->l:I

    .line 53
    iput v1, v0, Le/m/a/c/g1/c0/f;->m:I

    .line 54
    iput v1, v0, Le/m/a/c/g1/c0/f;->n:I

    const/4 v8, 0x0

    goto :goto_a

    .line 55
    :cond_14
    :goto_9
    iput-wide v12, v2, Le/m/a/c/g1/p;->a:J

    const/4 v8, 0x1

    :goto_a
    return v8

    .line 56
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 57
    :cond_16
    iget-wide v5, v0, Le/m/a/c/g1/c0/f;->h:J

    iget v3, v0, Le/m/a/c/g1/c0/f;->i:I

    int-to-long v8, v3

    sub-long/2addr v5, v8

    .line 58
    iget-wide v8, v1, Le/m/a/c/g1/e;->d:J

    add-long/2addr v8, v5

    .line 59
    iget-object v10, v0, Le/m/a/c/g1/c0/f;->j:Le/m/a/c/q1/t;

    if-eqz v10, :cond_1b

    .line 60
    iget-object v10, v10, Le/m/a/c/q1/t;->a:[B

    long-to-int v5, v5

    const/4 v6, 0x0

    .line 61
    invoke-virtual {v1, v10, v3, v5, v6}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 62
    iget v3, v0, Le/m/a/c/g1/c0/f;->g:I

    if-ne v3, v4, :cond_1a

    .line 63
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->j:Le/m/a/c/q1/t;

    .line 64
    invoke-virtual {v3, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 65
    invoke-virtual {v3}, Le/m/a/c/q1/t;->e()I

    move-result v4

    const v5, 0x71742020

    if-ne v4, v5, :cond_17

    goto :goto_b

    :cond_17
    const/4 v4, 0x4

    .line 66
    invoke-virtual {v3, v4}, Le/m/a/c/q1/t;->D(I)V

    .line 67
    :cond_18
    invoke-virtual {v3}, Le/m/a/c/q1/t;->a()I

    move-result v4

    if-lez v4, :cond_19

    .line 68
    invoke-virtual {v3}, Le/m/a/c/q1/t;->e()I

    move-result v4

    if-ne v4, v5, :cond_18

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_19
    const/4 v3, 0x0

    .line 69
    :goto_c
    iput-boolean v3, v0, Le/m/a/c/g1/c0/f;->t:Z

    goto :goto_d

    .line 70
    :cond_1a
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 71
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/g1/c0/a$a;

    new-instance v4, Le/m/a/c/g1/c0/a$b;

    iget v5, v0, Le/m/a/c/g1/c0/f;->g:I

    iget-object v6, v0, Le/m/a/c/g1/c0/f;->j:Le/m/a/c/q1/t;

    invoke-direct {v4, v5, v6}, Le/m/a/c/g1/c0/a$b;-><init>(ILe/m/a/c/q1/t;)V

    .line 72
    iget-object v3, v3, Le/m/a/c/g1/c0/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1b
    const-wide/32 v3, 0x40000

    cmp-long v3, v5, v3

    if-gez v3, :cond_1d

    long-to-int v3, v5

    .line 73
    invoke-virtual {v1, v3}, Le/m/a/c/g1/e;->i(I)V

    :cond_1c
    :goto_d
    const/4 v3, 0x0

    goto :goto_e

    .line 74
    :cond_1d
    iput-wide v8, v2, Le/m/a/c/g1/p;->a:J

    const/4 v3, 0x1

    .line 75
    :goto_e
    invoke-virtual {v0, v8, v9}, Le/m/a/c/g1/c0/f;->l(J)V

    if-eqz v3, :cond_1e

    .line 76
    iget v3, v0, Le/m/a/c/g1/c0/f;->f:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/4 v10, 0x1

    goto :goto_f

    :cond_1e
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_1f
    move v3, v11

    .line 77
    iget v8, v0, Le/m/a/c/g1/c0/f;->i:I

    if-nez v8, :cond_21

    .line 78
    iget-object v8, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    iget-object v8, v8, Le/m/a/c/q1/t;->a:[B

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v7, v3}, Le/m/a/c/g1/e;->h([BIIZ)Z

    move-result v8

    if-nez v8, :cond_20

    move v10, v9

    goto/16 :goto_1a

    .line 79
    :cond_20
    iput v7, v0, Le/m/a/c/g1/c0/f;->i:I

    .line 80
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    invoke-virtual {v3, v9}, Le/m/a/c/q1/t;->C(I)V

    .line 81
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->r()J

    move-result-wide v8

    iput-wide v8, v0, Le/m/a/c/g1/c0/f;->h:J

    .line 82
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->e()I

    move-result v3

    iput v3, v0, Le/m/a/c/g1/c0/f;->g:I

    .line 83
    :cond_21
    iget-wide v8, v0, Le/m/a/c/g1/c0/f;->h:J

    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_22

    .line 84
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    iget-object v3, v3, Le/m/a/c/q1/t;->a:[B

    const/4 v5, 0x0

    .line 85
    invoke-virtual {v1, v3, v7, v7, v5}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 86
    iget v3, v0, Le/m/a/c/g1/c0/f;->i:I

    add-int/2addr v3, v7

    iput v3, v0, Le/m/a/c/g1/c0/f;->i:I

    .line 87
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->u()J

    move-result-wide v5

    iput-wide v5, v0, Le/m/a/c/g1/c0/f;->h:J

    goto :goto_10

    :cond_22
    cmp-long v3, v8, v5

    if-nez v3, :cond_24

    .line 88
    iget-wide v5, v1, Le/m/a/c/g1/e;->c:J

    const-wide/16 v8, -0x1

    cmp-long v3, v5, v8

    if-nez v3, :cond_23

    .line 89
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_23

    .line 90
    iget-object v3, v0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/g1/c0/a$a;

    iget-wide v5, v3, Le/m/a/c/g1/c0/a$a;->b:J

    :cond_23
    cmp-long v3, v5, v8

    if-eqz v3, :cond_24

    .line 91
    iget-wide v8, v1, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v5, v8

    .line 92
    iget v3, v0, Le/m/a/c/g1/c0/f;->i:I

    int-to-long v8, v3

    add-long/2addr v5, v8

    iput-wide v5, v0, Le/m/a/c/g1/c0/f;->h:J

    .line 93
    :cond_24
    :goto_10
    iget-wide v5, v0, Le/m/a/c/g1/c0/f;->h:J

    iget v3, v0, Le/m/a/c/g1/c0/f;->i:I

    int-to-long v8, v3

    cmp-long v10, v5, v8

    if-ltz v10, :cond_30

    .line 94
    iget v11, v0, Le/m/a/c/g1/c0/f;->g:I

    const v12, 0x6d6f6f76

    const v13, 0x6d657461

    if-eq v11, v12, :cond_26

    const v12, 0x7472616b

    if-eq v11, v12, :cond_26

    const v12, 0x6d646961

    if-eq v11, v12, :cond_26

    const v12, 0x6d696e66

    if-eq v11, v12, :cond_26

    const v12, 0x7374626c

    if-eq v11, v12, :cond_26

    const v12, 0x65647473

    if-eq v11, v12, :cond_26

    if-ne v11, v13, :cond_25

    goto :goto_11

    :cond_25
    const/4 v12, 0x0

    goto :goto_12

    :cond_26
    :goto_11
    const/4 v12, 0x1

    :goto_12
    const v14, 0x68646c72    # 4.3148E24f

    if-eqz v12, :cond_2a

    .line 95
    iget-wide v3, v1, Le/m/a/c/g1/e;->d:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v8

    if-eqz v10, :cond_28

    if-ne v11, v13, :cond_28

    .line 96
    iget-object v5, v0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    invoke-virtual {v5, v7}, Le/m/a/c/q1/t;->y(I)V

    .line 97
    iget-object v5, v0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/4 v6, 0x0

    .line 98
    invoke-virtual {v1, v5, v6, v7, v6}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 99
    iget-object v5, v0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Le/m/a/c/q1/t;->D(I)V

    .line 100
    iget-object v5, v0, Le/m/a/c/g1/c0/f;->c:Le/m/a/c/q1/t;

    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v5

    if-ne v5, v14, :cond_27

    .line 101
    iput v6, v1, Le/m/a/c/g1/e;->f:I

    goto :goto_13

    .line 102
    :cond_27
    invoke-virtual {v1, v7}, Le/m/a/c/g1/e;->i(I)V

    .line 103
    :cond_28
    :goto_13
    iget-object v5, v0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    new-instance v6, Le/m/a/c/g1/c0/a$a;

    iget v7, v0, Le/m/a/c/g1/c0/f;->g:I

    invoke-direct {v6, v7, v3, v4}, Le/m/a/c/g1/c0/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 104
    iget-wide v5, v0, Le/m/a/c/g1/c0/f;->h:J

    iget v7, v0, Le/m/a/c/g1/c0/f;->i:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_29

    .line 105
    invoke-virtual {v0, v3, v4}, Le/m/a/c/g1/c0/f;->l(J)V

    goto :goto_14

    .line 106
    :cond_29
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/g1/c0/f;->j()V

    :goto_14
    const/4 v3, 0x1

    goto/16 :goto_19

    :cond_2a
    const v5, 0x6d646864

    if-eq v11, v5, :cond_2c

    const v5, 0x6d766864

    if-eq v11, v5, :cond_2c

    if-eq v11, v14, :cond_2c

    const v5, 0x73747364

    if-eq v11, v5, :cond_2c

    const v5, 0x73747473

    if-eq v11, v5, :cond_2c

    const v5, 0x73747373

    if-eq v11, v5, :cond_2c

    const v5, 0x63747473

    if-eq v11, v5, :cond_2c

    const v5, 0x656c7374

    if-eq v11, v5, :cond_2c

    const v5, 0x73747363

    if-eq v11, v5, :cond_2c

    const v5, 0x7374737a

    if-eq v11, v5, :cond_2c

    const v5, 0x73747a32

    if-eq v11, v5, :cond_2c

    const v5, 0x7374636f

    if-eq v11, v5, :cond_2c

    const v5, 0x636f3634

    if-eq v11, v5, :cond_2c

    const v5, 0x746b6864

    if-eq v11, v5, :cond_2c

    if-eq v11, v4, :cond_2c

    const v4, 0x75647461

    if-eq v11, v4, :cond_2c

    const v4, 0x6b657973

    if-eq v11, v4, :cond_2c

    const v4, 0x696c7374

    if-ne v11, v4, :cond_2b

    goto :goto_15

    :cond_2b
    const/4 v5, 0x0

    goto :goto_16

    :cond_2c
    :goto_15
    const/4 v5, 0x1

    :goto_16
    if-eqz v5, :cond_2f

    if-ne v3, v7, :cond_2d

    const/4 v5, 0x1

    goto :goto_17

    :cond_2d
    const/4 v5, 0x0

    .line 107
    :goto_17
    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 108
    iget-wide v3, v0, Le/m/a/c/g1/c0/f;->h:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2e

    const/4 v5, 0x1

    goto :goto_18

    :cond_2e
    const/4 v5, 0x0

    :goto_18
    invoke-static {v5}, Ln3/g0/y;->x(Z)V

    .line 109
    new-instance v3, Le/m/a/c/q1/t;

    iget-wide v4, v0, Le/m/a/c/g1/c0/f;->h:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v3, v0, Le/m/a/c/g1/c0/f;->j:Le/m/a/c/q1/t;

    .line 110
    iget-object v4, v0, Le/m/a/c/g1/c0/f;->d:Le/m/a/c/q1/t;

    iget-object v4, v4, Le/m/a/c/q1/t;->a:[B

    iget-object v3, v3, Le/m/a/c/q1/t;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 111
    iput v3, v0, Le/m/a/c/g1/c0/f;->f:I

    goto :goto_19

    :cond_2f
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    iput-object v4, v0, Le/m/a/c/g1/c0/f;->j:Le/m/a/c/q1/t;

    .line 113
    iput v3, v0, Le/m/a/c/g1/c0/f;->f:I

    :goto_19
    move v10, v3

    :goto_1a
    if-nez v10, :cond_0

    const/4 v3, -0x1

    return v3

    .line 114
    :cond_30
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/c/g1/c0/f;->s:J

    return-wide v0
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/c0/f;->o:Le/m/a/c/g1/i;

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Le/m/a/c/g1/c0/h;->a(Le/m/a/c/g1/e;Z)Z

    move-result p1

    return p1
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Le/m/a/c/g1/c0/f;->f:I

    .line 2
    iput v0, p0, Le/m/a/c/g1/c0/f;->i:I

    return-void
.end method

.method public final l(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/g1/c0/a$a;

    iget-wide v2, v0, Le/m/a/c/g1/c0/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/g1/c0/a$a;

    .line 3
    iget v2, v0, Le/m/a/c/g1/c0/a;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Le/m/a/c/g1/c0/f;->m(Le/m/a/c/g1/c0/a$a;)V

    .line 5
    iget-object v0, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iput v1, p0, Le/m/a/c/g1/c0/f;->f:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Le/m/a/c/g1/c0/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/g1/c0/a$a;

    .line 9
    iget-object v1, v1, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Le/m/a/c/g1/c0/f;->f:I

    if-eq p1, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Le/m/a/c/g1/c0/f;->j()V

    :cond_3
    return-void
.end method

.method public final m(Le/m/a/c/g1/c0/a$a;)V
    .locals 70
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/m0;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Le/m/a/c/g1/m;

    invoke-direct {v3}, Le/m/a/c/g1/m;-><init>()V

    const v4, 0x75647461

    .line 3
    invoke-virtual {v0, v4}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v4

    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_31

    .line 4
    iget-boolean v5, v1, Le/m/a/c/g1/c0/f;->t:Z

    .line 5
    sget-object v17, Le/m/a/c/g1/c0/b;->a:[B

    if-eqz v5, :cond_0

    move-object v4, v12

    goto/16 :goto_f

    .line 6
    :cond_0
    iget-object v4, v4, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 7
    invoke-virtual {v4, v11}, Le/m/a/c/q1/t;->C(I)V

    .line 8
    :goto_0
    invoke-virtual {v4}, Le/m/a/c/q1/t;->a()I

    move-result v5

    if-lt v5, v11, :cond_2f

    .line 9
    iget v5, v4, Le/m/a/c/q1/t;->b:I

    .line 10
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v17

    .line 11
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v13

    if-ne v13, v7, :cond_2e

    .line 12
    invoke-virtual {v4, v5}, Le/m/a/c/q1/t;->C(I)V

    add-int v5, v5, v17

    .line 13
    invoke-virtual {v4, v9}, Le/m/a/c/q1/t;->D(I)V

    .line 14
    :goto_1
    iget v13, v4, Le/m/a/c/q1/t;->b:I

    if-ge v13, v5, :cond_2f

    .line 15
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v17

    .line 16
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v9

    if-ne v9, v6, :cond_2d

    .line 17
    invoke-virtual {v4, v13}, Le/m/a/c/q1/t;->C(I)V

    add-int v13, v13, v17

    .line 18
    invoke-virtual {v4, v11}, Le/m/a/c/q1/t;->D(I)V

    .line 19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :goto_2
    iget v9, v4, Le/m/a/c/q1/t;->b:I

    if-ge v9, v13, :cond_2b

    .line 21
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v17

    add-int v9, v17, v9

    .line 22
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v6

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    const/16 v11, 0xa9

    const-string v10, "TCON"

    const v17, 0xffffff

    if-eq v7, v11, :cond_1b

    const/16 v11, 0xfd

    if-ne v7, v11, :cond_1

    goto/16 :goto_7

    :cond_1
    const v7, 0x676e7265

    if-ne v6, v7, :cond_3

    .line 23
    :try_start_0
    invoke-static {v4}, Le/m/a/c/g1/c0/e;->e(Le/m/a/c/q1/t;)I

    move-result v6

    if-lez v6, :cond_2

    .line 24
    sget-object v7, Le/m/a/c/g1/c0/e;->a:[Ljava/lang/String;

    array-length v11, v7

    if-gt v6, v11, :cond_2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v7, v6

    goto :goto_3

    :cond_2
    move-object v6, v12

    :goto_3
    if-eqz v6, :cond_1d

    .line 25
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v7, v10, v12, v6}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_3
    const v7, 0x6469736b

    if-ne v6, v7, :cond_4

    const-string v7, "TPOS"

    .line 26
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->b(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_4
    const v7, 0x74726b6e

    if-ne v6, v7, :cond_5

    const-string v7, "TRCK"

    .line 27
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->b(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_5
    const v7, 0x746d706f

    if-ne v6, v7, :cond_6

    const-string v7, "TBPM"

    .line 28
    invoke-static {v6, v7, v4, v14, v15}, Le/m/a/c/g1/c0/e;->d(ILjava/lang/String;Le/m/a/c/q1/t;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_b

    :cond_6
    const v7, 0x6370696c

    if-ne v6, v7, :cond_7

    const-string v7, "TCMP"

    .line 29
    invoke-static {v6, v7, v4, v14, v14}, Le/m/a/c/g1/c0/e;->d(ILjava/lang/String;Le/m/a/c/q1/t;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_b

    :cond_7
    const v7, 0x636f7672

    if-ne v6, v7, :cond_b

    .line 30
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v6

    .line 31
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v7

    if-ne v7, v8, :cond_1d

    .line 32
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v7

    and-int v7, v7, v17

    const/16 v10, 0xd

    if-ne v7, v10, :cond_8

    const-string v7, "image/jpeg"

    goto :goto_4

    :cond_8
    const/16 v10, 0xe

    if-ne v7, v10, :cond_9

    const-string v7, "image/png"

    goto :goto_4

    :cond_9
    move-object v7, v12

    :goto_4
    if-nez v7, :cond_a

    goto/16 :goto_8

    :cond_a
    const/4 v10, 0x4

    .line 33
    invoke-virtual {v4, v10}, Le/m/a/c/q1/t;->D(I)V

    add-int/lit8 v6, v6, -0x10

    .line 34
    new-array v10, v6, [B

    .line 35
    iget-object v11, v4, Le/m/a/c/q1/t;->a:[B

    iget v8, v4, Le/m/a/c/q1/t;->b:I

    invoke-static {v11, v8, v10, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    iget v8, v4, Le/m/a/c/q1/t;->b:I

    add-int/2addr v8, v6

    iput v8, v4, Le/m/a/c/q1/t;->b:I

    .line 37
    new-instance v6, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v12, v8, v10}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object v7, v6

    goto/16 :goto_b

    :cond_b
    const v7, 0x61415254

    if-ne v6, v7, :cond_c

    const-string v7, "TPE2"

    .line 38
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_c
    const v7, 0x736f6e6d

    if-ne v6, v7, :cond_d

    const-string v7, "TSOT"

    .line 39
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_d
    const v7, 0x736f616c

    if-ne v6, v7, :cond_e

    const-string v7, "TSO2"

    .line 40
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_e
    const v7, 0x736f6172

    if-ne v6, v7, :cond_f

    const-string v7, "TSOA"

    .line 41
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_f
    const v7, 0x736f6161

    if-ne v6, v7, :cond_10

    const-string v7, "TSOP"

    .line 42
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_10
    const v7, 0x736f636f

    if-ne v6, v7, :cond_11

    const-string v7, "TSOC"

    .line 43
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_11
    const v7, 0x72746e67

    if-ne v6, v7, :cond_12

    const-string v7, "ITUNESADVISORY"

    .line 44
    invoke-static {v6, v7, v4, v15, v15}, Le/m/a/c/g1/c0/e;->d(ILjava/lang/String;Le/m/a/c/q1/t;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_b

    :cond_12
    const v7, 0x70676170

    if-ne v6, v7, :cond_13

    const-string v7, "ITUNESGAPLESS"

    .line 45
    invoke-static {v6, v7, v4, v15, v14}, Le/m/a/c/g1/c0/e;->d(ILjava/lang/String;Le/m/a/c/q1/t;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_b

    :cond_13
    const v7, 0x736f736e

    if-ne v6, v7, :cond_14

    const-string v7, "TVSHOWSORT"

    .line 46
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_14
    const v7, 0x74767368

    if-ne v6, v7, :cond_15

    const-string v7, "TVSHOW"

    .line 47
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_b

    :cond_15
    const v7, 0x2d2d2d2d

    if-ne v6, v7, :cond_27

    move-object v8, v12

    move-object v10, v8

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 48
    :goto_5
    iget v11, v4, Le/m/a/c/q1/t;->b:I

    if-ge v11, v9, :cond_19

    .line 49
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v17

    .line 50
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v12

    const/4 v14, 0x4

    .line 51
    invoke-virtual {v4, v14}, Le/m/a/c/q1/t;->D(I)V

    const v14, 0x6d65616e

    if-ne v12, v14, :cond_16

    add-int/lit8 v8, v17, -0xc

    .line 52
    invoke-virtual {v4, v8}, Le/m/a/c/q1/t;->m(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_16
    const v14, 0x6e616d65

    if-ne v12, v14, :cond_17

    add-int/lit8 v10, v17, -0xc

    .line 53
    invoke-virtual {v4, v10}, Le/m/a/c/q1/t;->m(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_17
    const v14, 0x64617461

    if-ne v12, v14, :cond_18

    move v6, v11

    move/from16 v7, v17

    :cond_18
    add-int/lit8 v11, v17, -0xc

    .line 54
    invoke-virtual {v4, v11}, Le/m/a/c/q1/t;->D(I)V

    :goto_6
    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_5

    :cond_19
    if-eqz v8, :cond_1d

    if-eqz v10, :cond_1d

    const/4 v11, -0x1

    if-ne v6, v11, :cond_1a

    goto :goto_8

    .line 55
    :cond_1a
    invoke-virtual {v4, v6}, Le/m/a/c/q1/t;->C(I)V

    const/16 v6, 0x10

    .line 56
    invoke-virtual {v4, v6}, Le/m/a/c/q1/t;->D(I)V

    add-int/lit8 v7, v7, -0x10

    .line 57
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->m(I)Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    invoke-direct {v7, v8, v10, v6}, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1b
    :goto_7
    and-int v7, v6, v17

    const v8, 0x636d74

    if-ne v7, v8, :cond_1e

    .line 59
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v7

    .line 60
    invoke-virtual {v4}, Le/m/a/c/q1/t;->e()I

    move-result v8

    const v10, 0x64617461

    if-ne v8, v10, :cond_1c

    const/16 v8, 0x8

    .line 61
    invoke-virtual {v4, v8}, Le/m/a/c/q1/t;->D(I)V

    add-int/lit8 v7, v7, -0x10

    .line 62
    invoke-virtual {v4, v7}, Le/m/a/c/q1/t;->m(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v7, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v8, "und"

    invoke-direct {v7, v8, v6, v6}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 64
    :cond_1c
    invoke-static {v6}, Le/m/a/c/g1/c0/a;->a(I)Ljava/lang/String;

    :cond_1d
    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_1e
    const v8, 0x6e616d

    if-eq v7, v8, :cond_29

    const v8, 0x74726b

    if-ne v7, v8, :cond_1f

    goto/16 :goto_a

    :cond_1f
    const v8, 0x636f6d

    if-eq v7, v8, :cond_28

    const v8, 0x777274

    if-ne v7, v8, :cond_20

    goto :goto_9

    :cond_20
    const v8, 0x646179

    if-ne v7, v8, :cond_21

    const-string v7, "TDRC"

    .line 65
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_21
    const v8, 0x415254

    if-ne v7, v8, :cond_22

    const-string v7, "TPE1"

    .line 66
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_22
    const v8, 0x746f6f

    if-ne v7, v8, :cond_23

    const-string v7, "TSSE"

    .line 67
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_23
    const v8, 0x616c62

    if-ne v7, v8, :cond_24

    const-string v7, "TALB"

    .line 68
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_24
    const v8, 0x6c7972

    if-ne v7, v8, :cond_25

    const-string v7, "USLT"

    .line 69
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_25
    const v8, 0x67656e

    if-ne v7, v8, :cond_26

    .line 70
    invoke-static {v6, v10, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_26
    const v8, 0x677270

    if-ne v7, v8, :cond_27

    const-string v7, "TIT1"

    .line 71
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    .line 72
    :cond_27
    invoke-static {v6}, Le/m/a/c/g1/c0/a;->a(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v4, v9}, Le/m/a/c/q1/t;->C(I)V

    const/4 v7, 0x0

    goto :goto_c

    :cond_28
    :goto_9
    :try_start_1
    const-string v7, "TCOM"

    .line 74
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_b

    :cond_29
    :goto_a
    const-string v7, "TIT2"

    .line 75
    invoke-static {v6, v7, v4}, Le/m/a/c/g1/c0/e;->c(ILjava/lang/String;Le/m/a/c/q1/t;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :goto_b
    invoke-virtual {v4, v9}, Le/m/a/c/q1/t;->C(I)V

    :goto_c
    if-eqz v7, :cond_2a

    .line 77
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 78
    :goto_d
    invoke-virtual {v4, v9}, Le/m/a/c/q1/t;->C(I)V

    .line 79
    throw v0

    .line 80
    :cond_2b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_e

    :cond_2c
    new-instance v4, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_f

    :cond_2d
    add-int v13, v13, v17

    .line 81
    invoke-virtual {v4, v13}, Le/m/a/c/q1/t;->C(I)V

    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_2e
    add-int v5, v5, v17

    .line 82
    invoke-virtual {v4, v5}, Le/m/a/c/q1/t;->C(I)V

    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_2f
    :goto_e
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_30

    .line 83
    invoke-virtual {v3, v4}, Le/m/a/c/g1/m;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    :cond_30
    const v5, 0x6d657461

    goto :goto_10

    :cond_31
    move v5, v7

    const/4 v4, 0x0

    .line 84
    :goto_10
    invoke-virtual {v0, v5}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 85
    sget-object v6, Le/m/a/c/g1/c0/b;->a:[B

    const v6, 0x68646c72    # 4.3148E24f

    .line 86
    invoke-virtual {v5, v6}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v6

    const v7, 0x6b657973

    .line 87
    invoke-virtual {v5, v7}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v7

    const v8, 0x696c7374

    .line 88
    invoke-virtual {v5, v8}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v5

    if-eqz v6, :cond_3a

    if-eqz v7, :cond_3a

    if-eqz v5, :cond_3a

    .line 89
    iget-object v6, v6, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v8, 0x10

    .line 90
    invoke-virtual {v6, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 91
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v6

    const v8, 0x6d647461

    if-eq v6, v8, :cond_32

    goto/16 :goto_16

    .line 92
    :cond_32
    iget-object v6, v7, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const/16 v7, 0xc

    .line 93
    invoke-virtual {v6, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 94
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v7

    .line 95
    new-array v8, v7, [Ljava/lang/String;

    move v9, v15

    :goto_11
    if-ge v9, v7, :cond_33

    .line 96
    invoke-virtual {v6}, Le/m/a/c/q1/t;->e()I

    move-result v10

    const/4 v11, 0x4

    .line 97
    invoke-virtual {v6, v11}, Le/m/a/c/q1/t;->D(I)V

    const/16 v11, 0x8

    sub-int/2addr v10, v11

    .line 98
    invoke-virtual {v6, v10}, Le/m/a/c/q1/t;->n(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    :cond_33
    const/16 v11, 0x8

    .line 99
    iget-object v5, v5, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    .line 100
    invoke-virtual {v5, v11}, Le/m/a/c/q1/t;->C(I)V

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :goto_12
    invoke-virtual {v5}, Le/m/a/c/q1/t;->a()I

    move-result v9

    if-le v9, v11, :cond_38

    .line 103
    iget v9, v5, Le/m/a/c/q1/t;->b:I

    .line 104
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v10

    .line 105
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    if-ltz v12, :cond_36

    if-ge v12, v7, :cond_36

    .line 106
    aget-object v12, v8, v12

    add-int v13, v9, v10

    .line 107
    :goto_13
    iget v14, v5, Le/m/a/c/q1/t;->b:I

    if-ge v14, v13, :cond_35

    .line 108
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v16

    .line 109
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v11

    const v15, 0x64617461

    if-ne v11, v15, :cond_34

    .line 110
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v11

    .line 111
    invoke-virtual {v5}, Le/m/a/c/q1/t;->e()I

    move-result v13

    add-int/lit8 v14, v16, -0x10

    .line 112
    new-array v15, v14, [B

    move/from16 v20, v7

    .line 113
    iget-object v7, v5, Le/m/a/c/q1/t;->a:[B

    move-object/from16 v21, v8

    iget v8, v5, Le/m/a/c/q1/t;->b:I

    move-object/from16 v24, v2

    const/4 v2, 0x0

    invoke-static {v7, v8, v15, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v2, v5, Le/m/a/c/q1/t;->b:I

    add-int/2addr v2, v14

    iput v2, v5, Le/m/a/c/q1/t;->b:I

    .line 115
    new-instance v2, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;

    invoke-direct {v2, v12, v15, v13, v11}, Lcom/google/android/exoplayer2/extractor/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    goto :goto_14

    :cond_34
    move-object/from16 v24, v2

    move/from16 v20, v7

    move-object/from16 v21, v8

    add-int v14, v14, v16

    .line 116
    invoke-virtual {v5, v14}, Le/m/a/c/q1/t;->C(I)V

    const/16 v11, 0x8

    const/4 v15, 0x0

    goto :goto_13

    :cond_35
    move-object/from16 v24, v2

    move/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_37

    .line 117
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_36
    move-object/from16 v24, v2

    move/from16 v20, v7

    move-object/from16 v21, v8

    :cond_37
    :goto_15
    add-int/2addr v9, v10

    .line 118
    invoke-virtual {v5, v9}, Le/m/a/c/q1/t;->C(I)V

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v2, v24

    const/16 v11, 0x8

    const/4 v15, 0x0

    goto :goto_12

    :cond_38
    move-object/from16 v24, v2

    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_17

    :cond_39
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v6}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_18

    :cond_3a
    :goto_16
    move-object/from16 v24, v2

    :goto_17
    const/4 v2, 0x0

    .line 120
    :goto_18
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_19
    const/4 v12, 0x0

    .line 121
    iget-object v7, v0, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-wide/16 v9, 0x0

    if-ge v6, v7, :cond_78

    .line 122
    iget-object v7, v0, Le/m/a/c/g1/c0/a$a;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Le/m/a/c/g1/c0/a$a;

    .line 123
    iget v7, v15, Le/m/a/c/g1/c0/a;->a:I

    const v8, 0x7472616b

    if-eq v7, v8, :cond_3b

    goto :goto_1a

    :cond_3b
    const v7, 0x6d766864

    .line 124
    invoke-virtual {v0, v7}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v8

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    iget-boolean v13, v1, Le/m/a/c/g1/c0/f;->t:Z

    move-object v7, v15

    move-wide/from16 v9, v20

    .line 125
    invoke-static/range {v7 .. v13}, Le/m/a/c/g1/c0/b;->d(Le/m/a/c/g1/c0/a$a;Le/m/a/c/g1/c0/a$b;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Le/m/a/c/g1/c0/i;

    move-result-object v7

    if-nez v7, :cond_3c

    :goto_1a
    move-object/from16 v19, v2

    move-object/from16 v36, v3

    move-object/from16 v22, v4

    move-object v0, v5

    move/from16 v34, v6

    goto/16 :goto_48

    :cond_3c
    const v8, 0x6d646961

    .line 126
    invoke-virtual {v15, v8}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v8

    const v9, 0x6d696e66

    .line 127
    invoke-virtual {v8, v9}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v8

    const v9, 0x7374626c

    .line 128
    invoke-virtual {v8, v9}, Le/m/a/c/g1/c0/a$a;->b(I)Le/m/a/c/g1/c0/a$a;

    move-result-object v8

    const v9, 0x7374737a

    .line 129
    invoke-virtual {v8, v9}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v9

    if-eqz v9, :cond_3d

    .line 130
    new-instance v10, Le/m/a/c/g1/c0/b$b;

    invoke-direct {v10, v9}, Le/m/a/c/g1/c0/b$b;-><init>(Le/m/a/c/g1/c0/a$b;)V

    goto :goto_1b

    :cond_3d
    const v9, 0x73747a32

    .line 131
    invoke-virtual {v8, v9}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v9

    if-eqz v9, :cond_77

    .line 132
    new-instance v10, Le/m/a/c/g1/c0/b$c;

    invoke-direct {v10, v9}, Le/m/a/c/g1/c0/b$c;-><init>(Le/m/a/c/g1/c0/a$b;)V

    .line 133
    :goto_1b
    invoke-interface {v10}, Le/m/a/c/g1/c0/b$a;->b()I

    move-result v9

    if-nez v9, :cond_3e

    .line 134
    new-instance v8, Le/m/a/c/g1/c0/l;

    const/4 v9, 0x0

    new-array v10, v9, [J

    new-array v11, v9, [I

    const/16 v29, 0x0

    new-array v12, v9, [J

    new-array v13, v9, [I

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v25, v8

    move-object/from16 v26, v7

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    invoke-direct/range {v25 .. v33}, Le/m/a/c/g1/c0/l;-><init>(Le/m/a/c/g1/c0/i;[J[II[J[IJ)V

    move-object/from16 v19, v2

    move-object/from16 v36, v3

    move-object/from16 v22, v4

    move-object/from16 v35, v5

    move/from16 v34, v6

    goto/16 :goto_47

    :cond_3e
    const v11, 0x7374636f

    .line 135
    invoke-virtual {v8, v11}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v11

    if-nez v11, :cond_3f

    const v11, 0x636f3634

    .line 136
    invoke-virtual {v8, v11}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v11

    const/4 v12, 0x1

    goto :goto_1c

    :cond_3f
    const/4 v12, 0x0

    .line 137
    :goto_1c
    iget-object v11, v11, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const v13, 0x73747363

    .line 138
    invoke-virtual {v8, v13}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v13

    iget-object v13, v13, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const v15, 0x73747473

    .line 139
    invoke-virtual {v8, v15}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v15

    iget-object v15, v15, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    const v14, 0x73747373

    .line 140
    invoke-virtual {v8, v14}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v14

    if-eqz v14, :cond_40

    .line 141
    iget-object v14, v14, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    goto :goto_1d

    :cond_40
    const/4 v14, 0x0

    :goto_1d
    const v0, 0x63747473

    .line 142
    invoke-virtual {v8, v0}, Le/m/a/c/g1/c0/a$a;->c(I)Le/m/a/c/g1/c0/a$b;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 143
    iget-object v0, v0, Le/m/a/c/g1/c0/a$b;->b:Le/m/a/c/q1/t;

    goto :goto_1e

    :cond_41
    const/4 v0, 0x0

    :goto_1e
    const/16 v8, 0xc

    .line 144
    invoke-virtual {v11, v8}, Le/m/a/c/q1/t;->C(I)V

    move-object/from16 v19, v2

    .line 145
    invoke-virtual {v11}, Le/m/a/c/q1/t;->t()I

    move-result v2

    .line 146
    invoke-virtual {v13, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 147
    invoke-virtual {v13}, Le/m/a/c/q1/t;->t()I

    move-result v20

    .line 148
    invoke-virtual {v13}, Le/m/a/c/q1/t;->e()I

    move-result v8

    move-object/from16 v22, v4

    const/4 v4, 0x1

    if-ne v8, v4, :cond_42

    const/4 v4, 0x1

    goto :goto_1f

    :cond_42
    const/4 v4, 0x0

    :goto_1f
    const-string v8, "first_chunk must be 1"

    invoke-static {v4, v8}, Ln3/g0/y;->y(ZLjava/lang/Object;)V

    const/16 v4, 0xc

    .line 149
    invoke-virtual {v15, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 150
    invoke-virtual {v15}, Le/m/a/c/q1/t;->t()I

    move-result v8

    const/16 v18, -0x1

    add-int/lit8 v8, v8, -0x1

    .line 151
    invoke-virtual {v15}, Le/m/a/c/q1/t;->t()I

    move-result v21

    .line 152
    invoke-virtual {v15}, Le/m/a/c/q1/t;->t()I

    move-result v1

    if-eqz v0, :cond_43

    .line 153
    invoke-virtual {v0, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 154
    invoke-virtual {v0}, Le/m/a/c/q1/t;->t()I

    move-result v23

    goto :goto_20

    :cond_43
    const/16 v23, 0x0

    :goto_20
    if-eqz v14, :cond_45

    .line 155
    invoke-virtual {v14, v4}, Le/m/a/c/q1/t;->C(I)V

    .line 156
    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v25

    if-lez v25, :cond_44

    .line 157
    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v26

    const/16 v18, -0x1

    add-int/lit8 v26, v26, -0x1

    goto :goto_22

    :cond_44
    const/4 v14, 0x0

    goto :goto_21

    :cond_45
    const/16 v25, 0x0

    :goto_21
    const/16 v26, -0x1

    .line 158
    :goto_22
    invoke-interface {v10}, Le/m/a/c/g1/c0/b$a;->c()Z

    move-result v27

    if-eqz v27, :cond_46

    iget-object v4, v7, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget-object v4, v4, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    move/from16 v34, v6

    const-string v6, "audio/raw"

    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    if-nez v8, :cond_47

    if-nez v23, :cond_47

    if-nez v25, :cond_47

    const/4 v4, 0x1

    goto :goto_23

    :cond_46
    move/from16 v34, v6

    :cond_47
    const/4 v4, 0x0

    :goto_23
    if-nez v4, :cond_58

    .line 160
    new-array v4, v9, [J

    .line 161
    new-array v6, v9, [I

    move/from16 v27, v8

    .line 162
    new-array v8, v9, [J

    move-object/from16 v35, v5

    .line 163
    new-array v5, v9, [I

    move-object/from16 v31, v7

    move-object/from16 v43, v15

    move/from16 v39, v20

    move/from16 v40, v21

    move/from16 v41, v23

    move/from16 v42, v25

    move/from16 v15, v26

    const/4 v7, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, -0x1

    move-object/from16 v23, v3

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v9, :cond_55

    move/from16 v44, v9

    move/from16 v9, v30

    move/from16 v30, v33

    move-wide/from16 v68, v25

    move/from16 v26, v32

    move-wide/from16 v32, v68

    const/16 v25, 0x1

    :goto_25
    if-nez v26, :cond_4c

    move/from16 v45, v1

    add-int/lit8 v1, v38, 0x1

    if-ne v1, v2, :cond_48

    const/16 v25, 0x0

    goto :goto_28

    :cond_48
    if-eqz v12, :cond_49

    .line 164
    invoke-virtual {v11}, Le/m/a/c/q1/t;->u()J

    move-result-wide v20

    goto :goto_26

    .line 165
    :cond_49
    invoke-virtual {v11}, Le/m/a/c/q1/t;->r()J

    move-result-wide v20

    :goto_26
    if-ne v1, v9, :cond_4b

    .line 166
    invoke-virtual {v13}, Le/m/a/c/q1/t;->t()I

    move-result v30

    const/4 v9, 0x4

    .line 167
    invoke-virtual {v13, v9}, Le/m/a/c/q1/t;->D(I)V

    add-int/lit8 v39, v39, -0x1

    if-lez v39, :cond_4a

    .line 168
    invoke-virtual {v13}, Le/m/a/c/q1/t;->t()I

    move-result v9

    const/16 v18, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_27

    :cond_4a
    const/4 v9, -0x1

    :cond_4b
    :goto_27
    const/16 v25, 0x1

    :goto_28
    move/from16 v38, v1

    if-eqz v25, :cond_4d

    move-wide/from16 v32, v20

    move/from16 v26, v30

    move/from16 v1, v45

    goto :goto_25

    :cond_4c
    move/from16 v45, v1

    :cond_4d
    move/from16 v1, v30

    move/from16 v30, v9

    if-nez v25, :cond_4e

    .line 169
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 170
    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 171
    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    .line 172
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move v9, v3

    goto/16 :goto_2b

    :cond_4e
    if-eqz v0, :cond_50

    :goto_29
    if-nez v37, :cond_4f

    if-lez v41, :cond_4f

    .line 173
    invoke-virtual {v0}, Le/m/a/c/q1/t;->t()I

    move-result v37

    .line 174
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    move-result v36

    add-int/lit8 v41, v41, -0x1

    goto :goto_29

    :cond_4f
    add-int/lit8 v37, v37, -0x1

    :cond_50
    move/from16 v9, v36

    .line 175
    aput-wide v32, v4, v3

    .line 176
    invoke-interface {v10}, Le/m/a/c/g1/c0/b$a;->a()I

    move-result v25

    aput v25, v6, v3

    move/from16 v25, v1

    .line 177
    aget v1, v6, v3

    if-le v1, v7, :cond_51

    .line 178
    aget v1, v6, v3

    move v7, v1

    :cond_51
    move-object/from16 v46, v10

    move-object/from16 v47, v11

    int-to-long v10, v9

    add-long v10, v28, v10

    .line 179
    aput-wide v10, v8, v3

    if-nez v14, :cond_52

    const/4 v1, 0x1

    goto :goto_2a

    :cond_52
    const/4 v1, 0x0

    .line 180
    :goto_2a
    aput v1, v5, v3

    if-ne v3, v15, :cond_53

    const/4 v1, 0x1

    .line 181
    aput v1, v5, v3

    add-int/lit8 v42, v42, -0x1

    if-lez v42, :cond_53

    .line 182
    invoke-virtual {v14}, Le/m/a/c/q1/t;->t()I

    move-result v10

    sub-int/2addr v10, v1

    move v15, v10

    :cond_53
    move/from16 v1, v45

    int-to-long v10, v1

    add-long v28, v28, v10

    const/4 v10, -0x1

    add-int/lit8 v40, v40, -0x1

    if-nez v40, :cond_54

    if-lez v27, :cond_54

    .line 183
    invoke-virtual/range {v43 .. v43}, Le/m/a/c/q1/t;->t()I

    move-result v1

    .line 184
    invoke-virtual/range {v43 .. v43}, Le/m/a/c/q1/t;->e()I

    move-result v10

    add-int/lit8 v27, v27, -0x1

    move/from16 v40, v1

    move v1, v10

    .line 185
    :cond_54
    aget v10, v6, v3

    int-to-long v10, v10

    add-long v10, v32, v10

    add-int/lit8 v32, v26, -0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v36, v9

    move/from16 v33, v25

    move/from16 v9, v44

    move-wide/from16 v25, v10

    move-object/from16 v10, v46

    move-object/from16 v11, v47

    goto/16 :goto_24

    :cond_55
    move/from16 v44, v9

    :goto_2b
    move/from16 v1, v36

    int-to-long v1, v1

    add-long v28, v28, v1

    :goto_2c
    if-lez v41, :cond_57

    .line 186
    invoke-virtual {v0}, Le/m/a/c/q1/t;->t()I

    move-result v1

    if-eqz v1, :cond_56

    goto :goto_2d

    .line 187
    :cond_56
    invoke-virtual {v0}, Le/m/a/c/q1/t;->e()I

    add-int/lit8 v41, v41, -0x1

    goto :goto_2c

    :cond_57
    :goto_2d
    move-object v0, v8

    move-object v8, v4

    move-object/from16 v4, v31

    goto/16 :goto_35

    :cond_58
    move-object/from16 v23, v3

    move-object/from16 v35, v5

    move-object/from16 v31, v7

    move/from16 v44, v9

    move-object/from16 v47, v11

    .line 188
    new-array v0, v2, [J

    .line 189
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :goto_2e
    add-int/2addr v5, v6

    if-ne v5, v2, :cond_59

    const/4 v6, 0x0

    goto :goto_31

    :cond_59
    if-eqz v12, :cond_5a

    .line 190
    invoke-virtual/range {v47 .. v47}, Le/m/a/c/q1/t;->u()J

    move-result-wide v6

    goto :goto_2f

    .line 191
    :cond_5a
    invoke-virtual/range {v47 .. v47}, Le/m/a/c/q1/t;->r()J

    move-result-wide v6

    :goto_2f
    if-ne v5, v11, :cond_5c

    .line 192
    invoke-virtual {v13}, Le/m/a/c/q1/t;->t()I

    move-result v4

    const/4 v8, 0x4

    .line 193
    invoke-virtual {v13, v8}, Le/m/a/c/q1/t;->D(I)V

    add-int/lit8 v20, v20, -0x1

    if-lez v20, :cond_5b

    .line 194
    invoke-virtual {v13}, Le/m/a/c/q1/t;->t()I

    move-result v8

    const/4 v9, -0x1

    add-int/lit8 v11, v8, -0x1

    goto :goto_30

    :cond_5b
    const/4 v11, -0x1

    :cond_5c
    :goto_30
    move-wide v9, v6

    const/4 v6, 0x1

    :goto_31
    if-eqz v6, :cond_5d

    .line 195
    aput-wide v9, v0, v5

    .line 196
    aput v4, v3, v5

    const/4 v6, 0x1

    goto :goto_2e

    :cond_5d
    move-object/from16 v4, v31

    .line 197
    iget-object v5, v4, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget v6, v5, Lcom/google/android/exoplayer2/Format;->x:I

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->v:I

    .line 198
    invoke-static {v6, v5}, Le/m/a/c/q1/d0;->m(II)I

    move-result v5

    int-to-long v6, v1

    const/16 v1, 0x2000

    .line 199
    div-int/2addr v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_32
    if-ge v8, v2, :cond_5e

    .line 200
    aget v10, v3, v8

    .line 201
    invoke-static {v10, v1}, Le/m/a/c/q1/d0;->d(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 202
    :cond_5e
    new-array v8, v9, [J

    .line 203
    new-array v10, v9, [I

    .line 204
    new-array v11, v9, [J

    .line 205
    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_33
    if-ge v12, v2, :cond_60

    .line 206
    aget v20, v3, v12

    .line 207
    aget-wide v25, v0, v12

    move/from16 v68, v20

    move-object/from16 v20, v0

    move/from16 v0, v68

    :goto_34
    if-lez v0, :cond_5f

    .line 208
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 209
    aput-wide v25, v8, v15

    mul-int v27, v5, v21

    .line 210
    aput v27, v10, v15

    move/from16 v27, v1

    .line 211
    aget v1, v10, v15

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v28, v2

    int-to-long v1, v13

    mul-long/2addr v1, v6

    .line 212
    aput-wide v1, v11, v15

    const/4 v1, 0x1

    .line 213
    aput v1, v9, v15

    .line 214
    aget v1, v10, v15

    int-to-long v1, v1

    add-long v25, v25, v1

    add-int v13, v13, v21

    sub-int v0, v0, v21

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v27

    move/from16 v2, v28

    goto :goto_34

    :cond_5f
    move/from16 v27, v1

    move/from16 v28, v2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    goto :goto_33

    :cond_60
    int-to-long v0, v13

    mul-long v28, v6, v0

    move-object v5, v9

    move-object v6, v10

    move-object v0, v11

    move v7, v14

    move/from16 v9, v44

    :goto_35
    const-wide/32 v12, 0xf4240

    .line 215
    iget-wide v14, v4, Le/m/a/c/g1/c0/i;->c:J

    move-wide/from16 v10, v28

    invoke-static/range {v10 .. v15}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v32

    .line 216
    iget-object v1, v4, Le/m/a/c/g1/c0/i;->h:[J

    const-wide/32 v2, 0xf4240

    if-nez v1, :cond_61

    .line 217
    iget-wide v9, v4, Le/m/a/c/g1/c0/i;->c:J

    invoke-static {v0, v2, v3, v9, v10}, Le/m/a/c/q1/d0;->A([JJJ)V

    .line 218
    new-instance v1, Le/m/a/c/g1/c0/l;

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    move-object/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v30, v0

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v33}, Le/m/a/c/g1/c0/l;-><init>(Le/m/a/c/g1/c0/i;[J[II[J[IJ)V

    move-object v8, v1

    move-object/from16 v2, v23

    goto/16 :goto_3a

    .line 219
    :cond_61
    array-length v10, v1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_65

    iget v10, v4, Le/m/a/c/g1/c0/i;->b:I

    if-ne v10, v11, :cond_65

    array-length v10, v0

    const/4 v11, 0x2

    if-lt v10, v11, :cond_65

    .line 220
    iget-object v10, v4, Le/m/a/c/g1/c0/i;->i:[J

    const/4 v11, 0x0

    aget-wide v12, v10, v11

    .line 221
    aget-wide v36, v1, v11

    iget-wide v14, v4, Le/m/a/c/g1/c0/i;->c:J

    iget-wide v2, v4, Le/m/a/c/g1/c0/i;->d:J

    move-wide/from16 v38, v14

    move-wide/from16 v40, v2

    invoke-static/range {v36 .. v41}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v1

    add-long/2addr v1, v12

    .line 222
    array-length v3, v0

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    const/4 v10, 0x4

    .line 223
    invoke-static {v10, v11, v3}, Le/m/a/c/q1/d0;->f(III)I

    move-result v14

    .line 224
    array-length v15, v0

    sub-int/2addr v15, v10

    .line 225
    invoke-static {v15, v11, v3}, Le/m/a/c/q1/d0;->f(III)I

    move-result v3

    .line 226
    aget-wide v15, v0, v11

    cmp-long v11, v15, v12

    if-gtz v11, :cond_62

    aget-wide v14, v0, v14

    cmp-long v11, v12, v14

    if-gez v11, :cond_62

    aget-wide v14, v0, v3

    cmp-long v3, v14, v1

    if-gez v3, :cond_62

    cmp-long v3, v1, v28

    if-gtz v3, :cond_62

    const/4 v3, 0x1

    goto :goto_36

    :cond_62
    const/4 v3, 0x0

    :goto_36
    if-eqz v3, :cond_65

    sub-long v36, v28, v1

    const/4 v1, 0x0

    .line 227
    aget-wide v2, v0, v1

    sub-long v38, v12, v2

    iget-object v1, v4, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v1, v1

    iget-wide v11, v4, Le/m/a/c/g1/c0/i;->c:J

    move-wide/from16 v40, v1

    move-wide/from16 v42, v11

    invoke-static/range {v38 .. v43}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v1

    .line 228
    iget-object v3, v4, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->w:I

    int-to-long v11, v3

    iget-wide v13, v4, Le/m/a/c/g1/c0/i;->c:J

    move-wide/from16 v38, v11

    move-wide/from16 v40, v13

    invoke-static/range {v36 .. v41}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    if-nez v3, :cond_63

    cmp-long v3, v11, v13

    if-eqz v3, :cond_64

    :cond_63
    const-wide/32 v15, 0x7fffffff

    cmp-long v3, v1, v15

    if-gtz v3, :cond_64

    cmp-long v3, v11, v15

    if-gtz v3, :cond_64

    long-to-int v1, v1

    move-object/from16 v2, v23

    .line 229
    iput v1, v2, Le/m/a/c/g1/m;->a:I

    long-to-int v1, v11

    .line 230
    iput v1, v2, Le/m/a/c/g1/m;->b:I

    .line 231
    iget-wide v11, v4, Le/m/a/c/g1/c0/i;->c:J

    const-wide/32 v13, 0xf4240

    invoke-static {v0, v13, v14, v11, v12}, Le/m/a/c/q1/d0;->A([JJJ)V

    .line 232
    iget-object v1, v4, Le/m/a/c/g1/c0/i;->h:[J

    const/4 v3, 0x0

    aget-wide v11, v1, v3

    const-wide/32 v13, 0xf4240

    iget-wide v9, v4, Le/m/a/c/g1/c0/i;->d:J

    move-wide v15, v9

    .line 233
    invoke-static/range {v11 .. v16}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v32

    .line 234
    new-instance v1, Le/m/a/c/g1/c0/l;

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    move-object/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v30, v0

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v33}, Le/m/a/c/g1/c0/l;-><init>(Le/m/a/c/g1/c0/i;[J[II[J[IJ)V

    goto :goto_39

    :cond_64
    move-object/from16 v2, v23

    goto :goto_37

    :cond_65
    move-object/from16 v2, v23

    const-wide/16 v13, 0x0

    .line 235
    :goto_37
    iget-object v1, v4, Le/m/a/c/g1/c0/i;->h:[J

    array-length v3, v1

    const/4 v10, 0x1

    if-ne v3, v10, :cond_67

    const/4 v3, 0x0

    aget-wide v10, v1, v3

    cmp-long v10, v10, v13

    if-nez v10, :cond_67

    .line 236
    iget-object v1, v4, Le/m/a/c/g1/c0/i;->i:[J

    aget-wide v9, v1, v3

    const/4 v1, 0x0

    .line 237
    :goto_38
    array-length v3, v0

    if-ge v1, v3, :cond_66

    .line 238
    aget-wide v11, v0, v1

    sub-long v36, v11, v9

    const-wide/32 v38, 0xf4240

    iget-wide v11, v4, Le/m/a/c/g1/c0/i;->c:J

    move-wide/from16 v40, v11

    .line 239
    invoke-static/range {v36 .. v41}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v11

    aput-wide v11, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_66
    sub-long v11, v28, v9

    const-wide/32 v13, 0xf4240

    .line 240
    iget-wide v9, v4, Le/m/a/c/g1/c0/i;->c:J

    move-wide v15, v9

    .line 241
    invoke-static/range {v11 .. v16}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v32

    .line 242
    new-instance v1, Le/m/a/c/g1/c0/l;

    move-object/from16 v25, v1

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    move-object/from16 v28, v6

    move/from16 v29, v7

    move-object/from16 v30, v0

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v33}, Le/m/a/c/g1/c0/l;-><init>(Le/m/a/c/g1/c0/i;[J[II[J[IJ)V

    :goto_39
    move-object v8, v1

    :goto_3a
    move-object/from16 v36, v2

    goto/16 :goto_47

    .line 243
    :cond_67
    iget v3, v4, Le/m/a/c/g1/c0/i;->b:I

    const/4 v10, 0x1

    if-ne v3, v10, :cond_68

    const/4 v3, 0x1

    goto :goto_3b

    :cond_68
    const/4 v3, 0x0

    .line 244
    :goto_3b
    array-length v10, v1

    new-array v10, v10, [I

    .line 245
    array-length v1, v1

    new-array v1, v1, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 246
    :goto_3c
    iget-object v14, v4, Le/m/a/c/g1/c0/i;->h:[J

    move/from16 v16, v7

    array-length v7, v14

    if-ge v11, v7, :cond_6c

    .line 247
    iget-object v7, v4, Le/m/a/c/g1/c0/i;->i:[J

    move-object/from16 v20, v6

    aget-wide v6, v7, v11

    const-wide/16 v25, -0x1

    cmp-long v21, v6, v25

    if-eqz v21, :cond_6b

    .line 248
    aget-wide v25, v14, v11

    move-object/from16 v21, v8

    move v14, v9

    iget-wide v8, v4, Le/m/a/c/g1/c0/i;->c:J

    move/from16 v23, v12

    move/from16 v31, v13

    iget-wide v12, v4, Le/m/a/c/g1/c0/i;->d:J

    move-wide/from16 v27, v8

    move-wide/from16 v29, v12

    .line 249
    invoke-static/range {v25 .. v30}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v8

    const/4 v12, 0x1

    .line 250
    invoke-static {v0, v6, v7, v12, v12}, Le/m/a/c/q1/d0;->c([JJZZ)I

    move-result v13

    aput v13, v10, v11

    add-long/2addr v6, v8

    const/4 v8, 0x0

    .line 251
    invoke-static {v0, v6, v7, v3, v8}, Le/m/a/c/q1/d0;->b([JJZZ)I

    move-result v6

    aput v6, v1, v11

    .line 252
    :goto_3d
    aget v6, v10, v11

    aget v7, v1, v11

    if-ge v6, v7, :cond_69

    aget v6, v10, v11

    aget v6, v5, v6

    and-int/2addr v6, v12

    if-nez v6, :cond_69

    .line 253
    aget v6, v10, v11

    add-int/2addr v6, v12

    aput v6, v10, v11

    const/4 v12, 0x1

    goto :goto_3d

    .line 254
    :cond_69
    aget v6, v1, v11

    aget v7, v10, v11

    sub-int/2addr v6, v7

    add-int/2addr v6, v15

    .line 255
    aget v7, v10, v11

    move/from16 v8, v31

    if-eq v8, v7, :cond_6a

    const/4 v7, 0x1

    goto :goto_3e

    :cond_6a
    const/4 v7, 0x0

    :goto_3e
    or-int v7, v23, v7

    .line 256
    aget v8, v1, v11

    move v15, v6

    move v12, v7

    move v13, v8

    goto :goto_3f

    :cond_6b
    move-object/from16 v21, v8

    move v14, v9

    move/from16 v23, v12

    move v8, v13

    :goto_3f
    add-int/lit8 v11, v11, 0x1

    move v9, v14

    move/from16 v7, v16

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    goto :goto_3c

    :cond_6c
    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move/from16 v23, v12

    if-eq v15, v9, :cond_6d

    const/4 v3, 0x1

    goto :goto_40

    :cond_6d
    const/4 v3, 0x0

    :goto_40
    or-int v3, v23, v3

    if-eqz v3, :cond_6e

    .line 257
    new-array v6, v15, [J

    goto :goto_41

    :cond_6e
    move-object/from16 v6, v21

    :goto_41
    if-eqz v3, :cond_6f

    .line 258
    new-array v7, v15, [I

    goto :goto_42

    :cond_6f
    move-object/from16 v7, v20

    :goto_42
    if-eqz v3, :cond_70

    const/16 v16, 0x0

    :cond_70
    if-eqz v3, :cond_71

    .line 259
    new-array v8, v15, [I

    goto :goto_43

    :cond_71
    move-object v8, v5

    .line 260
    :goto_43
    new-array v9, v15, [J

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 261
    :goto_44
    iget-object v15, v4, Le/m/a/c/g1/c0/i;->h:[J

    array-length v15, v15

    if-ge v13, v15, :cond_75

    .line 262
    iget-object v15, v4, Le/m/a/c/g1/c0/i;->i:[J

    aget-wide v31, v15, v13

    .line 263
    aget v15, v10, v13

    move-object/from16 v23, v10

    .line 264
    aget v10, v1, v13

    if-eqz v3, :cond_72

    move-object/from16 v33, v1

    sub-int v1, v10, v15

    move-object/from16 v36, v2

    move-object/from16 v2, v21

    .line 265
    invoke-static {v2, v15, v6, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v2, v20

    .line 266
    invoke-static {v2, v15, v7, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    invoke-static {v5, v15, v8, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45

    :cond_72
    move-object/from16 v33, v1

    move-object/from16 v36, v2

    move-object/from16 v2, v20

    :goto_45
    move/from16 v1, v16

    :goto_46
    if-ge v15, v10, :cond_74

    const-wide/32 v27, 0xf4240

    move-object/from16 v20, v5

    move-object/from16 v37, v6

    .line 268
    iget-wide v5, v4, Le/m/a/c/g1/c0/i;->d:J

    move-wide/from16 v25, v11

    move-wide/from16 v29, v5

    invoke-static/range {v25 .. v30}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v5

    .line 269
    aget-wide v25, v0, v15

    move-wide/from16 v27, v11

    move v12, v10

    sub-long v10, v25, v31

    move/from16 v16, v12

    move/from16 v25, v13

    const-wide/16 v12, 0x0

    .line 270
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v38

    const-wide/32 v40, 0xf4240

    iget-wide v10, v4, Le/m/a/c/g1/c0/i;->c:J

    move-wide/from16 v42, v10

    .line 271
    invoke-static/range {v38 .. v43}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 272
    aput-wide v5, v9, v14

    if-eqz v3, :cond_73

    .line 273
    aget v5, v7, v14

    if-le v5, v1, :cond_73

    .line 274
    aget v1, v2, v15

    :cond_73
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    move-object/from16 v5, v20

    move/from16 v13, v25

    move-wide/from16 v11, v27

    move-object/from16 v6, v37

    goto :goto_46

    :cond_74
    move-object/from16 v20, v5

    move-object/from16 v37, v6

    move-wide/from16 v27, v11

    move/from16 v25, v13

    .line 275
    iget-object v5, v4, Le/m/a/c/g1/c0/i;->h:[J

    aget-wide v10, v5, v25

    add-long v11, v27, v10

    add-int/lit8 v13, v25, 0x1

    move/from16 v16, v1

    move-object/from16 v5, v20

    move-object/from16 v10, v23

    move-object/from16 v1, v33

    move-object/from16 v20, v2

    move-object/from16 v2, v36

    goto/16 :goto_44

    :cond_75
    move-object/from16 v36, v2

    move-object/from16 v37, v6

    move-wide/from16 v27, v11

    const-wide/32 v0, 0xf4240

    .line 276
    iget-wide v2, v4, Le/m/a/c/g1/c0/i;->d:J

    move-wide/from16 v25, v27

    move-wide/from16 v27, v0

    move-wide/from16 v29, v2

    .line 277
    invoke-static/range {v25 .. v30}, Le/m/a/c/q1/d0;->z(JJJ)J

    move-result-wide v32

    .line 278
    new-instance v0, Le/m/a/c/g1/c0/l;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v27, v37

    move-object/from16 v28, v7

    move/from16 v29, v16

    move-object/from16 v30, v9

    move-object/from16 v31, v8

    invoke-direct/range {v25 .. v33}, Le/m/a/c/g1/c0/l;-><init>(Le/m/a/c/g1/c0/i;[J[II[J[IJ)V

    move-object v8, v0

    .line 279
    :goto_47
    iget v0, v8, Le/m/a/c/g1/c0/l;->b:I

    if-nez v0, :cond_76

    move-object/from16 v0, v35

    goto :goto_48

    :cond_76
    move-object/from16 v0, v35

    .line 280
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_48
    add-int/lit8 v6, v34, 0x1

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v2, v19

    move-object/from16 v4, v22

    move-object/from16 v3, v36

    move-object/from16 v0, p1

    goto/16 :goto_19

    .line 281
    :cond_77
    new-instance v0, Le/m/a/c/m0;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_78
    move-object/from16 v19, v2

    move-object/from16 v36, v3

    move-object/from16 v22, v4

    move-object v0, v5

    .line 282
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v2

    const/4 v4, 0x0

    const/4 v11, -0x1

    :goto_49
    if-ge v4, v1, :cond_7e

    .line 283
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/m/a/c/g1/c0/l;

    .line 284
    iget-object v8, v7, Le/m/a/c/g1/c0/l;->a:Le/m/a/c/g1/c0/i;

    .line 285
    iget-wide v9, v8, Le/m/a/c/g1/c0/i;->e:J

    cmp-long v12, v9, v2

    if-eqz v12, :cond_79

    goto :goto_4a

    :cond_79
    iget-wide v9, v7, Le/m/a/c/g1/c0/l;->h:J

    .line 286
    :goto_4a
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 287
    new-instance v12, Le/m/a/c/g1/c0/f$a;

    move-object/from16 v13, p0

    iget-object v14, v13, Le/m/a/c/g1/c0/f;->o:Le/m/a/c/g1/i;

    iget v15, v8, Le/m/a/c/g1/c0/i;->b:I

    .line 288
    invoke-interface {v14, v4, v15}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v14

    invoke-direct {v12, v8, v7, v14}, Le/m/a/c/g1/c0/f$a;-><init>(Le/m/a/c/g1/c0/i;Le/m/a/c/g1/c0/l;Le/m/a/c/g1/s;)V

    .line 289
    iget v14, v7, Le/m/a/c/g1/c0/l;->e:I

    add-int/lit8 v47, v14, 0x1e

    .line 290
    iget-object v14, v8, Le/m/a/c/g1/c0/i;->f:Lcom/google/android/exoplayer2/Format;

    .line 291
    new-instance v15, Lcom/google/android/exoplayer2/Format;

    move-object/from16 v37, v15

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->a:Ljava/lang/String;

    move-object/from16 v38, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->b:Ljava/lang/String;

    move-object/from16 v39, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->c:I

    move/from16 v40, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->d:I

    move/from16 v41, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->e:I

    move/from16 v42, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->f:Ljava/lang/String;

    move-object/from16 v43, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->g:Lcom/google/android/exoplayer2/metadata/Metadata;

    move-object/from16 v44, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->h:Ljava/lang/String;

    move-object/from16 v45, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->i:Ljava/lang/String;

    move-object/from16 v46, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->k:Ljava/util/List;

    move-object/from16 v48, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->l:Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-object/from16 v49, v2

    iget-wide v2, v14, Lcom/google/android/exoplayer2/Format;->m:J

    move-wide/from16 v50, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->n:I

    move/from16 v52, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->o:I

    move/from16 v53, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->p:F

    move/from16 v54, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->q:I

    move/from16 v55, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->r:F

    move/from16 v56, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->t:[B

    move-object/from16 v57, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->s:I

    move/from16 v58, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->u:Lcom/google/android/exoplayer2/video/ColorInfo;

    move-object/from16 v59, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->v:I

    move/from16 v60, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->w:I

    move/from16 v61, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->x:I

    move/from16 v62, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->y:I

    move/from16 v63, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->z:I

    move/from16 v64, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->A:Ljava/lang/String;

    move-object/from16 v65, v2

    iget v2, v14, Lcom/google/android/exoplayer2/Format;->B:I

    move/from16 v66, v2

    iget-object v2, v14, Lcom/google/android/exoplayer2/Format;->C:Ljava/lang/Class;

    move-object/from16 v67, v2

    invoke-direct/range {v37 .. v67}, Lcom/google/android/exoplayer2/Format;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;JIIFIF[BILcom/google/android/exoplayer2/video/ColorInfo;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 292
    iget v2, v8, Le/m/a/c/g1/c0/i;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7a

    const-wide/16 v2, 0x0

    cmp-long v14, v9, v2

    if-lez v14, :cond_7b

    iget v7, v7, Le/m/a/c/g1/c0/l;->b:I

    const/4 v14, 0x1

    if-le v7, v14, :cond_7b

    int-to-float v7, v7

    long-to-float v9, v9

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v9, v10

    div-float/2addr v7, v9

    .line 293
    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/Format;->b(F)Lcom/google/android/exoplayer2/Format;

    move-result-object v15

    goto :goto_4b

    :cond_7a
    const-wide/16 v2, 0x0

    .line 294
    :cond_7b
    :goto_4b
    iget v7, v8, Le/m/a/c/g1/c0/i;->b:I

    move-object/from16 v10, v19

    move-object/from16 v14, v22

    move-object/from16 v9, v36

    .line 295
    invoke-static {v7, v15, v14, v10, v9}, Le/m/a/c/g1/c0/e;->a(ILcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/metadata/Metadata;Le/m/a/c/g1/m;)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 296
    iget-object v15, v12, Le/m/a/c/g1/c0/f$a;->c:Le/m/a/c/g1/s;

    invoke-interface {v15, v7}, Le/m/a/c/g1/s;->b(Lcom/google/android/exoplayer2/Format;)V

    .line 297
    iget v7, v8, Le/m/a/c/g1/c0/i;->b:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7c

    const/4 v7, -0x1

    if-ne v11, v7, :cond_7d

    .line 298
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_4c

    :cond_7c
    const/4 v7, -0x1

    :cond_7d
    :goto_4c
    move-object/from16 v15, v24

    .line 299
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v36, v9

    move-object/from16 v19, v10

    move-object/from16 v22, v14

    move-object/from16 v24, v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_49

    :cond_7e
    move-object/from16 v15, v24

    const-wide/16 v2, 0x0

    const/4 v7, -0x1

    move-object/from16 v13, p0

    .line 300
    iput v11, v13, Le/m/a/c/g1/c0/f;->r:I

    .line 301
    iput-wide v5, v13, Le/m/a/c/g1/c0/f;->s:J

    const/4 v0, 0x0

    new-array v1, v0, [Le/m/a/c/g1/c0/f$a;

    .line 302
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/m/a/c/g1/c0/f$a;

    iput-object v0, v13, Le/m/a/c/g1/c0/f;->p:[Le/m/a/c/g1/c0/f$a;

    .line 303
    array-length v1, v0

    new-array v1, v1, [[J

    .line 304
    array-length v4, v0

    new-array v4, v4, [I

    .line 305
    array-length v5, v0

    new-array v5, v5, [J

    .line 306
    array-length v6, v0

    new-array v6, v6, [Z

    const/4 v8, 0x0

    .line 307
    :goto_4d
    array-length v9, v0

    if-ge v8, v9, :cond_7f

    .line 308
    aget-object v9, v0, v8

    iget-object v9, v9, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget v9, v9, Le/m/a/c/g1/c0/l;->b:I

    new-array v9, v9, [J

    aput-object v9, v1, v8

    .line 309
    aget-object v9, v0, v8

    iget-object v9, v9, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget-object v9, v9, Le/m/a/c/g1/c0/l;->f:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    aput-wide v11, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4d

    :cond_7f
    const/4 v10, 0x0

    move-wide v8, v2

    move v2, v10

    .line 310
    :goto_4e
    array-length v3, v0

    if-ge v2, v3, :cond_83

    const-wide v11, 0x7fffffffffffffffL

    move v3, v10

    move-wide v14, v11

    move v11, v7

    .line 311
    :goto_4f
    array-length v12, v0

    if-ge v3, v12, :cond_81

    .line 312
    aget-boolean v12, v6, v3

    if-nez v12, :cond_80

    aget-wide v16, v5, v3

    cmp-long v12, v16, v14

    if-gtz v12, :cond_80

    .line 313
    aget-wide v11, v5, v3

    move-wide v14, v11

    move v11, v3

    :cond_80
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 314
    :cond_81
    aget v3, v4, v11

    .line 315
    aget-object v12, v1, v11

    aput-wide v8, v12, v3

    .line 316
    aget-object v12, v0, v11

    iget-object v12, v12, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget-object v12, v12, Le/m/a/c/g1/c0/l;->d:[I

    aget v12, v12, v3

    int-to-long v14, v12

    add-long/2addr v8, v14

    const/4 v12, 0x1

    add-int/2addr v3, v12

    .line 317
    aput v3, v4, v11

    .line 318
    aget-object v14, v1, v11

    array-length v14, v14

    if-ge v3, v14, :cond_82

    .line 319
    aget-object v14, v0, v11

    iget-object v14, v14, Le/m/a/c/g1/c0/f$a;->b:Le/m/a/c/g1/c0/l;

    iget-object v14, v14, Le/m/a/c/g1/c0/l;->f:[J

    aget-wide v15, v14, v3

    aput-wide v15, v5, v11

    goto :goto_4e

    .line 320
    :cond_82
    aput-boolean v12, v6, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 321
    :cond_83
    iput-object v1, v13, Le/m/a/c/g1/c0/f;->q:[[J

    .line 322
    iget-object v0, v13, Le/m/a/c/g1/c0/f;->o:Le/m/a/c/g1/i;

    invoke-interface {v0}, Le/m/a/c/g1/i;->g()V

    .line 323
    iget-object v0, v13, Le/m/a/c/g1/c0/f;->o:Le/m/a/c/g1/i;

    invoke-interface {v0, v13}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
