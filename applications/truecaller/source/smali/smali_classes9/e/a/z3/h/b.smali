.class public final Le/a/z3/h/b;
.super Le/f/a/n/q/d/f;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public final c:Landroid/content/Context;

.field public final d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/f/a/n/q/d/f;-><init>()V

    iput p2, p0, Le/a/z3/h/b;->d:F

    const-string p2, "UTF-8"

    .line 2
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    const-string v0, "Charset.forName(\"UTF-8\")"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.truecaller.glide.transform.IntrinsicBlurTransformation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/z3/h/b;->b:[B

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/z3/h/b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 2

    const-string v0, "messageDigest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/z3/h/b;->b:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Le/a/z3/h/b;->d:F

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "ByteBuffer.allocate(4).putFloat(radius).array()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public c(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "pool"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/16 v4, 0x8

    if-lt v0, v4, :cond_12

    if-ge v3, v4, :cond_0

    goto/16 :goto_e

    .line 3
    :cond_0
    iget-object v0, v1, Le/a/z3/h/b;->c:Landroid/content/Context;

    const-string v3, "appContext"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    .line 4
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-boolean v3, Le/a/z3/f;->a:Z

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 6
    const-class v3, Le/a/z3/f;

    invoke-static {v3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    monitor-enter v3

    .line 7
    :try_start_0
    sget-boolean v6, Le/a/z3/f;->a:Z

    if-nez v6, :cond_1

    .line 8
    sput-boolean v5, Le/a/z3/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    sput-object v0, Le/a/z3/f;->b:Landroid/renderscript/RenderScript;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    :cond_1
    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 12
    :cond_2
    :goto_1
    sget-object v0, Le/a/z3/f;->b:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_3

    .line 13
    :try_start_3
    invoke-virtual {v1, v0, v2}, Le/a/z3/h/b;->d(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    move-object v3, v0

    const-string v0, "Could not blur image"

    .line 14
    invoke-static {v3, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 16
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 17
    div-int/lit8 v6, v0, 0x4

    div-int/lit8 v7, v3, 0x4

    invoke-static {v2, v6, v7, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v6, "scaledBitmap"

    .line 18
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, v1, Le/a/z3/h/b;->d:F

    float-to-int v6, v6

    if-ge v6, v5, :cond_4

    move/from16 p4, v0

    move-object v7, v2

    move-object/from16 v21, v7

    move/from16 v16, v3

    goto/16 :goto_d

    .line 19
    :cond_4
    invoke-static {v2}, Le/a/e/a2;->D(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const-string v8, "bitmap"

    .line 20
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 21
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int v13, v15, v14

    .line 22
    new-array v12, v13, [I

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v7

    move-object v9, v12

    move v11, v15

    move-object/from16 v18, v12

    move/from16 v12, v16

    move v4, v13

    move/from16 v13, v17

    move/from16 p2, v14

    move v14, v15

    move v5, v15

    move/from16 v15, p2

    .line 23
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v15, v5, -0x1

    move/from16 v14, p2

    add-int/lit8 v8, v14, -0x1

    add-int v9, v6, v6

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 24
    new-array v11, v4, [I

    .line 25
    new-array v12, v4, [I

    .line 26
    new-array v4, v4, [I

    .line 27
    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    new-array v13, v13, [I

    add-int/lit8 v16, v9, 0x1

    shr-int/lit8 v16, v16, 0x1

    mul-int v10, v16, v16

    mul-int/lit16 v1, v10, 0x100

    move/from16 p4, v0

    .line 28
    new-array v0, v1, [I

    move/from16 v16, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_5

    .line 29
    div-int v17, v3, v10

    aput v17, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 30
    :cond_5
    new-array v1, v9, [[I

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v9, :cond_6

    const/4 v10, 0x3

    new-array v10, v10, [I

    aput-object v10, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v6, 0x1

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x2

    if-ge v10, v14, :cond_b

    move-object/from16 v21, v2

    neg-int v2, v6

    move-object/from16 v30, v7

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move v7, v2

    const/4 v2, 0x0

    :goto_5
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v7, v6, :cond_8

    move/from16 v34, v8

    move/from16 v33, v14

    const/4 v14, 0x0

    .line 31
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v8, v8, v17

    aget v8, v18, v8

    add-int v35, v7, v6

    .line 32
    aget-object v35, v1, v35

    and-int v32, v8, v32

    shr-int/lit8 v32, v32, 0x10

    .line 33
    aput v32, v35, v14

    and-int v31, v8, v31

    const/16 v32, 0x8

    shr-int/lit8 v31, v31, 0x8

    const/16 v32, 0x1

    .line 34
    aput v31, v35, v32

    and-int/lit16 v8, v8, 0xff

    .line 35
    aput v8, v35, v20

    .line 36
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int v8, v3, v8

    .line 37
    aget v31, v35, v14

    mul-int v31, v31, v8

    add-int v2, v31, v2

    .line 38
    aget v31, v35, v32

    mul-int v31, v31, v8

    add-int v22, v31, v22

    .line 39
    aget v31, v35, v20

    mul-int v31, v31, v8

    add-int v23, v31, v23

    if-lez v7, :cond_7

    .line 40
    aget v8, v35, v14

    add-int v27, v27, v8

    .line 41
    aget v8, v35, v32

    add-int v28, v28, v8

    .line 42
    aget v8, v35, v20

    add-int v29, v29, v8

    goto :goto_6

    .line 43
    :cond_7
    aget v8, v35, v14

    add-int v24, v24, v8

    .line 44
    aget v8, v35, v32

    add-int v25, v25, v8

    .line 45
    aget v8, v35, v20

    add-int v26, v26, v8

    :goto_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v14, v33

    move/from16 v8, v34

    goto :goto_5

    :cond_8
    move/from16 v34, v8

    move/from16 v33, v14

    move v7, v2

    move v8, v6

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v5, :cond_a

    .line 46
    aget v14, v0, v7

    aput v14, v11, v17

    .line 47
    aget v14, v0, v22

    aput v14, v12, v17

    .line 48
    aget v14, v0, v23

    aput v14, v4, v17

    sub-int v7, v7, v24

    sub-int v22, v22, v25

    sub-int v23, v23, v26

    sub-int v14, v8, v6

    add-int/2addr v14, v9

    .line 49
    rem-int/2addr v14, v9

    aget-object v14, v1, v14

    const/16 v35, 0x0

    .line 50
    aget v36, v14, v35

    sub-int v24, v24, v36

    const/16 v35, 0x1

    .line 51
    aget v36, v14, v35

    sub-int v25, v25, v36

    .line 52
    aget v36, v14, v20

    sub-int v26, v26, v36

    if-nez v10, :cond_9

    add-int v36, v2, v6

    move-object/from16 v37, v0

    add-int/lit8 v0, v36, 0x1

    .line 53
    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, v13, v2

    goto :goto_8

    :cond_9
    move-object/from16 v37, v0

    .line 54
    :goto_8
    aget v0, v13, v2

    add-int v0, v19, v0

    aget v0, v18, v0

    and-int v35, v0, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v36, 0x0

    .line 55
    aput v35, v14, v36

    and-int v35, v0, v31

    const/16 v38, 0x8

    shr-int/lit8 v35, v35, 0x8

    const/16 v38, 0x1

    .line 56
    aput v35, v14, v38

    and-int/lit16 v0, v0, 0xff

    .line 57
    aput v0, v14, v20

    .line 58
    aget v0, v14, v36

    add-int v27, v27, v0

    .line 59
    aget v0, v14, v38

    add-int v28, v28, v0

    .line 60
    aget v0, v14, v20

    add-int v29, v29, v0

    add-int v7, v7, v27

    add-int v22, v22, v28

    add-int v23, v23, v29

    add-int/lit8 v8, v8, 0x1

    .line 61
    rem-int/2addr v8, v9

    .line 62
    rem-int v0, v8, v9

    aget-object v0, v1, v0

    const/4 v14, 0x0

    .line 63
    aget v35, v0, v14

    add-int v24, v24, v35

    const/16 v35, 0x1

    .line 64
    aget v36, v0, v35

    add-int v25, v25, v36

    .line 65
    aget v36, v0, v20

    add-int v26, v26, v36

    .line 66
    aget v36, v0, v14

    sub-int v27, v27, v36

    .line 67
    aget v14, v0, v35

    sub-int v28, v28, v14

    .line 68
    aget v0, v0, v20

    sub-int v29, v29, v0

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v37

    goto/16 :goto_7

    :cond_a
    move-object/from16 v37, v0

    add-int v19, v19, v5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v21

    move-object/from16 v7, v30

    move/from16 v14, v33

    move/from16 v8, v34

    goto/16 :goto_4

    :cond_b
    move-object/from16 v37, v0

    move-object/from16 v21, v2

    move-object/from16 v30, v7

    move/from16 v34, v8

    move/from16 v33, v14

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v5, :cond_11

    neg-int v0, v6

    mul-int v15, v0, v5

    move/from16 v24, v9

    move-object/from16 v23, v13

    move v9, v15

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    move v13, v0

    const/4 v0, 0x0

    :goto_a
    if-gt v13, v6, :cond_e

    move/from16 v25, v5

    const/4 v5, 0x0

    .line 69
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v26, v26, v14

    add-int v27, v13, v6

    .line 70
    aget-object v27, v1, v27

    .line 71
    aget v28, v11, v26

    aput v28, v27, v5

    .line 72
    aget v5, v12, v26

    const/16 v28, 0x1

    aput v5, v27, v28

    .line 73
    aget v5, v4, v26

    aput v5, v27, v20

    .line 74
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v5, v3, v5

    .line 75
    aget v28, v11, v26

    mul-int v28, v28, v5

    add-int v0, v28, v0

    .line 76
    aget v28, v12, v26

    mul-int v28, v28, v5

    add-int v2, v28, v2

    .line 77
    aget v26, v4, v26

    mul-int v26, v26, v5

    add-int v7, v26, v7

    if-lez v13, :cond_c

    const/4 v5, 0x0

    .line 78
    aget v26, v27, v5

    add-int v17, v17, v26

    const/16 v26, 0x1

    .line 79
    aget v28, v27, v26

    add-int v19, v19, v28

    .line 80
    aget v27, v27, v20

    add-int v22, v22, v27

    goto :goto_b

    :cond_c
    const/4 v5, 0x0

    const/16 v26, 0x1

    .line 81
    aget v28, v27, v5

    add-int v8, v8, v28

    .line 82
    aget v5, v27, v26

    add-int/2addr v10, v5

    .line 83
    aget v5, v27, v20

    add-int/2addr v15, v5

    :goto_b
    move/from16 v5, v34

    if-ge v13, v5, :cond_d

    add-int v9, v9, v25

    :cond_d
    add-int/lit8 v13, v13, 0x1

    move/from16 v34, v5

    move/from16 v5, v25

    goto :goto_a

    :cond_e
    move/from16 v25, v5

    move/from16 v5, v34

    move/from16 v27, v6

    move/from16 v26, v14

    move/from16 v13, v33

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v13, :cond_10

    const/high16 v28, -0x1000000

    .line 84
    aget v29, v18, v26

    and-int v28, v29, v28

    aget v29, v37, v0

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v37, v2

    const/16 v31, 0x8

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v37, v7

    or-int v28, v28, v29

    aput v28, v18, v26

    sub-int/2addr v0, v8

    sub-int/2addr v2, v10

    sub-int/2addr v7, v15

    sub-int v28, v27, v6

    add-int v28, v28, v24

    .line 85
    rem-int v28, v28, v24

    aget-object v28, v1, v28

    const/16 v29, 0x0

    .line 86
    aget v32, v28, v29

    sub-int v8, v8, v32

    const/16 v29, 0x1

    .line 87
    aget v32, v28, v29

    sub-int v10, v10, v32

    .line 88
    aget v29, v28, v20

    sub-int v15, v15, v29

    move/from16 v29, v6

    if-nez v14, :cond_f

    add-int v6, v9, v3

    .line 89
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    mul-int v6, v6, v25

    aput v6, v23, v9

    .line 90
    :cond_f
    aget v6, v23, v9

    add-int/2addr v6, v14

    .line 91
    aget v32, v11, v6

    const/16 v33, 0x0

    aput v32, v28, v33

    .line 92
    aget v32, v12, v6

    const/16 v34, 0x1

    aput v32, v28, v34

    .line 93
    aget v6, v4, v6

    aput v6, v28, v20

    .line 94
    aget v6, v28, v33

    add-int v17, v17, v6

    .line 95
    aget v6, v28, v34

    add-int v19, v19, v6

    .line 96
    aget v6, v28, v20

    add-int v22, v22, v6

    add-int v0, v0, v17

    add-int v2, v2, v19

    add-int v7, v7, v22

    add-int/lit8 v27, v27, 0x1

    .line 97
    rem-int v27, v27, v24

    .line 98
    aget-object v6, v1, v27

    const/16 v28, 0x0

    .line 99
    aget v32, v6, v28

    add-int v8, v8, v32

    const/16 v32, 0x1

    .line 100
    aget v33, v6, v32

    add-int v10, v10, v33

    .line 101
    aget v33, v6, v20

    add-int v15, v15, v33

    .line 102
    aget v33, v6, v28

    sub-int v17, v17, v33

    .line 103
    aget v33, v6, v32

    sub-int v19, v19, v33

    .line 104
    aget v6, v6, v20

    sub-int v22, v22, v6

    add-int v26, v26, v25

    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v29

    goto/16 :goto_c

    :cond_10
    move/from16 v29, v6

    const/16 v28, 0x0

    const/16 v31, 0x8

    add-int/lit8 v14, v14, 0x1

    move/from16 v34, v5

    move/from16 v33, v13

    move-object/from16 v13, v23

    move/from16 v9, v24

    move/from16 v5, v25

    goto/16 :goto_9

    :cond_11
    move/from16 v25, v5

    move/from16 v13, v33

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object/from16 v8, v30

    move-object/from16 v9, v18

    move/from16 v11, v25

    move v1, v13

    move v13, v0

    move v0, v1

    move/from16 v14, v25

    move v15, v0

    .line 105
    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v7, v30

    .line 106
    :goto_d
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    move/from16 v0, p4

    move/from16 v1, v16

    const/4 v2, 0x1

    .line 107
    invoke-static {v7, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    const-string v1, "result"

    .line 109
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_12
    :goto_e
    return-object v2
.end method

.method public final d(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    div-int/lit8 v2, v0, 0x4

    div-int/lit8 v3, v1, 0x4

    const/4 v4, 0x1

    invoke-static {p2, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    const-string v3, "scaledInput"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    .line 6
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    .line 7
    iget v5, p0, Le/a/z3/h/b;->d:F

    invoke-virtual {p1, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 8
    invoke-virtual {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 9
    invoke-virtual {p1, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 10
    invoke-virtual {v3, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-static {p2, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const-string p2, "result"

    .line 14
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/a/z3/h/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    iget v1, p0, Le/a/z3/h/b;->d:F

    check-cast p1, Le/a/z3/h/b;

    iget p1, p1, Le/a/z3/h/b;->d:F

    cmpg-float p1, v1, p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/z3/h/b;->d:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/z3/h/b;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
