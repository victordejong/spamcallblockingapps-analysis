.class public Le/g/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/g/a/p;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/o$a;
    }
.end annotation


# instance fields
.field public a:[J

.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:D

.field public i:Le/g/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/g/a/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Le/g/a/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 2
    invoke-static {}, Le/g/a/l;->a()Le/g/a/n;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Le/g/a/o;->i:Le/g/a/n;

    const-wide v3, 0x3f847ae140000000L    # 0.009999999776482582

    const-wide v5, 0x3fefae1480000000L    # 0.9900000095367432

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    .line 5
    invoke-static/range {v1 .. v6}, Le/g/a/k;->a(DDD)V

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 6
    iput-wide v0, p0, Le/g/a/o;->h:D

    .line 7
    iget v2, p0, Le/g/a/o;->f:I

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Le/g/a/o;->a:[J

    if-nez v2, :cond_1

    .line 8
    :cond_0
    iget-object v2, p0, Le/g/a/o;->a:[J

    .line 9
    iget-object v3, p0, Le/g/a/o;->b:[I

    .line 10
    invoke-static {p1, v0, v1}, Le/g/a/k;->c(ID)I

    move-result p1

    invoke-virtual {p0, p1}, Le/g/a/o;->a(I)V

    if-eqz v2, :cond_1

    .line 11
    invoke-virtual {p0}, Le/g/a/o;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    invoke-virtual {p0, v2, v3}, Le/g/a/o;->f([J[I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/g/a/o;->i:Le/g/a/n;

    invoke-interface {v0, p1}, Le/g/a/n;->d(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/g/a/o;->a:[J

    .line 3
    iget-object v2, p0, Le/g/a/o;->b:[I

    add-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    .line 4
    :try_start_0
    new-array v5, v3, [J

    iput-object v5, p0, Le/g/a/o;->a:[J

    .line 5
    new-array v3, v3, [I

    iput-object v3, p0, Le/g/a/o;->b:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-wide v1, p0, Le/g/a/o;->h:D

    invoke-static {p1, v1, v2}, Le/g/a/k;->b(ID)I

    move-result v1

    iput v1, p0, Le/g/a/o;->f:I

    .line 7
    iput v0, p0, Le/g/a/o;->c:I

    sub-int/2addr p1, v4

    .line 8
    iput p1, p0, Le/g/a/o;->e:I

    return-void

    :catch_0
    move-exception v0

    .line 9
    iput-object v1, p0, Le/g/a/o;->a:[J

    .line 10
    iput-object v2, p0, Le/g/a/o;->b:[I

    .line 11
    new-instance v1, Le/g/a/b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v5, p0, Le/g/a/o;->e:I

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-direct {v1, p1, v0, v2}, Le/g/a/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public b(JI)I
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 1
    iget-boolean p1, p0, Le/g/a/o;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/g/a/o;->b:[I

    iget p2, p0, Le/g/a/o;->e:I

    add-int/lit8 p2, p2, 0x1

    aget p3, p1, p2

    :cond_0
    return p3

    .line 2
    :cond_1
    iget-object v2, p0, Le/g/a/o;->a:[J

    .line 3
    iget v3, p0, Le/g/a/o;->e:I

    .line 4
    iget v4, p0, Le/g/a/o;->c:I

    int-to-long v4, v4

    xor-long/2addr v4, p1

    .line 5
    invoke-static {v4, v5}, Ln3/g0/y;->k1(J)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_0
    and-int/2addr v4, v3

    .line 6
    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-eqz v7, :cond_3

    cmp-long v5, v5, p1

    if-nez v5, :cond_2

    .line 7
    iget-object p1, p0, Le/g/a/o;->b:[I

    aget p1, p1, v4

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public c(J)I
    .locals 2

    .line 1
    iget v0, p0, Le/g/a/o;->c:I

    int-to-long v0, v0

    xor-long/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Ln3/g0/y;->k1(J)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/g/a/o;

    .line 2
    iget-object v1, p0, Le/g/a/o;->a:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Le/g/a/o;->a:[J

    .line 3
    iget-object v1, p0, Le/g/a/o;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Le/g/a/o;->b:[I

    .line 4
    iget-boolean v1, v0, Le/g/a/o;->g:Z

    iput-boolean v1, v0, Le/g/a/o;->g:Z

    .line 5
    iget-object v1, p0, Le/g/a/o;->i:Le/g/a/n;

    invoke-interface {v1}, Le/g/a/n;->clone()Le/g/a/n;

    move-result-object v1

    iput-object v1, v0, Le/g/a/o;->i:Le/g/a/n;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e(JI)I
    .locals 9

    .line 1
    iget v0, p0, Le/g/a/o;->e:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2
    iput-boolean v4, p0, Le/g/a/o;->g:Z

    .line 3
    iget-object p1, p0, Le/g/a/o;->b:[I

    add-int/2addr v0, v4

    aget p2, p1, v0

    .line 4
    aput p3, p1, v0

    return p2

    .line 5
    :cond_0
    iget-object v3, p0, Le/g/a/o;->a:[J

    .line 6
    iget v5, p0, Le/g/a/o;->c:I

    int-to-long v5, v5

    xor-long/2addr v5, p1

    .line 7
    invoke-static {v5, v6}, Ln3/g0/y;->k1(J)J

    move-result-wide v5

    long-to-int v5, v5

    :goto_0
    and-int/2addr v5, v0

    .line 8
    aget-wide v6, v3, v5

    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    .line 9
    iget-object p1, p0, Le/g/a/o;->b:[I

    aget p2, p1, v5

    .line 10
    aput p3, p1, v5

    return p2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Le/g/a/o;->d:I

    iget v1, p0, Le/g/a/o;->f:I

    if-ne v0, v1, :cond_3

    .line 12
    iget-object v0, p0, Le/g/a/o;->a:[J

    .line 13
    iget-object v1, p0, Le/g/a/o;->b:[I

    .line 14
    iget v2, p0, Le/g/a/o;->e:I

    add-int/2addr v2, v4

    invoke-virtual {p0}, Le/g/a/o;->size()I

    move-result v3

    iget-wide v6, p0, Le/g/a/o;->h:D

    invoke-static {v2, v3, v6, v7}, Le/g/a/k;->d(IID)I

    move-result v2

    invoke-virtual {p0, v2}, Le/g/a/o;->a(I)V

    .line 15
    aput-wide p1, v0, v5

    .line 16
    aput p3, v1, v5

    .line 17
    invoke-virtual {p0, v0, v1}, Le/g/a/o;->f([J[I)V

    goto :goto_1

    .line 18
    :cond_3
    aput-wide p1, v3, v5

    .line 19
    iget-object p1, p0, Le/g/a/o;->b:[I

    aput p3, p1, v5

    .line 20
    :goto_1
    iget p1, p0, Le/g/a/o;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Le/g/a/o;->d:I

    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 1
    const-class v2, Le/g/a/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_a

    const-class v2, Le/g/a/o;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/g/a/o;

    .line 2
    invoke-virtual {p1}, Le/g/a/o;->size()I

    move-result v2

    invoke-virtual {p0}, Le/g/a/o;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    move p1, v0

    goto/16 :goto_5

    .line 3
    :cond_1
    new-instance v2, Le/g/a/o$a;

    invoke-direct {v2, p1}, Le/g/a/o$a;-><init>(Le/g/a/o;)V

    .line 4
    :cond_2
    invoke-virtual {v2}, Le/g/a/a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/g/a/r/d;

    .line 5
    iget-wide v3, p1, Le/g/a/r/d;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 6
    iget-boolean v8, p0, Le/g/a/o;->g:Z

    goto :goto_2

    .line 7
    :cond_3
    iget-object v8, p0, Le/g/a/o;->a:[J

    .line 8
    iget v9, p0, Le/g/a/o;->e:I

    .line 9
    iget v10, p0, Le/g/a/o;->c:I

    int-to-long v10, v10

    xor-long/2addr v10, v3

    .line 10
    invoke-static {v10, v11}, Ln3/g0/y;->k1(J)J

    move-result-wide v10

    long-to-int v10, v10

    :goto_1
    and-int/2addr v10, v9

    .line 11
    aget-wide v11, v8, v10

    cmp-long v13, v11, v5

    if-eqz v13, :cond_5

    cmp-long v11, v11, v3

    if-nez v11, :cond_4

    move v8, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    move v8, v0

    :goto_2
    if-eqz v8, :cond_0

    if-nez v7, :cond_6

    .line 12
    iget-boolean v3, p0, Le/g/a/o;->g:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Le/g/a/o;->b:[I

    iget v4, p0, Le/g/a/o;->e:I

    add-int/2addr v4, v1

    aget v3, v3, v4

    goto :goto_4

    .line 13
    :cond_6
    iget-object v7, p0, Le/g/a/o;->a:[J

    .line 14
    iget v8, p0, Le/g/a/o;->e:I

    .line 15
    iget v9, p0, Le/g/a/o;->c:I

    int-to-long v9, v9

    xor-long/2addr v9, v3

    .line 16
    invoke-static {v9, v10}, Ln3/g0/y;->k1(J)J

    move-result-wide v9

    long-to-int v9, v9

    :goto_3
    and-int/2addr v9, v8

    .line 17
    aget-wide v10, v7, v9

    cmp-long v12, v10, v5

    if-eqz v12, :cond_8

    cmp-long v10, v10, v3

    if-nez v10, :cond_7

    .line 18
    iget-object v3, p0, Le/g/a/o;->b:[I

    aget v3, v3, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_8
    move v3, v0

    .line 19
    :goto_4
    iget p1, p1, Le/g/a/r/d;->c:I

    if-eq v3, p1, :cond_2

    goto :goto_0

    :cond_9
    move p1, v1

    :goto_5
    if-eqz p1, :cond_a

    move v0, v1

    :cond_a
    return v0
.end method

.method public f([J[I)V
    .locals 11

    .line 1
    iget-object v0, p0, Le/g/a/o;->a:[J

    .line 2
    iget-object v1, p0, Le/g/a/o;->b:[I

    .line 3
    iget v2, p0, Le/g/a/o;->e:I

    .line 4
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 5
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-wide v5, p1, v3

    aput-wide v5, v0, v4

    .line 6
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v5, p2, v3

    aput v5, v1, v4

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    .line 7
    aget-wide v4, p1, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    .line 8
    invoke-virtual {p0, v4, v5}, Le/g/a/o;->c(J)I

    move-result v8

    :goto_1
    and-int/2addr v8, v2

    .line 9
    aget-wide v9, v0, v8

    cmp-long v9, v9, v6

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aput-wide v4, v0, v8

    .line 11
    aget v4, p2, v3

    aput v4, v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Le/g/a/o;->g:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Le/g/a/o$a;

    invoke-direct {v1, p0}, Le/g/a/o$a;-><init>(Le/g/a/o;)V

    .line 3
    :goto_1
    invoke-virtual {v1}, Le/g/a/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/g/a/r/d;

    .line 4
    iget-wide v3, v2, Le/g/a/r/d;->b:J

    .line 5
    invoke-static {v3, v4}, Ln3/g0/y;->k1(J)J

    move-result-wide v3

    long-to-int v3, v3

    .line 6
    iget v2, v2, Le/g/a/r/d;->c:I

    .line 7
    invoke-static {v2}, Ln3/g0/y;->j1(I)I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/g/a/o;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Le/g/a/r/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/g/a/o$a;

    invoke-direct {v0, p0}, Le/g/a/o$a;-><init>(Le/g/a/o;)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1
    iget v0, p0, Le/g/a/o;->d:I

    iget-boolean v1, p0, Le/g/a/o;->g:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const-string v0, "["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    new-instance v1, Le/g/a/o$a;

    invoke-direct {v1, p0}, Le/g/a/o$a;-><init>(Le/g/a/o;)V

    const/4 v2, 0x1

    .line 3
    :goto_0
    invoke-virtual {v1}, Le/g/a/a;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Le/g/a/a;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/g/a/r/d;

    if-nez v2, :cond_0

    const-string v2, ", "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-wide v4, v3, Le/g/a/r/d;->b:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "=>"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v2, v3, Le/g/a/r/d;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
