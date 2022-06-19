.class public final Le/m/a/c/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/c/l1/o;

.field public final b:Ljava/lang/Object;

.field public final c:[Le/m/a/c/l1/w;

.field public d:Z

.field public e:Z

.field public f:Le/m/a/c/k0;

.field public final g:[Z

.field public final h:[Le/m/a/c/u;

.field public final i:Le/m/a/c/n1/h;

.field public final j:Le/m/a/c/l1/p;

.field public k:Le/m/a/c/j0;

.field public l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public m:Le/m/a/c/n1/i;

.field public n:J


# direct methods
.method public constructor <init>([Le/m/a/c/u;JLe/m/a/c/n1/h;Le/m/a/c/p1/d;Le/m/a/c/l1/p;Le/m/a/c/k0;Le/m/a/c/n1/i;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    .line 3
    iput-wide p2, p0, Le/m/a/c/j0;->n:J

    .line 4
    iput-object p4, p0, Le/m/a/c/j0;->i:Le/m/a/c/n1/h;

    .line 5
    iput-object p6, p0, Le/m/a/c/j0;->j:Le/m/a/c/l1/p;

    .line 6
    iget-object p2, p7, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    iget-object p3, p2, Le/m/a/c/l1/p$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Le/m/a/c/j0;->b:Ljava/lang/Object;

    .line 7
    iput-object p7, p0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    .line 8
    sget-object p3, Lcom/google/android/exoplayer2/source/TrackGroupArray;->d:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iput-object p3, p0, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 9
    iput-object p8, p0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 10
    array-length p3, p1

    new-array p3, p3, [Le/m/a/c/l1/w;

    iput-object p3, p0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    .line 11
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Le/m/a/c/j0;->g:[Z

    .line 12
    iget-wide p3, p7, Le/m/a/c/k0;->b:J

    iget-wide v5, p7, Le/m/a/c/k0;->d:J

    .line 13
    invoke-interface {p6, p2, p5, p3, p4}, Le/m/a/c/l1/p;->e(Le/m/a/c/l1/p$a;Le/m/a/c/p1/d;J)Le/m/a/c/l1/o;

    move-result-object v1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v5, p1

    if-eqz p1, :cond_0

    const-wide/high16 p1, -0x8000000000000000L

    cmp-long p1, v5, p1

    if-eqz p1, :cond_0

    .line 14
    new-instance p1, Le/m/a/c/l1/l;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Le/m/a/c/l1/l;-><init>(Le/m/a/c/l1/o;ZJJ)V

    move-object v1, p1

    .line 15
    :cond_0
    iput-object v1, p0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/n1/i;JZ[Z)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    .line 1
    :goto_0
    iget v4, v1, Le/m/a/c/n1/i;->a:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v0, Le/m/a/c/j0;->g:[Z

    if-nez p4, :cond_0

    iget-object v6, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 3
    invoke-virtual {v1, v6, v3}, Le/m/a/c/n1/i;->a(Le/m/a/c/n1/i;I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    aput-boolean v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v3, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    move v4, v2

    .line 5
    :goto_2
    iget-object v6, v0, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    array-length v7, v6

    const/4 v8, 0x6

    if-ge v4, v7, :cond_3

    .line 6
    aget-object v6, v6, v4

    .line 7
    iget v6, v6, Le/m/a/c/u;->a:I

    if-ne v6, v8, :cond_2

    const/4 v6, 0x0

    .line 8
    aput-object v6, v3, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j0;->b()V

    .line 10
    iput-object v1, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/m/a/c/j0;->c()V

    .line 12
    iget-object v3, v1, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 13
    iget-object v9, v0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    .line 14
    invoke-virtual {v3}, Le/m/a/c/n1/g;->a()[Le/m/a/c/n1/f;

    move-result-object v10

    iget-object v11, v0, Le/m/a/c/j0;->g:[Z

    iget-object v12, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    move-object/from16 v13, p5

    move-wide/from16 v14, p2

    .line 15
    invoke-interface/range {v9 .. v15}, Le/m/a/c/l1/o;->l([Le/m/a/c/n1/f;[Z[Le/m/a/c/l1/w;[ZJ)J

    move-result-wide v6

    .line 16
    iget-object v4, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    move v9, v2

    .line 17
    :goto_3
    iget-object v10, v0, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    array-length v11, v10

    if-ge v9, v11, :cond_5

    .line 18
    aget-object v10, v10, v9

    .line 19
    iget v10, v10, Le/m/a/c/u;->a:I

    if-ne v10, v8, :cond_4

    .line 20
    iget-object v10, v0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    .line 21
    invoke-virtual {v10, v9}, Le/m/a/c/n1/i;->b(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 22
    new-instance v10, Le/m/a/c/l1/m;

    invoke-direct {v10}, Le/m/a/c/l1/m;-><init>()V

    aput-object v10, v4, v9

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 23
    :cond_5
    iput-boolean v2, v0, Le/m/a/c/j0;->e:Z

    move v4, v2

    .line 24
    :goto_4
    iget-object v9, v0, Le/m/a/c/j0;->c:[Le/m/a/c/l1/w;

    array-length v10, v9

    if-ge v4, v10, :cond_9

    .line 25
    aget-object v9, v9, v4

    if-eqz v9, :cond_6

    .line 26
    invoke-virtual {v1, v4}, Le/m/a/c/n1/i;->b(I)Z

    move-result v9

    invoke-static {v9}, Ln3/g0/y;->x(Z)V

    .line 27
    iget-object v9, v0, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    aget-object v9, v9, v4

    .line 28
    iget v9, v9, Le/m/a/c/u;->a:I

    if-eq v9, v8, :cond_8

    .line 29
    iput-boolean v5, v0, Le/m/a/c/j0;->e:Z

    goto :goto_6

    .line 30
    :cond_6
    iget-object v9, v3, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v9, v9, v4

    if-nez v9, :cond_7

    move v9, v5

    goto :goto_5

    :cond_7
    move v9, v2

    .line 31
    :goto_5
    invoke-static {v9}, Ln3/g0/y;->x(Z)V

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    return-wide v6
.end method

.method public final b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/j0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    iget v2, v1, Le/m/a/c/n1/i;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Le/m/a/c/n1/i;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    iget-object v2, v2, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 5
    iget-object v2, v2, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Le/m/a/c/n1/f;->a()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/m/a/c/j0;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    iget v2, v1, Le/m/a/c/n1/i;->a:I

    if-ge v0, v2, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Le/m/a/c/n1/i;->b(I)Z

    move-result v1

    .line 4
    iget-object v2, p0, Le/m/a/c/j0;->m:Le/m/a/c/n1/i;

    iget-object v2, v2, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    .line 5
    iget-object v2, v2, Le/m/a/c/n1/g;->b:[Le/m/a/c/n1/f;

    aget-object v2, v2, v0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Le/m/a/c/n1/f;->b()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/m/a/c/j0;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v0, v0, Le/m/a/c/k0;->b:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/m/a/c/j0;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    .line 4
    invoke-interface {v0}, Le/m/a/c/l1/o;->b()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v3, v0, Le/m/a/c/k0;->e:J

    :cond_2
    return-wide v3
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/m/a/c/j0;->d:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/m/a/c/j0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    .line 2
    invoke-interface {v0}, Le/m/a/c/l1/o;->b()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/j0;->k:Le/m/a/c/j0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/m/a/c/j0;->b()V

    .line 2
    iget-object v0, p0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-wide v0, v0, Le/m/a/c/k0;->d:J

    iget-object v2, p0, Le/m/a/c/j0;->j:Le/m/a/c/l1/p;

    iget-object v3, p0, Le/m/a/c/j0;->a:Le/m/a/c/l1/o;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    check-cast v3, Le/m/a/c/l1/l;

    iget-object v0, v3, Le/m/a/c/l1/l;->a:Le/m/a/c/l1/o;

    invoke-interface {v2, v0}, Le/m/a/c/l1/p;->g(Le/m/a/c/l1/o;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v2, v3}, Le/m/a/c/l1/p;->g(Le/m/a/c/l1/o;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Period release failed."

    .line 5
    invoke-static {v1, v0}, Le/m/a/c/q1/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public h(FLe/m/a/c/y0;)Le/m/a/c/n1/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/a/c/b0;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/j0;->i:Le/m/a/c/n1/h;

    iget-object v1, p0, Le/m/a/c/j0;->h:[Le/m/a/c/u;

    .line 2
    iget-object v2, p0, Le/m/a/c/j0;->l:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 3
    iget-object v3, p0, Le/m/a/c/j0;->f:Le/m/a/c/k0;

    iget-object v3, v3, Le/m/a/c/k0;->a:Le/m/a/c/l1/p$a;

    invoke-virtual {v0, v1, v2, v3, p2}, Le/m/a/c/n1/h;->b([Le/m/a/c/u;Lcom/google/android/exoplayer2/source/TrackGroupArray;Le/m/a/c/l1/p$a;Le/m/a/c/y0;)Le/m/a/c/n1/i;

    move-result-object p2

    .line 4
    iget-object v0, p2, Le/m/a/c/n1/i;->c:Le/m/a/c/n1/g;

    invoke-virtual {v0}, Le/m/a/c/n1/g;->a()[Le/m/a/c/n1/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v3, p1}, Le/m/a/c/n1/f;->i(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method
