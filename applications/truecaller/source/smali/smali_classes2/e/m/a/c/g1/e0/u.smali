.class public final Le/m/a/c/g1/e0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/e0/u$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/c0;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/c/g1/e0/u$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/c/q1/t;

.field public final d:Le/m/a/c/g1/e0/t;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Le/m/a/c/g1/e0/s;

.field public j:Le/m/a/c/g1/i;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Le/m/a/c/q1/c0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Le/m/a/c/q1/c0;-><init>(J)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/m/a/c/g1/e0/u;->a:Le/m/a/c/q1/c0;

    .line 4
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/e0/u;->b:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Le/m/a/c/g1/e0/t;

    invoke-direct {v0}, Le/m/a/c/g1/e0/t;-><init>()V

    iput-object v0, p0, Le/m/a/c/g1/e0/u;->d:Le/m/a/c/g1/e0/t;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/m/a/c/g1/e0/u;->a:Le/m/a/c/q1/c0;

    .line 2
    invoke-virtual {p1}, Le/m/a/c/q1/c0;->c()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Le/m/a/c/g1/e0/u;->a:Le/m/a/c/q1/c0;

    .line 4
    iget-wide v2, p1, Le/m/a/c/q1/c0;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    cmp-long p1, v2, p3

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Le/m/a/c/g1/e0/u;->a:Le/m/a/c/q1/c0;

    .line 6
    iput-wide v0, p1, Le/m/a/c/q1/c0;->c:J

    .line 7
    iget-object p1, p0, Le/m/a/c/g1/e0/u;->a:Le/m/a/c/q1/c0;

    invoke-virtual {p1, p3, p4}, Le/m/a/c/q1/c0;->d(J)V

    .line 8
    :cond_2
    iget-object p1, p0, Le/m/a/c/g1/e0/u;->i:Le/m/a/c/g1/e0/s;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, p3, p4}, Le/m/a/c/g1/a;->e(J)V

    :cond_3
    move p1, p2

    .line 10
    :goto_1
    iget-object p3, p0, Le/m/a/c/g1/e0/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 11
    iget-object p3, p0, Le/m/a/c/g1/e0/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/m/a/c/g1/e0/u$a;

    .line 12
    iput-boolean p2, p3, Le/m/a/c/g1/e0/u$a;->f:Z

    .line 13
    iget-object p3, p3, Le/m/a/c/g1/e0/u$a;->a:Le/m/a/c/g1/e0/j;

    invoke-interface {p3}, Le/m/a/c/g1/e0/j;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 16
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
    iget-wide v9, v1, Le/m/a/c/g1/e;->c:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v13, :cond_0

    move v3, v14

    goto :goto_0

    :cond_0
    move v3, v15

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v7, 0x1ba

    if-eqz v3, :cond_b

    .line 2
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->d:Le/m/a/c/g1/e0/t;

    .line 3
    iget-boolean v6, v3, Le/m/a/c/g1/e0/t;->c:Z

    if-nez v6, :cond_b

    .line 4
    iget-boolean v6, v3, Le/m/a/c/g1/e0/t;->e:Z

    const-wide/16 v11, 0x4e20

    if-nez v6, :cond_4

    .line 5
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v6, v11

    int-to-long v11, v6

    sub-long/2addr v9, v11

    .line 6
    iget-wide v11, v1, Le/m/a/c/g1/e;->d:J

    cmp-long v8, v11, v9

    if-eqz v8, :cond_1

    .line 7
    iput-wide v9, v2, Le/m/a/c/g1/p;->a:J

    goto/16 :goto_6

    .line 8
    :cond_1
    iget-object v2, v3, Le/m/a/c/g1/e0/t;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v6}, Le/m/a/c/q1/t;->y(I)V

    .line 9
    iput v15, v1, Le/m/a/c/g1/e;->f:I

    .line 10
    iget-object v2, v3, Le/m/a/c/g1/e0/t;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 11
    invoke-virtual {v1, v2, v15, v6, v15}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 12
    iget-object v1, v3, Le/m/a/c/g1/e0/t;->b:Le/m/a/c/q1/t;

    .line 13
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 14
    iget v6, v1, Le/m/a/c/q1/t;->c:I

    add-int/lit8 v6, v6, -0x4

    :goto_1
    if-lt v6, v2, :cond_3

    .line 15
    iget-object v8, v1, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v3, v8, v6}, Le/m/a/c/g1/e0/t;->b([BI)I

    move-result v8

    if-ne v8, v7, :cond_2

    add-int/lit8 v8, v6, 0x4

    .line 16
    invoke-virtual {v1, v8}, Le/m/a/c/q1/t;->C(I)V

    .line 17
    invoke-static {v1}, Le/m/a/c/g1/e0/t;->c(Le/m/a/c/q1/t;)J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-eqz v10, :cond_2

    move-wide v4, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 18
    :cond_3
    :goto_2
    iput-wide v4, v3, Le/m/a/c/g1/e0/t;->g:J

    .line 19
    iput-boolean v14, v3, Le/m/a/c/g1/e0/t;->e:Z

    goto :goto_5

    .line 20
    :cond_4
    iget-wide v7, v3, Le/m/a/c/g1/e0/t;->g:J

    cmp-long v6, v7, v4

    if-nez v6, :cond_5

    .line 21
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/t;->a(Le/m/a/c/g1/e;)I

    goto/16 :goto_7

    .line 22
    :cond_5
    iget-boolean v6, v3, Le/m/a/c/g1/e0/t;->d:Z

    if-nez v6, :cond_9

    .line 23
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 24
    iget-wide v7, v1, Le/m/a/c/g1/e;->d:J

    int-to-long v9, v15

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 25
    iput-wide v9, v2, Le/m/a/c/g1/p;->a:J

    goto :goto_6

    .line 26
    :cond_6
    iget-object v2, v3, Le/m/a/c/g1/e0/t;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v6}, Le/m/a/c/q1/t;->y(I)V

    .line 27
    iput v15, v1, Le/m/a/c/g1/e;->f:I

    .line 28
    iget-object v2, v3, Le/m/a/c/g1/e0/t;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 29
    invoke-virtual {v1, v2, v15, v6, v15}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 30
    iget-object v1, v3, Le/m/a/c/g1/e0/t;->b:Le/m/a/c/q1/t;

    .line 31
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 32
    iget v6, v1, Le/m/a/c/q1/t;->c:I

    :goto_3
    add-int/lit8 v7, v6, -0x3

    if-ge v2, v7, :cond_8

    .line 33
    iget-object v7, v1, Le/m/a/c/q1/t;->a:[B

    invoke-virtual {v3, v7, v2}, Le/m/a/c/g1/e0/t;->b([BI)I

    move-result v7

    const/16 v8, 0x1ba

    if-ne v7, v8, :cond_7

    add-int/lit8 v7, v2, 0x4

    .line 34
    invoke-virtual {v1, v7}, Le/m/a/c/q1/t;->C(I)V

    .line 35
    invoke-static {v1}, Le/m/a/c/g1/e0/t;->c(Le/m/a/c/q1/t;)J

    move-result-wide v9

    cmp-long v7, v9, v4

    if-eqz v7, :cond_7

    move-wide v4, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 36
    :cond_8
    :goto_4
    iput-wide v4, v3, Le/m/a/c/g1/e0/t;->f:J

    .line 37
    iput-boolean v14, v3, Le/m/a/c/g1/e0/t;->d:Z

    :goto_5
    move v14, v15

    :goto_6
    move v15, v14

    goto :goto_7

    .line 38
    :cond_9
    iget-wide v6, v3, Le/m/a/c/g1/e0/t;->f:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_a

    .line 39
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/t;->a(Le/m/a/c/g1/e;)I

    goto :goto_7

    .line 40
    :cond_a
    iget-object v2, v3, Le/m/a/c/g1/e0/t;->a:Le/m/a/c/q1/c0;

    invoke-virtual {v2, v6, v7}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v4

    .line 41
    iget-object v2, v3, Le/m/a/c/g1/e0/t;->a:Le/m/a/c/q1/c0;

    iget-wide v6, v3, Le/m/a/c/g1/e0/t;->g:J

    invoke-virtual {v2, v6, v7}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 42
    iput-wide v6, v3, Le/m/a/c/g1/e0/t;->h:J

    .line 43
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/t;->a(Le/m/a/c/g1/e;)I

    :goto_7
    return v15

    :cond_b
    move v8, v7

    .line 44
    iget-boolean v3, v0, Le/m/a/c/g1/e0/u;->k:Z

    if-nez v3, :cond_d

    .line 45
    iput-boolean v14, v0, Le/m/a/c/g1/e0/u;->k:Z

    .line 46
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->d:Le/m/a/c/g1/e0/t;

    .line 47
    iget-wide v6, v3, Le/m/a/c/g1/e0/t;->h:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_c

    .line 48
    new-instance v5, Le/m/a/c/g1/e0/s;

    .line 49
    iget-object v4, v3, Le/m/a/c/g1/e0/t;->a:Le/m/a/c/q1/c0;

    move-object v3, v5

    move-object v14, v5

    const-wide/16 v11, 0x0

    move-wide v5, v6

    move-wide v7, v9

    .line 50
    invoke-direct/range {v3 .. v8}, Le/m/a/c/g1/e0/s;-><init>(Le/m/a/c/q1/c0;JJ)V

    iput-object v14, v0, Le/m/a/c/g1/e0/u;->i:Le/m/a/c/g1/e0/s;

    .line 51
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->j:Le/m/a/c/g1/i;

    .line 52
    iget-object v4, v14, Le/m/a/c/g1/a;->a:Le/m/a/c/g1/a$a;

    .line 53
    invoke-interface {v3, v4}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    goto :goto_8

    :cond_c
    const-wide/16 v11, 0x0

    .line 54
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->j:Le/m/a/c/g1/i;

    new-instance v4, Le/m/a/c/g1/q$b;

    .line 55
    invoke-direct {v4, v6, v7, v11, v12}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 56
    invoke-interface {v3, v4}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    goto :goto_8

    :cond_d
    const-wide/16 v11, 0x0

    .line 57
    :goto_8
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->i:Le/m/a/c/g1/e0/s;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Le/m/a/c/g1/a;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 58
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->i:Le/m/a/c/g1/e0/s;

    invoke-virtual {v3, v1, v2}, Le/m/a/c/g1/a;->a(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I

    move-result v1

    return v1

    .line 59
    :cond_e
    iput v15, v1, Le/m/a/c/g1/e;->f:I

    if-eqz v13, :cond_f

    .line 60
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/g1/e;->d()J

    move-result-wide v2

    sub-long/2addr v9, v2

    const-wide/16 v2, -0x1

    goto :goto_9

    :cond_f
    const-wide/16 v2, -0x1

    const-wide/16 v9, -0x1

    :goto_9
    cmp-long v2, v9, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_10

    const-wide/16 v4, 0x4

    cmp-long v2, v9, v4

    if-gez v2, :cond_10

    return v3

    .line 61
    :cond_10
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v15, v4, v5}, Le/m/a/c/g1/e;->e([BIIZ)Z

    move-result v2

    if-nez v2, :cond_11

    return v3

    .line 62
    :cond_11
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v15}, Le/m/a/c/q1/t;->C(I)V

    .line 63
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v2

    const/16 v5, 0x1b9

    if-ne v2, v5, :cond_12

    return v3

    :cond_12
    const/16 v3, 0x1ba

    if-ne v2, v3, :cond_13

    .line 64
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    const/16 v3, 0xa

    .line 65
    invoke-virtual {v1, v2, v15, v3, v15}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 66
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Le/m/a/c/q1/t;->C(I)V

    .line 67
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 68
    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    return v15

    :cond_13
    const/16 v3, 0x1bb

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-ne v2, v3, :cond_14

    .line 69
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 70
    invoke-virtual {v1, v2, v15, v5, v15}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 71
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v15}, Le/m/a/c/q1/t;->C(I)V

    .line 72
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v2

    add-int/2addr v2, v6

    .line 73
    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    return v15

    :cond_14
    and-int/lit16 v3, v2, -0x100

    const/16 v7, 0x8

    shr-int/2addr v3, v7

    const/4 v8, 0x1

    if-eq v3, v8, :cond_15

    .line 74
    invoke-virtual {v1, v8}, Le/m/a/c/g1/e;->i(I)V

    return v15

    :cond_15
    and-int/lit16 v2, v2, 0xff

    .line 75
    iget-object v3, v0, Le/m/a/c/g1/e0/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/g1/e0/u$a;

    .line 76
    iget-boolean v8, v0, Le/m/a/c/g1/e0/u;->e:Z

    if-nez v8, :cond_1b

    if-nez v3, :cond_19

    const/16 v8, 0xbd

    const/4 v9, 0x0

    if-ne v2, v8, :cond_16

    .line 77
    new-instance v8, Le/m/a/c/g1/e0/b;

    .line 78
    invoke-direct {v8, v9}, Le/m/a/c/g1/e0/b;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 79
    iput-boolean v10, v0, Le/m/a/c/g1/e0/u;->f:Z

    .line 80
    iget-wide v13, v1, Le/m/a/c/g1/e;->d:J

    .line 81
    iput-wide v13, v0, Le/m/a/c/g1/e0/u;->h:J

    :goto_a
    move-object v9, v8

    goto :goto_b

    :cond_16
    const/4 v10, 0x1

    and-int/lit16 v8, v2, 0xe0

    const/16 v13, 0xc0

    if-ne v8, v13, :cond_17

    .line 82
    new-instance v8, Le/m/a/c/g1/e0/p;

    .line 83
    invoke-direct {v8, v9}, Le/m/a/c/g1/e0/p;-><init>(Ljava/lang/String;)V

    .line 84
    iput-boolean v10, v0, Le/m/a/c/g1/e0/u;->f:Z

    .line 85
    iget-wide v13, v1, Le/m/a/c/g1/e;->d:J

    .line 86
    iput-wide v13, v0, Le/m/a/c/g1/e0/u;->h:J

    goto :goto_a

    :cond_17
    and-int/lit16 v8, v2, 0xf0

    const/16 v13, 0xe0

    if-ne v8, v13, :cond_18

    .line 87
    new-instance v8, Le/m/a/c/g1/e0/k;

    .line 88
    invoke-direct {v8, v9}, Le/m/a/c/g1/e0/k;-><init>(Le/m/a/c/g1/e0/d0;)V

    .line 89
    iput-boolean v10, v0, Le/m/a/c/g1/e0/u;->g:Z

    .line 90
    iget-wide v9, v1, Le/m/a/c/g1/e;->d:J

    .line 91
    iput-wide v9, v0, Le/m/a/c/g1/e0/u;->h:J

    goto :goto_a

    :cond_18
    :goto_b
    if-eqz v9, :cond_19

    .line 92
    new-instance v3, Le/m/a/c/g1/e0/c0$d;

    const/16 v8, 0x100

    const/high16 v10, -0x80000000

    .line 93
    invoke-direct {v3, v10, v2, v8}, Le/m/a/c/g1/e0/c0$d;-><init>(III)V

    .line 94
    iget-object v8, v0, Le/m/a/c/g1/e0/u;->j:Le/m/a/c/g1/i;

    invoke-interface {v9, v8, v3}, Le/m/a/c/g1/e0/j;->e(Le/m/a/c/g1/i;Le/m/a/c/g1/e0/c0$d;)V

    .line 95
    new-instance v3, Le/m/a/c/g1/e0/u$a;

    iget-object v8, v0, Le/m/a/c/g1/e0/u;->a:Le/m/a/c/q1/c0;

    invoke-direct {v3, v9, v8}, Le/m/a/c/g1/e0/u$a;-><init>(Le/m/a/c/g1/e0/j;Le/m/a/c/q1/c0;)V

    .line 96
    iget-object v8, v0, Le/m/a/c/g1/e0/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    :cond_19
    iget-boolean v2, v0, Le/m/a/c/g1/e0/u;->f:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, v0, Le/m/a/c/g1/e0/u;->g:Z

    if-eqz v2, :cond_1a

    iget-wide v8, v0, Le/m/a/c/g1/e0/u;->h:J

    const-wide/16 v13, 0x2000

    add-long/2addr v8, v13

    goto :goto_c

    :cond_1a
    const-wide/32 v8, 0x100000

    .line 98
    :goto_c
    iget-wide v13, v1, Le/m/a/c/g1/e;->d:J

    cmp-long v2, v13, v8

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    .line 99
    iput-boolean v2, v0, Le/m/a/c/g1/e0/u;->e:Z

    .line 100
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->j:Le/m/a/c/g1/i;

    invoke-interface {v2}, Le/m/a/c/g1/i;->g()V

    .line 101
    :cond_1b
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 102
    invoke-virtual {v1, v2, v15, v5, v15}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 103
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v15}, Le/m/a/c/q1/t;->C(I)V

    .line 104
    iget-object v2, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->v()I

    move-result v2

    add-int/2addr v2, v6

    if-nez v3, :cond_1c

    .line 105
    invoke-virtual {v1, v2}, Le/m/a/c/g1/e;->i(I)V

    goto/16 :goto_d

    .line 106
    :cond_1c
    iget-object v5, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v5, v2}, Le/m/a/c/q1/t;->y(I)V

    .line 107
    iget-object v5, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    .line 108
    invoke-virtual {v1, v5, v15, v2, v15}, Le/m/a/c/g1/e;->h([BIIZ)Z

    .line 109
    iget-object v1, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    invoke-virtual {v1, v6}, Le/m/a/c/q1/t;->C(I)V

    .line 110
    iget-object v1, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    .line 111
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    iget-object v2, v2, Le/m/a/c/q1/s;->a:[B

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v15, v5}, Le/m/a/c/q1/t;->d([BII)V

    .line 112
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->j(I)V

    .line 113
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v7}, Le/m/a/c/q1/s;->l(I)V

    .line 114
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v2

    iput-boolean v2, v3, Le/m/a/c/g1/e0/u$a;->d:Z

    .line 115
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2}, Le/m/a/c/q1/s;->e()Z

    move-result v2

    iput-boolean v2, v3, Le/m/a/c/g1/e0/u$a;->e:Z

    .line 116
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v6}, Le/m/a/c/q1/s;->l(I)V

    .line 117
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v7}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    iput v2, v3, Le/m/a/c/g1/e0/u$a;->g:I

    .line 118
    iget-object v6, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    iget-object v6, v6, Le/m/a/c/q1/s;->a:[B

    invoke-virtual {v1, v6, v15, v2}, Le/m/a/c/q1/t;->d([BII)V

    .line 119
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v15}, Le/m/a/c/q1/s;->j(I)V

    .line 120
    iput-wide v11, v3, Le/m/a/c/g1/e0/u$a;->h:J

    .line 121
    iget-boolean v2, v3, Le/m/a/c/g1/e0/u$a;->d:Z

    if-eqz v2, :cond_1e

    .line 122
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v4}, Le/m/a/c/q1/s;->l(I)V

    .line 123
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x1e

    shl-long/2addr v6, v2

    .line 124
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Le/m/a/c/q1/s;->l(I)V

    .line 125
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Le/m/a/c/q1/s;->f(I)I

    move-result v8

    shl-int/2addr v8, v10

    int-to-long v11, v8

    or-long/2addr v6, v11

    .line 126
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v8, v9}, Le/m/a/c/q1/s;->l(I)V

    .line 127
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v8, v10}, Le/m/a/c/q1/s;->f(I)I

    move-result v8

    int-to-long v11, v8

    or-long/2addr v6, v11

    .line 128
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v8, v9}, Le/m/a/c/q1/s;->l(I)V

    .line 129
    iget-boolean v8, v3, Le/m/a/c/g1/e0/u$a;->f:Z

    if-nez v8, :cond_1d

    iget-boolean v8, v3, Le/m/a/c/g1/e0/u$a;->e:Z

    if-eqz v8, :cond_1d

    .line 130
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->l(I)V

    .line 131
    iget-object v8, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v8, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v5

    int-to-long v8, v5

    shl-long/2addr v8, v2

    .line 132
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->l(I)V

    .line 133
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v10}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    shl-int/2addr v2, v10

    int-to-long v11, v2

    or-long/2addr v8, v11

    .line 134
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->l(I)V

    .line 135
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v10}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    int-to-long v10, v2

    or-long/2addr v8, v10

    .line 136
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->c:Le/m/a/c/q1/s;

    invoke-virtual {v2, v5}, Le/m/a/c/q1/s;->l(I)V

    .line 137
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->b:Le/m/a/c/q1/c0;

    invoke-virtual {v2, v8, v9}, Le/m/a/c/q1/c0;->b(J)J

    .line 138
    iput-boolean v5, v3, Le/m/a/c/g1/e0/u$a;->f:Z

    .line 139
    :cond_1d
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->b:Le/m/a/c/q1/c0;

    invoke-virtual {v2, v6, v7}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v5

    iput-wide v5, v3, Le/m/a/c/g1/e0/u$a;->h:J

    .line 140
    :cond_1e
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->a:Le/m/a/c/g1/e0/j;

    iget-wide v5, v3, Le/m/a/c/g1/e0/u$a;->h:J

    invoke-interface {v2, v5, v6, v4}, Le/m/a/c/g1/e0/j;->c(JI)V

    .line 141
    iget-object v2, v3, Le/m/a/c/g1/e0/u$a;->a:Le/m/a/c/g1/e0/j;

    invoke-interface {v2, v1}, Le/m/a/c/g1/e0/j;->d(Le/m/a/c/q1/t;)V

    .line 142
    iget-object v1, v3, Le/m/a/c/g1/e0/u$a;->a:Le/m/a/c/g1/e0/j;

    invoke-interface {v1}, Le/m/a/c/g1/e0/j;->b()V

    .line 143
    iget-object v1, v0, Le/m/a/c/g1/e0/u;->c:Le/m/a/c/q1/t;

    .line 144
    iget-object v2, v1, Le/m/a/c/q1/t;->a:[B

    array-length v2, v2

    .line 145
    invoke-virtual {v1, v2}, Le/m/a/c/q1/t;->B(I)V

    :goto_d
    return v15
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/e0/u;->j:Le/m/a/c/g1/i;

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v1, v2, v0, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    const/16 v0, 0x1ba

    .line 2
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v6, v1, v5

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8

    shl-int/2addr v6, v7

    or-int/2addr v3, v6

    const/4 v6, 0x3

    aget-byte v8, v1, v6

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    .line 3
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xc4

    const/16 v8, 0x44

    if-eq v3, v8, :cond_1

    return v2

    :cond_1
    const/4 v3, 0x6

    .line 4
    aget-byte v3, v1, v3

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_2

    return v2

    .line 5
    :cond_2
    aget-byte v3, v1, v7

    and-int/2addr v3, v0

    if-eq v3, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    .line 6
    aget-byte v0, v1, v0

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    .line 7
    aget-byte v0, v1, v0

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    .line 8
    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 9
    invoke-virtual {p1, v0, v2}, Le/m/a/c/g1/e;->a(IZ)Z

    .line 10
    invoke-virtual {p1, v1, v2, v6, v2}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 11
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v7

    or-int/2addr p1, v0

    aget-byte v0, v1, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v4, p1, :cond_6

    move v2, v4

    :cond_6
    return v2
.end method

.method public release()V
    .locals 0

    return-void
.end method
