.class public final Ln3/y/b/a/q0/w/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/w/u$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/x0/v;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/b/a/q0/w/u$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/x0/m;

.field public final d:Ln3/y/b/a/q0/w/t;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Ln3/y/b/a/q0/w/s;

.field public j:Ln3/y/b/a/q0/h;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ln3/y/b/a/x0/v;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ln3/y/b/a/x0/v;-><init>(J)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/y/b/a/q0/w/u;->a:Ln3/y/b/a/x0/v;

    .line 4
    new-instance v0, Ln3/y/b/a/x0/m;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v0, p0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/w/u;->b:Landroid/util/SparseArray;

    .line 6
    new-instance v0, Ln3/y/b/a/q0/w/t;

    invoke-direct {v0}, Ln3/y/b/a/q0/w/t;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/w/u;->d:Ln3/y/b/a/q0/w/t;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 6

    .line 1
    iget-object p1, p0, Ln3/y/b/a/q0/w/u;->a:Ln3/y/b/a/x0/v;

    .line 2
    invoke-virtual {p1}, Ln3/y/b/a/x0/v;->c()J

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
    iget-object p1, p0, Ln3/y/b/a/q0/w/u;->a:Ln3/y/b/a/x0/v;

    .line 4
    iget-wide v2, p1, Ln3/y/b/a/x0/v;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    cmp-long p1, v2, p3

    if-eqz p1, :cond_2

    .line 5
    :cond_1
    iget-object p1, p0, Ln3/y/b/a/q0/w/u;->a:Ln3/y/b/a/x0/v;

    .line 6
    iput-wide v0, p1, Ln3/y/b/a/x0/v;->c:J

    .line 7
    iget-object p1, p0, Ln3/y/b/a/q0/w/u;->a:Ln3/y/b/a/x0/v;

    invoke-virtual {p1, p3, p4}, Ln3/y/b/a/x0/v;->d(J)V

    .line 8
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/q0/w/u;->i:Ln3/y/b/a/q0/w/s;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p1, p3, p4}, Ln3/y/b/a/q0/a;->d(J)V

    :cond_3
    move p1, p2

    .line 10
    :goto_1
    iget-object p3, p0, Ln3/y/b/a/q0/w/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 11
    iget-object p3, p0, Ln3/y/b/a/q0/w/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/y/b/a/q0/w/u$a;

    .line 12
    iput-boolean p2, p3, Ln3/y/b/a/q0/w/u$a;->f:Z

    .line 13
    iget-object p3, p3, Ln3/y/b/a/q0/w/u$a;->a:Ln3/y/b/a/q0/w/j;

    invoke-interface {p3}, Ln3/y/b/a/q0/w/j;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/w/u;->j:Ln3/y/b/a/q0/h;

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
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
    invoke-virtual {p1, v1, v2, v0, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

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
    invoke-virtual {p1, v0, v2}, Ln3/y/b/a/q0/d;->a(IZ)Z

    .line 10
    invoke-virtual {p1, v1, v2, v6, v2}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

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

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
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
    iget-wide v9, v1, Ln3/y/b/a/q0/d;->c:J

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
    iget-object v3, v0, Ln3/y/b/a/q0/w/u;->d:Ln3/y/b/a/q0/w/t;

    .line 3
    iget-boolean v6, v3, Ln3/y/b/a/q0/w/t;->c:Z

    if-nez v6, :cond_b

    .line 4
    iget-boolean v6, v3, Ln3/y/b/a/q0/w/t;->e:Z

    const-wide/16 v11, 0x4e20

    if-nez v6, :cond_4

    .line 5
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v6, v11

    int-to-long v11, v6

    sub-long/2addr v9, v11

    .line 6
    iget-wide v11, v1, Ln3/y/b/a/q0/d;->d:J

    cmp-long v8, v11, v9

    if-eqz v8, :cond_1

    .line 7
    iput-wide v9, v2, Ln3/y/b/a/q0/m;->a:J

    goto/16 :goto_6

    .line 8
    :cond_1
    iget-object v2, v3, Ln3/y/b/a/q0/w/t;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/m;->v(I)V

    .line 9
    iput v15, v1, Ln3/y/b/a/q0/d;->f:I

    .line 10
    iget-object v2, v3, Ln3/y/b/a/q0/w/t;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 11
    invoke-virtual {v1, v2, v15, v6, v15}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 12
    iget-object v1, v3, Ln3/y/b/a/q0/w/t;->b:Ln3/y/b/a/x0/m;

    .line 13
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 14
    iget v6, v1, Ln3/y/b/a/x0/m;->c:I

    add-int/lit8 v6, v6, -0x4

    :goto_1
    if-lt v6, v2, :cond_3

    .line 15
    iget-object v8, v1, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v3, v8, v6}, Ln3/y/b/a/q0/w/t;->b([BI)I

    move-result v8

    if-ne v8, v7, :cond_2

    add-int/lit8 v8, v6, 0x4

    .line 16
    invoke-virtual {v1, v8}, Ln3/y/b/a/x0/m;->z(I)V

    .line 17
    invoke-static {v1}, Ln3/y/b/a/q0/w/t;->c(Ln3/y/b/a/x0/m;)J

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
    iput-wide v4, v3, Ln3/y/b/a/q0/w/t;->g:J

    .line 19
    iput-boolean v14, v3, Ln3/y/b/a/q0/w/t;->e:Z

    goto :goto_5

    .line 20
    :cond_4
    iget-wide v7, v3, Ln3/y/b/a/q0/w/t;->g:J

    cmp-long v6, v7, v4

    if-nez v6, :cond_5

    .line 21
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/t;->a(Ln3/y/b/a/q0/d;)I

    goto/16 :goto_7

    .line 22
    :cond_5
    iget-boolean v6, v3, Ln3/y/b/a/q0/w/t;->d:Z

    if-nez v6, :cond_9

    .line 23
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    .line 24
    iget-wide v7, v1, Ln3/y/b/a/q0/d;->d:J

    int-to-long v9, v15

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    .line 25
    iput-wide v9, v2, Ln3/y/b/a/q0/m;->a:J

    goto :goto_6

    .line 26
    :cond_6
    iget-object v2, v3, Ln3/y/b/a/q0/w/t;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/m;->v(I)V

    .line 27
    iput v15, v1, Ln3/y/b/a/q0/d;->f:I

    .line 28
    iget-object v2, v3, Ln3/y/b/a/q0/w/t;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 29
    invoke-virtual {v1, v2, v15, v6, v15}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 30
    iget-object v1, v3, Ln3/y/b/a/q0/w/t;->b:Ln3/y/b/a/x0/m;

    .line 31
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 32
    iget v6, v1, Ln3/y/b/a/x0/m;->c:I

    :goto_3
    add-int/lit8 v7, v6, -0x3

    if-ge v2, v7, :cond_8

    .line 33
    iget-object v7, v1, Ln3/y/b/a/x0/m;->a:[B

    invoke-virtual {v3, v7, v2}, Ln3/y/b/a/q0/w/t;->b([BI)I

    move-result v7

    const/16 v8, 0x1ba

    if-ne v7, v8, :cond_7

    add-int/lit8 v7, v2, 0x4

    .line 34
    invoke-virtual {v1, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 35
    invoke-static {v1}, Ln3/y/b/a/q0/w/t;->c(Ln3/y/b/a/x0/m;)J

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
    iput-wide v4, v3, Ln3/y/b/a/q0/w/t;->f:J

    .line 37
    iput-boolean v14, v3, Ln3/y/b/a/q0/w/t;->d:Z

    :goto_5
    move v14, v15

    :goto_6
    move v15, v14

    goto :goto_7

    .line 38
    :cond_9
    iget-wide v6, v3, Ln3/y/b/a/q0/w/t;->f:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_a

    .line 39
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/t;->a(Ln3/y/b/a/q0/d;)I

    goto :goto_7

    .line 40
    :cond_a
    iget-object v2, v3, Ln3/y/b/a/q0/w/t;->a:Ln3/y/b/a/x0/v;

    invoke-virtual {v2, v6, v7}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v4

    .line 41
    iget-object v2, v3, Ln3/y/b/a/q0/w/t;->a:Ln3/y/b/a/x0/v;

    iget-wide v6, v3, Ln3/y/b/a/q0/w/t;->g:J

    invoke-virtual {v2, v6, v7}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 42
    iput-wide v6, v3, Ln3/y/b/a/q0/w/t;->h:J

    .line 43
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/t;->a(Ln3/y/b/a/q0/d;)I

    :goto_7
    return v15

    :cond_b
    move v8, v7

    .line 44
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/u;->k:Z

    if-nez v3, :cond_d

    .line 45
    iput-boolean v14, v0, Ln3/y/b/a/q0/w/u;->k:Z

    .line 46
    iget-object v3, v0, Ln3/y/b/a/q0/w/u;->d:Ln3/y/b/a/q0/w/t;

    .line 47
    iget-wide v6, v3, Ln3/y/b/a/q0/w/t;->h:J

    cmp-long v4, v6, v4

    if-eqz v4, :cond_c

    .line 48
    new-instance v5, Ln3/y/b/a/q0/w/s;

    .line 49
    iget-object v4, v3, Ln3/y/b/a/q0/w/t;->a:Ln3/y/b/a/x0/v;

    move-object v3, v5

    move-object v14, v5

    const-wide/16 v11, 0x0

    move-wide v5, v6

    move-wide v7, v9

    .line 50
    invoke-direct/range {v3 .. v8}, Ln3/y/b/a/q0/w/s;-><init>(Ln3/y/b/a/x0/v;JJ)V

    iput-object v14, v0, Ln3/y/b/a/q0/w/u;->i:Ln3/y/b/a/q0/w/s;

    .line 51
    iget-object v3, v0, Ln3/y/b/a/q0/w/u;->j:Ln3/y/b/a/q0/h;

    .line 52
    iget-object v4, v14, Ln3/y/b/a/q0/a;->a:Ln3/y/b/a/q0/a$a;

    .line 53
    invoke-interface {v3, v4}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    goto :goto_8

    :cond_c
    const-wide/16 v11, 0x0

    .line 54
    iget-object v3, v0, Ln3/y/b/a/q0/w/u;->j:Ln3/y/b/a/q0/h;

    new-instance v4, Ln3/y/b/a/q0/n$b;

    .line 55
    invoke-direct {v4, v6, v7, v11, v12}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 56
    invoke-interface {v3, v4}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    goto :goto_8

    :cond_d
    const-wide/16 v11, 0x0

    .line 57
    :goto_8
    iget-object v3, v0, Ln3/y/b/a/q0/w/u;->i:Ln3/y/b/a/q0/w/s;

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    .line 58
    iget-object v5, v3, Ln3/y/b/a/q0/a;->c:Ln3/y/b/a/q0/a$d;

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_9

    :cond_e
    move v5, v15

    :goto_9
    if-eqz v5, :cond_f

    .line 59
    invoke-virtual {v3, v1, v2, v4}, Ln3/y/b/a/q0/a;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;Ln3/y/b/a/q0/a$c;)I

    move-result v1

    return v1

    .line 60
    :cond_f
    iput v15, v1, Ln3/y/b/a/q0/d;->f:I

    if-eqz v13, :cond_10

    .line 61
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/q0/d;->c()J

    move-result-wide v2

    sub-long/2addr v9, v2

    const-wide/16 v2, -0x1

    goto :goto_a

    :cond_10
    const-wide/16 v2, -0x1

    const-wide/16 v9, -0x1

    :goto_a
    cmp-long v2, v9, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_11

    const-wide/16 v5, 0x4

    cmp-long v2, v9, v5

    if-gez v2, :cond_11

    return v3

    .line 62
    :cond_11
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v15, v5, v6}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    move-result v2

    if-nez v2, :cond_12

    return v3

    .line 63
    :cond_12
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 64
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    const/16 v6, 0x1b9

    if-ne v2, v6, :cond_13

    return v3

    :cond_13
    const/16 v3, 0x1ba

    if-ne v2, v3, :cond_14

    .line 65
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    const/16 v3, 0xa

    .line 66
    invoke-virtual {v1, v2, v15, v3, v15}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 67
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ln3/y/b/a/x0/m;->z(I)V

    .line 68
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0xe

    .line 69
    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    return v15

    :cond_14
    const/16 v3, 0x1bb

    const/4 v6, 0x2

    const/4 v7, 0x6

    if-ne v2, v3, :cond_15

    .line 70
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 71
    invoke-virtual {v1, v2, v15, v6, v15}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 72
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 73
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    add-int/2addr v2, v7

    .line 74
    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    return v15

    :cond_15
    and-int/lit16 v3, v2, -0x100

    const/16 v8, 0x8

    shr-int/2addr v3, v8

    const/4 v9, 0x1

    if-eq v3, v9, :cond_16

    .line 75
    invoke-virtual {v1, v9}, Ln3/y/b/a/q0/d;->h(I)V

    return v15

    :cond_16
    and-int/lit16 v2, v2, 0xff

    .line 76
    iget-object v3, v0, Ln3/y/b/a/q0/w/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/w/u$a;

    .line 77
    iget-boolean v9, v0, Ln3/y/b/a/q0/w/u;->e:Z

    if-nez v9, :cond_1c

    if-nez v3, :cond_1a

    const/16 v9, 0xbd

    if-ne v2, v9, :cond_17

    .line 78
    new-instance v9, Ln3/y/b/a/q0/w/b;

    .line 79
    invoke-direct {v9, v4}, Ln3/y/b/a/q0/w/b;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    .line 80
    iput-boolean v10, v0, Ln3/y/b/a/q0/w/u;->f:Z

    .line 81
    iget-wide v13, v1, Ln3/y/b/a/q0/d;->d:J

    .line 82
    iput-wide v13, v0, Ln3/y/b/a/q0/w/u;->h:J

    :goto_b
    move-object v4, v9

    goto :goto_c

    :cond_17
    const/4 v10, 0x1

    and-int/lit16 v9, v2, 0xe0

    const/16 v13, 0xc0

    if-ne v9, v13, :cond_18

    .line 83
    new-instance v9, Ln3/y/b/a/q0/w/p;

    .line 84
    invoke-direct {v9, v4}, Ln3/y/b/a/q0/w/p;-><init>(Ljava/lang/String;)V

    .line 85
    iput-boolean v10, v0, Ln3/y/b/a/q0/w/u;->f:Z

    .line 86
    iget-wide v13, v1, Ln3/y/b/a/q0/d;->d:J

    .line 87
    iput-wide v13, v0, Ln3/y/b/a/q0/w/u;->h:J

    goto :goto_b

    :cond_18
    and-int/lit16 v9, v2, 0xf0

    const/16 v13, 0xe0

    if-ne v9, v13, :cond_19

    .line 88
    new-instance v9, Ln3/y/b/a/q0/w/k;

    .line 89
    invoke-direct {v9, v4}, Ln3/y/b/a/q0/w/k;-><init>(Ln3/y/b/a/q0/w/d0;)V

    .line 90
    iput-boolean v10, v0, Ln3/y/b/a/q0/w/u;->g:Z

    .line 91
    iget-wide v13, v1, Ln3/y/b/a/q0/d;->d:J

    .line 92
    iput-wide v13, v0, Ln3/y/b/a/q0/w/u;->h:J

    goto :goto_b

    :cond_19
    :goto_c
    if-eqz v4, :cond_1a

    .line 93
    new-instance v3, Ln3/y/b/a/q0/w/c0$d;

    const/16 v9, 0x100

    const/high16 v10, -0x80000000

    .line 94
    invoke-direct {v3, v10, v2, v9}, Ln3/y/b/a/q0/w/c0$d;-><init>(III)V

    .line 95
    iget-object v9, v0, Ln3/y/b/a/q0/w/u;->j:Ln3/y/b/a/q0/h;

    invoke-interface {v4, v9, v3}, Ln3/y/b/a/q0/w/j;->e(Ln3/y/b/a/q0/h;Ln3/y/b/a/q0/w/c0$d;)V

    .line 96
    new-instance v3, Ln3/y/b/a/q0/w/u$a;

    iget-object v9, v0, Ln3/y/b/a/q0/w/u;->a:Ln3/y/b/a/x0/v;

    invoke-direct {v3, v4, v9}, Ln3/y/b/a/q0/w/u$a;-><init>(Ln3/y/b/a/q0/w/j;Ln3/y/b/a/x0/v;)V

    .line 97
    iget-object v4, v0, Ln3/y/b/a/q0/w/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    :cond_1a
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/u;->f:Z

    if-eqz v2, :cond_1b

    iget-boolean v2, v0, Ln3/y/b/a/q0/w/u;->g:Z

    if-eqz v2, :cond_1b

    .line 99
    iget-wide v9, v0, Ln3/y/b/a/q0/w/u;->h:J

    const-wide/16 v13, 0x2000

    add-long/2addr v9, v13

    goto :goto_d

    :cond_1b
    const-wide/32 v9, 0x100000

    .line 100
    :goto_d
    iget-wide v13, v1, Ln3/y/b/a/q0/d;->d:J

    cmp-long v2, v13, v9

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    .line 101
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/u;->e:Z

    .line 102
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->j:Ln3/y/b/a/q0/h;

    invoke-interface {v2}, Ln3/y/b/a/q0/h;->g()V

    .line 103
    :cond_1c
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 104
    invoke-virtual {v1, v2, v15, v6, v15}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 105
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/m;->z(I)V

    .line 106
    iget-object v2, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->t()I

    move-result v2

    add-int/2addr v2, v7

    if-nez v3, :cond_1d

    .line 107
    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    goto/16 :goto_e

    .line 108
    :cond_1d
    iget-object v4, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v4, v2}, Ln3/y/b/a/x0/m;->v(I)V

    .line 109
    iget-object v4, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    iget-object v4, v4, Ln3/y/b/a/x0/m;->a:[B

    .line 110
    invoke-virtual {v1, v4, v15, v2, v15}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 111
    iget-object v1, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 112
    iget-object v1, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    .line 113
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    iget-object v2, v2, Ln3/y/b/a/x0/l;->a:[B

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v15, v4}, Ln3/y/b/a/x0/m;->c([BII)V

    .line 114
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->h(I)V

    .line 115
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v8}, Ln3/y/b/a/x0/l;->j(I)V

    .line 116
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v2

    iput-boolean v2, v3, Ln3/y/b/a/q0/w/u$a;->d:Z

    .line 117
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2}, Ln3/y/b/a/x0/l;->d()Z

    move-result v2

    iput-boolean v2, v3, Ln3/y/b/a/q0/w/u$a;->e:Z

    .line 118
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v7}, Ln3/y/b/a/x0/l;->j(I)V

    .line 119
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v8}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    iput v2, v3, Ln3/y/b/a/q0/w/u$a;->g:I

    .line 120
    iget-object v6, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    iget-object v6, v6, Ln3/y/b/a/x0/l;->a:[B

    invoke-virtual {v1, v6, v15, v2}, Ln3/y/b/a/x0/m;->c([BII)V

    .line 121
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v15}, Ln3/y/b/a/x0/l;->h(I)V

    .line 122
    iput-wide v11, v3, Ln3/y/b/a/q0/w/u$a;->h:J

    .line 123
    iget-boolean v2, v3, Ln3/y/b/a/q0/w/u$a;->d:Z

    if-eqz v2, :cond_1f

    .line 124
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v5}, Ln3/y/b/a/x0/l;->j(I)V

    .line 125
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    int-to-long v6, v2

    const/16 v2, 0x1e

    shl-long/2addr v6, v2

    .line 126
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ln3/y/b/a/x0/l;->j(I)V

    .line 127
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v8

    shl-int/2addr v8, v10

    int-to-long v11, v8

    or-long/2addr v6, v11

    .line 128
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v8, v9}, Ln3/y/b/a/x0/l;->j(I)V

    .line 129
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v8, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v8

    int-to-long v11, v8

    or-long/2addr v6, v11

    .line 130
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v8, v9}, Ln3/y/b/a/x0/l;->j(I)V

    .line 131
    iget-boolean v8, v3, Ln3/y/b/a/q0/w/u$a;->f:Z

    if-nez v8, :cond_1e

    iget-boolean v8, v3, Ln3/y/b/a/q0/w/u$a;->e:Z

    if-eqz v8, :cond_1e

    .line 132
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v8, v5}, Ln3/y/b/a/x0/l;->j(I)V

    .line 133
    iget-object v8, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v8, v4}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v4

    int-to-long v8, v4

    shl-long/2addr v8, v2

    .line 134
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    .line 135
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    shl-int/2addr v2, v10

    int-to-long v11, v2

    or-long/2addr v8, v11

    .line 136
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    .line 137
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v10}, Ln3/y/b/a/x0/l;->e(I)I

    move-result v2

    int-to-long v10, v2

    or-long/2addr v8, v10

    .line 138
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->c:Ln3/y/b/a/x0/l;

    invoke-virtual {v2, v4}, Ln3/y/b/a/x0/l;->j(I)V

    .line 139
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->b:Ln3/y/b/a/x0/v;

    invoke-virtual {v2, v8, v9}, Ln3/y/b/a/x0/v;->b(J)J

    .line 140
    iput-boolean v4, v3, Ln3/y/b/a/q0/w/u$a;->f:Z

    .line 141
    :cond_1e
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->b:Ln3/y/b/a/x0/v;

    invoke-virtual {v2, v6, v7}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v6

    iput-wide v6, v3, Ln3/y/b/a/q0/w/u$a;->h:J

    .line 142
    :cond_1f
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->a:Ln3/y/b/a/q0/w/j;

    iget-wide v6, v3, Ln3/y/b/a/q0/w/u$a;->h:J

    invoke-interface {v2, v6, v7, v5}, Ln3/y/b/a/q0/w/j;->c(JI)V

    .line 143
    iget-object v2, v3, Ln3/y/b/a/q0/w/u$a;->a:Ln3/y/b/a/q0/w/j;

    invoke-interface {v2, v1}, Ln3/y/b/a/q0/w/j;->d(Ln3/y/b/a/x0/m;)V

    .line 144
    iget-object v1, v3, Ln3/y/b/a/q0/w/u$a;->a:Ln3/y/b/a/q0/w/j;

    invoke-interface {v1}, Ln3/y/b/a/q0/w/j;->b()V

    .line 145
    iget-object v1, v0, Ln3/y/b/a/q0/w/u;->c:Ln3/y/b/a/x0/m;

    .line 146
    iget-object v2, v1, Ln3/y/b/a/x0/m;->a:[B

    array-length v2, v2

    .line 147
    invoke-virtual {v1, v2}, Ln3/y/b/a/x0/m;->y(I)V

    :goto_e
    return v15
.end method

.method public release()V
    .locals 0

    return-void
.end method
