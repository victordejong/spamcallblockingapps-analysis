.class public final Le/m/a/c/g1/e0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/e0/b0$b;,
        Le/m/a/c/g1/e0/b0$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/c/q1/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/a/c/q1/t;

.field public final d:Landroid/util/SparseIntArray;

.field public final e:Le/m/a/c/g1/e0/c0$c;

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Le/m/a/c/g1/e0/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/util/SparseBooleanArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Le/m/a/c/g1/e0/a0;

.field public j:Le/m/a/c/g1/e0/z;

.field public k:Le/m/a/c/g1/i;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Le/m/a/c/g1/e0/c0;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 1
    new-instance v0, Le/m/a/c/q1/c0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Le/m/a/c/q1/c0;-><init>(J)V

    new-instance v1, Le/m/a/c/g1/e0/g;

    invoke-direct {v1, p2}, Le/m/a/c/g1/e0/g;-><init>(I)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v1, p0, Le/m/a/c/g1/e0/b0;->e:Le/m/a/c/g1/e0/c0$c;

    .line 4
    iput p1, p0, Le/m/a/c/g1/e0/b0;->a:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/b0;->b:Ljava/util/List;

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/m/a/c/g1/e0/b0;->b:Ljava/util/List;

    .line 8
    :goto_1
    new-instance p1, Le/m/a/c/q1/t;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Le/m/a/c/q1/t;-><init>([BI)V

    iput-object p1, p0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/b0;->g:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Le/m/a/c/g1/e0/b0;->h:Landroid/util/SparseBooleanArray;

    .line 11
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    .line 12
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Le/m/a/c/g1/e0/b0;->d:Landroid/util/SparseIntArray;

    .line 13
    new-instance v2, Le/m/a/c/g1/e0/a0;

    invoke-direct {v2}, Le/m/a/c/g1/e0/a0;-><init>()V

    iput-object v2, p0, Le/m/a/c/g1/e0/b0;->i:Le/m/a/c/g1/e0/a0;

    const/4 v2, -0x1

    .line 14
    iput v2, p0, Le/m/a/c/g1/e0/b0;->r:I

    .line 15
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 16
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 17
    invoke-virtual {v1}, Le/m/a/c/g1/e0/g;->b()Landroid/util/SparseArray;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_2

    .line 19
    iget-object v2, p0, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p0, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    new-instance p2, Le/m/a/c/g1/e0/w;

    new-instance v1, Le/m/a/c/g1/e0/b0$a;

    invoke-direct {v1, p0}, Le/m/a/c/g1/e0/b0$a;-><init>(Le/m/a/c/g1/e0/b0;)V

    invoke-direct {p2, v1}, Le/m/a/c/g1/e0/w;-><init>(Le/m/a/c/g1/e0/v;)V

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Le/m/a/c/g1/e0/b0;->p:Le/m/a/c/g1/e0/c0;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 9

    .line 1
    iget p1, p0, Le/m/a/c/g1/e0/b0;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Ln3/g0/y;->x(Z)V

    .line 2
    iget-object p1, p0, Le/m/a/c/g1/e0/b0;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 3
    iget-object v4, p0, Le/m/a/c/g1/e0/b0;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/a/c/q1/c0;

    .line 4
    invoke-virtual {v4}, Le/m/a/c/q1/c0;->c()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move v5, p2

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    if-nez v5, :cond_2

    .line 5
    invoke-virtual {v4}, Le/m/a/c/q1/c0;->c()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    .line 6
    iget-wide v2, v4, Le/m/a/c/q1/c0;->a:J

    cmp-long v2, v2, p3

    if-eqz v2, :cond_3

    .line 7
    :cond_2
    iput-wide v7, v4, Le/m/a/c/q1/c0;->c:J

    .line 8
    invoke-virtual {v4, p3, p4}, Le/m/a/c/q1/c0;->d(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Le/m/a/c/g1/e0/b0;->j:Le/m/a/c/g1/e0/z;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1, p3, p4}, Le/m/a/c/g1/a;->e(J)V

    .line 11
    :cond_5
    iget-object p1, p0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {p1}, Le/m/a/c/q1/t;->x()V

    .line 12
    iget-object p1, p0, Le/m/a/c/g1/e0/b0;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    .line 13
    :goto_3
    iget-object p2, p0, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 14
    iget-object p2, p0, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/m/a/c/g1/e0/c0;

    invoke-interface {p2}, Le/m/a/c/g1/e0/c0;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 15
    :cond_6
    iput v0, p0, Le/m/a/c/g1/e0/b0;->q:I

    return-void
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 17
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
    iget-wide v10, v1, Le/m/a/c/g1/e;->c:J

    .line 2
    iget-boolean v3, v0, Le/m/a/c/g1/e0/b0;->m:Z

    const/16 v12, 0x47

    const-wide/16 v13, -0x1

    const/4 v15, -0x1

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_12

    cmp-long v3, v10, v13

    if-eqz v3, :cond_0

    .line 3
    iget v3, v0, Le/m/a/c/g1/e0/b0;->a:I

    if-eq v3, v9, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_e

    .line 4
    iget-object v3, v0, Le/m/a/c/g1/e0/b0;->i:Le/m/a/c/g1/e0/a0;

    .line 5
    iget-boolean v6, v3, Le/m/a/c/g1/e0/a0;->c:Z

    if-nez v6, :cond_e

    .line 6
    iget v6, v0, Le/m/a/c/g1/e0/b0;->r:I

    if-gtz v6, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/a0;->a(Le/m/a/c/g1/e;)I

    goto/16 :goto_7

    .line 8
    :cond_1
    iget-boolean v9, v3, Le/m/a/c/g1/e0/a0;->e:Z

    const-wide/32 v13, 0x1b8a0

    if-nez v9, :cond_6

    .line 9
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v9, v13

    int-to-long v13, v9

    sub-long/2addr v10, v13

    .line 10
    iget-wide v13, v1, Le/m/a/c/g1/e;->d:J

    cmp-long v13, v13, v10

    if-eqz v13, :cond_2

    .line 11
    iput-wide v10, v2, Le/m/a/c/g1/p;->a:J

    goto :goto_2

    .line 12
    :cond_2
    iget-object v2, v3, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v9}, Le/m/a/c/q1/t;->y(I)V

    .line 13
    iput v8, v1, Le/m/a/c/g1/e;->f:I

    .line 14
    iget-object v2, v3, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 15
    invoke-virtual {v1, v2, v8, v9, v8}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 16
    iget-object v1, v3, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    .line 17
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 18
    iget v9, v1, Le/m/a/c/q1/t;->c:I

    :cond_3
    :goto_1
    add-int/2addr v9, v15

    if-lt v9, v2, :cond_5

    .line 19
    iget-object v10, v1, Le/m/a/c/q1/t;->a:[B

    aget-byte v10, v10, v9

    if-eq v10, v12, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {v1, v9, v6}, Ln3/g0/y;->I1(Le/m/a/c/q1/t;II)J

    move-result-wide v10

    cmp-long v13, v10, v4

    if-eqz v13, :cond_3

    move-wide v4, v10

    .line 21
    :cond_5
    iput-wide v4, v3, Le/m/a/c/g1/e0/a0;->g:J

    .line 22
    iput-boolean v7, v3, Le/m/a/c/g1/e0/a0;->e:Z

    move v7, v8

    :goto_2
    move v8, v7

    goto/16 :goto_7

    .line 23
    :cond_6
    iget-wide v7, v3, Le/m/a/c/g1/e0/a0;->g:J

    cmp-long v7, v7, v4

    if-nez v7, :cond_7

    .line 24
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/a0;->a(Le/m/a/c/g1/e;)I

    const/4 v8, 0x0

    goto/16 :goto_7

    .line 25
    :cond_7
    iget-boolean v7, v3, Le/m/a/c/g1/e0/a0;->d:Z

    if-nez v7, :cond_c

    .line 26
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    .line 27
    iget-wide v8, v1, Le/m/a/c/g1/e;->d:J

    const/4 v10, 0x0

    int-to-long v13, v10

    cmp-long v8, v8, v13

    if-eqz v8, :cond_8

    .line 28
    iput-wide v13, v2, Le/m/a/c/g1/p;->a:J

    const/4 v7, 0x1

    goto :goto_2

    .line 29
    :cond_8
    iget-object v2, v3, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    invoke-virtual {v2, v7}, Le/m/a/c/q1/t;->y(I)V

    .line 30
    iput v10, v1, Le/m/a/c/g1/e;->f:I

    .line 31
    iget-object v2, v3, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    iget-object v2, v2, Le/m/a/c/q1/t;->a:[B

    .line 32
    invoke-virtual {v1, v2, v10, v7, v10}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 33
    iget-object v1, v3, Le/m/a/c/g1/e0/a0;->b:Le/m/a/c/q1/t;

    .line 34
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 35
    iget v7, v1, Le/m/a/c/q1/t;->c:I

    :goto_3
    if-ge v2, v7, :cond_b

    .line 36
    iget-object v8, v1, Le/m/a/c/q1/t;->a:[B

    aget-byte v8, v8, v2

    if-eq v8, v12, :cond_9

    goto :goto_4

    .line 37
    :cond_9
    invoke-static {v1, v2, v6}, Ln3/g0/y;->I1(Le/m/a/c/q1/t;II)J

    move-result-wide v8

    cmp-long v11, v8, v4

    if-eqz v11, :cond_a

    move-wide v4, v8

    goto :goto_5

    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 38
    :cond_b
    :goto_5
    iput-wide v4, v3, Le/m/a/c/g1/e0/a0;->f:J

    const/4 v1, 0x1

    .line 39
    iput-boolean v1, v3, Le/m/a/c/g1/e0/a0;->d:Z

    move v7, v10

    goto :goto_2

    :cond_c
    const/4 v10, 0x0

    .line 40
    iget-wide v6, v3, Le/m/a/c/g1/e0/a0;->f:J

    cmp-long v2, v6, v4

    if-nez v2, :cond_d

    .line 41
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/a0;->a(Le/m/a/c/g1/e;)I

    goto :goto_6

    .line 42
    :cond_d
    iget-object v2, v3, Le/m/a/c/g1/e0/a0;->a:Le/m/a/c/q1/c0;

    invoke-virtual {v2, v6, v7}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v4

    .line 43
    iget-object v2, v3, Le/m/a/c/g1/e0/a0;->a:Le/m/a/c/q1/c0;

    iget-wide v6, v3, Le/m/a/c/g1/e0/a0;->g:J

    invoke-virtual {v2, v6, v7}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 44
    iput-wide v6, v3, Le/m/a/c/g1/e0/a0;->h:J

    .line 45
    invoke-virtual {v3, v1}, Le/m/a/c/g1/e0/a0;->a(Le/m/a/c/g1/e;)I

    :goto_6
    move v8, v10

    :goto_7
    return v8

    :cond_e
    move v7, v8

    .line 46
    iget-boolean v3, v0, Le/m/a/c/g1/e0/b0;->n:Z

    const-wide/16 v13, 0x0

    if-nez v3, :cond_10

    const/4 v8, 0x1

    .line 47
    iput-boolean v8, v0, Le/m/a/c/g1/e0/b0;->n:Z

    .line 48
    iget-object v3, v0, Le/m/a/c/g1/e0/b0;->i:Le/m/a/c/g1/e0/a0;

    .line 49
    iget-wide v7, v3, Le/m/a/c/g1/e0/a0;->h:J

    cmp-long v4, v7, v4

    if-eqz v4, :cond_f

    .line 50
    new-instance v5, Le/m/a/c/g1/e0/z;

    .line 51
    iget-object v4, v3, Le/m/a/c/g1/e0/a0;->a:Le/m/a/c/q1/c0;

    .line 52
    iget v6, v0, Le/m/a/c/g1/e0/b0;->r:I

    move-object v3, v5

    move-object v12, v5

    move/from16 v16, v6

    move-wide v5, v7

    const/4 v15, 0x0

    move-wide v7, v10

    move/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Le/m/a/c/g1/e0/z;-><init>(Le/m/a/c/q1/c0;JJI)V

    iput-object v12, v0, Le/m/a/c/g1/e0/b0;->j:Le/m/a/c/g1/e0/z;

    .line 53
    iget-object v3, v0, Le/m/a/c/g1/e0/b0;->k:Le/m/a/c/g1/i;

    .line 54
    iget-object v4, v12, Le/m/a/c/g1/a;->a:Le/m/a/c/g1/a$a;

    .line 55
    invoke-interface {v3, v4}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    .line 56
    iget-object v3, v0, Le/m/a/c/g1/e0/b0;->k:Le/m/a/c/g1/i;

    new-instance v4, Le/m/a/c/g1/q$b;

    .line 57
    invoke-direct {v4, v7, v8, v13, v14}, Le/m/a/c/g1/q$b;-><init>(JJ)V

    .line 58
    invoke-interface {v3, v4}, Le/m/a/c/g1/i;->s(Le/m/a/c/g1/q;)V

    goto :goto_8

    :cond_10
    move v15, v7

    .line 59
    :goto_8
    iget-boolean v3, v0, Le/m/a/c/g1/e0/b0;->o:Z

    if-eqz v3, :cond_11

    .line 60
    iput-boolean v15, v0, Le/m/a/c/g1/e0/b0;->o:Z

    .line 61
    invoke-virtual {v0, v13, v14, v13, v14}, Le/m/a/c/g1/e0/b0;->a(JJ)V

    .line 62
    iget-wide v3, v1, Le/m/a/c/g1/e;->d:J

    cmp-long v3, v3, v13

    if-eqz v3, :cond_11

    .line 63
    iput-wide v13, v2, Le/m/a/c/g1/p;->a:J

    const/4 v1, 0x1

    return v1

    .line 64
    :cond_11
    iget-object v3, v0, Le/m/a/c/g1/e0/b0;->j:Le/m/a/c/g1/e0/z;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Le/m/a/c/g1/a;->b()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 65
    iget-object v3, v0, Le/m/a/c/g1/e0/b0;->j:Le/m/a/c/g1/e0/z;

    invoke-virtual {v3, v1, v2}, Le/m/a/c/g1/a;->a(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I

    move-result v1

    return v1

    :cond_12
    move v15, v8

    .line 66
    :cond_13
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    iget-object v3, v2, Le/m/a/c/q1/t;->a:[B

    .line 67
    iget v4, v2, Le/m/a/c/q1/t;->b:I

    rsub-int v4, v4, 0x24b8

    const/16 v5, 0xbc

    if-ge v4, v5, :cond_15

    .line 68
    invoke-virtual {v2}, Le/m/a/c/q1/t;->a()I

    move-result v2

    if-lez v2, :cond_14

    .line 69
    iget-object v4, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    .line 70
    iget v4, v4, Le/m/a/c/q1/t;->b:I

    .line 71
    invoke-static {v3, v4, v3, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :cond_14
    iget-object v4, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v4, v3, v2}, Le/m/a/c/q1/t;->A([BI)V

    .line 73
    :cond_15
    :goto_9
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->a()I

    move-result v2

    if-ge v2, v5, :cond_17

    .line 74
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    .line 75
    iget v2, v2, Le/m/a/c/q1/t;->c:I

    rsub-int v4, v2, 0x24b8

    .line 76
    invoke-virtual {v1, v3, v2, v4}, Le/m/a/c/g1/e;->f([BII)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_16

    move v7, v15

    goto :goto_a

    .line 77
    :cond_16
    iget-object v7, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    add-int/2addr v2, v4

    invoke-virtual {v7, v2}, Le/m/a/c/q1/t;->B(I)V

    goto :goto_9

    :cond_17
    const/4 v6, -0x1

    const/4 v7, 0x1

    :goto_a
    if-nez v7, :cond_18

    return v6

    .line 78
    :cond_18
    iget-object v1, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    .line 79
    iget v2, v1, Le/m/a/c/q1/t;->b:I

    .line 80
    iget v3, v1, Le/m/a/c/q1/t;->c:I

    .line 81
    iget-object v1, v1, Le/m/a/c/q1/t;->a:[B

    move v4, v2

    :goto_b
    if-ge v4, v3, :cond_19

    .line 82
    aget-byte v5, v1, v4

    const/16 v6, 0x47

    if-eq v5, v6, :cond_19

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 83
    :cond_19
    iget-object v1, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    add-int/lit16 v1, v4, 0xbc

    if-le v1, v3, :cond_1b

    .line 84
    iget v3, v0, Le/m/a/c/g1/e0/b0;->q:I

    sub-int/2addr v4, v2

    add-int/2addr v4, v3

    iput v4, v0, Le/m/a/c/g1/e0/b0;->q:I

    .line 85
    iget v2, v0, Le/m/a/c/g1/e0/b0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    const/16 v2, 0x178

    if-gt v4, v2, :cond_1a

    goto :goto_c

    .line 86
    :cond_1a
    new-instance v1, Le/m/a/c/m0;

    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v1, v2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/4 v3, 0x2

    .line 87
    iput v15, v0, Le/m/a/c/g1/e0/b0;->q:I

    .line 88
    :cond_1c
    :goto_c
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    .line 89
    iget v4, v2, Le/m/a/c/q1/t;->c:I

    if-le v1, v4, :cond_1d

    return v15

    .line 90
    :cond_1d
    invoke-virtual {v2}, Le/m/a/c/q1/t;->e()I

    move-result v2

    const/high16 v5, 0x800000

    and-int/2addr v5, v2

    if-eqz v5, :cond_1e

    .line 91
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v1}, Le/m/a/c/q1/t;->C(I)V

    return v15

    :cond_1e
    const/high16 v5, 0x400000

    and-int/2addr v5, v2

    if-eqz v5, :cond_1f

    const/4 v7, 0x1

    goto :goto_d

    :cond_1f
    move v7, v15

    :goto_d
    or-int/lit8 v5, v7, 0x0

    const v6, 0x1fff00

    and-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v2, 0x20

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    goto :goto_e

    :cond_20
    move v7, v15

    :goto_e
    and-int/lit8 v8, v2, 0x10

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_f

    :cond_21
    move v8, v15

    :goto_f
    if-eqz v8, :cond_22

    .line 92
    iget-object v8, v0, Le/m/a/c/g1/e0/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/m/a/c/g1/e0/c0;

    goto :goto_10

    :cond_22
    const/4 v8, 0x0

    :goto_10
    if-nez v8, :cond_23

    .line 93
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v1}, Le/m/a/c/q1/t;->C(I)V

    return v15

    .line 94
    :cond_23
    iget v9, v0, Le/m/a/c/g1/e0/b0;->a:I

    if-eq v9, v3, :cond_25

    and-int/lit8 v2, v2, 0xf

    .line 95
    iget-object v9, v0, Le/m/a/c/g1/e0/b0;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v12, v2, -0x1

    invoke-virtual {v9, v6, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 96
    iget-object v12, v0, Le/m/a/c/g1/e0/b0;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v2, :cond_24

    .line 97
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v1}, Le/m/a/c/q1/t;->C(I)V

    return v15

    :cond_24
    const/4 v12, 0x1

    add-int/2addr v9, v12

    and-int/lit8 v9, v9, 0xf

    if-eq v2, v9, :cond_25

    .line 98
    invoke-interface {v8}, Le/m/a/c/g1/e0/c0;->a()V

    :cond_25
    if-eqz v7, :cond_27

    .line 99
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2}, Le/m/a/c/q1/t;->q()I

    move-result v2

    .line 100
    iget-object v7, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v7}, Le/m/a/c/q1/t;->q()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_26

    move v9, v3

    goto :goto_11

    :cond_26
    move v9, v15

    :goto_11
    or-int/2addr v5, v9

    .line 101
    iget-object v7, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v7, v2}, Le/m/a/c/q1/t;->D(I)V

    .line 102
    :cond_27
    iget-boolean v2, v0, Le/m/a/c/g1/e0/b0;->m:Z

    .line 103
    iget v7, v0, Le/m/a/c/g1/e0/b0;->a:I

    if-eq v7, v3, :cond_29

    if-nez v2, :cond_29

    iget-object v7, v0, Le/m/a/c/g1/e0/b0;->h:Landroid/util/SparseBooleanArray;

    .line 104
    invoke-virtual {v7, v6, v15}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_12

    :cond_28
    move v7, v15

    goto :goto_13

    :cond_29
    :goto_12
    const/4 v7, 0x1

    :goto_13
    if-eqz v7, :cond_2a

    .line 105
    iget-object v6, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v6, v1}, Le/m/a/c/q1/t;->B(I)V

    .line 106
    iget-object v6, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-interface {v8, v6, v5}, Le/m/a/c/g1/e0/c0;->c(Le/m/a/c/q1/t;I)V

    .line 107
    iget-object v5, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v5, v4}, Le/m/a/c/q1/t;->B(I)V

    .line 108
    :cond_2a
    iget v4, v0, Le/m/a/c/g1/e0/b0;->a:I

    if-eq v4, v3, :cond_2b

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Le/m/a/c/g1/e0/b0;->m:Z

    if-eqz v2, :cond_2b

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    .line 109
    iput-boolean v2, v0, Le/m/a/c/g1/e0/b0;->o:Z

    .line 110
    :cond_2b
    iget-object v2, v0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    invoke-virtual {v2, v1}, Le/m/a/c/q1/t;->C(I)V

    return v15
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/e0/b0;->k:Le/m/a/c/g1/i;

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/b0;->c:Le/m/a/c/q1/t;

    iget-object v0, v0, Le/m/a/c/q1/t;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Le/m/a/c/g1/e;->e([BIIZ)Z

    move v2, v1

    :goto_0
    const/16 v3, 0xbc

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_1
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    mul-int/lit16 v4, v3, 0xbc

    add-int/2addr v4, v2

    .line 3
    aget-byte v4, v0, v4

    const/16 v6, 0x47

    if-eq v4, v6, :cond_0

    move v3, v1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_2
    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p1, v2}, Le/m/a/c/g1/e;->i(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method
