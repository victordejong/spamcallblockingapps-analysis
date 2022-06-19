.class public final Ln3/y/b/a/x0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/x0/k$a;,
        Ln3/y/b/a/x0/k$b;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field public static final c:Ljava/lang/Object;

.field public static d:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Ln3/y/b/a/x0/k;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Ln3/y/b/a/x0/k;->b:[F

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/y/b/a/x0/k;->c:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 4
    sput-object v0, Ln3/y/b/a/x0/k;->d:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 2
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 3
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static b([BII[Z)I
    .locals 7

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 1
    :goto_0
    invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    const/4 v3, 0x2

    if-eqz p3, :cond_4

    .line 2
    aget-boolean v4, p3, v1

    if-eqz v4, :cond_2

    .line 3
    aput-boolean v1, p3, v1

    .line 4
    aput-boolean v1, p3, v2

    .line 5
    aput-boolean v1, p3, v3

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    if-le v0, v2, :cond_3

    .line 6
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    .line 7
    aput-boolean v1, p3, v1

    .line 8
    aput-boolean v1, p3, v2

    .line 9
    aput-boolean v1, p3, v3

    sub-int/2addr p1, v3

    return p1

    :cond_3
    if-le v0, v3, :cond_4

    .line 10
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 11
    aput-boolean v1, p3, v1

    .line 12
    aput-boolean v1, p3, v2

    .line 13
    aput-boolean v1, p3, v3

    sub-int/2addr p1, v2

    return p1

    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_1
    if-ge p1, v4, :cond_8

    .line 14
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xfe

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v5, p1, -0x2

    .line 15
    aget-byte v6, p0, v5

    if-nez v6, :cond_7

    add-int/lit8 v6, p1, -0x1

    aget-byte v6, p0, v6

    if-nez v6, :cond_7

    aget-byte v6, p0, p1

    if-ne v6, v2, :cond_7

    if-eqz p3, :cond_6

    .line 16
    aput-boolean v1, p3, v1

    .line 17
    aput-boolean v1, p3, v2

    .line 18
    aput-boolean v1, p3, v3

    :cond_6
    return v5

    :cond_7
    add-int/lit8 p1, p1, -0x2

    :goto_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_8
    if-eqz p3, :cond_f

    if-le v0, v3, :cond_a

    add-int/lit8 p1, p2, -0x3

    .line 19
    aget-byte p1, p0, p1

    if-nez p1, :cond_9

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_9

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_9

    goto :goto_3

    :cond_9
    move p1, v1

    goto :goto_4

    :cond_a
    if-ne v0, v3, :cond_b

    .line 20
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_9

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_9

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_9

    goto :goto_3

    .line 21
    :cond_b
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_9

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_9

    :goto_3
    move p1, v2

    :goto_4
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_c

    add-int/lit8 p1, p2, -0x2

    .line 22
    aget-byte p1, p0, p1

    if-nez p1, :cond_d

    aget-byte p1, p0, v4

    if-nez p1, :cond_d

    goto :goto_5

    .line 23
    :cond_c
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_d

    aget-byte p1, p0, v4

    if-nez p1, :cond_d

    :goto_5
    move p1, v2

    goto :goto_6

    :cond_d
    move p1, v1

    :goto_6
    aput-boolean p1, p3, v2

    .line 24
    aget-byte p0, p0, v4

    if-nez p0, :cond_e

    move v1, v2

    :cond_e
    aput-boolean v1, p3, v3

    :cond_f
    return p2
.end method

.method public static c([BII)Ln3/y/b/a/x0/k$a;
    .locals 1

    .line 1
    new-instance v0, Ln3/y/b/a/x0/n;

    invoke-direct {v0, p0, p1, p2}, Ln3/y/b/a/x0/n;-><init>([BII)V

    const/16 p0, 0x8

    .line 2
    invoke-virtual {v0, p0}, Ln3/y/b/a/x0/n;->j(I)V

    .line 3
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result p0

    .line 4
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result p1

    .line 5
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->i()V

    .line 6
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result p2

    .line 7
    new-instance v0, Ln3/y/b/a/x0/k$a;

    invoke-direct {v0, p0, p1, p2}, Ln3/y/b/a/x0/k$a;-><init>(IIZ)V

    return-object v0
.end method

.method public static d([BII)Ln3/y/b/a/x0/k$b;
    .locals 18

    .line 1
    new-instance v0, Ln3/y/b/a/x0/n;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ln3/y/b/a/x0/n;-><init>([BII)V

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/n;->j(I)V

    .line 3
    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v3

    .line 4
    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v4

    .line 5
    invoke-virtual {v0, v1}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v5

    .line 6
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v6

    const/16 v2, 0x64

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v3, v2, :cond_1

    const/16 v2, 0x6e

    if-eq v3, v2, :cond_1

    const/16 v2, 0x7a

    if-eq v3, v2, :cond_1

    const/16 v2, 0xf4

    if-eq v3, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v3, v2, :cond_1

    const/16 v2, 0x53

    if-eq v3, v2, :cond_1

    const/16 v2, 0x56

    if-eq v3, v2, :cond_1

    const/16 v2, 0x76

    if-eq v3, v2, :cond_1

    const/16 v2, 0x80

    if-eq v3, v2, :cond_1

    const/16 v2, 0x8a

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v10, v1

    move v2, v8

    goto :goto_7

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 8
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    .line 10
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    .line 11
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->i()V

    .line 12
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eq v2, v7, :cond_3

    move v7, v1

    goto :goto_2

    :cond_3
    const/16 v7, 0xc

    :goto_2
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v7, :cond_8

    .line 13
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x6

    if-ge v10, v11, :cond_4

    const/16 v11, 0x10

    goto :goto_4

    :cond_4
    const/16 v11, 0x40

    :goto_4
    const/4 v12, 0x0

    move v13, v1

    move v14, v13

    :goto_5
    if-ge v12, v11, :cond_7

    if-eqz v13, :cond_5

    .line 14
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->g()I

    move-result v13

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x100

    .line 15
    rem-int/lit16 v13, v13, 0x100

    :cond_5
    if-nez v13, :cond_6

    goto :goto_6

    :cond_6
    move v14, v13

    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    move v10, v9

    .line 16
    :goto_7
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v1

    add-int/lit8 v12, v1, 0x4

    .line 17
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v13

    if-nez v13, :cond_9

    .line 18
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    goto :goto_9

    :cond_9
    if-ne v13, v8, :cond_b

    .line 19
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v1

    .line 20
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->g()I

    .line 21
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->g()I

    .line 22
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v7

    int-to-long v14, v7

    const/4 v7, 0x0

    :goto_8
    int-to-long v8, v7

    cmp-long v8, v8, v14

    if-gez v8, :cond_a

    .line 23
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    move v15, v1

    move v14, v7

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_9
    const/4 v7, 0x0

    move v14, v1

    move v15, v7

    .line 24
    :goto_a
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    .line 25
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->i()V

    .line 26
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v1

    const/4 v7, 0x1

    add-int/2addr v1, v7

    .line 27
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v8

    add-int/2addr v8, v7

    .line 28
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v11

    rsub-int/lit8 v9, v11, 0x2

    mul-int/2addr v9, v8

    if-nez v11, :cond_c

    .line 29
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->i()V

    .line 30
    :cond_c
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->i()V

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v9, v9, 0x10

    .line 31
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 32
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v8

    .line 33
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v7

    move/from16 p1, v15

    .line 34
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v15

    move/from16 p2, v14

    .line 35
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->f()I

    move-result v14

    if-nez v2, :cond_d

    rsub-int/lit8 v2, v11, 0x2

    move/from16 p0, v13

    const/4 v13, 0x1

    goto :goto_d

    :cond_d
    const/16 v16, 0x2

    move/from16 p0, v13

    const/4 v13, 0x3

    if-ne v2, v13, :cond_e

    const/4 v13, 0x1

    move/from16 v17, v13

    goto :goto_b

    :cond_e
    move/from16 v17, v16

    :goto_b
    const/4 v13, 0x1

    if-ne v2, v13, :cond_f

    goto :goto_c

    :cond_f
    move/from16 v16, v13

    :goto_c
    rsub-int/lit8 v2, v11, 0x2

    mul-int v2, v2, v16

    move/from16 v13, v17

    :goto_d
    invoke-static {v8, v7, v13, v1}, Le/d/c/a/a;->n1(IIII)I

    move-result v1

    invoke-static {v15, v14, v2, v9}, Le/d/c/a/a;->n1(IIII)I

    move-result v2

    move v7, v1

    move v8, v2

    goto :goto_e

    :cond_10
    move/from16 p0, v13

    move/from16 p2, v14

    move/from16 p1, v15

    move v7, v1

    move v8, v9

    :goto_e
    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 37
    invoke-virtual {v0}, Ln3/y/b/a/x0/n;->d()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x8

    .line 38
    invoke-virtual {v0, v2}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v2

    const/16 v9, 0xff

    if-ne v2, v9, :cond_11

    const/16 v2, 0x10

    .line 39
    invoke-virtual {v0, v2}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v9

    .line 40
    invoke-virtual {v0, v2}, Ln3/y/b/a/x0/n;->e(I)I

    move-result v0

    if-eqz v9, :cond_12

    if-eqz v0, :cond_12

    int-to-float v1, v9

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_f

    .line 41
    :cond_11
    sget-object v0, Ln3/y/b/a/x0/k;->b:[F

    array-length v9, v0

    if-ge v2, v9, :cond_12

    .line 42
    aget v0, v0, v2

    move v9, v0

    goto :goto_10

    :cond_12
    :goto_f
    move v9, v1

    .line 43
    :goto_10
    new-instance v0, Ln3/y/b/a/x0/k$b;

    move-object v2, v0

    move/from16 v13, p0

    move/from16 v14, p2

    move/from16 v15, p1

    invoke-direct/range {v2 .. v15}, Ln3/y/b/a/x0/k$b;-><init>(IIIIIIFZZIIIZ)V

    return-object v0
.end method

.method public static e([BI)I
    .locals 8

    .line 1
    sget-object v0, Ln3/y/b/a/x0/k;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_4

    :goto_1
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_2

    .line 2
    :try_start_0
    aget-byte v4, p0, v2

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_2
    if-ge v2, p1, :cond_0

    .line 3
    sget-object v4, Ln3/y/b/a/x0/k;->d:[I

    array-length v5, v4

    if-gt v5, v3, :cond_3

    .line 4
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Ln3/y/b/a/x0/k;->d:[I

    .line 5
    :cond_3
    sget-object v4, Ln3/y/b/a/x0/k;->d:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :cond_4
    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_3
    if-ge v2, v3, :cond_5

    .line 6
    sget-object v6, Ln3/y/b/a/x0/k;->d:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 7
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 8
    aput-byte v1, p0, v4

    add-int/lit8 v4, v7, 0x1

    .line 9
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    sub-int v1, p1, v4

    .line 10
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
