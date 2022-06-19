.class public final Ln3/y/b/a/q0/u/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;
.implements Ln3/y/b/a/q0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/u/f$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/x0/m;

.field public final b:Ln3/y/b/a/x0/m;

.field public final c:Ln3/y/b/a/x0/m;

.field public final d:Ln3/y/b/a/x0/m;

.field public final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ln3/y/b/a/q0/u/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:Ln3/y/b/a/x0/m;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Ln3/y/b/a/q0/h;

.field public p:[Ln3/y/b/a/q0/u/f$a;

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
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    .line 3
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    .line 4
    new-instance p1, Ln3/y/b/a/x0/m;

    sget-object v0, Ln3/y/b/a/x0/k;->a:[B

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>([B)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/f;->a:Ln3/y/b/a/x0/m;

    .line 5
    new-instance p1, Ln3/y/b/a/x0/m;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object p1, p0, Ln3/y/b/a/q0/u/f;->b:Ln3/y/b/a/x0/m;

    .line 6
    new-instance p1, Ln3/y/b/a/x0/m;

    invoke-direct {p1}, Ln3/y/b/a/x0/m;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Ln3/y/b/a/q0/u/f;->k:I

    return-void
.end method

.method public static k(Ln3/y/b/a/q0/u/l;JJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/q0/u/l;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Ln3/y/b/a/q0/u/l;->b(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, Ln3/y/b/a/q0/u/l;->c:[J

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
    iget-object v0, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/u/f;->i:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Ln3/y/b/a/q0/u/f;->k:I

    .line 4
    iput v0, p0, Ln3/y/b/a/q0/u/f;->l:I

    .line 5
    iput v0, p0, Ln3/y/b/a/q0/u/f;->m:I

    .line 6
    iput-boolean v0, p0, Ln3/y/b/a/q0/u/f;->n:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ln3/y/b/a/q0/u/f;->j()V

    goto :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Ln3/y/b/a/q0/u/f;->p:[Ln3/y/b/a/q0/u/f$a;

    if-eqz p1, :cond_2

    .line 9
    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    aget-object v2, p1, v0

    .line 10
    iget-object v3, v2, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    .line 11
    invoke-virtual {v3, p3, p4}, Ln3/y/b/a/q0/u/l;->a(J)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 12
    invoke-virtual {v3, p3, p4}, Ln3/y/b/a/q0/u/l;->b(J)I

    move-result v4

    .line 13
    :cond_1
    iput v4, v2, Ln3/y/b/a/q0/u/f$a;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(J)Ln3/y/b/a/q0/n$a;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    sget-object v3, Ln3/y/b/a/q0/o;->c:Ln3/y/b/a/q0/o;

    iget-object v4, v0, Ln3/y/b/a/q0/u/f;->p:[Ln3/y/b/a/q0/u/f$a;

    array-length v5, v4

    if-nez v5, :cond_0

    .line 2
    new-instance v1, Ln3/y/b/a/q0/n$a;

    invoke-direct {v1, v3}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;)V

    return-object v1

    :cond_0
    const-wide/16 v5, -0x1

    .line 3
    iget v7, v0, Ln3/y/b/a/q0/u/f;->r:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    .line 4
    aget-object v4, v4, v7

    iget-object v4, v4, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    .line 5
    invoke-virtual {v4, v1, v2}, Ln3/y/b/a/q0/u/l;->a(J)I

    move-result v7

    if-ne v7, v10, :cond_1

    .line 6
    invoke-virtual {v4, v1, v2}, Ln3/y/b/a/q0/u/l;->b(J)I

    move-result v7

    :cond_1
    if-ne v7, v10, :cond_2

    .line 7
    new-instance v1, Ln3/y/b/a/q0/n$a;

    invoke-direct {v1, v3}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;)V

    return-object v1

    .line 8
    :cond_2
    iget-object v3, v4, Ln3/y/b/a/q0/u/l;->f:[J

    aget-wide v11, v3, v7

    .line 9
    iget-object v3, v4, Ln3/y/b/a/q0/u/l;->c:[J

    aget-wide v13, v3, v7

    cmp-long v3, v11, v1

    if-gez v3, :cond_3

    .line 10
    iget v3, v4, Ln3/y/b/a/q0/u/l;->b:I

    add-int/2addr v3, v10

    if-ge v7, v3, :cond_3

    .line 11
    invoke-virtual {v4, v1, v2}, Ln3/y/b/a/q0/u/l;->b(J)I

    move-result v1

    if-eq v1, v10, :cond_3

    if-eq v1, v7, :cond_3

    .line 12
    iget-object v2, v4, Ln3/y/b/a/q0/u/l;->f:[J

    aget-wide v5, v2, v1

    .line 13
    iget-object v2, v4, Ln3/y/b/a/q0/u/l;->c:[J

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
    iget-object v10, v0, Ln3/y/b/a/q0/u/f;->p:[Ln3/y/b/a/q0/u/f$a;

    array-length v11, v10

    if-ge v7, v11, :cond_7

    .line 15
    iget v11, v0, Ln3/y/b/a/q0/u/f;->r:I

    if-eq v7, v11, :cond_6

    .line 16
    aget-object v10, v10, v7

    iget-object v10, v10, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    .line 17
    invoke-static {v10, v1, v2, v13, v14}, Ln3/y/b/a/q0/u/f;->k(Ln3/y/b/a/q0/u/l;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v8

    if-eqz v13, :cond_5

    .line 18
    invoke-static {v10, v3, v4, v5, v6}, Ln3/y/b/a/q0/u/f;->k(Ln3/y/b/a/q0/u/l;JJ)J

    move-result-wide v5

    :cond_5
    move-wide v13, v11

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 19
    :cond_7
    new-instance v7, Ln3/y/b/a/q0/o;

    invoke-direct {v7, v1, v2, v13, v14}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    cmp-long v1, v3, v8

    if-nez v1, :cond_8

    .line 20
    new-instance v1, Ln3/y/b/a/q0/n$a;

    invoke-direct {v1, v7}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;)V

    return-object v1

    .line 21
    :cond_8
    new-instance v1, Ln3/y/b/a/q0/o;

    invoke-direct {v1, v3, v4, v5, v6}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    .line 22
    new-instance v2, Ln3/y/b/a/q0/n$a;

    invoke-direct {v2, v7, v1}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;Ln3/y/b/a/q0/o;)V

    return-object v2
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/u/f;->o:Ln3/y/b/a/q0/h;

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/u/f;->s:J

    return-wide v0
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ln3/y/b/a/q0/u/h;->a(Ln3/y/b/a/q0/d;Z)Z

    move-result p1

    return p1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
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
    iget v3, v0, Ln3/y/b/a/q0/u/f;->f:I

    const v4, 0x66747970

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v11, 0x1

    if-eqz v3, :cond_20

    const-wide/32 v12, 0x40000

    const/4 v14, 0x2

    if-eq v3, v11, :cond_17

    if-ne v3, v14, :cond_16

    .line 2
    iget-wide v3, v1, Ln3/y/b/a/q0/d;->d:J

    .line 3
    iget v7, v0, Ln3/y/b/a/q0/u/f;->k:I

    if-ne v7, v8, :cond_c

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
    iget-object v14, v0, Ln3/y/b/a/q0/u/f;->p:[Ln3/y/b/a/q0/u/f$a;

    array-length v10, v14

    if-ge v7, v10, :cond_8

    .line 5
    aget-object v10, v14, v7

    .line 6
    iget v14, v10, Ln3/y/b/a/q0/u/f$a;->d:I

    .line 7
    iget-object v10, v10, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget v11, v10, Ln3/y/b/a/q0/u/l;->b:I

    if-ne v14, v11, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    iget-object v10, v10, Ln3/y/b/a/q0/u/l;->c:[J

    aget-wide v26, v10, v14

    .line 9
    iget-object v10, v0, Ln3/y/b/a/q0/u/f;->q:[[J

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
    iput v7, v0, Ln3/y/b/a/q0/u/f;->k:I

    if-ne v7, v8, :cond_b

    goto/16 :goto_d

    .line 11
    :cond_b
    aget-object v7, v14, v7

    iget-object v7, v7, Ln3/y/b/a/q0/u/f$a;->a:Ln3/y/b/a/q0/u/i;

    iget-object v7, v7, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    const-string v9, "audio/ac4"

    .line 12
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v0, Ln3/y/b/a/q0/u/f;->n:Z

    .line 13
    :cond_c
    iget-object v7, v0, Ln3/y/b/a/q0/u/f;->p:[Ln3/y/b/a/q0/u/f$a;

    iget v9, v0, Ln3/y/b/a/q0/u/f;->k:I

    aget-object v7, v7, v9

    .line 14
    iget-object v9, v7, Ln3/y/b/a/q0/u/f$a;->c:Ln3/y/b/a/q0/p;

    .line 15
    iget v10, v7, Ln3/y/b/a/q0/u/f$a;->d:I

    .line 16
    iget-object v11, v7, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget-object v14, v11, Ln3/y/b/a/q0/u/l;->c:[J

    move-object/from16 v16, v9

    aget-wide v8, v14, v10

    .line 17
    iget-object v11, v11, Ln3/y/b/a/q0/u/l;->d:[I

    aget v11, v11, v10

    sub-long v3, v8, v3

    .line 18
    iget v14, v0, Ln3/y/b/a/q0/u/f;->l:I

    int-to-long v12, v14

    add-long/2addr v3, v12

    cmp-long v5, v3, v5

    if-ltz v5, :cond_15

    const-wide/32 v5, 0x40000

    cmp-long v5, v3, v5

    if-ltz v5, :cond_d

    goto/16 :goto_c

    .line 19
    :cond_d
    iget-object v2, v7, Ln3/y/b/a/q0/u/f$a;->a:Ln3/y/b/a/q0/u/i;

    iget v2, v2, Ln3/y/b/a/q0/u/i;->g:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_e

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    add-int/lit8 v11, v11, -0x8

    :cond_e
    long-to-int v2, v3

    .line 20
    invoke-virtual {v1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    .line 21
    iget-object v2, v7, Ln3/y/b/a/q0/u/f$a;->a:Ln3/y/b/a/q0/u/i;

    iget v2, v2, Ln3/y/b/a/q0/u/i;->j:I

    if-eqz v2, :cond_12

    .line 22
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->b:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    const/4 v4, 0x0

    .line 23
    aput-byte v4, v3, v4

    const/4 v5, 0x1

    .line 24
    aput-byte v4, v3, v5

    const/4 v5, 0x2

    .line 25
    aput-byte v4, v3, v5

    rsub-int/lit8 v5, v2, 0x4

    .line 26
    :goto_6
    iget v6, v0, Ln3/y/b/a/q0/u/f;->l:I

    if-ge v6, v11, :cond_11

    .line 27
    iget v6, v0, Ln3/y/b/a/q0/u/f;->m:I

    if-nez v6, :cond_10

    .line 28
    invoke-virtual {v1, v3, v5, v2, v4}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 29
    iget-object v6, v0, Ln3/y/b/a/q0/u/f;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 30
    iget-object v6, v0, Ln3/y/b/a/q0/u/f;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v6

    if-ltz v6, :cond_f

    .line 31
    iput v6, v0, Ln3/y/b/a/q0/u/f;->m:I

    .line 32
    iget-object v6, v0, Ln3/y/b/a/q0/u/f;->a:Ln3/y/b/a/x0/m;

    invoke-virtual {v6, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 33
    iget-object v4, v0, Ln3/y/b/a/q0/u/f;->a:Ln3/y/b/a/x0/m;

    move-object/from16 v8, v16

    const/4 v6, 0x4

    invoke-interface {v8, v4, v6}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    .line 34
    iget v4, v0, Ln3/y/b/a/q0/u/f;->l:I

    add-int/2addr v4, v6

    iput v4, v0, Ln3/y/b/a/q0/u/f;->l:I

    add-int/2addr v11, v5

    goto :goto_7

    .line 35
    :cond_f
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Invalid NAL length"

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object/from16 v8, v16

    .line 36
    invoke-interface {v8, v1, v6, v4}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result v6

    .line 37
    iget v4, v0, Ln3/y/b/a/q0/u/f;->l:I

    add-int/2addr v4, v6

    iput v4, v0, Ln3/y/b/a/q0/u/f;->l:I

    .line 38
    iget v4, v0, Ln3/y/b/a/q0/u/f;->m:I

    sub-int/2addr v4, v6

    iput v4, v0, Ln3/y/b/a/q0/u/f;->m:I

    :goto_7
    move-object/from16 v16, v8

    const/4 v4, 0x0

    goto :goto_6

    :cond_11
    move-object/from16 v8, v16

    move-object v3, v0

    :goto_8
    move v12, v11

    goto :goto_b

    :cond_12
    move-object/from16 v8, v16

    .line 39
    iget-boolean v2, v0, Ln3/y/b/a/q0/u/f;->n:Z

    if-eqz v2, :cond_13

    .line 40
    iget-object v2, v0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    invoke-static {v11, v2}, Ln3/y/b/a/n0/b;->a(ILn3/y/b/a/x0/m;)V

    .line 41
    iget-object v2, v0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    .line 42
    iget v3, v2, Ln3/y/b/a/x0/m;->c:I

    .line 43
    invoke-interface {v8, v2, v3}, Ln3/y/b/a/q0/p;->d(Ln3/y/b/a/x0/m;I)V

    add-int/2addr v11, v3

    .line 44
    iget v2, v0, Ln3/y/b/a/q0/u/f;->l:I

    add-int/2addr v2, v3

    iput v2, v0, Ln3/y/b/a/q0/u/f;->l:I

    const/4 v2, 0x0

    .line 45
    iput-boolean v2, v0, Ln3/y/b/a/q0/u/f;->n:Z

    :goto_9
    move-object v3, v0

    move-object v9, v8

    goto :goto_a

    :cond_13
    const/4 v2, 0x0

    goto :goto_9

    .line 46
    :goto_a
    iget v4, v3, Ln3/y/b/a/q0/u/f;->l:I

    if-ge v4, v11, :cond_14

    sub-int v4, v11, v4

    .line 47
    invoke-interface {v9, v1, v4, v2}, Ln3/y/b/a/q0/p;->a(Ln3/y/b/a/q0/d;IZ)I

    move-result v4

    .line 48
    iget v2, v3, Ln3/y/b/a/q0/u/f;->l:I

    add-int/2addr v2, v4

    iput v2, v3, Ln3/y/b/a/q0/u/f;->l:I

    .line 49
    iget v2, v3, Ln3/y/b/a/q0/u/f;->m:I

    sub-int/2addr v2, v4

    iput v2, v3, Ln3/y/b/a/q0/u/f;->m:I

    const/4 v2, 0x0

    goto :goto_a

    :cond_14
    move-object v8, v9

    goto :goto_8

    .line 50
    :goto_b
    iget-object v1, v7, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget-object v2, v1, Ln3/y/b/a/q0/u/l;->f:[J

    aget-wide v4, v2, v10

    iget-object v1, v1, Ln3/y/b/a/q0/u/l;->g:[I

    aget v11, v1, v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v9, v4

    invoke-interface/range {v8 .. v14}, Ln3/y/b/a/q0/p;->b(JIIILn3/y/b/a/q0/p$a;)V

    .line 51
    iget v1, v7, Ln3/y/b/a/q0/u/f$a;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Ln3/y/b/a/q0/u/f$a;->d:I

    const/4 v1, -0x1

    .line 52
    iput v1, v3, Ln3/y/b/a/q0/u/f;->k:I

    const/4 v1, 0x0

    .line 53
    iput v1, v3, Ln3/y/b/a/q0/u/f;->l:I

    .line 54
    iput v1, v3, Ln3/y/b/a/q0/u/f;->m:I

    const/4 v8, 0x0

    goto :goto_d

    .line 55
    :cond_15
    :goto_c
    iput-wide v8, v2, Ln3/y/b/a/q0/m;->a:J

    const/4 v8, 0x1

    :goto_d
    return v8

    .line 56
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 57
    :cond_17
    iget-wide v5, v0, Ln3/y/b/a/q0/u/f;->h:J

    iget v3, v0, Ln3/y/b/a/q0/u/f;->i:I

    int-to-long v8, v3

    sub-long/2addr v5, v8

    .line 58
    iget-wide v8, v1, Ln3/y/b/a/q0/d;->d:J

    add-long/2addr v8, v5

    .line 59
    iget-object v10, v0, Ln3/y/b/a/q0/u/f;->j:Ln3/y/b/a/x0/m;

    if-eqz v10, :cond_1c

    .line 60
    iget-object v10, v10, Ln3/y/b/a/x0/m;->a:[B

    long-to-int v5, v5

    const/4 v6, 0x0

    .line 61
    invoke-virtual {v1, v10, v3, v5, v6}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 62
    iget v3, v0, Ln3/y/b/a/q0/u/f;->g:I

    if-ne v3, v4, :cond_1b

    .line 63
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->j:Ln3/y/b/a/x0/m;

    .line 64
    invoke-virtual {v3, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 65
    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->d()I

    move-result v4

    const v5, 0x71742020

    if-ne v4, v5, :cond_18

    goto :goto_e

    :cond_18
    const/4 v4, 0x4

    .line 66
    invoke-virtual {v3, v4}, Ln3/y/b/a/x0/m;->A(I)V

    .line 67
    :cond_19
    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->a()I

    move-result v4

    if-lez v4, :cond_1a

    .line 68
    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->d()I

    move-result v4

    if-ne v4, v5, :cond_19

    :goto_e
    const/4 v3, 0x1

    goto :goto_f

    :cond_1a
    const/4 v3, 0x0

    .line 69
    :goto_f
    iput-boolean v3, v0, Ln3/y/b/a/q0/u/f;->t:Z

    goto :goto_10

    .line 70
    :cond_1b
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 71
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/u/a$a;

    new-instance v4, Ln3/y/b/a/q0/u/a$b;

    iget v5, v0, Ln3/y/b/a/q0/u/f;->g:I

    iget-object v6, v0, Ln3/y/b/a/q0/u/f;->j:Ln3/y/b/a/x0/m;

    invoke-direct {v4, v5, v6}, Ln3/y/b/a/q0/u/a$b;-><init>(ILn3/y/b/a/x0/m;)V

    .line 72
    iget-object v3, v3, Ln3/y/b/a/q0/u/a$a;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    const-wide/32 v3, 0x40000

    cmp-long v3, v5, v3

    if-gez v3, :cond_1e

    long-to-int v3, v5

    .line 73
    invoke-virtual {v1, v3}, Ln3/y/b/a/q0/d;->h(I)V

    :cond_1d
    :goto_10
    const/4 v3, 0x0

    goto :goto_11

    .line 74
    :cond_1e
    iput-wide v8, v2, Ln3/y/b/a/q0/m;->a:J

    const/4 v3, 0x1

    .line 75
    :goto_11
    invoke-virtual {v0, v8, v9}, Ln3/y/b/a/q0/u/f;->l(J)V

    if-eqz v3, :cond_1f

    .line 76
    iget v3, v0, Ln3/y/b/a/q0/u/f;->f:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1f

    const/4 v10, 0x1

    goto :goto_12

    :cond_1f
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_20
    move v3, v11

    .line 77
    iget v8, v0, Ln3/y/b/a/q0/u/f;->i:I

    if-nez v8, :cond_22

    .line 78
    iget-object v8, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    iget-object v8, v8, Ln3/y/b/a/x0/m;->a:[B

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v7, v3}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    move-result v8

    if-nez v8, :cond_21

    move v10, v9

    goto/16 :goto_1d

    .line 79
    :cond_21
    iput v7, v0, Ln3/y/b/a/q0/u/f;->i:I

    .line 80
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v3, v9}, Ln3/y/b/a/x0/m;->z(I)V

    .line 81
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v8

    iput-wide v8, v0, Ln3/y/b/a/q0/u/f;->h:J

    .line 82
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    iput v3, v0, Ln3/y/b/a/q0/u/f;->g:I

    .line 83
    :cond_22
    iget-wide v8, v0, Ln3/y/b/a/q0/u/f;->h:J

    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-nez v3, :cond_23

    .line 84
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    const/4 v5, 0x0

    .line 85
    invoke-virtual {v1, v3, v7, v7, v5}, Ln3/y/b/a/q0/d;->g([BIIZ)Z

    .line 86
    iget v3, v0, Ln3/y/b/a/q0/u/f;->i:I

    add-int/2addr v3, v7

    iput v3, v0, Ln3/y/b/a/q0/u/f;->i:I

    .line 87
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v5

    iput-wide v5, v0, Ln3/y/b/a/q0/u/f;->h:J

    goto :goto_13

    :cond_23
    cmp-long v3, v8, v5

    if-nez v3, :cond_25

    .line 88
    iget-wide v5, v1, Ln3/y/b/a/q0/d;->c:J

    const-wide/16 v8, -0x1

    cmp-long v3, v5, v8

    if-nez v3, :cond_24

    .line 89
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 90
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/u/a$a;

    iget-wide v5, v3, Ln3/y/b/a/q0/u/a$a;->b:J

    :cond_24
    cmp-long v3, v5, v8

    if-eqz v3, :cond_25

    .line 91
    iget-wide v8, v1, Ln3/y/b/a/q0/d;->d:J

    sub-long/2addr v5, v8

    .line 92
    iget v3, v0, Ln3/y/b/a/q0/u/f;->i:I

    int-to-long v8, v3

    add-long/2addr v5, v8

    iput-wide v5, v0, Ln3/y/b/a/q0/u/f;->h:J

    .line 93
    :cond_25
    :goto_13
    iget-wide v5, v0, Ln3/y/b/a/q0/u/f;->h:J

    iget v3, v0, Ln3/y/b/a/q0/u/f;->i:I

    int-to-long v8, v3

    cmp-long v10, v5, v8

    if-ltz v10, :cond_31

    .line 94
    iget v10, v0, Ln3/y/b/a/q0/u/f;->g:I

    const v11, 0x6d6f6f76

    const v12, 0x6d657461

    if-eq v10, v11, :cond_27

    const v11, 0x7472616b

    if-eq v10, v11, :cond_27

    const v11, 0x6d646961

    if-eq v10, v11, :cond_27

    const v11, 0x6d696e66

    if-eq v10, v11, :cond_27

    const v11, 0x7374626c

    if-eq v10, v11, :cond_27

    const v11, 0x65647473

    if-eq v10, v11, :cond_27

    if-ne v10, v12, :cond_26

    goto :goto_14

    :cond_26
    const/4 v11, 0x0

    goto :goto_15

    :cond_27
    :goto_14
    const/4 v11, 0x1

    :goto_15
    const v13, 0x68646c72    # 4.3148E24f

    if-eqz v11, :cond_2b

    .line 95
    iget-wide v3, v1, Ln3/y/b/a/q0/d;->d:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v8

    .line 96
    iget-object v5, v0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    new-instance v6, Ln3/y/b/a/q0/u/a$a;

    invoke-direct {v6, v10, v3, v4}, Ln3/y/b/a/q0/u/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 97
    iget-wide v5, v0, Ln3/y/b/a/q0/u/f;->h:J

    iget v8, v0, Ln3/y/b/a/q0/u/f;->i:I

    int-to-long v8, v8

    cmp-long v5, v5, v8

    if-nez v5, :cond_28

    .line 98
    invoke-virtual {v0, v3, v4}, Ln3/y/b/a/q0/u/f;->l(J)V

    :goto_16
    const/4 v3, 0x1

    goto/16 :goto_1c

    .line 99
    :cond_28
    iget v3, v0, Ln3/y/b/a/q0/u/f;->g:I

    if-ne v3, v12, :cond_2a

    .line 100
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v3, v7}, Ln3/y/b/a/x0/m;->v(I)V

    .line 101
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    const/4 v4, 0x0

    .line 102
    invoke-virtual {v1, v3, v4, v7, v4}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 103
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ln3/y/b/a/x0/m;->A(I)V

    .line 104
    iget-object v3, v0, Ln3/y/b/a/q0/u/f;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v3}, Ln3/y/b/a/x0/m;->d()I

    move-result v3

    if-ne v3, v13, :cond_29

    .line 105
    iput v4, v1, Ln3/y/b/a/q0/d;->f:I

    goto :goto_17

    .line 106
    :cond_29
    invoke-virtual {v1, v5}, Ln3/y/b/a/q0/d;->h(I)V

    .line 107
    :cond_2a
    :goto_17
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/q0/u/f;->j()V

    goto :goto_16

    :cond_2b
    const v5, 0x6d646864

    if-eq v10, v5, :cond_2d

    const v5, 0x6d766864

    if-eq v10, v5, :cond_2d

    if-eq v10, v13, :cond_2d

    const v5, 0x73747364

    if-eq v10, v5, :cond_2d

    const v5, 0x73747473

    if-eq v10, v5, :cond_2d

    const v5, 0x73747373

    if-eq v10, v5, :cond_2d

    const v5, 0x63747473

    if-eq v10, v5, :cond_2d

    const v5, 0x656c7374

    if-eq v10, v5, :cond_2d

    const v5, 0x73747363

    if-eq v10, v5, :cond_2d

    const v5, 0x7374737a

    if-eq v10, v5, :cond_2d

    const v5, 0x73747a32

    if-eq v10, v5, :cond_2d

    const v5, 0x7374636f

    if-eq v10, v5, :cond_2d

    const v5, 0x636f3634

    if-eq v10, v5, :cond_2d

    const v5, 0x746b6864

    if-eq v10, v5, :cond_2d

    if-eq v10, v4, :cond_2d

    const v4, 0x75647461

    if-eq v10, v4, :cond_2d

    const v4, 0x6b657973

    if-eq v10, v4, :cond_2d

    const v4, 0x696c7374

    if-ne v10, v4, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v5, 0x0

    goto :goto_19

    :cond_2d
    :goto_18
    const/4 v5, 0x1

    :goto_19
    if-eqz v5, :cond_30

    if-ne v3, v7, :cond_2e

    const/4 v5, 0x1

    goto :goto_1a

    :cond_2e
    const/4 v5, 0x0

    .line 108
    :goto_1a
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 109
    iget-wide v3, v0, Ln3/y/b/a/q0/u/f;->h:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2f

    const/4 v5, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v5, 0x0

    :goto_1b
    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 110
    new-instance v3, Ln3/y/b/a/x0/m;

    iget-wide v4, v0, Ln3/y/b/a/q0/u/f;->h:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Ln3/y/b/a/x0/m;-><init>(I)V

    iput-object v3, v0, Ln3/y/b/a/q0/u/f;->j:Ln3/y/b/a/x0/m;

    .line 111
    iget-object v4, v0, Ln3/y/b/a/q0/u/f;->d:Ln3/y/b/a/x0/m;

    iget-object v4, v4, Ln3/y/b/a/x0/m;->a:[B

    iget-object v3, v3, Ln3/y/b/a/x0/m;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    .line 112
    iput v3, v0, Ln3/y/b/a/q0/u/f;->f:I

    goto :goto_1c

    :cond_30
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    iput-object v4, v0, Ln3/y/b/a/q0/u/f;->j:Ln3/y/b/a/x0/m;

    .line 114
    iput v3, v0, Ln3/y/b/a/q0/u/f;->f:I

    :goto_1c
    move v10, v3

    :goto_1d
    if-nez v10, :cond_0

    const/4 v3, -0x1

    return v3

    .line 115
    :cond_31
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Atom size less than header length (unsupported)."

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ln3/y/b/a/q0/u/f;->f:I

    .line 2
    iput v0, p0, Ln3/y/b/a/q0/u/f;->i:I

    return-void
.end method

.method public final l(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/q0/u/a$a;

    iget-wide v2, v0, Ln3/y/b/a/q0/u/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/q0/u/a$a;

    .line 3
    iget v2, v0, Ln3/y/b/a/q0/u/a;->a:I

    const v3, 0x6d6f6f76

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Ln3/y/b/a/q0/u/f;->m(Ln3/y/b/a/q0/u/a$a;)V

    .line 5
    iget-object v0, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iput v1, p0, Ln3/y/b/a/q0/u/f;->f:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Ln3/y/b/a/q0/u/f;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/q0/u/a$a;

    .line 9
    iget-object v1, v1, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Ln3/y/b/a/q0/u/f;->f:I

    if-eq p1, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Ln3/y/b/a/q0/u/f;->j()V

    :cond_3
    return-void
.end method

.method public final m(Ln3/y/b/a/q0/u/a$a;)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ln3/y/b/a/q0/j;

    invoke-direct {v3}, Ln3/y/b/a/q0/j;-><init>()V

    const v4, 0x75647461

    .line 3
    invoke-virtual {v0, v4}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v4

    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v4, :cond_33

    .line 4
    iget-boolean v5, v1, Ln3/y/b/a/q0/u/f;->t:Z

    .line 5
    sget-object v17, Ln3/y/b/a/q0/u/b;->a:[B

    if-eqz v5, :cond_0

    move-object v4, v12

    goto/16 :goto_10

    .line 6
    :cond_0
    iget-object v4, v4, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 7
    invoke-virtual {v4, v11}, Ln3/y/b/a/x0/m;->z(I)V

    .line 8
    :goto_0
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->a()I

    move-result v5

    if-lt v5, v11, :cond_31

    .line 9
    iget v5, v4, Ln3/y/b/a/x0/m;->b:I

    .line 10
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v17

    .line 11
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v13

    if-ne v13, v7, :cond_30

    .line 12
    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->z(I)V

    add-int v5, v5, v17

    .line 13
    invoke-virtual {v4, v9}, Ln3/y/b/a/x0/m;->A(I)V

    .line 14
    :goto_1
    iget v13, v4, Ln3/y/b/a/x0/m;->b:I

    if-ge v13, v5, :cond_31

    .line 15
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v17

    .line 16
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v9

    if-ne v9, v6, :cond_2f

    .line 17
    invoke-virtual {v4, v13}, Ln3/y/b/a/x0/m;->z(I)V

    add-int v13, v13, v17

    .line 18
    invoke-virtual {v4, v11}, Ln3/y/b/a/x0/m;->A(I)V

    .line 19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :goto_2
    iget v9, v4, Ln3/y/b/a/x0/m;->b:I

    if-ge v9, v13, :cond_2d

    .line 21
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v17

    add-int v9, v17, v9

    .line 22
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

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
    invoke-static {v4}, Ln3/y/b/a/q0/u/e;->e(Ln3/y/b/a/x0/m;)I

    move-result v6

    if-lez v6, :cond_2

    .line 24
    sget-object v7, Ln3/y/b/a/q0/u/e;->a:[Ljava/lang/String;

    array-length v11, v7

    if-gt v6, v11, :cond_2

    add-int/lit8 v6, v6, -0x1

    .line 25
    aget-object v6, v7, v6

    goto :goto_3

    :cond_2
    move-object v6, v12

    :goto_3
    if-eqz v6, :cond_1e

    .line 26
    new-instance v7, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    invoke-direct {v7, v10, v12, v6}, Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_3
    const v7, 0x6469736b

    if-ne v6, v7, :cond_4

    const-string v7, "TPOS"

    .line 27
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->b(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_4
    const v7, 0x74726b6e

    if-ne v6, v7, :cond_5

    const-string v7, "TRCK"

    .line 28
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->b(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_5
    const v7, 0x746d706f

    if-ne v6, v7, :cond_6

    const-string v7, "TBPM"

    .line 29
    invoke-static {v6, v7, v4, v14, v15}, Ln3/y/b/a/q0/u/e;->d(ILjava/lang/String;Ln3/y/b/a/x0/m;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_c

    :cond_6
    const v7, 0x6370696c

    if-ne v6, v7, :cond_7

    const-string v7, "TCMP"

    .line 30
    invoke-static {v6, v7, v4, v14, v14}, Ln3/y/b/a/q0/u/e;->d(ILjava/lang/String;Ln3/y/b/a/x0/m;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_c

    :cond_7
    const v7, 0x636f7672

    if-ne v6, v7, :cond_b

    .line 31
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v6

    .line 32
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    if-ne v7, v8, :cond_1e

    .line 33
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

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

    .line 34
    invoke-virtual {v4, v10}, Ln3/y/b/a/x0/m;->A(I)V

    add-int/lit8 v6, v6, -0x10

    .line 35
    new-array v10, v6, [B

    .line 36
    iget-object v11, v4, Ln3/y/b/a/x0/m;->a:[B

    iget v8, v4, Ln3/y/b/a/x0/m;->b:I

    invoke-static {v11, v8, v10, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iget v8, v4, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v8, v6

    iput v8, v4, Ln3/y/b/a/x0/m;->b:I

    .line 38
    new-instance v6, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;

    const/4 v8, 0x3

    invoke-direct {v6, v7, v12, v8, v10}, Landroidx/media2/exoplayer/external/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object v7, v6

    goto/16 :goto_c

    :cond_b
    const v7, 0x61415254

    if-ne v6, v7, :cond_c

    const-string v7, "TPE2"

    .line 39
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_c
    const v7, 0x736f6e6d

    if-ne v6, v7, :cond_d

    const-string v7, "TSOT"

    .line 40
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_d
    const v7, 0x736f616c

    if-ne v6, v7, :cond_e

    const-string v7, "TSO2"

    .line 41
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_e
    const v7, 0x736f6172

    if-ne v6, v7, :cond_f

    const-string v7, "TSOA"

    .line 42
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_f
    const v7, 0x736f6161

    if-ne v6, v7, :cond_10

    const-string v7, "TSOP"

    .line 43
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_10
    const v7, 0x736f636f

    if-ne v6, v7, :cond_11

    const-string v7, "TSOC"

    .line 44
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_11
    const v7, 0x72746e67

    if-ne v6, v7, :cond_12

    const-string v7, "ITUNESADVISORY"

    .line 45
    invoke-static {v6, v7, v4, v15, v15}, Ln3/y/b/a/q0/u/e;->d(ILjava/lang/String;Ln3/y/b/a/x0/m;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_c

    :cond_12
    const v7, 0x70676170

    if-ne v6, v7, :cond_13

    const-string v7, "ITUNESGAPLESS"

    .line 46
    invoke-static {v6, v7, v4, v15, v14}, Ln3/y/b/a/q0/u/e;->d(ILjava/lang/String;Ln3/y/b/a/x0/m;ZZ)Landroidx/media2/exoplayer/external/metadata/id3/Id3Frame;

    move-result-object v7

    goto/16 :goto_c

    :cond_13
    const v7, 0x736f736e

    if-ne v6, v7, :cond_14

    const-string v7, "TVSHOWSORT"

    .line 47
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_14
    const v7, 0x74767368

    if-ne v6, v7, :cond_15

    const-string v7, "TVSHOW"

    .line 48
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_15
    const v7, 0x2d2d2d2d

    if-ne v6, v7, :cond_28

    move-object v8, v12

    move-object v10, v8

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 49
    :goto_5
    iget v11, v4, Ln3/y/b/a/x0/m;->b:I

    if-ge v11, v9, :cond_19

    .line 50
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v17

    .line 51
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    const/4 v14, 0x4

    .line 52
    invoke-virtual {v4, v14}, Ln3/y/b/a/x0/m;->A(I)V

    const v14, 0x6d65616e

    if-ne v12, v14, :cond_16

    add-int/lit8 v8, v17, -0xc

    .line 53
    invoke-virtual {v4, v8}, Ln3/y/b/a/x0/m;->l(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_16
    const v14, 0x6e616d65

    if-ne v12, v14, :cond_17

    add-int/lit8 v10, v17, -0xc

    .line 54
    invoke-virtual {v4, v10}, Ln3/y/b/a/x0/m;->l(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_17
    const v14, 0x64617461

    if-ne v12, v14, :cond_18

    move v6, v11

    move/from16 v7, v17

    :cond_18
    add-int/lit8 v11, v17, -0xc

    .line 55
    invoke-virtual {v4, v11}, Ln3/y/b/a/x0/m;->A(I)V

    :goto_6
    const/4 v12, 0x0

    const/4 v14, 0x1

    goto :goto_5

    :cond_19
    if-eqz v8, :cond_1e

    if-eqz v10, :cond_1e

    const/4 v11, -0x1

    if-ne v6, v11, :cond_1a

    goto :goto_8

    .line 56
    :cond_1a
    invoke-virtual {v4, v6}, Ln3/y/b/a/x0/m;->z(I)V

    const/16 v6, 0x10

    .line 57
    invoke-virtual {v4, v6}, Ln3/y/b/a/x0/m;->A(I)V

    add-int/lit8 v7, v7, -0x10

    .line 58
    invoke-virtual {v4, v7}, Ln3/y/b/a/x0/m;->l(I)Ljava/lang/String;

    move-result-object v6

    .line 59
    new-instance v7, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;

    invoke-direct {v7, v8, v10, v6}, Landroidx/media2/exoplayer/external/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1b
    :goto_7
    and-int v7, v6, v17

    const v8, 0x636d74

    if-ne v7, v8, :cond_1f

    .line 60
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    .line 61
    invoke-virtual {v4}, Ln3/y/b/a/x0/m;->d()I

    move-result v8

    const v10, 0x64617461

    if-ne v8, v10, :cond_1c

    const/16 v8, 0x8

    .line 62
    invoke-virtual {v4, v8}, Ln3/y/b/a/x0/m;->A(I)V

    add-int/lit8 v7, v7, -0x10

    .line 63
    invoke-virtual {v4, v7}, Ln3/y/b/a/x0/m;->l(I)Ljava/lang/String;

    move-result-object v6

    .line 64
    new-instance v7, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;

    const-string v8, "und"

    invoke-direct {v7, v8, v6, v6}, Landroidx/media2/exoplayer/external/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1c
    const-string v7, "Failed to parse comment attribute: "

    .line 65
    invoke-static {v6}, Ln3/y/b/a/q0/u/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1d

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_1d
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1e
    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_1f
    const v8, 0x6e616d

    if-eq v7, v8, :cond_2b

    const v8, 0x74726b

    if-ne v7, v8, :cond_20

    goto/16 :goto_b

    :cond_20
    const v8, 0x636f6d

    if-eq v7, v8, :cond_2a

    const v8, 0x777274

    if-ne v7, v8, :cond_21

    goto/16 :goto_a

    :cond_21
    const v8, 0x646179

    if-ne v7, v8, :cond_22

    const-string v7, "TDRC"

    .line 66
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto/16 :goto_c

    :cond_22
    const v8, 0x415254

    if-ne v7, v8, :cond_23

    const-string v7, "TPE1"

    .line 67
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_23
    const v8, 0x746f6f

    if-ne v7, v8, :cond_24

    const-string v7, "TSSE"

    .line 68
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_24
    const v8, 0x616c62

    if-ne v7, v8, :cond_25

    const-string v7, "TALB"

    .line 69
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_25
    const v8, 0x6c7972

    if-ne v7, v8, :cond_26

    const-string v7, "USLT"

    .line 70
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_26
    const v8, 0x67656e

    if-ne v7, v8, :cond_27

    .line 71
    invoke-static {v6, v10, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_27
    const v8, 0x677270

    if-ne v7, v8, :cond_28

    const-string v7, "TIT1"

    .line 72
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_28
    const-string v7, "Skipped unknown metadata entry: "

    .line 73
    invoke-static {v6}, Ln3/y/b/a/q0/u/a;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_29

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9

    :cond_29
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_9
    invoke-virtual {v4, v9}, Ln3/y/b/a/x0/m;->z(I)V

    const/4 v7, 0x0

    goto :goto_d

    :cond_2a
    :goto_a
    :try_start_1
    const-string v7, "TCOM"

    .line 75
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7

    goto :goto_c

    :cond_2b
    :goto_b
    const-string v7, "TIT2"

    .line 76
    invoke-static {v6, v7, v4}, Ln3/y/b/a/q0/u/e;->c(ILjava/lang/String;Ln3/y/b/a/x0/m;)Landroidx/media2/exoplayer/external/metadata/id3/TextInformationFrame;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :goto_c
    invoke-virtual {v4, v9}, Ln3/y/b/a/x0/m;->z(I)V

    :goto_d
    if-eqz v7, :cond_2c

    .line 78
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2

    .line 79
    :goto_e
    invoke-virtual {v4, v9}, Ln3/y/b/a/x0/m;->z(I)V

    throw v0

    .line 80
    :cond_2d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_f

    :cond_2e
    new-instance v4, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v4, v5}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_10

    :cond_2f
    add-int v13, v13, v17

    .line 81
    invoke-virtual {v4, v13}, Ln3/y/b/a/x0/m;->z(I)V

    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_30
    add-int v5, v5, v17

    .line 82
    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->z(I)V

    const v6, 0x696c7374

    const v7, 0x6d657461

    const v8, 0x64617461

    const/16 v9, 0xc

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_31
    :goto_f
    const/4 v4, 0x0

    :goto_10
    if-eqz v4, :cond_32

    .line 83
    invoke-virtual {v3, v4}, Ln3/y/b/a/q0/j;->c(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    :cond_32
    const v5, 0x6d657461

    goto :goto_11

    :cond_33
    move v5, v7

    const/4 v4, 0x0

    .line 84
    :goto_11
    invoke-virtual {v0, v5}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 85
    sget-object v6, Ln3/y/b/a/q0/u/b;->a:[B

    const v6, 0x68646c72    # 4.3148E24f

    .line 86
    invoke-virtual {v5, v6}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v6

    const v7, 0x6b657973

    .line 87
    invoke-virtual {v5, v7}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v7

    const v8, 0x696c7374

    .line 88
    invoke-virtual {v5, v8}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v5

    if-eqz v6, :cond_3c

    if-eqz v7, :cond_3c

    if-eqz v5, :cond_3c

    .line 89
    iget-object v6, v6, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v8, 0x10

    .line 90
    invoke-virtual {v6, v8}, Ln3/y/b/a/x0/m;->z(I)V

    .line 91
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v6

    const v8, 0x6d647461

    if-eq v6, v8, :cond_34

    goto/16 :goto_17

    .line 92
    :cond_34
    iget-object v6, v7, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const/16 v7, 0xc

    .line 93
    invoke-virtual {v6, v7}, Ln3/y/b/a/x0/m;->z(I)V

    .line 94
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v7

    .line 95
    new-array v8, v7, [Ljava/lang/String;

    move v9, v15

    :goto_12
    if-ge v9, v7, :cond_35

    .line 96
    invoke-virtual {v6}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    const/4 v11, 0x4

    .line 97
    invoke-virtual {v6, v11}, Ln3/y/b/a/x0/m;->A(I)V

    const/16 v11, 0x8

    sub-int/2addr v10, v11

    .line 98
    invoke-virtual {v6, v10}, Ln3/y/b/a/x0/m;->m(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_35
    const/16 v11, 0x8

    .line 99
    iget-object v5, v5, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    .line 100
    invoke-virtual {v5, v11}, Ln3/y/b/a/x0/m;->z(I)V

    .line 101
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :goto_13
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->a()I

    move-result v9

    if-le v9, v11, :cond_3a

    .line 103
    iget v9, v5, Ln3/y/b/a/x0/m;->b:I

    .line 104
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->d()I

    move-result v10

    .line 105
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->d()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    if-ltz v12, :cond_38

    if-ge v12, v7, :cond_38

    .line 106
    aget-object v12, v8, v12

    add-int v13, v9, v10

    .line 107
    :goto_14
    iget v14, v5, Ln3/y/b/a/x0/m;->b:I

    if-ge v14, v13, :cond_37

    .line 108
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->d()I

    move-result v16

    .line 109
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->d()I

    move-result v11

    const v15, 0x64617461

    if-ne v11, v15, :cond_36

    .line 110
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->d()I

    move-result v11

    .line 111
    invoke-virtual {v5}, Ln3/y/b/a/x0/m;->d()I

    move-result v13

    add-int/lit8 v14, v16, -0x10

    .line 112
    new-array v15, v14, [B

    move/from16 v20, v7

    .line 113
    iget-object v7, v5, Ln3/y/b/a/x0/m;->a:[B

    move-object/from16 v21, v8

    iget v8, v5, Ln3/y/b/a/x0/m;->b:I

    move-object/from16 v24, v2

    const/4 v2, 0x0

    invoke-static {v7, v8, v15, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iget v2, v5, Ln3/y/b/a/x0/m;->b:I

    add-int/2addr v2, v14

    iput v2, v5, Ln3/y/b/a/x0/m;->b:I

    .line 115
    new-instance v2, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;

    invoke-direct {v2, v12, v15, v13, v11}, Landroidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    goto :goto_15

    :cond_36
    move-object/from16 v24, v2

    move/from16 v20, v7

    move-object/from16 v21, v8

    add-int v14, v14, v16

    .line 116
    invoke-virtual {v5, v14}, Ln3/y/b/a/x0/m;->z(I)V

    const/16 v11, 0x8

    const/4 v15, 0x0

    goto :goto_14

    :cond_37
    move-object/from16 v24, v2

    move/from16 v20, v7

    move-object/from16 v21, v8

    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_39

    .line 117
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_38
    move-object/from16 v24, v2

    move/from16 v20, v7

    move-object/from16 v21, v8

    :cond_39
    :goto_16
    add-int/2addr v9, v10

    .line 118
    invoke-virtual {v5, v9}, Ln3/y/b/a/x0/m;->z(I)V

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v2, v24

    const/16 v11, 0x8

    const/4 v15, 0x0

    goto :goto_13

    :cond_3a
    move-object/from16 v24, v2

    .line 119
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_18

    :cond_3b
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {v2, v6}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_19

    :cond_3c
    :goto_17
    move-object/from16 v24, v2

    :goto_18
    const/4 v2, 0x0

    .line 120
    :goto_19
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1a
    const/4 v12, 0x0

    .line 121
    iget-object v7, v0, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x2

    if-ge v6, v7, :cond_7f

    .line 122
    iget-object v7, v0, Ln3/y/b/a/q0/u/a$a;->d:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ln3/y/b/a/q0/u/a$a;

    .line 123
    iget v7, v11, Ln3/y/b/a/q0/u/a;->a:I

    const v8, 0x7472616b

    if-eq v7, v8, :cond_3d

    goto :goto_1b

    :cond_3d
    const v7, 0x6d766864

    .line 124
    invoke-virtual {v0, v7}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v16, 0x0

    iget-boolean v7, v1, Ln3/y/b/a/q0/u/f;->t:Z

    move/from16 v20, v7

    move-object v7, v11

    move-object v14, v11

    move-object/from16 v11, v16

    move v15, v13

    move/from16 v13, v20

    .line 125
    invoke-static/range {v7 .. v13}, Ln3/y/b/a/q0/u/b;->d(Ln3/y/b/a/q0/u/a$a;Ln3/y/b/a/q0/u/a$b;JLandroidx/media2/exoplayer/external/drm/DrmInitData;ZZ)Ln3/y/b/a/q0/u/i;

    move-result-object v7

    if-nez v7, :cond_3e

    :goto_1b
    move-object/from16 v19, v2

    move-object/from16 v43, v3

    move-object/from16 v34, v4

    move-object v0, v5

    move/from16 v35, v6

    goto/16 :goto_4d

    :cond_3e
    const v8, 0x6d646961

    .line 126
    invoke-virtual {v14, v8}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v8

    const v9, 0x6d696e66

    .line 127
    invoke-virtual {v8, v9}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v8

    const v9, 0x7374626c

    .line 128
    invoke-virtual {v8, v9}, Ln3/y/b/a/q0/u/a$a;->b(I)Ln3/y/b/a/q0/u/a$a;

    move-result-object v8

    const v9, 0x7374737a

    .line 129
    invoke-virtual {v8, v9}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v9

    if-eqz v9, :cond_3f

    .line 130
    new-instance v10, Ln3/y/b/a/q0/u/b$b;

    invoke-direct {v10, v9}, Ln3/y/b/a/q0/u/b$b;-><init>(Ln3/y/b/a/q0/u/a$b;)V

    goto :goto_1c

    :cond_3f
    const v9, 0x73747a32

    .line 131
    invoke-virtual {v8, v9}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v9

    if-eqz v9, :cond_7e

    .line 132
    new-instance v10, Ln3/y/b/a/q0/u/b$c;

    invoke-direct {v10, v9}, Ln3/y/b/a/q0/u/b$c;-><init>(Ln3/y/b/a/q0/u/a$b;)V

    .line 133
    :goto_1c
    invoke-interface {v10}, Ln3/y/b/a/q0/u/b$a;->b()I

    move-result v9

    if-nez v9, :cond_40

    .line 134
    new-instance v8, Ln3/y/b/a/q0/u/l;

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

    invoke-direct/range {v25 .. v33}, Ln3/y/b/a/q0/u/l;-><init>(Ln3/y/b/a/q0/u/i;[J[II[J[IJ)V

    move-object/from16 v19, v2

    move-object/from16 v43, v3

    move-object/from16 v34, v4

    move-object/from16 v36, v5

    move/from16 v35, v6

    goto/16 :goto_4c

    :cond_40
    const v11, 0x7374636f

    .line 135
    invoke-virtual {v8, v11}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v11

    if-nez v11, :cond_41

    const v11, 0x636f3634

    .line 136
    invoke-virtual {v8, v11}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v11

    const/4 v12, 0x1

    goto :goto_1d

    :cond_41
    const/4 v12, 0x0

    .line 137
    :goto_1d
    iget-object v11, v11, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const v13, 0x73747363

    .line 138
    invoke-virtual {v8, v13}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v13

    iget-object v13, v13, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const v14, 0x73747473

    .line 139
    invoke-virtual {v8, v14}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v14

    iget-object v14, v14, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    const v15, 0x73747373

    .line 140
    invoke-virtual {v8, v15}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v15

    if-eqz v15, :cond_42

    .line 141
    iget-object v15, v15, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    goto :goto_1e

    :cond_42
    const/4 v15, 0x0

    :goto_1e
    const v0, 0x63747473

    .line 142
    invoke-virtual {v8, v0}, Ln3/y/b/a/q0/u/a$a;->c(I)Ln3/y/b/a/q0/u/a$b;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 143
    iget-object v0, v0, Ln3/y/b/a/q0/u/a$b;->b:Ln3/y/b/a/x0/m;

    goto :goto_1f

    :cond_43
    const/4 v0, 0x0

    :goto_1f
    const/16 v8, 0xc

    .line 144
    invoke-virtual {v11, v8}, Ln3/y/b/a/x0/m;->z(I)V

    move-object/from16 v19, v2

    .line 145
    invoke-virtual {v11}, Ln3/y/b/a/x0/m;->r()I

    move-result v2

    .line 146
    invoke-virtual {v13, v8}, Ln3/y/b/a/x0/m;->z(I)V

    .line 147
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v20

    .line 148
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->d()I

    move-result v8

    move-object/from16 v34, v4

    const/4 v4, 0x1

    if-ne v8, v4, :cond_44

    const/4 v4, 0x1

    goto :goto_20

    :cond_44
    const/4 v4, 0x0

    :goto_20
    if-eqz v4, :cond_7d

    const/16 v4, 0xc

    .line 149
    invoke-virtual {v14, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 150
    invoke-virtual {v14}, Ln3/y/b/a/x0/m;->r()I

    move-result v8

    const/16 v18, -0x1

    add-int/lit8 v8, v8, -0x1

    .line 151
    invoke-virtual {v14}, Ln3/y/b/a/x0/m;->r()I

    move-result v23

    .line 152
    invoke-virtual {v14}, Ln3/y/b/a/x0/m;->r()I

    move-result v1

    if-eqz v0, :cond_45

    .line 153
    invoke-virtual {v0, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 154
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->r()I

    move-result v25

    goto :goto_21

    :cond_45
    const/16 v25, 0x0

    :goto_21
    if-eqz v15, :cond_47

    .line 155
    invoke-virtual {v15, v4}, Ln3/y/b/a/x0/m;->z(I)V

    .line 156
    invoke-virtual {v15}, Ln3/y/b/a/x0/m;->r()I

    move-result v26

    if-lez v26, :cond_46

    .line 157
    invoke-virtual {v15}, Ln3/y/b/a/x0/m;->r()I

    move-result v27

    const/16 v18, -0x1

    add-int/lit8 v27, v27, -0x1

    goto :goto_23

    :cond_46
    const/4 v15, 0x0

    goto :goto_22

    :cond_47
    const/16 v26, 0x0

    :goto_22
    const/16 v27, -0x1

    .line 158
    :goto_23
    invoke-interface {v10}, Ln3/y/b/a/q0/u/b$a;->c()Z

    move-result v28

    if-eqz v28, :cond_48

    iget-object v4, v7, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/Format;->i:Ljava/lang/String;

    move/from16 v35, v6

    const-string v6, "audio/raw"

    .line 159
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    if-nez v8, :cond_49

    if-nez v25, :cond_49

    if-nez v26, :cond_49

    const/4 v4, 0x1

    goto :goto_24

    :cond_48
    move/from16 v35, v6

    :cond_49
    const/4 v4, 0x0

    :goto_24
    if-nez v4, :cond_5d

    .line 160
    new-array v4, v9, [J

    .line 161
    new-array v6, v9, [I

    move/from16 v28, v8

    .line 162
    new-array v8, v9, [J

    move-object/from16 v36, v5

    .line 163
    new-array v5, v9, [I

    move-object/from16 v45, v14

    move/from16 v32, v20

    move/from16 v33, v23

    move/from16 v43, v25

    move/from16 v44, v26

    move/from16 v14, v27

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, -0x1

    const-wide/16 v37, 0x0

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x0

    move-object/from16 v23, v3

    move-object/from16 v26, v7

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_25
    if-ge v3, v9, :cond_57

    move/from16 v46, v9

    move/from16 v9, v20

    const/16 v20, 0x1

    :goto_26
    if-nez v27, :cond_4e

    move/from16 v47, v1

    add-int/lit8 v1, v31, 0x1

    if-ne v1, v2, :cond_4a

    const/16 v20, 0x0

    goto :goto_29

    :cond_4a
    if-eqz v12, :cond_4b

    .line 164
    invoke-virtual {v11}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v41

    goto :goto_27

    .line 165
    :cond_4b
    invoke-virtual {v11}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v41

    :goto_27
    if-ne v1, v9, :cond_4d

    .line 166
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v25

    const/4 v9, 0x4

    .line 167
    invoke-virtual {v13, v9}, Ln3/y/b/a/x0/m;->A(I)V

    add-int/lit8 v32, v32, -0x1

    if-lez v32, :cond_4c

    .line 168
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v9

    const/16 v18, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_28

    :cond_4c
    const/4 v9, -0x1

    :cond_4d
    :goto_28
    const/16 v20, 0x1

    :goto_29
    move/from16 v31, v1

    if-eqz v20, :cond_4f

    move/from16 v27, v25

    move-wide/from16 v39, v41

    move/from16 v1, v47

    goto :goto_26

    :cond_4e
    move/from16 v47, v1

    :cond_4f
    if-nez v20, :cond_50

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

    goto/16 :goto_2e

    :cond_50
    if-eqz v0, :cond_52

    :goto_2a
    if-nez v30, :cond_51

    if-lez v43, :cond_51

    .line 173
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->r()I

    move-result v30

    .line 174
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    move-result v29

    add-int/lit8 v43, v43, -0x1

    goto :goto_2a

    :cond_51
    add-int/lit8 v30, v30, -0x1

    :cond_52
    move/from16 v1, v29

    .line 175
    aput-wide v39, v4, v3

    .line 176
    invoke-interface {v10}, Ln3/y/b/a/q0/u/b$a;->a()I

    move-result v20

    aput v20, v6, v3

    move-object/from16 v48, v4

    .line 177
    aget v4, v6, v3

    if-le v4, v7, :cond_53

    .line 178
    aget v4, v6, v3

    move v7, v4

    :cond_53
    move/from16 v20, v9

    move-object v4, v10

    int-to-long v9, v1

    add-long v9, v37, v9

    .line 179
    aput-wide v9, v8, v3

    if-nez v15, :cond_54

    const/4 v9, 0x1

    goto :goto_2b

    :cond_54
    const/4 v9, 0x0

    .line 180
    :goto_2b
    aput v9, v5, v3

    if-ne v3, v14, :cond_55

    const/4 v9, 0x1

    .line 181
    aput v9, v5, v3

    add-int/lit8 v44, v44, -0x1

    if-lez v44, :cond_55

    .line 182
    invoke-virtual {v15}, Ln3/y/b/a/x0/m;->r()I

    move-result v10

    sub-int/2addr v10, v9

    move v14, v10

    move/from16 v9, v47

    move-object/from16 v47, v4

    move-object v10, v5

    goto :goto_2c

    :cond_55
    move-object v10, v5

    move/from16 v9, v47

    move-object/from16 v47, v4

    :goto_2c
    int-to-long v4, v9

    add-long v37, v37, v4

    add-int/lit8 v33, v33, -0x1

    if-nez v33, :cond_56

    if-lez v28, :cond_56

    .line 183
    invoke-virtual/range {v45 .. v45}, Ln3/y/b/a/x0/m;->r()I

    move-result v4

    .line 184
    invoke-virtual/range {v45 .. v45}, Ln3/y/b/a/x0/m;->d()I

    move-result v5

    add-int/lit8 v28, v28, -0x1

    move/from16 v33, v4

    goto :goto_2d

    :cond_56
    move v5, v9

    .line 185
    :goto_2d
    aget v4, v6, v3

    move v9, v5

    int-to-long v4, v4

    add-long v39, v39, v4

    add-int/lit8 v27, v27, -0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v29, v1

    move v1, v9

    move-object v5, v10

    move/from16 v9, v46

    move-object/from16 v10, v47

    move-object/from16 v4, v48

    goto/16 :goto_25

    :cond_57
    move-object/from16 v48, v4

    move-object v10, v5

    move/from16 v46, v9

    :goto_2e
    move/from16 v1, v29

    int-to-long v1, v1

    add-long v37, v37, v1

    :goto_2f
    if-lez v43, :cond_59

    .line 186
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->r()I

    move-result v1

    if-eqz v1, :cond_58

    const/4 v0, 0x0

    goto :goto_30

    .line 187
    :cond_58
    invoke-virtual {v0}, Ln3/y/b/a/x0/m;->d()I

    add-int/lit8 v43, v43, -0x1

    goto :goto_2f

    :cond_59
    const/4 v0, 0x1

    :goto_30
    if-nez v44, :cond_5a

    if-nez v33, :cond_5a

    if-nez v27, :cond_5a

    if-nez v28, :cond_5a

    if-nez v30, :cond_5a

    if-nez v0, :cond_5c

    :cond_5a
    if-nez v0, :cond_5b

    const-string v0, ", ctts invalid"

    goto :goto_31

    :cond_5b
    const-string v0, ""

    .line 188
    :goto_31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_5c
    move/from16 v29, v7

    move-object v11, v8

    move-wide/from16 v0, v37

    move-object v8, v4

    move-object/from16 v4, v26

    goto/16 :goto_39

    :cond_5d
    move-object/from16 v23, v3

    move-object/from16 v36, v5

    move-object/from16 v26, v7

    move/from16 v46, v9

    .line 189
    new-array v0, v2, [J

    .line 190
    new-array v3, v2, [I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    :goto_32
    const/4 v9, 0x1

    add-int/2addr v4, v9

    if-ne v4, v2, :cond_5e

    const/4 v9, 0x0

    goto :goto_35

    :cond_5e
    if-eqz v12, :cond_5f

    .line 191
    invoke-virtual {v11}, Ln3/y/b/a/x0/m;->s()J

    move-result-wide v7

    goto :goto_33

    .line 192
    :cond_5f
    invoke-virtual {v11}, Ln3/y/b/a/x0/m;->p()J

    move-result-wide v7

    :goto_33
    if-ne v4, v5, :cond_61

    .line 193
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v6

    const/4 v5, 0x4

    .line 194
    invoke-virtual {v13, v5}, Ln3/y/b/a/x0/m;->A(I)V

    add-int/lit8 v20, v20, -0x1

    if-lez v20, :cond_60

    .line 195
    invoke-virtual {v13}, Ln3/y/b/a/x0/m;->r()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    goto :goto_34

    :cond_60
    const/4 v5, -0x1

    :cond_61
    :goto_34
    const/4 v9, 0x1

    :goto_35
    if-eqz v9, :cond_62

    .line 196
    aput-wide v7, v0, v4

    .line 197
    aput v6, v3, v4

    goto :goto_32

    :cond_62
    move-object/from16 v4, v26

    .line 198
    iget-object v5, v4, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget v6, v5, Landroidx/media2/exoplayer/external/Format;->x:I

    iget v5, v5, Landroidx/media2/exoplayer/external/Format;->v:I

    .line 199
    invoke-static {v6, v5}, Ln3/y/b/a/x0/x;->n(II)I

    move-result v5

    int-to-long v6, v1

    const/16 v1, 0x2000

    .line 200
    div-int/2addr v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_36
    if-ge v8, v2, :cond_63

    .line 201
    aget v10, v3, v8

    .line 202
    invoke-static {v10, v1}, Ln3/y/b/a/x0/x;->e(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    .line 203
    :cond_63
    new-array v8, v9, [J

    .line 204
    new-array v10, v9, [I

    .line 205
    new-array v11, v9, [J

    .line 206
    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_37
    if-ge v12, v2, :cond_65

    .line 207
    aget v20, v3, v12

    .line 208
    aget-wide v25, v0, v12

    move/from16 v49, v20

    move-object/from16 v20, v0

    move/from16 v0, v49

    :goto_38
    if-lez v0, :cond_64

    .line 209
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 210
    aput-wide v25, v8, v15

    mul-int v28, v5, v27

    .line 211
    aput v28, v10, v15

    move/from16 v28, v1

    .line 212
    aget v1, v10, v15

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move/from16 v29, v2

    int-to-long v1, v13

    mul-long/2addr v1, v6

    .line 213
    aput-wide v1, v11, v15

    const/4 v1, 0x1

    .line 214
    aput v1, v9, v15

    .line 215
    aget v1, v10, v15

    int-to-long v1, v1

    add-long v25, v25, v1

    add-int v13, v13, v27

    sub-int v0, v0, v27

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v28

    move/from16 v2, v29

    goto :goto_38

    :cond_64
    move/from16 v28, v1

    move/from16 v29, v2

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v20

    goto :goto_37

    :cond_65
    int-to-long v0, v13

    mul-long v37, v6, v0

    move-object v5, v9

    move-object v6, v10

    move/from16 v29, v14

    move-wide/from16 v0, v37

    move/from16 v9, v46

    :goto_39
    const-wide/32 v39, 0xf4240

    .line 216
    iget-wide v2, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v37, v0

    move-wide/from16 v41, v2

    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v32

    .line 217
    iget-object v2, v4, Ln3/y/b/a/q0/u/i;->h:[J

    if-eqz v2, :cond_7b

    invoke-virtual/range {v23 .. v23}, Ln3/y/b/a/q0/j;->a()Z

    move-result v2

    if-eqz v2, :cond_66

    goto/16 :goto_4a

    .line 218
    :cond_66
    iget-object v2, v4, Ln3/y/b/a/q0/u/i;->h:[J

    array-length v3, v2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_6a

    iget v3, v4, Ln3/y/b/a/q0/u/i;->b:I

    if-ne v3, v7, :cond_6a

    array-length v3, v11

    const/4 v7, 0x2

    if-lt v3, v7, :cond_6a

    .line 219
    iget-object v3, v4, Ln3/y/b/a/q0/u/i;->i:[J

    const/4 v7, 0x0

    aget-wide v14, v3, v7

    .line 220
    aget-wide v37, v2, v7

    iget-wide v2, v4, Ln3/y/b/a/q0/u/i;->c:J

    iget-wide v12, v4, Ln3/y/b/a/q0/u/i;->d:J

    move-wide/from16 v39, v2

    move-wide/from16 v41, v12

    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v2

    add-long/2addr v2, v14

    .line 221
    array-length v10, v11

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    const/4 v12, 0x4

    .line 222
    invoke-static {v12, v7, v10}, Ln3/y/b/a/x0/x;->g(III)I

    move-result v13

    move/from16 v16, v9

    .line 223
    array-length v9, v11

    sub-int/2addr v9, v12

    .line 224
    invoke-static {v9, v7, v10}, Ln3/y/b/a/x0/x;->g(III)I

    move-result v9

    .line 225
    aget-wide v27, v11, v7

    cmp-long v7, v27, v14

    if-gtz v7, :cond_67

    aget-wide v27, v11, v13

    cmp-long v7, v14, v27

    if-gez v7, :cond_67

    aget-wide v9, v11, v9

    cmp-long v7, v9, v2

    if-gez v7, :cond_67

    cmp-long v7, v2, v0

    if-gtz v7, :cond_67

    const/4 v7, 0x1

    goto :goto_3a

    :cond_67
    const/4 v7, 0x0

    :goto_3a
    if-eqz v7, :cond_69

    sub-long v37, v0, v2

    const/4 v2, 0x0

    .line 226
    aget-wide v9, v11, v2

    sub-long v39, v14, v9

    iget-object v2, v4, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget v2, v2, Landroidx/media2/exoplayer/external/Format;->w:I

    int-to-long v2, v2

    iget-wide v9, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v41, v2

    move-wide/from16 v43, v9

    invoke-static/range {v39 .. v44}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v2

    .line 227
    iget-object v7, v4, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    iget v7, v7, Landroidx/media2/exoplayer/external/Format;->w:I

    int-to-long v9, v7

    iget-wide v13, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v39, v9

    move-wide/from16 v41, v13

    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v7, v2, v13

    if-nez v7, :cond_68

    cmp-long v7, v9, v13

    if-eqz v7, :cond_69

    :cond_68
    const-wide/32 v13, 0x7fffffff

    cmp-long v7, v2, v13

    if-gtz v7, :cond_69

    cmp-long v7, v9, v13

    if-gtz v7, :cond_69

    long-to-int v0, v2

    move-object/from16 v2, v23

    .line 228
    iput v0, v2, Ln3/y/b/a/q0/j;->a:I

    long-to-int v0, v9

    .line 229
    iput v0, v2, Ln3/y/b/a/q0/j;->b:I

    .line 230
    iget-wide v0, v4, Ln3/y/b/a/q0/u/i;->c:J

    const-wide/32 v9, 0xf4240

    invoke-static {v11, v9, v10, v0, v1}, Ln3/y/b/a/x0/x;->A([JJJ)V

    .line 231
    iget-object v0, v4, Ln3/y/b/a/q0/u/i;->h:[J

    const/4 v1, 0x0

    aget-wide v37, v0, v1

    const-wide/32 v39, 0xf4240

    iget-wide v0, v4, Ln3/y/b/a/q0/u/i;->d:J

    move-wide/from16 v41, v0

    .line 232
    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v32

    .line 233
    new-instance v0, Ln3/y/b/a/q0/u/l;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    move-object/from16 v28, v6

    move-object/from16 v30, v11

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v33}, Ln3/y/b/a/q0/u/l;-><init>(Ln3/y/b/a/q0/u/i;[J[II[J[IJ)V

    goto :goto_3d

    :cond_69
    move-object/from16 v2, v23

    goto :goto_3b

    :cond_6a
    move/from16 v16, v9

    move-object/from16 v2, v23

    const/4 v12, 0x4

    .line 234
    :goto_3b
    iget-object v3, v4, Ln3/y/b/a/q0/u/i;->h:[J

    array-length v7, v3

    const/4 v9, 0x1

    if-ne v7, v9, :cond_6c

    const/4 v7, 0x0

    aget-wide v9, v3, v7

    const-wide/16 v13, 0x0

    cmp-long v9, v9, v13

    if-nez v9, :cond_6c

    .line 235
    iget-object v3, v4, Ln3/y/b/a/q0/u/i;->i:[J

    aget-wide v9, v3, v7

    const/4 v3, 0x0

    .line 236
    :goto_3c
    array-length v7, v11

    if-ge v3, v7, :cond_6b

    .line 237
    aget-wide v13, v11, v3

    sub-long v37, v13, v9

    const-wide/32 v39, 0xf4240

    iget-wide v13, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v41, v13

    .line 238
    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v13

    aput-wide v13, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_6b
    sub-long v37, v0, v9

    const-wide/32 v39, 0xf4240

    .line 239
    iget-wide v0, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v41, v0

    .line 240
    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v32

    .line 241
    new-instance v0, Ln3/y/b/a/q0/u/l;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v27, v8

    move-object/from16 v28, v6

    move-object/from16 v30, v11

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v33}, Ln3/y/b/a/q0/u/l;-><init>(Ln3/y/b/a/q0/u/i;[J[II[J[IJ)V

    :goto_3d
    move-object v8, v0

    move-object/from16 v43, v2

    goto/16 :goto_4c

    .line 242
    :cond_6c
    iget v0, v4, Ln3/y/b/a/q0/u/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_6d
    const/4 v0, 0x0

    .line 243
    :goto_3e
    array-length v1, v3

    new-array v1, v1, [I

    .line 244
    array-length v3, v3

    new-array v3, v3, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 245
    :goto_3f
    iget-object v14, v4, Ln3/y/b/a/q0/u/i;->h:[J

    array-length v15, v14

    if-ge v7, v15, :cond_71

    .line 246
    iget-object v15, v4, Ln3/y/b/a/q0/u/i;->i:[J

    move/from16 v20, v13

    aget-wide v12, v15, v7

    const-wide/16 v25, -0x1

    cmp-long v15, v12, v25

    if-eqz v15, :cond_70

    .line 247
    aget-wide v37, v14, v7

    iget-wide v14, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-object/from16 v23, v8

    move/from16 v25, v9

    iget-wide v8, v4, Ln3/y/b/a/q0/u/i;->d:J

    move-wide/from16 v39, v14

    move-wide/from16 v41, v8

    .line 248
    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v8

    const/4 v14, 0x1

    .line 249
    invoke-static {v11, v12, v13, v14, v14}, Ln3/y/b/a/x0/x;->b([JJZZ)I

    move-result v15

    aput v15, v1, v7

    add-long/2addr v12, v8

    const/4 v8, 0x0

    .line 250
    invoke-static {v11, v12, v13, v0, v8}, Ln3/y/b/a/x0/x;->b([JJZZ)I

    move-result v9

    aput v9, v3, v7

    .line 251
    :goto_40
    aget v8, v1, v7

    aget v9, v3, v7

    if-ge v8, v9, :cond_6e

    aget v8, v1, v7

    aget v8, v5, v8

    and-int/2addr v8, v14

    if-nez v8, :cond_6e

    .line 252
    aget v8, v1, v7

    add-int/2addr v8, v14

    aput v8, v1, v7

    const/4 v14, 0x1

    goto :goto_40

    .line 253
    :cond_6e
    aget v8, v3, v7

    aget v9, v1, v7

    sub-int/2addr v8, v9

    add-int/2addr v8, v10

    .line 254
    aget v9, v1, v7

    move/from16 v12, v20

    if-eq v12, v9, :cond_6f

    const/4 v9, 0x1

    goto :goto_41

    :cond_6f
    const/4 v9, 0x0

    :goto_41
    or-int v9, v9, v25

    .line 255
    aget v10, v3, v7

    move v13, v10

    move v10, v8

    goto :goto_42

    :cond_70
    move-object/from16 v23, v8

    move/from16 v25, v9

    move/from16 v12, v20

    move v13, v12

    :goto_42
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v23

    const/4 v12, 0x4

    goto :goto_3f

    :cond_71
    move-object/from16 v23, v8

    move/from16 v25, v9

    move/from16 v9, v16

    if-eq v10, v9, :cond_72

    const/4 v0, 0x1

    goto :goto_43

    :cond_72
    const/4 v0, 0x0

    :goto_43
    or-int v0, v25, v0

    if-eqz v0, :cond_73

    .line 256
    new-array v7, v10, [J

    goto :goto_44

    :cond_73
    move-object/from16 v7, v23

    :goto_44
    if-eqz v0, :cond_74

    .line 257
    new-array v8, v10, [I

    goto :goto_45

    :cond_74
    move-object v8, v6

    :goto_45
    if-eqz v0, :cond_75

    const/16 v29, 0x0

    :cond_75
    if-eqz v0, :cond_76

    .line 258
    new-array v9, v10, [I

    goto :goto_46

    :cond_76
    move-object v9, v5

    .line 259
    :goto_46
    new-array v10, v10, [J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v21, 0x0

    .line 260
    :goto_47
    iget-object v14, v4, Ln3/y/b/a/q0/u/i;->h:[J

    array-length v14, v14

    if-ge v12, v14, :cond_7a

    .line 261
    iget-object v14, v4, Ln3/y/b/a/q0/u/i;->i:[J

    aget-wide v15, v14, v12

    .line 262
    aget v14, v1, v12

    move-object/from16 v20, v1

    .line 263
    aget v1, v3, v12

    if-eqz v0, :cond_77

    move-object/from16 v25, v3

    sub-int v3, v1, v14

    move-object/from16 v43, v2

    move-object/from16 v2, v23

    .line 264
    invoke-static {v2, v14, v7, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-static {v6, v14, v8, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    invoke-static {v5, v14, v9, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_48

    :cond_77
    move-object/from16 v43, v2

    move-object/from16 v25, v3

    move-object/from16 v2, v23

    :goto_48
    move/from16 v3, v29

    :goto_49
    if-ge v14, v1, :cond_79

    const-wide/32 v28, 0xf4240

    move/from16 v23, v1

    move-object/from16 v44, v2

    .line 267
    iget-wide v1, v4, Ln3/y/b/a/q0/u/i;->d:J

    const-wide/32 v39, 0xf4240

    move-wide/from16 v37, v21

    move-wide/from16 v41, v1

    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v1

    .line 268
    aget-wide v26, v11, v14

    sub-long v26, v26, v15

    move-object/from16 v37, v11

    move/from16 v32, v12

    iget-wide v11, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-wide/from16 v30, v11

    .line 269
    invoke-static/range {v26 .. v31}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v11

    add-long/2addr v1, v11

    .line 270
    aput-wide v1, v10, v13

    if-eqz v0, :cond_78

    .line 271
    aget v1, v8, v13

    if-le v1, v3, :cond_78

    .line 272
    aget v1, v6, v14

    move v3, v1

    :cond_78
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v23

    move/from16 v12, v32

    move-object/from16 v11, v37

    move-object/from16 v2, v44

    goto :goto_49

    :cond_79
    move-object/from16 v44, v2

    move-object/from16 v37, v11

    move/from16 v32, v12

    .line 273
    iget-object v1, v4, Ln3/y/b/a/q0/u/i;->h:[J

    aget-wide v11, v1, v32

    add-long v21, v21, v11

    add-int/lit8 v12, v32, 0x1

    move/from16 v29, v3

    move-object/from16 v1, v20

    move-object/from16 v3, v25

    move-object/from16 v11, v37

    move-object/from16 v2, v43

    move-object/from16 v23, v44

    goto/16 :goto_47

    :cond_7a
    move-object/from16 v43, v2

    const-wide/32 v39, 0xf4240

    .line 274
    iget-wide v0, v4, Ln3/y/b/a/q0/u/i;->d:J

    move-wide/from16 v37, v21

    move-wide/from16 v41, v0

    .line 275
    invoke-static/range {v37 .. v42}, Ln3/y/b/a/x0/x;->z(JJJ)J

    move-result-wide v32

    .line 276
    new-instance v0, Ln3/y/b/a/q0/u/l;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v9

    invoke-direct/range {v25 .. v33}, Ln3/y/b/a/q0/u/l;-><init>(Ln3/y/b/a/q0/u/i;[J[II[J[IJ)V

    goto :goto_4b

    :cond_7b
    :goto_4a
    move-object/from16 v44, v8

    move-object/from16 v37, v11

    move-object/from16 v43, v23

    .line 277
    iget-wide v0, v4, Ln3/y/b/a/q0/u/i;->c:J

    move-object/from16 v8, v37

    const-wide/32 v2, 0xf4240

    invoke-static {v8, v2, v3, v0, v1}, Ln3/y/b/a/x0/x;->A([JJJ)V

    .line 278
    new-instance v0, Ln3/y/b/a/q0/u/l;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v27, v44

    move-object/from16 v28, v6

    move-object/from16 v30, v8

    move-object/from16 v31, v5

    invoke-direct/range {v25 .. v33}, Ln3/y/b/a/q0/u/l;-><init>(Ln3/y/b/a/q0/u/i;[J[II[J[IJ)V

    :goto_4b
    move-object v8, v0

    .line 279
    :goto_4c
    iget v0, v8, Ln3/y/b/a/q0/u/l;->b:I

    if-nez v0, :cond_7c

    move-object/from16 v0, v36

    goto :goto_4d

    :cond_7c
    move-object/from16 v0, v36

    .line 280
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 v6, v35, 0x1

    move-object/from16 v1, p0

    move-object v5, v0

    move-object/from16 v2, v19

    move-object/from16 v4, v34

    move-object/from16 v3, v43

    move-object/from16 v0, p1

    goto/16 :goto_1a

    .line 281
    :cond_7d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "first_chunk must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_7e
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    move-object/from16 v19, v2

    move-object/from16 v43, v3

    move-object/from16 v34, v4

    move-object v0, v5

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v5, v2

    const/4 v4, 0x0

    const/4 v11, -0x1

    :goto_4e
    if-ge v4, v1, :cond_85

    .line 284
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ln3/y/b/a/q0/u/l;

    .line 285
    iget-object v8, v7, Ln3/y/b/a/q0/u/l;->a:Ln3/y/b/a/q0/u/i;

    .line 286
    iget-wide v9, v8, Ln3/y/b/a/q0/u/i;->e:J

    cmp-long v12, v9, v2

    if-eqz v12, :cond_80

    goto :goto_4f

    :cond_80
    iget-wide v9, v7, Ln3/y/b/a/q0/u/l;->h:J

    .line 287
    :goto_4f
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 288
    new-instance v12, Ln3/y/b/a/q0/u/f$a;

    move-object/from16 v13, p0

    iget-object v14, v13, Ln3/y/b/a/q0/u/f;->o:Ln3/y/b/a/q0/h;

    iget v15, v8, Ln3/y/b/a/q0/u/i;->b:I

    .line 289
    invoke-interface {v14, v4, v15}, Ln3/y/b/a/q0/h;->i(II)Ln3/y/b/a/q0/p;

    move-result-object v14

    invoke-direct {v12, v8, v7, v14}, Ln3/y/b/a/q0/u/f$a;-><init>(Ln3/y/b/a/q0/u/i;Ln3/y/b/a/q0/u/l;Ln3/y/b/a/q0/p;)V

    .line 290
    iget v14, v7, Ln3/y/b/a/q0/u/l;->e:I

    add-int/lit8 v14, v14, 0x1e

    .line 291
    iget-object v15, v8, Ln3/y/b/a/q0/u/i;->f:Landroidx/media2/exoplayer/external/Format;

    invoke-virtual {v15, v14}, Landroidx/media2/exoplayer/external/Format;->e(I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v14

    .line 292
    iget v15, v8, Ln3/y/b/a/q0/u/i;->b:I

    const/4 v2, 0x2

    if-ne v15, v2, :cond_81

    const-wide/16 v2, 0x0

    cmp-long v15, v9, v2

    if-lez v15, :cond_82

    iget v7, v7, Ln3/y/b/a/q0/u/l;->b:I

    const/4 v15, 0x1

    if-le v7, v15, :cond_82

    int-to-float v7, v7

    long-to-float v9, v9

    const v10, 0x49742400    # 1000000.0f

    div-float/2addr v9, v10

    div-float/2addr v7, v9

    .line 293
    invoke-virtual {v14, v7}, Landroidx/media2/exoplayer/external/Format;->b(F)Landroidx/media2/exoplayer/external/Format;

    move-result-object v14

    goto :goto_50

    :cond_81
    const-wide/16 v2, 0x0

    .line 294
    :cond_82
    :goto_50
    iget v7, v8, Ln3/y/b/a/q0/u/i;->b:I

    move-object/from16 v10, v19

    move-object/from16 v15, v34

    move-object/from16 v9, v43

    .line 295
    invoke-static {v7, v14, v15, v10, v9}, Ln3/y/b/a/q0/u/e;->a(ILandroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/metadata/Metadata;Landroidx/media2/exoplayer/external/metadata/Metadata;Ln3/y/b/a/q0/j;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v7

    .line 296
    iget-object v14, v12, Ln3/y/b/a/q0/u/f$a;->c:Ln3/y/b/a/q0/p;

    invoke-interface {v14, v7}, Ln3/y/b/a/q0/p;->c(Landroidx/media2/exoplayer/external/Format;)V

    .line 297
    iget v7, v8, Ln3/y/b/a/q0/u/i;->b:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_83

    const/4 v7, -0x1

    if-ne v11, v7, :cond_84

    .line 298
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v11

    goto :goto_51

    :cond_83
    const/4 v7, -0x1

    :cond_84
    :goto_51
    move-object/from16 v14, v24

    .line 299
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v43, v9

    move-object/from16 v19, v10

    move-object/from16 v24, v14

    move-object/from16 v34, v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_4e

    :cond_85
    move-object/from16 v14, v24

    const-wide/16 v2, 0x0

    const/4 v7, -0x1

    move-object/from16 v13, p0

    .line 300
    iput v11, v13, Ln3/y/b/a/q0/u/f;->r:I

    .line 301
    iput-wide v5, v13, Ln3/y/b/a/q0/u/f;->s:J

    const/4 v0, 0x0

    new-array v1, v0, [Ln3/y/b/a/q0/u/f$a;

    .line 302
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/y/b/a/q0/u/f$a;

    iput-object v0, v13, Ln3/y/b/a/q0/u/f;->p:[Ln3/y/b/a/q0/u/f$a;

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
    :goto_52
    array-length v9, v0

    if-ge v8, v9, :cond_86

    .line 308
    aget-object v9, v0, v8

    iget-object v9, v9, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget v9, v9, Ln3/y/b/a/q0/u/l;->b:I

    new-array v9, v9, [J

    aput-object v9, v1, v8

    .line 309
    aget-object v9, v0, v8

    iget-object v9, v9, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget-object v9, v9, Ln3/y/b/a/q0/u/l;->f:[J

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    aput-wide v11, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_52

    :cond_86
    const/4 v10, 0x0

    move-wide v14, v2

    move v2, v10

    .line 310
    :goto_53
    array-length v3, v0

    if-ge v2, v3, :cond_8a

    const-wide v8, 0x7fffffffffffffffL

    move v11, v7

    move v3, v10

    .line 311
    :goto_54
    array-length v12, v0

    if-ge v3, v12, :cond_88

    .line 312
    aget-boolean v12, v6, v3

    if-nez v12, :cond_87

    aget-wide v16, v5, v3

    cmp-long v12, v16, v8

    if-gtz v12, :cond_87

    .line 313
    aget-wide v8, v5, v3

    move v11, v3

    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 314
    :cond_88
    aget v3, v4, v11

    .line 315
    aget-object v8, v1, v11

    aput-wide v14, v8, v3

    .line 316
    aget-object v8, v0, v11

    iget-object v8, v8, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget-object v8, v8, Ln3/y/b/a/q0/u/l;->d:[I

    aget v8, v8, v3

    int-to-long v8, v8

    add-long/2addr v14, v8

    const/4 v8, 0x1

    add-int/2addr v3, v8

    .line 317
    aput v3, v4, v11

    .line 318
    aget-object v9, v1, v11

    array-length v9, v9

    if-ge v3, v9, :cond_89

    .line 319
    aget-object v9, v0, v11

    iget-object v9, v9, Ln3/y/b/a/q0/u/f$a;->b:Ln3/y/b/a/q0/u/l;

    iget-object v9, v9, Ln3/y/b/a/q0/u/l;->f:[J

    aget-wide v16, v9, v3

    aput-wide v16, v5, v11

    goto :goto_53

    .line 320
    :cond_89
    aput-boolean v8, v6, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 321
    :cond_8a
    iput-object v1, v13, Ln3/y/b/a/q0/u/f;->q:[[J

    .line 322
    iget-object v0, v13, Ln3/y/b/a/q0/u/f;->o:Ln3/y/b/a/q0/h;

    invoke-interface {v0}, Ln3/y/b/a/q0/h;->g()V

    .line 323
    iget-object v0, v13, Ln3/y/b/a/q0/u/f;->o:Ln3/y/b/a/q0/h;

    invoke-interface {v0, v13}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
