.class public final Ln3/y/b/a/q0/w/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/w/b0$b;,
        Ln3/y/b/a/q0/w/b0$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/y/b/a/x0/v;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/y/b/a/x0/m;

.field public final d:Landroid/util/SparseIntArray;

.field public final e:Ln3/y/b/a/q0/w/c0$c;

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ln3/y/b/a/q0/w/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/util/SparseBooleanArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Ln3/y/b/a/q0/w/a0;

.field public j:Ln3/y/b/a/q0/w/z;

.field public k:Ln3/y/b/a/q0/h;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ln3/y/b/a/q0/w/c0;

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(ILn3/y/b/a/x0/v;Ln3/y/b/a/q0/w/c0$c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Ln3/y/b/a/q0/w/b0;->e:Ln3/y/b/a/q0/w/c0$c;

    .line 3
    iput p1, p0, Ln3/y/b/a/q0/w/b0;->a:I

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    .line 7
    :goto_1
    new-instance p1, Ln3/y/b/a/x0/m;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Ln3/y/b/a/x0/m;-><init>([BI)V

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    .line 8
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/q0/w/b0;->g:Landroid/util/SparseBooleanArray;

    .line 9
    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/q0/w/b0;->h:Landroid/util/SparseBooleanArray;

    .line 10
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/w/b0;->d:Landroid/util/SparseIntArray;

    .line 12
    new-instance v0, Ln3/y/b/a/q0/w/a0;

    invoke-direct {v0}, Ln3/y/b/a/q0/w/a0;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/q0/w/b0;->i:Ln3/y/b/a/q0/w/a0;

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Ln3/y/b/a/q0/w/b0;->r:I

    .line 14
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 15
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 16
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    move v0, p3

    :goto_2
    if-ge v0, p2, :cond_2

    .line 18
    iget-object v1, p0, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/y/b/a/q0/w/c0;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, p0, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    new-instance p2, Ln3/y/b/a/q0/w/w;

    new-instance v0, Ln3/y/b/a/q0/w/b0$a;

    invoke-direct {v0, p0}, Ln3/y/b/a/q0/w/b0$a;-><init>(Ln3/y/b/a/q0/w/b0;)V

    invoke-direct {p2, v0}, Ln3/y/b/a/q0/w/w;-><init>(Ln3/y/b/a/q0/w/v;)V

    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Ln3/y/b/a/q0/w/b0;->p:Ln3/y/b/a/q0/w/c0;

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 9

    .line 1
    iget p1, p0, Ln3/y/b/a/q0/w/b0;->a:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 2
    iget-object p1, p0, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_1
    const-wide/16 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 3
    iget-object v4, p0, Ln3/y/b/a/q0/w/b0;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/x0/v;

    .line 4
    invoke-virtual {v4}, Ln3/y/b/a/x0/v;->c()J

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
    invoke-virtual {v4}, Ln3/y/b/a/x0/v;->c()J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    .line 6
    iget-wide v2, v4, Ln3/y/b/a/x0/v;->a:J

    cmp-long v2, v2, p3

    if-eqz v2, :cond_3

    .line 7
    :cond_2
    iput-wide v7, v4, Ln3/y/b/a/x0/v;->c:J

    .line 8
    invoke-virtual {v4, p3, p4}, Ln3/y/b/a/x0/v;->d(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    cmp-long p1, p3, v2

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Ln3/y/b/a/q0/w/b0;->j:Ln3/y/b/a/q0/w/z;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1, p3, p4}, Ln3/y/b/a/q0/a;->d(J)V

    .line 11
    :cond_5
    iget-object p1, p0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {p1}, Ln3/y/b/a/x0/m;->u()V

    .line 12
    iget-object p1, p0, Ln3/y/b/a/q0/w/b0;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    move p1, v0

    .line 13
    :goto_3
    iget-object p2, p0, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_6

    .line 14
    iget-object p2, p0, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/q0/w/c0;

    invoke-interface {p2}, Ln3/y/b/a/q0/w/c0;->a()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 15
    :cond_6
    iput v0, p0, Ln3/y/b/a/q0/w/b0;->q:I

    return-void
.end method

.method public d(Ln3/y/b/a/q0/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    return-void
.end method

.method public h(Ln3/y/b/a/q0/d;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    iget-object v0, v0, Ln3/y/b/a/x0/m;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x3ac

    .line 2
    invoke-virtual {p1, v0, v1, v2, v1}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

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
    invoke-virtual {p1, v2}, Ln3/y/b/a/q0/d;->h(I)V

    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public i(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;)I
    .locals 18
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
    iget-wide v10, v1, Ln3/y/b/a/q0/d;->c:J

    .line 2
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/b0;->m:Z

    const-wide/16 v13, -0x1

    const/16 v15, 0x47

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_13

    cmp-long v3, v10, v13

    if-eqz v3, :cond_0

    .line 3
    iget v3, v0, Ln3/y/b/a/q0/w/b0;->a:I

    if-eq v3, v9, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_e

    .line 4
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0;->i:Ln3/y/b/a/q0/w/a0;

    .line 5
    iget-boolean v4, v3, Ln3/y/b/a/q0/w/a0;->c:Z

    if-nez v4, :cond_e

    .line 6
    iget v4, v0, Ln3/y/b/a/q0/w/b0;->r:I

    if-gtz v4, :cond_1

    .line 7
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/a0;->a(Ln3/y/b/a/q0/d;)I

    goto/16 :goto_7

    .line 8
    :cond_1
    iget-boolean v6, v3, Ln3/y/b/a/q0/w/a0;->e:Z

    const-wide/32 v12, 0x1b8a0

    if-nez v6, :cond_6

    .line 9
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v6, v12

    int-to-long v12, v6

    sub-long/2addr v10, v12

    .line 10
    iget-wide v12, v1, Ln3/y/b/a/q0/d;->d:J

    cmp-long v9, v12, v10

    if-eqz v9, :cond_2

    .line 11
    iput-wide v10, v2, Ln3/y/b/a/q0/m;->a:J

    goto :goto_3

    .line 12
    :cond_2
    iget-object v2, v3, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/m;->v(I)V

    .line 13
    iput v7, v1, Ln3/y/b/a/q0/d;->f:I

    .line 14
    iget-object v2, v3, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 15
    invoke-virtual {v1, v2, v7, v6, v7}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 16
    iget-object v1, v3, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    .line 17
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 18
    iget v6, v1, Ln3/y/b/a/x0/m;->c:I

    :cond_3
    :goto_1
    add-int/2addr v6, v8

    if-lt v6, v2, :cond_5

    .line 19
    iget-object v9, v1, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v9, v9, v6

    if-eq v9, v15, :cond_4

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {v1, v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->j1(Ln3/y/b/a/x0/m;II)J

    move-result-wide v9

    cmp-long v11, v9, v16

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_5
    move-wide/from16 v9, v16

    .line 21
    :goto_2
    iput-wide v9, v3, Ln3/y/b/a/q0/w/a0;->g:J

    .line 22
    iput-boolean v5, v3, Ln3/y/b/a/q0/w/a0;->e:Z

    goto/16 :goto_7

    .line 23
    :cond_6
    iget-wide v8, v3, Ln3/y/b/a/q0/w/a0;->g:J

    cmp-long v6, v8, v16

    if-nez v6, :cond_7

    .line 24
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/a0;->a(Ln3/y/b/a/q0/d;)I

    goto :goto_7

    .line 25
    :cond_7
    iget-boolean v6, v3, Ln3/y/b/a/q0/w/a0;->d:Z

    if-nez v6, :cond_c

    .line 26
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v6, v8

    .line 27
    iget-wide v8, v1, Ln3/y/b/a/q0/d;->d:J

    int-to-long v10, v7

    cmp-long v8, v8, v10

    if-eqz v8, :cond_8

    .line 28
    iput-wide v10, v2, Ln3/y/b/a/q0/m;->a:J

    :goto_3
    move v7, v5

    goto :goto_7

    .line 29
    :cond_8
    iget-object v2, v3, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v6}, Ln3/y/b/a/x0/m;->v(I)V

    .line 30
    iput v7, v1, Ln3/y/b/a/q0/d;->f:I

    .line 31
    iget-object v2, v3, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    iget-object v2, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 32
    invoke-virtual {v1, v2, v7, v6, v7}, Ln3/y/b/a/q0/d;->d([BIIZ)Z

    .line 33
    iget-object v1, v3, Ln3/y/b/a/q0/w/a0;->b:Ln3/y/b/a/x0/m;

    .line 34
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 35
    iget v6, v1, Ln3/y/b/a/x0/m;->c:I

    :goto_4
    if-ge v2, v6, :cond_b

    .line 36
    iget-object v8, v1, Ln3/y/b/a/x0/m;->a:[B

    aget-byte v8, v8, v2

    if-eq v8, v15, :cond_9

    goto :goto_5

    .line 37
    :cond_9
    invoke-static {v1, v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->j1(Ln3/y/b/a/x0/m;II)J

    move-result-wide v8

    cmp-long v10, v8, v16

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    move-wide/from16 v8, v16

    .line 38
    :goto_6
    iput-wide v8, v3, Ln3/y/b/a/q0/w/a0;->f:J

    .line 39
    iput-boolean v5, v3, Ln3/y/b/a/q0/w/a0;->d:Z

    goto :goto_7

    .line 40
    :cond_c
    iget-wide v4, v3, Ln3/y/b/a/q0/w/a0;->f:J

    cmp-long v2, v4, v16

    if-nez v2, :cond_d

    .line 41
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/a0;->a(Ln3/y/b/a/q0/d;)I

    goto :goto_7

    .line 42
    :cond_d
    iget-object v2, v3, Ln3/y/b/a/q0/w/a0;->a:Ln3/y/b/a/x0/v;

    invoke-virtual {v2, v4, v5}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v4

    .line 43
    iget-object v2, v3, Ln3/y/b/a/q0/w/a0;->a:Ln3/y/b/a/x0/v;

    iget-wide v8, v3, Ln3/y/b/a/q0/w/a0;->g:J

    invoke-virtual {v2, v8, v9}, Ln3/y/b/a/x0/v;->b(J)J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 44
    iput-wide v8, v3, Ln3/y/b/a/q0/w/a0;->h:J

    .line 45
    invoke-virtual {v3, v1}, Ln3/y/b/a/q0/w/a0;->a(Ln3/y/b/a/q0/d;)I

    :goto_7
    return v7

    .line 46
    :cond_e
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/b0;->n:Z

    const-wide/16 v13, 0x0

    if-nez v3, :cond_10

    .line 47
    iput-boolean v5, v0, Ln3/y/b/a/q0/w/b0;->n:Z

    .line 48
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0;->i:Ln3/y/b/a/q0/w/a0;

    .line 49
    iget-wide v5, v3, Ln3/y/b/a/q0/w/a0;->h:J

    cmp-long v4, v5, v16

    if-eqz v4, :cond_f

    .line 50
    new-instance v4, Ln3/y/b/a/q0/w/z;

    .line 51
    iget-object v3, v3, Ln3/y/b/a/q0/w/a0;->a:Ln3/y/b/a/x0/v;

    .line 52
    iget v9, v0, Ln3/y/b/a/q0/w/b0;->r:I

    move-object/from16 v17, v3

    move-object v3, v4

    move-object v15, v4

    move-object/from16 v4, v17

    const/4 v12, 0x1

    move v12, v7

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Ln3/y/b/a/q0/w/z;-><init>(Ln3/y/b/a/x0/v;JJI)V

    iput-object v15, v0, Ln3/y/b/a/q0/w/b0;->j:Ln3/y/b/a/q0/w/z;

    .line 53
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    .line 54
    iget-object v4, v15, Ln3/y/b/a/q0/a;->a:Ln3/y/b/a/q0/a$a;

    .line 55
    invoke-interface {v3, v4}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    goto :goto_8

    :cond_f
    move v12, v7

    .line 56
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0;->k:Ln3/y/b/a/q0/h;

    new-instance v4, Ln3/y/b/a/q0/n$b;

    .line 57
    invoke-direct {v4, v5, v6, v13, v14}, Ln3/y/b/a/q0/n$b;-><init>(JJ)V

    .line 58
    invoke-interface {v3, v4}, Ln3/y/b/a/q0/h;->q(Ln3/y/b/a/q0/n;)V

    goto :goto_8

    :cond_10
    move v12, v7

    .line 59
    :goto_8
    iget-boolean v3, v0, Ln3/y/b/a/q0/w/b0;->o:Z

    if-eqz v3, :cond_11

    .line 60
    iput-boolean v12, v0, Ln3/y/b/a/q0/w/b0;->o:Z

    .line 61
    invoke-virtual {v0, v13, v14, v13, v14}, Ln3/y/b/a/q0/w/b0;->a(JJ)V

    .line 62
    iget-wide v3, v1, Ln3/y/b/a/q0/d;->d:J

    cmp-long v3, v3, v13

    if-eqz v3, :cond_11

    .line 63
    iput-wide v13, v2, Ln3/y/b/a/q0/m;->a:J

    const/4 v1, 0x1

    return v1

    .line 64
    :cond_11
    iget-object v3, v0, Ln3/y/b/a/q0/w/b0;->j:Ln3/y/b/a/q0/w/z;

    if-eqz v3, :cond_14

    .line 65
    iget-object v4, v3, Ln3/y/b/a/q0/a;->c:Ln3/y/b/a/q0/a$d;

    if-eqz v4, :cond_12

    const/4 v7, 0x1

    goto :goto_9

    :cond_12
    move v7, v12

    :goto_9
    if-eqz v7, :cond_14

    const/4 v4, 0x0

    .line 66
    invoke-virtual {v3, v1, v2, v4}, Ln3/y/b/a/q0/a;->a(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/m;Ln3/y/b/a/q0/a$c;)I

    move-result v1

    return v1

    :cond_13
    move v12, v7

    :cond_14
    const/4 v4, 0x0

    .line 67
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    iget-object v3, v2, Ln3/y/b/a/x0/m;->a:[B

    .line 68
    iget v5, v2, Ln3/y/b/a/x0/m;->b:I

    rsub-int v5, v5, 0x24b8

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_16

    .line 69
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-lez v2, :cond_15

    .line 70
    iget-object v5, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    .line 71
    iget v5, v5, Ln3/y/b/a/x0/m;->b:I

    .line 72
    invoke-static {v3, v5, v3, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    :cond_15
    iget-object v5, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v5, v3, v2}, Ln3/y/b/a/x0/m;->x([BI)V

    .line 74
    :cond_16
    :goto_a
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->a()I

    move-result v2

    if-ge v2, v6, :cond_18

    .line 75
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    .line 76
    iget v2, v2, Ln3/y/b/a/x0/m;->c:I

    rsub-int v5, v2, 0x24b8

    .line 77
    invoke-virtual {v1, v3, v2, v5}, Ln3/y/b/a/q0/d;->e([BII)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_17

    move v1, v12

    goto :goto_b

    .line 78
    :cond_17
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    add-int/2addr v2, v5

    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->y(I)V

    goto :goto_a

    :cond_18
    const/4 v7, -0x1

    const/4 v1, 0x1

    :goto_b
    if-nez v1, :cond_19

    return v7

    .line 79
    :cond_19
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    .line 80
    iget v2, v1, Ln3/y/b/a/x0/m;->b:I

    .line 81
    iget v3, v1, Ln3/y/b/a/x0/m;->c:I

    .line 82
    iget-object v1, v1, Ln3/y/b/a/x0/m;->a:[B

    move v5, v2

    :goto_c
    if-ge v5, v3, :cond_1a

    .line 83
    aget-byte v6, v1, v5

    const/16 v7, 0x47

    if-eq v6, v7, :cond_1a

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 84
    :cond_1a
    iget-object v1, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v1, v5}, Ln3/y/b/a/x0/m;->z(I)V

    add-int/lit16 v1, v5, 0xbc

    if-le v1, v3, :cond_1c

    .line 85
    iget v3, v0, Ln3/y/b/a/q0/w/b0;->q:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    iput v5, v0, Ln3/y/b/a/q0/w/b0;->q:I

    .line 86
    iget v2, v0, Ln3/y/b/a/q0/w/b0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    const/16 v2, 0x178

    if-gt v5, v2, :cond_1b

    goto :goto_d

    .line 87
    :cond_1b
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-direct {v1, v2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    const/4 v3, 0x2

    .line 88
    iput v12, v0, Ln3/y/b/a/q0/w/b0;->q:I

    .line 89
    :cond_1d
    :goto_d
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    .line 90
    iget v5, v2, Ln3/y/b/a/x0/m;->c:I

    if-le v1, v5, :cond_1e

    return v12

    .line 91
    :cond_1e
    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->d()I

    move-result v2

    const/high16 v6, 0x800000

    and-int/2addr v6, v2

    if-eqz v6, :cond_1f

    .line 92
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v1}, Ln3/y/b/a/x0/m;->z(I)V

    return v12

    :cond_1f
    const/high16 v6, 0x400000

    and-int/2addr v6, v2

    if-eqz v6, :cond_20

    const/4 v7, 0x1

    goto :goto_e

    :cond_20
    move v7, v12

    :goto_e
    or-int/lit8 v6, v7, 0x0

    const v7, 0x1fff00

    and-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x8

    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    goto :goto_f

    :cond_21
    move v8, v12

    :goto_f
    and-int/lit8 v9, v2, 0x10

    if-eqz v9, :cond_22

    const/4 v9, 0x1

    goto :goto_10

    :cond_22
    move v9, v12

    :goto_10
    if-eqz v9, :cond_23

    .line 93
    iget-object v4, v0, Ln3/y/b/a/q0/w/b0;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y/b/a/q0/w/c0;

    :cond_23
    if-nez v4, :cond_24

    .line 94
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v1}, Ln3/y/b/a/x0/m;->z(I)V

    return v12

    .line 95
    :cond_24
    iget v9, v0, Ln3/y/b/a/q0/w/b0;->a:I

    if-eq v9, v3, :cond_26

    and-int/lit8 v2, v2, 0xf

    .line 96
    iget-object v9, v0, Ln3/y/b/a/q0/w/b0;->d:Landroid/util/SparseIntArray;

    add-int/lit8 v13, v2, -0x1

    invoke-virtual {v9, v7, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 97
    iget-object v13, v0, Ln3/y/b/a/q0/w/b0;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v13, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v9, v2, :cond_25

    .line 98
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v1}, Ln3/y/b/a/x0/m;->z(I)V

    return v12

    :cond_25
    const/4 v13, 0x1

    add-int/2addr v9, v13

    and-int/lit8 v9, v9, 0xf

    if-eq v2, v9, :cond_26

    .line 99
    invoke-interface {v4}, Ln3/y/b/a/q0/w/c0;->a()V

    :cond_26
    if-eqz v8, :cond_28

    .line 100
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2}, Ln3/y/b/a/x0/m;->o()I

    move-result v2

    .line 101
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v8}, Ln3/y/b/a/x0/m;->o()I

    move-result v8

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_27

    move v9, v3

    goto :goto_11

    :cond_27
    move v9, v12

    :goto_11
    or-int/2addr v6, v9

    .line 102
    iget-object v8, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v8, v2}, Ln3/y/b/a/x0/m;->A(I)V

    .line 103
    :cond_28
    iget-boolean v2, v0, Ln3/y/b/a/q0/w/b0;->m:Z

    .line 104
    iget v8, v0, Ln3/y/b/a/q0/w/b0;->a:I

    if-eq v8, v3, :cond_2a

    if-nez v2, :cond_2a

    iget-object v8, v0, Ln3/y/b/a/q0/w/b0;->h:Landroid/util/SparseBooleanArray;

    .line 105
    invoke-virtual {v8, v7, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v7

    if-nez v7, :cond_29

    goto :goto_12

    :cond_29
    move v7, v12

    goto :goto_13

    :cond_2a
    :goto_12
    const/4 v7, 0x1

    :goto_13
    if-eqz v7, :cond_2b

    .line 106
    iget-object v7, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v7, v1}, Ln3/y/b/a/x0/m;->y(I)V

    .line 107
    iget-object v7, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-interface {v4, v7, v6}, Ln3/y/b/a/q0/w/c0;->c(Ln3/y/b/a/x0/m;I)V

    .line 108
    iget-object v4, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v4, v5}, Ln3/y/b/a/x0/m;->y(I)V

    .line 109
    :cond_2b
    iget v4, v0, Ln3/y/b/a/q0/w/b0;->a:I

    if-eq v4, v3, :cond_2c

    if-nez v2, :cond_2c

    iget-boolean v2, v0, Ln3/y/b/a/q0/w/b0;->m:Z

    if-eqz v2, :cond_2c

    const-wide/16 v2, -0x1

    cmp-long v2, v10, v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    .line 110
    iput-boolean v2, v0, Ln3/y/b/a/q0/w/b0;->o:Z

    .line 111
    :cond_2c
    iget-object v2, v0, Ln3/y/b/a/q0/w/b0;->c:Ln3/y/b/a/x0/m;

    invoke-virtual {v2, v1}, Ln3/y/b/a/x0/m;->z(I)V

    return v12
.end method

.method public release()V
    .locals 0

    return-void
.end method
