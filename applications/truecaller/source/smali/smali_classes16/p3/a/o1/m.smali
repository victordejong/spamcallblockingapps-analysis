.class public Lp3/a/o1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/m$a;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/o1/f;

.field public final b:Lp3/a/o1/o/m/c;

.field public c:I

.field public final d:Lp3/a/o1/m$a;


# direct methods
.method public constructor <init>(Lp3/a/o1/f;Lp3/a/o1/o/m/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transport"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/o1/m;->a:Lp3/a/o1/f;

    const-string p1, "frameWriter"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/o1/m;->b:Lp3/a/o1/o/m/c;

    const p1, 0xffff

    .line 4
    iput p1, p0, Lp3/a/o1/m;->c:I

    .line 5
    new-instance p2, Lp3/a/o1/m$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Lp3/a/o1/m$a;-><init>(Lp3/a/o1/m;II)V

    iput-object p2, p0, Lp3/a/o1/m;->d:Lp3/a/o1/m$a;

    return-void
.end method


# virtual methods
.method public a(ZILv3/f;Z)V
    .locals 5

    const-string v0, "source"

    .line 1
    invoke-static {p3, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp3/a/o1/m;->a:Lp3/a/o1/f;

    invoke-virtual {v0, p2}, Lp3/a/o1/f;->p(I)Lp3/a/o1/e;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p2}, Lp3/a/o1/m;->d(Lp3/a/o1/e;)Lp3/a/o1/m$a;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lp3/a/o1/m$a;->c()I

    move-result v0

    .line 5
    iget-object v1, p2, Lp3/a/o1/m$a;->a:Lv3/f;

    .line 6
    iget-wide v1, v1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 7
    :goto_0
    iget-wide v3, p3, Lv3/f;->b:J

    long-to-int v3, v3

    if-nez v1, :cond_2

    if-lt v0, v3, :cond_2

    .line 8
    invoke-virtual {p2, p3, v3, p1}, Lp3/a/o1/m$a;->d(Lv3/f;IZ)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-lez v0, :cond_3

    .line 9
    invoke-virtual {p2, p3, v0, v2}, Lp3/a/o1/m$a;->d(Lv3/f;IZ)V

    .line 10
    :cond_3
    iget-wide v0, p3, Lv3/f;->b:J

    long-to-int v0, v0

    .line 11
    iget-object v1, p2, Lp3/a/o1/m$a;->a:Lv3/f;

    int-to-long v2, v0

    invoke-virtual {v1, p3, v2, v3}, Lv3/f;->h1(Lv3/f;J)V

    .line 12
    iget-boolean p3, p2, Lp3/a/o1/m$a;->f:Z

    or-int/2addr p1, p3

    iput-boolean p1, p2, Lp3/a/o1/m$a;->f:Z

    :goto_1
    if-eqz p4, :cond_4

    .line 13
    invoke-virtual {p0}, Lp3/a/o1/m;->b()V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/m;->b:Lp3/a/o1/o/m/c;

    invoke-interface {v0}, Lp3/a/o1/o/m/c;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c(I)Z
    .locals 7

    if-ltz p1, :cond_3

    .line 1
    iget v0, p0, Lp3/a/o1/m;->c:I

    sub-int v0, p1, v0

    .line 2
    iput p1, p0, Lp3/a/o1/m;->c:I

    .line 3
    iget-object p1, p0, Lp3/a/o1/m;->a:Lp3/a/o1/f;

    invoke-virtual {p1}, Lp3/a/o1/f;->l()[Lp3/a/o1/e;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    iget-object v5, v4, Lp3/a/o1/e;->k:Ljava/lang/Object;

    .line 5
    check-cast v5, Lp3/a/o1/m$a;

    if-nez v5, :cond_0

    .line 6
    new-instance v5, Lp3/a/o1/m$a;

    iget v6, p0, Lp3/a/o1/m;->c:I

    invoke-direct {v5, p0, v4, v6}, Lp3/a/o1/m$a;-><init>(Lp3/a/o1/m;Lp3/a/o1/e;I)V

    .line 7
    iput-object v5, v4, Lp3/a/o1/e;->k:Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {v5, v0}, Lp3/a/o1/m$a;->a(I)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid initial window size: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Lp3/a/o1/e;)Lp3/a/o1/m$a;
    .locals 2

    .line 1
    iget-object v0, p1, Lp3/a/o1/e;->k:Ljava/lang/Object;

    .line 2
    check-cast v0, Lp3/a/o1/m$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lp3/a/o1/m$a;

    iget v1, p0, Lp3/a/o1/m;->c:I

    invoke-direct {v0, p0, p1, v1}, Lp3/a/o1/m$a;-><init>(Lp3/a/o1/m;Lp3/a/o1/e;I)V

    .line 4
    iput-object v0, p1, Lp3/a/o1/e;->k:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public e(Lp3/a/o1/e;I)I
    .locals 10

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lp3/a/o1/m;->d:Lp3/a/o1/m$a;

    invoke-virtual {p1, p2}, Lp3/a/o1/m$a;->a(I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lp3/a/o1/m;->f()V

    goto :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lp3/a/o1/m;->d(Lp3/a/o1/e;)Lp3/a/o1/m$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lp3/a/o1/m$a;->a(I)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lp3/a/o1/m$a;->c()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lp3/a/o1/m$a;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 7
    :goto_0
    iget-object v5, p1, Lp3/a/o1/m$a;->a:Lv3/f;

    .line 8
    iget-wide v6, v5, Lv3/f;->b:J

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    const/4 v9, 0x1

    if-lez v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    if-eqz v8, :cond_3

    if-lez v1, :cond_3

    int-to-long v8, v1

    cmp-long v8, v8, v6

    if-ltz v8, :cond_2

    long-to-int v1, v6

    add-int/2addr v4, v1

    .line 9
    iget-boolean v6, p1, Lp3/a/o1/m$a;->f:Z

    invoke-virtual {p1, v5, v1, v6}, Lp3/a/o1/m$a;->d(Lv3/f;IZ)V

    goto :goto_2

    :cond_2
    add-int/2addr v4, v1

    .line 10
    invoke-virtual {p1, v5, v1, v2}, Lp3/a/o1/m$a;->d(Lv3/f;IZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    sub-int v1, v0, v4

    .line 11
    invoke-virtual {p1}, Lp3/a/o1/m$a;->c()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    move v2, v9

    :cond_4
    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {p0}, Lp3/a/o1/m;->b()V

    :cond_5
    move p1, p2

    :goto_3
    return p1
.end method

.method public f()V
    .locals 15

    .line 1
    iget-object v0, p0, Lp3/a/o1/m;->a:Lp3/a/o1/f;

    invoke-virtual {v0}, Lp3/a/o1/f;->l()[Lp3/a/o1/e;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lp3/a/o1/m;->d:Lp3/a/o1/m$a;

    .line 3
    iget v1, v1, Lp3/a/o1/m$a;->c:I

    .line 4
    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    if-lez v1, :cond_2

    .line 6
    aget-object v6, v0, v5

    .line 7
    invoke-virtual {p0, v6}, Lp3/a/o1/m;->d(Lp3/a/o1/e;)Lp3/a/o1/m$a;

    move-result-object v7

    .line 8
    invoke-virtual {v7}, Lp3/a/o1/m$a;->b()I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-lez v8, :cond_0

    .line 9
    iget v9, v7, Lp3/a/o1/m$a;->d:I

    add-int/2addr v9, v8

    iput v9, v7, Lp3/a/o1/m$a;->d:I

    sub-int/2addr v1, v8

    .line 10
    :cond_0
    invoke-virtual {v7}, Lp3/a/o1/m$a;->b()I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 11
    aput-object v6, v0, v3

    move v3, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lp3/a/o1/m;->a:Lp3/a/o1/f;

    invoke-virtual {v0}, Lp3/a/o1/f;->l()[Lp3/a/o1/e;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    move v4, v2

    :goto_2
    const/4 v5, 0x1

    if-ge v2, v1, :cond_7

    aget-object v6, v0, v2

    .line 13
    invoke-virtual {p0, v6}, Lp3/a/o1/m;->d(Lp3/a/o1/e;)Lp3/a/o1/m$a;

    move-result-object v6

    .line 14
    iget v7, v6, Lp3/a/o1/m$a;->d:I

    .line 15
    invoke-virtual {v6}, Lp3/a/o1/m$a;->c()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v3

    .line 16
    :goto_3
    iget-object v10, v6, Lp3/a/o1/m$a;->a:Lv3/f;

    .line 17
    iget-wide v11, v10, Lv3/f;->b:J

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_4

    move v13, v5

    goto :goto_4

    :cond_4
    move v13, v3

    :goto_4
    if-eqz v13, :cond_6

    if-lez v8, :cond_6

    int-to-long v13, v8

    cmp-long v13, v13, v11

    if-ltz v13, :cond_5

    long-to-int v8, v11

    add-int/2addr v9, v8

    .line 18
    iget-boolean v11, v6, Lp3/a/o1/m$a;->f:Z

    invoke-virtual {v6, v10, v8, v11}, Lp3/a/o1/m$a;->d(Lv3/f;IZ)V

    goto :goto_5

    :cond_5
    add-int/2addr v9, v8

    .line 19
    invoke-virtual {v6, v10, v8, v3}, Lp3/a/o1/m$a;->d(Lv3/f;IZ)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    sub-int v8, v7, v9

    .line 20
    invoke-virtual {v6}, Lp3/a/o1/m$a;->c()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_3

    .line 21
    :cond_6
    iput v3, v6, Lp3/a/o1/m$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-lez v4, :cond_8

    move v3, v5

    :cond_8
    if-eqz v3, :cond_9

    .line 22
    invoke-virtual {p0}, Lp3/a/o1/m;->b()V

    :cond_9
    return-void
.end method
