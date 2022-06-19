.class public Lw3/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lw3/e/a/b;->a:Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lw3/e/a/b;->c()V

    return-void
.end method


# virtual methods
.method public a([Lw3/e/a/a;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    .line 2
    iget v3, v0, Lw3/e/a/b;->b:I

    .line 3
    iget v4, v0, Lw3/e/a/b;->c:I

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    sub-int v11, v2, v7

    shr-int/2addr v11, v5

    add-int/2addr v11, v7

    if-ge v8, v9, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    move v12, v9

    .line 4
    :goto_1
    aget-object v13, v1, v11

    move v14, v12

    const/4 v15, 0x0

    .line 5
    :goto_2
    iget-object v6, v13, Lw3/e/a/a;->a:[C

    array-length v6, v6

    if-lt v12, v6, :cond_2

    goto :goto_3

    :cond_2
    add-int v6, v3, v14

    if-ne v6, v4, :cond_3

    const/4 v15, -0x1

    goto :goto_3

    .line 6
    :cond_3
    iget-object v15, v0, Lw3/e/a/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    iget-object v15, v13, Lw3/e/a/a;->a:[C

    aget-char v15, v15, v12

    sub-int v15, v6, v15

    if-eqz v15, :cond_a

    :goto_3
    if-gez v15, :cond_4

    move v2, v11

    move v9, v14

    goto :goto_4

    :cond_4
    move v7, v11

    move v8, v14

    :goto_4
    sub-int v6, v2, v7

    if-gt v6, v5, :cond_0

    if-lez v7, :cond_5

    goto :goto_5

    :cond_5
    if-ne v2, v7, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_9

    .line 7
    :cond_7
    :goto_5
    aget-object v2, v1, v7

    .line 8
    iget-object v4, v2, Lw3/e/a/a;->a:[C

    array-length v5, v4

    if-lt v8, v5, :cond_8

    .line 9
    array-length v1, v4

    add-int/2addr v3, v1

    iput v3, v0, Lw3/e/a/b;->b:I

    .line 10
    iget v1, v2, Lw3/e/a/a;->c:I

    return v1

    .line 11
    :cond_8
    iget v7, v2, Lw3/e/a/a;->b:I

    if-gez v7, :cond_7

    const/4 v6, 0x0

    return v6

    :cond_9
    move v10, v5

    goto :goto_0

    :cond_a
    const/4 v6, 0x0

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method public b([Lw3/e/a/a;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    array-length v2, v1

    .line 2
    iget v3, v0, Lw3/e/a/b;->b:I

    .line 3
    iget v4, v0, Lw3/e/a/b;->d:I

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    sub-int v11, v2, v7

    shr-int/2addr v11, v5

    add-int/2addr v11, v7

    if-ge v8, v9, :cond_1

    move v12, v8

    goto :goto_1

    :cond_1
    move v12, v9

    .line 4
    :goto_1
    aget-object v13, v1, v11

    .line 5
    iget-object v14, v13, Lw3/e/a/a;->a:[C

    array-length v14, v14

    sub-int/2addr v14, v5

    sub-int/2addr v14, v12

    const/4 v15, 0x0

    :goto_2
    if-gez v14, :cond_2

    goto :goto_3

    :cond_2
    sub-int v15, v3, v12

    if-ne v15, v4, :cond_3

    const/4 v15, -0x1

    goto :goto_3

    .line 6
    :cond_3
    iget-object v15, v0, Lw3/e/a/b;->a:Ljava/lang/StringBuilder;

    add-int/lit8 v16, v3, -0x1

    sub-int v6, v16, v12

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    iget-object v15, v13, Lw3/e/a/a;->a:[C

    aget-char v15, v15, v14

    sub-int v15, v6, v15

    if-eqz v15, :cond_a

    :goto_3
    if-gez v15, :cond_4

    move v2, v11

    move v9, v12

    goto :goto_4

    :cond_4
    move v7, v11

    move v8, v12

    :goto_4
    sub-int v6, v2, v7

    if-gt v6, v5, :cond_0

    if-lez v7, :cond_5

    goto :goto_5

    :cond_5
    if-ne v2, v7, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_9

    .line 7
    :cond_7
    :goto_5
    aget-object v2, v1, v7

    .line 8
    iget-object v4, v2, Lw3/e/a/a;->a:[C

    array-length v5, v4

    if-lt v8, v5, :cond_8

    .line 9
    array-length v1, v4

    sub-int/2addr v3, v1

    iput v3, v0, Lw3/e/a/b;->b:I

    .line 10
    iget v1, v2, Lw3/e/a/a;->c:I

    return v1

    .line 11
    :cond_8
    iget v7, v2, Lw3/e/a/a;->b:I

    if-gez v7, :cond_7

    const/4 v6, 0x0

    return v6

    :cond_9
    move v10, v5

    goto :goto_0

    :cond_a
    const/4 v6, 0x0

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, -0x1

    goto :goto_2
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lw3/e/a/b;->b:I

    .line 2
    iget-object v1, p0, Lw3/e/a/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iput v1, p0, Lw3/e/a/b;->c:I

    .line 3
    iput v0, p0, Lw3/e/a/b;->d:I

    .line 4
    iget v0, p0, Lw3/e/a/b;->b:I

    iput v0, p0, Lw3/e/a/b;->e:I

    .line 5
    iput v1, p0, Lw3/e/a/b;->f:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lw3/e/a/b;->e:I

    if-ltz v0, :cond_0

    .line 2
    iget v1, p0, Lw3/e/a/b;->f:I

    if-gt v0, v1, :cond_0

    .line 3
    iget v0, p0, Lw3/e/a/b;->c:I

    if-gt v1, v0, :cond_0

    .line 4
    iget-object v1, p0, Lw3/e/a/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 5
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "faulty slice operation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget v0, p0, Lw3/e/a/b;->e:I

    iget v1, p0, Lw3/e/a/b;->f:I

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    .line 8
    iget-object v3, p0, Lw3/e/a/b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget p1, p0, Lw3/e/a/b;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lw3/e/a/b;->c:I

    .line 10
    iget p1, p0, Lw3/e/a/b;->b:I

    if-lt p1, v1, :cond_2

    add-int/2addr p1, v2

    iput p1, p0, Lw3/e/a/b;->b:I

    goto :goto_0

    :cond_2
    if-le p1, v0, :cond_3

    .line 11
    iput v0, p0, Lw3/e/a/b;->b:I

    :cond_3
    :goto_0
    return-void
.end method
