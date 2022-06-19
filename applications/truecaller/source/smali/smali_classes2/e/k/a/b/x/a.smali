.class public final Le/k/a/b/x/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/b/w/b;

.field public final b:Ljava/io/InputStream;

.field public final c:[B

.field public d:I

.field public e:I

.field public final f:Z

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Le/k/a/b/w/b;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/k/a/b/x/a;->g:Z

    .line 3
    iput-object p1, p0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    .line 4
    iput-object p2, p0, Le/k/a/b/x/a;->b:Ljava/io/InputStream;

    .line 5
    iget-object p2, p1, Le/k/a/b/w/b;->e:[B

    invoke-virtual {p1, p2}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p1, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Le/k/a/b/a0/a;->a(I)[B

    move-result-object p2

    iput-object p2, p1, Le/k/a/b/w/b;->e:[B

    .line 7
    iput-object p2, p0, Le/k/a/b/x/a;->c:[B

    .line 8
    iput v1, p0, Le/k/a/b/x/a;->d:I

    iput v1, p0, Le/k/a/b/x/a;->e:I

    .line 9
    iput-boolean v0, p0, Le/k/a/b/x/a;->f:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/b/w/b;[BII)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le/k/a/b/x/a;->g:Z

    .line 12
    iput-object p1, p0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Le/k/a/b/x/a;->b:Ljava/io/InputStream;

    .line 14
    iput-object p2, p0, Le/k/a/b/x/a;->c:[B

    .line 15
    iput p3, p0, Le/k/a/b/x/a;->d:I

    add-int/2addr p3, p4

    .line 16
    iput p3, p0, Le/k/a/b/x/a;->e:I

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Le/k/a/b/x/a;->f:Z

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 2

    const v0, 0xff00

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1
    iput-boolean v1, p0, Le/k/a/b/x/a;->g:Z

    goto :goto_0

    :cond_0
    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iput-boolean v0, p0, Le/k/a/b/x/a;->g:Z

    :goto_0
    const/4 p1, 0x2

    .line 3
    iput p1, p0, Le/k/a/b/x/a;->h:I

    return v1

    :cond_1
    return v0
.end method

.method public b(ILe/k/a/b/n;Le/k/a/b/y/a;Le/k/a/b/y/b;I)Le/k/a/b/j;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v1, p5

    .line 1
    iget v3, v0, Le/k/a/b/x/a;->d:I

    .line 2
    sget-object v4, Le/k/a/b/d;->d:Le/k/a/b/d;

    const/4 v5, 0x4

    .line 3
    invoke-virtual {v0, v5}, Le/k/a/b/x/a;->c(I)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/16 v10, 0x10

    const/16 v11, 0x8

    if-eqz v6, :cond_d

    .line 4
    iget-object v6, v0, Le/k/a/b/x/a;->c:[B

    iget v12, v0, Le/k/a/b/x/a;->d:I

    aget-byte v13, v6, v12

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, v12, 0x1

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v10

    or-int/2addr v13, v14

    add-int/lit8 v14, v12, 0x2

    aget-byte v15, v6, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v11

    or-int/2addr v13, v15

    add-int/lit8 v15, v12, 0x3

    aget-byte v6, v6, v15

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v13

    const/high16 v13, -0x1010000

    const-string v11, "3412"

    const/16 v17, 0x0

    if-eq v6, v13, :cond_c

    const/high16 v13, -0x20000

    const-string v10, "2143"

    if-eq v6, v13, :cond_5

    const v13, 0xfeff

    if-eq v6, v13, :cond_4

    const v12, 0xfffe

    if-eq v6, v12, :cond_3

    ushr-int/lit8 v5, v6, 0x10

    if-ne v5, v13, :cond_0

    .line 5
    iput v14, v0, Le/k/a/b/x/a;->d:I

    .line 6
    iput v9, v0, Le/k/a/b/x/a;->h:I

    .line 7
    iput-boolean v8, v0, Le/k/a/b/x/a;->g:Z

    goto :goto_0

    :cond_0
    if-ne v5, v12, :cond_1

    .line 8
    iput v14, v0, Le/k/a/b/x/a;->d:I

    .line 9
    iput v9, v0, Le/k/a/b/x/a;->h:I

    .line 10
    iput-boolean v7, v0, Le/k/a/b/x/a;->g:Z

    goto :goto_0

    :cond_1
    ushr-int/lit8 v5, v6, 0x8

    const v12, 0xefbbbf

    if-ne v5, v12, :cond_2

    .line 11
    iput v15, v0, Le/k/a/b/x/a;->d:I

    .line 12
    iput v8, v0, Le/k/a/b/x/a;->h:I

    .line 13
    iput-boolean v8, v0, Le/k/a/b/x/a;->g:Z

    goto :goto_0

    :cond_2
    move v5, v7

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {v0, v10}, Le/k/a/b/x/a;->d(Ljava/lang/String;)V

    throw v17

    .line 15
    :cond_4
    iput-boolean v8, v0, Le/k/a/b/x/a;->g:Z

    const/4 v5, 0x4

    add-int/2addr v12, v5

    .line 16
    iput v12, v0, Le/k/a/b/x/a;->d:I

    .line 17
    iput v5, v0, Le/k/a/b/x/a;->h:I

    goto :goto_0

    :cond_5
    add-int/2addr v12, v5

    .line 18
    iput v12, v0, Le/k/a/b/x/a;->d:I

    .line 19
    iput v5, v0, Le/k/a/b/x/a;->h:I

    .line 20
    iput-boolean v7, v0, Le/k/a/b/x/a;->g:Z

    :goto_0
    move v5, v8

    :goto_1
    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    shr-int/lit8 v5, v6, 0x8

    if-nez v5, :cond_7

    .line 21
    iput-boolean v8, v0, Le/k/a/b/x/a;->g:Z

    :goto_2
    const/4 v5, 0x4

    goto :goto_3

    :cond_7
    const v5, 0xffffff

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    .line 22
    iput-boolean v7, v0, Le/k/a/b/x/a;->g:Z

    goto :goto_2

    .line 23
    :goto_3
    iput v5, v0, Le/k/a/b/x/a;->h:I

    move v5, v8

    goto :goto_4

    :cond_8
    const v5, -0xff0001

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    const v5, -0xff01

    and-int/2addr v5, v6

    if-eqz v5, :cond_a

    move v5, v7

    :goto_4
    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    const/16 v5, 0x10

    ushr-int/2addr v6, v5

    .line 24
    invoke-virtual {v0, v6}, Le/k/a/b/x/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_5

    .line 25
    :cond_a
    invoke-virtual {v0, v10}, Le/k/a/b/x/a;->d(Ljava/lang/String;)V

    throw v17

    .line 26
    :cond_b
    invoke-virtual {v0, v11}, Le/k/a/b/x/a;->d(Ljava/lang/String;)V

    throw v17

    .line 27
    :cond_c
    invoke-virtual {v0, v11}, Le/k/a/b/x/a;->d(Ljava/lang/String;)V

    throw v17

    .line 28
    :cond_d
    invoke-virtual {v0, v9}, Le/k/a/b/x/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 29
    iget-object v5, v0, Le/k/a/b/x/a;->c:[B

    iget v6, v0, Le/k/a/b/x/a;->d:I

    aget-byte v10, v5, v6

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    add-int/2addr v6, v8

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v10

    .line 30
    invoke-virtual {v0, v5}, Le/k/a/b/x/a;->a(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_5
    move v7, v8

    :cond_e
    const-string v5, "Internal error"

    if-nez v7, :cond_f

    goto :goto_6

    .line 31
    :cond_f
    iget v6, v0, Le/k/a/b/x/a;->h:I

    if-eq v6, v8, :cond_14

    if-eq v6, v9, :cond_12

    const/4 v7, 0x4

    if-ne v6, v7, :cond_11

    .line 32
    iget-boolean v6, v0, Le/k/a/b/x/a;->g:Z

    if-eqz v6, :cond_10

    sget-object v6, Le/k/a/b/d;->g:Le/k/a/b/d;

    goto :goto_7

    :cond_10
    sget-object v6, Le/k/a/b/d;->h:Le/k/a/b/d;

    goto :goto_7

    .line 33
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_12
    iget-boolean v6, v0, Le/k/a/b/x/a;->g:Z

    if-eqz v6, :cond_13

    sget-object v6, Le/k/a/b/d;->e:Le/k/a/b/d;

    goto :goto_7

    :cond_13
    sget-object v6, Le/k/a/b/d;->f:Le/k/a/b/d;

    goto :goto_7

    :cond_14
    :goto_6
    move-object v6, v4

    .line 35
    :goto_7
    iget-object v7, v0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    .line 36
    iput-object v6, v7, Le/k/a/b/w/b;->b:Le/k/a/b/d;

    .line 37
    iget v7, v0, Le/k/a/b/x/a;->d:I

    sub-int v27, v7, v3

    if-ne v6, v4, :cond_15

    .line 38
    sget-object v3, Le/k/a/b/e$a;->c:Le/k/a/b/e$a;

    invoke-virtual {v3, v1}, Le/k/a/b/e$a;->d(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 39
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v23, Le/k/a/b/y/a;

    sget-object v3, Le/k/a/b/e$a;->b:Le/k/a/b/e$a;

    .line 41
    invoke-virtual {v3, v1}, Le/k/a/b/e$a;->d(I)Z

    move-result v3

    iget v4, v2, Le/k/a/b/y/a;->c:I

    sget-object v5, Le/k/a/b/e$a;->d:Le/k/a/b/e$a;

    .line 42
    invoke-virtual {v5, v1}, Le/k/a/b/e$a;->d(I)Z

    move-result v5

    iget-object v1, v2, Le/k/a/b/y/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/k/a/b/y/a$a;

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Le/k/a/b/y/a;-><init>(Le/k/a/b/y/a;ZIZLe/k/a/b/y/a$a;)V

    .line 44
    new-instance v1, Le/k/a/b/x/i;

    iget-object v2, v0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    iget-object v3, v0, Le/k/a/b/x/a;->b:Ljava/io/InputStream;

    iget-object v4, v0, Le/k/a/b/x/a;->c:[B

    iget v5, v0, Le/k/a/b/x/a;->d:I

    iget v6, v0, Le/k/a/b/x/a;->e:I

    iget-boolean v7, v0, Le/k/a/b/x/a;->f:Z

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, p1

    move-object/from16 v21, v3

    move-object/from16 v22, p2

    move-object/from16 v24, v4

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v28, v7

    invoke-direct/range {v18 .. v28}, Le/k/a/b/x/i;-><init>(Le/k/a/b/w/b;ILjava/io/InputStream;Le/k/a/b/n;Le/k/a/b/y/a;[BIIIZ)V

    return-object v1

    .line 45
    :cond_15
    new-instance v2, Le/k/a/b/x/g;

    iget-object v9, v0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    .line 46
    iget-object v3, v9, Le/k/a/b/w/b;->b:Le/k/a/b/d;

    .line 47
    iget v4, v3, Le/k/a/b/d;->c:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_17

    const/16 v6, 0x10

    if-eq v4, v6, :cond_17

    const/16 v3, 0x20

    if-ne v4, v3, :cond_16

    .line 48
    new-instance v3, Le/k/a/b/w/j;

    iget-object v11, v0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    iget-object v12, v0, Le/k/a/b/x/a;->b:Ljava/io/InputStream;

    iget-object v13, v0, Le/k/a/b/x/a;->c:[B

    iget v14, v0, Le/k/a/b/x/a;->d:I

    iget v15, v0, Le/k/a/b/x/a;->e:I

    .line 49
    iget-object v4, v11, Le/k/a/b/w/b;->b:Le/k/a/b/d;

    .line 50
    iget-boolean v4, v4, Le/k/a/b/d;->b:Z

    move-object v10, v3

    move/from16 v16, v4

    .line 51
    invoke-direct/range {v10 .. v16}, Le/k/a/b/w/j;-><init>(Le/k/a/b/w/b;Ljava/io/InputStream;[BIIZ)V

    move-object v11, v3

    goto :goto_9

    .line 52
    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_17
    iget-object v12, v0, Le/k/a/b/x/a;->b:Ljava/io/InputStream;

    if-nez v12, :cond_18

    .line 54
    new-instance v12, Ljava/io/ByteArrayInputStream;

    iget-object v4, v0, Le/k/a/b/x/a;->c:[B

    iget v5, v0, Le/k/a/b/x/a;->d:I

    iget v6, v0, Le/k/a/b/x/a;->e:I

    invoke-direct {v12, v4, v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_8

    .line 55
    :cond_18
    iget v4, v0, Le/k/a/b/x/a;->d:I

    iget v5, v0, Le/k/a/b/x/a;->e:I

    if-ge v4, v5, :cond_19

    .line 56
    new-instance v4, Le/k/a/b/w/e;

    iget-object v11, v0, Le/k/a/b/x/a;->a:Le/k/a/b/w/b;

    iget-object v13, v0, Le/k/a/b/x/a;->c:[B

    iget v14, v0, Le/k/a/b/x/a;->d:I

    iget v15, v0, Le/k/a/b/x/a;->e:I

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Le/k/a/b/w/e;-><init>(Le/k/a/b/w/b;Ljava/io/InputStream;[BII)V

    move-object v12, v4

    .line 57
    :cond_19
    :goto_8
    new-instance v4, Ljava/io/InputStreamReader;

    .line 58
    iget-object v3, v3, Le/k/a/b/d;->a:Ljava/lang/String;

    .line 59
    invoke-direct {v4, v12, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v11, v4

    .line 60
    :goto_9
    invoke-virtual/range {p4 .. p5}, Le/k/a/b/y/b;->e(I)Le/k/a/b/y/b;

    move-result-object v13

    move-object v8, v2

    move/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Le/k/a/b/x/g;-><init>(Le/k/a/b/w/b;ILjava/io/Reader;Le/k/a/b/n;Le/k/a/b/y/b;)V

    return-object v2
.end method

.method public c(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/x/a;->e:I

    iget v1, p0, Le/k/a/b/x/a;->d:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    .line 2
    iget-object v2, p0, Le/k/a/b/x/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    .line 3
    :cond_0
    iget-object v3, p0, Le/k/a/b/x/a;->c:[B

    iget v4, p0, Le/k/a/b/x/a;->e:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    iget v1, p0, Le/k/a/b/x/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Le/k/a/b/x/a;->e:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Unsupported UCS-4 endianness ("

    const-string v2, ") detected"

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
