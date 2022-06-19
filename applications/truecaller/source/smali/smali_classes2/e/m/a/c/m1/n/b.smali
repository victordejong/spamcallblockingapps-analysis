.class public final Le/m/a/c/m1/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/m1/n/b$c;,
        Le/m/a/c/m1/n/b$a;,
        Le/m/a/c/m1/n/b$g;,
        Le/m/a/c/m1/n/b$f;,
        Le/m/a/c/m1/n/b$e;,
        Le/m/a/c/m1/n/b$d;,
        Le/m/a/c/m1/n/b$b;,
        Le/m/a/c/m1/n/b$h;
    }
.end annotation


# static fields
.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Canvas;

.field public final d:Le/m/a/c/m1/n/b$b;

.field public final e:Le/m/a/c/m1/n/b$a;

.field public final f:Le/m/a/c/m1/n/b$h;

.field public g:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Le/m/a/c/m1/n/b;->h:[B

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Le/m/a/c/m1/n/b;->i:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_2

    sput-object v0, Le/m/a/c/m1/n/b;->j:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/n/b;->a:Landroid/graphics/Paint;

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/n/b;->b:Landroid/graphics/Paint;

    .line 7
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 10
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/n/b;->c:Landroid/graphics/Canvas;

    .line 11
    new-instance v0, Le/m/a/c/m1/n/b$b;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/m/a/c/m1/n/b$b;-><init>(IIIIII)V

    iput-object v0, p0, Le/m/a/c/m1/n/b;->d:Le/m/a/c/m1/n/b$b;

    .line 12
    new-instance v0, Le/m/a/c/m1/n/b$a;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    .line 14
    invoke-static {}, Le/m/a/c/m1/n/b;->b()[I

    move-result-object v2

    invoke-static {}, Le/m/a/c/m1/n/b;->c()[I

    move-result-object v3

    invoke-direct {v0, v4, v1, v2, v3}, Le/m/a/c/m1/n/b$a;-><init>(I[I[I[I)V

    iput-object v0, p0, Le/m/a/c/m1/n/b;->e:Le/m/a/c/m1/n/b$a;

    .line 15
    new-instance v0, Le/m/a/c/m1/n/b$h;

    invoke-direct {v0, p1, p2}, Le/m/a/c/m1/n/b$h;-><init>(II)V

    iput-object v0, p0, Le/m/a/c/m1/n/b;->f:Le/m/a/c/m1/n/b$h;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1000000
        -0x808081
    .end array-data
.end method

.method public static a(IILe/m/a/c/q1/s;)[B
    .locals 3

    .line 1
    new-array v0, p0, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b()[I
    .locals 9

    const/16 v0, 0x10

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v0, :cond_7

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    and-int/lit8 v7, v3, 0x4

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v2

    .line 1
    :goto_3
    invoke-static {v5, v4, v6, v7}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_7

    :cond_3
    and-int/lit8 v4, v3, 0x1

    const/16 v6, 0x7f

    if-eqz v4, :cond_4

    move v4, v6

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move v6, v2

    .line 2
    :goto_6
    invoke-static {v5, v4, v7, v6}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v1
.end method

.method public static c()[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_20

    const/16 v4, 0x8

    const/16 v5, 0xff

    if-ge v3, v4, :cond_3

    const/16 v4, 0x3f

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_1

    move v7, v5

    goto :goto_2

    :cond_1
    move v7, v2

    :goto_2
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    move v5, v2

    .line 1
    :goto_3
    invoke-static {v4, v6, v7, v5}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_3
    and-int/lit16 v6, v3, 0x88

    const/16 v7, 0xaa

    const/16 v8, 0x55

    if-eqz v6, :cond_19

    const/16 v9, 0x7f

    if-eq v6, v4, :cond_12

    const/16 v4, 0x80

    const/16 v7, 0x2b

    if-eq v6, v4, :cond_b

    const/16 v4, 0x88

    if-eq v6, v4, :cond_4

    goto/16 :goto_1c

    :cond_4
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_6

    move v6, v8

    goto :goto_5

    :cond_6
    move v6, v2

    :goto_5
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_7

    move v6, v7

    goto :goto_6

    :cond_7
    move v6, v2

    :goto_6
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_8

    move v9, v8

    goto :goto_7

    :cond_8
    move v9, v2

    :goto_7
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_9

    goto :goto_8

    :cond_9
    move v7, v2

    :goto_8
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_a

    goto :goto_9

    :cond_a
    move v8, v2

    :goto_9
    add-int/2addr v7, v8

    .line 2
    invoke-static {v5, v4, v6, v7}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_b
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_c

    move v4, v7

    goto :goto_a

    :cond_c
    move v4, v2

    :goto_a
    add-int/2addr v4, v9

    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_d

    move v6, v8

    goto :goto_b

    :cond_d
    move v6, v2

    :goto_b
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_e

    move v6, v7

    goto :goto_c

    :cond_e
    move v6, v2

    :goto_c
    add-int/2addr v6, v9

    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_f

    move v10, v8

    goto :goto_d

    :cond_f
    move v10, v2

    :goto_d
    add-int/2addr v6, v10

    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_10

    goto :goto_e

    :cond_10
    move v7, v2

    :goto_e
    add-int/2addr v7, v9

    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    move v8, v2

    :goto_f
    add-int/2addr v7, v8

    .line 3
    invoke-static {v5, v4, v6, v7}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    goto/16 :goto_1c

    :cond_12
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_13

    move v4, v8

    goto :goto_10

    :cond_13
    move v4, v2

    :goto_10
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_14

    move v5, v7

    goto :goto_11

    :cond_14
    move v5, v2

    :goto_11
    add-int/2addr v4, v5

    and-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_15

    move v5, v8

    goto :goto_12

    :cond_15
    move v5, v2

    :goto_12
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    move v6, v7

    goto :goto_13

    :cond_16
    move v6, v2

    :goto_13
    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x4

    if-eqz v6, :cond_17

    goto :goto_14

    :cond_17
    move v8, v2

    :goto_14
    and-int/lit8 v6, v3, 0x40

    if-eqz v6, :cond_18

    goto :goto_15

    :cond_18
    move v7, v2

    :goto_15
    add-int/2addr v8, v7

    .line 4
    invoke-static {v9, v4, v5, v8}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    goto :goto_1c

    :cond_19
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1a

    move v4, v8

    goto :goto_16

    :cond_1a
    move v4, v2

    :goto_16
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_1b

    move v6, v7

    goto :goto_17

    :cond_1b
    move v6, v2

    :goto_17
    add-int/2addr v4, v6

    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_1c

    move v6, v8

    goto :goto_18

    :cond_1c
    move v6, v2

    :goto_18
    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_1d

    move v9, v7

    goto :goto_19

    :cond_1d
    move v9, v2

    :goto_19
    add-int/2addr v6, v9

    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_1e

    goto :goto_1a

    :cond_1e
    move v8, v2

    :goto_1a
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_1f

    goto :goto_1b

    :cond_1f
    move v7, v2

    :goto_1b
    add-int/2addr v8, v7

    .line 5
    invoke-static {v5, v4, v6, v8}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v4

    aput v4, v1, v3

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_20
    return-object v1
.end method

.method public static d(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method public static e([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 24

    move/from16 v0, p2

    move-object/from16 v7, p5

    .line 1
    new-instance v8, Le/m/a/c/q1/s;

    move-object/from16 v1, p0

    invoke-direct {v8, v1}, Le/m/a/c/q1/s;-><init>([B)V

    move/from16 v1, p3

    move/from16 v10, p4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 2
    :goto_0
    invoke-virtual {v8}, Le/m/a/c/q1/s;->b()I

    move-result v2

    if-eqz v2, :cond_21

    const/16 v14, 0x8

    .line 3
    invoke-virtual {v8, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    const/16 v3, 0xf0

    if-eq v2, v3, :cond_20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x10

    .line 4
    invoke-static {v2, v14, v8}, Le/m/a/c/m1/n/b;->a(IILe/m/a/c/q1/s;)[B

    move-result-object v12

    goto :goto_0

    .line 5
    :pswitch_1
    invoke-static {v4, v14, v8}, Le/m/a/c/m1/n/b;->a(IILe/m/a/c/q1/s;)[B

    move-result-object v11

    goto :goto_0

    .line 6
    :pswitch_2
    invoke-static {v4, v4, v8}, Le/m/a/c/m1/n/b;->a(IILe/m/a/c/q1/s;)[B

    move-result-object v13

    goto :goto_0

    :pswitch_3
    move v6, v1

    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {v8, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {v8}, Le/m/a/c/q1/s;->e()Z

    move-result v2

    const/4 v4, 0x7

    if-nez v2, :cond_2

    .line 9
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v16, v1

    move/from16 v17, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move/from16 v16, v3

    const/4 v2, 0x0

    const/16 v17, 0x0

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    .line 11
    invoke-virtual {v8, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v4

    move/from16 v16, v1

    move/from16 v17, v2

    move v2, v4

    :goto_2
    if-eqz v17, :cond_3

    if-eqz v7, :cond_3

    .line 12
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v6

    int-to-float v4, v10

    add-int v1, v6, v17

    int-to-float v5, v1

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    move/from16 v18, v1

    move-object/from16 v1, p6

    move v9, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, p5

    .line 13
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_3
    move v9, v3

    move/from16 v18, v6

    :goto_3
    add-int v6, v18, v17

    if-eqz v16, :cond_4

    :goto_4
    move v1, v6

    goto/16 :goto_0

    :cond_4
    move v3, v9

    move/from16 v1, v16

    goto :goto_1

    :pswitch_4
    move v9, v3

    if-ne v0, v6, :cond_6

    if-nez v12, :cond_5

    .line 14
    sget-object v2, Le/m/a/c/m1/n/b;->j:[B

    goto :goto_5

    :cond_5
    move-object v2, v12

    :goto_5
    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    move v3, v1

    const/4 v1, 0x0

    .line 15
    :goto_7
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    if-eqz v2, :cond_7

    move/from16 v17, v1

    move/from16 v18, v9

    goto/16 :goto_c

    .line 16
    :cond_7
    invoke-virtual {v8}, Le/m/a/c/q1/s;->e()Z

    move-result v2

    if-nez v2, :cond_9

    .line 17
    invoke-virtual {v8, v6}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v2, v2, 0x2

    goto :goto_b

    :cond_8
    move v1, v9

    goto :goto_9

    .line 18
    :cond_9
    invoke-virtual {v8}, Le/m/a/c/q1/s;->e()Z

    move-result v2

    if-nez v2, :cond_a

    .line 19
    invoke-virtual {v8, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    add-int/2addr v2, v4

    .line 20
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v17

    :goto_8
    move/from16 v23, v17

    move/from16 v17, v2

    move/from16 v2, v23

    goto :goto_a

    .line 21
    :cond_a
    invoke-virtual {v8, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v9, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v6, :cond_b

    :goto_9
    move/from16 v17, v1

    const/4 v2, 0x0

    const/16 v18, 0x0

    goto :goto_c

    .line 22
    :cond_b
    invoke-virtual {v8, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    .line 23
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v17

    goto :goto_8

    .line 24
    :cond_c
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    .line 25
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v17

    goto :goto_8

    :goto_a
    move/from16 v18, v17

    move/from16 v17, v1

    goto :goto_c

    :cond_d
    move v2, v5

    goto :goto_b

    :cond_e
    move v2, v9

    :goto_b
    move/from16 v17, v1

    move/from16 v18, v2

    const/4 v2, 0x0

    :goto_c
    if-eqz v18, :cond_10

    if-eqz v7, :cond_10

    if-eqz v16, :cond_f

    .line 26
    aget-byte v2, v16, v2

    :cond_f
    aget v1, p1, v2

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v3

    int-to-float v1, v10

    add-int v4, v3, v18

    int-to-float v4, v4

    add-int/lit8 v5, v10, 0x1

    int-to-float v5, v5

    move/from16 v20, v1

    move-object/from16 v1, p6

    move/from16 v21, v3

    move/from16 v3, v20

    const/4 v15, 0x4

    const/4 v15, 0x2

    move v14, v6

    move-object/from16 v6, p5

    .line 27
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_d

    :cond_10
    move/from16 v21, v3

    move v15, v5

    move v14, v6

    :goto_d
    add-int v3, v21, v18

    if-eqz v17, :cond_11

    .line 28
    invoke-virtual {v8}, Le/m/a/c/q1/s;->c()V

    move v1, v3

    goto/16 :goto_0

    :cond_11
    move v6, v14

    move v5, v15

    move/from16 v1, v17

    const/4 v4, 0x4

    const/16 v14, 0x8

    goto/16 :goto_7

    :pswitch_5
    move v9, v3

    move v15, v5

    move v14, v6

    if-ne v0, v14, :cond_13

    if-nez v11, :cond_12

    .line 29
    sget-object v2, Le/m/a/c/m1/n/b;->i:[B

    goto :goto_e

    :cond_12
    move-object v2, v11

    :goto_e
    move-object/from16 v16, v2

    goto :goto_f

    :cond_13
    if-ne v0, v15, :cond_15

    if-nez v13, :cond_14

    .line 30
    sget-object v2, Le/m/a/c/m1/n/b;->h:[B

    goto :goto_e

    :cond_14
    move-object v2, v13

    goto :goto_e

    :cond_15
    const/16 v16, 0x0

    :goto_f
    move v6, v1

    const/4 v3, 0x0

    .line 31
    :goto_10
    invoke-virtual {v8, v15}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    if-eqz v1, :cond_16

    move/from16 v18, v3

    move/from16 v17, v9

    const/4 v4, 0x4

    const/16 v5, 0x8

    goto/16 :goto_15

    .line 32
    :cond_16
    invoke-virtual {v8}, Le/m/a/c/q1/s;->e()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 33
    invoke-virtual {v8, v14}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    add-int/2addr v1, v14

    .line 34
    invoke-virtual {v8, v15}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    const/4 v4, 0x4

    const/16 v5, 0x8

    :goto_11
    move/from16 v23, v2

    move v2, v1

    move/from16 v1, v23

    goto :goto_12

    .line 35
    :cond_17
    invoke-virtual {v8}, Le/m/a/c/q1/s;->e()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v9

    const/4 v4, 0x4

    const/16 v5, 0x8

    goto :goto_13

    .line 36
    :cond_18
    invoke-virtual {v8, v15}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    if-eqz v1, :cond_1c

    if-eq v1, v9, :cond_1b

    if-eq v1, v15, :cond_1a

    if-eq v1, v14, :cond_19

    const/4 v4, 0x4

    const/16 v5, 0x8

    goto :goto_14

    :cond_19
    const/16 v5, 0x8

    .line 37
    invoke-virtual {v8, v5}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    .line 38
    invoke-virtual {v8, v15}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    const/4 v4, 0x4

    goto :goto_11

    :cond_1a
    const/4 v4, 0x4

    const/16 v5, 0x8

    .line 39
    invoke-virtual {v8, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    .line 40
    invoke-virtual {v8, v15}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    goto :goto_11

    :goto_12
    move/from16 v17, v2

    move/from16 v18, v3

    goto :goto_15

    :cond_1b
    const/4 v4, 0x4

    const/16 v5, 0x8

    move v1, v15

    :goto_13
    move/from16 v17, v1

    move/from16 v18, v3

    const/4 v1, 0x0

    goto :goto_15

    :cond_1c
    const/4 v4, 0x4

    const/16 v5, 0x8

    move v3, v9

    :goto_14
    move/from16 v18, v3

    const/4 v1, 0x0

    const/16 v17, 0x0

    :goto_15
    if-eqz v17, :cond_1e

    if-eqz v7, :cond_1e

    if-eqz v16, :cond_1d

    .line 41
    aget-byte v1, v16, v1

    :cond_1d
    aget v1, p1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v6

    int-to-float v3, v10

    add-int v1, v6, v17

    int-to-float v1, v1

    add-int/lit8 v4, v10, 0x1

    int-to-float v4, v4

    move/from16 v19, v1

    move-object/from16 v1, p6

    move/from16 v21, v4

    const/16 v22, 0x4

    move/from16 v4, v19

    move/from16 v19, v5

    move/from16 v5, v21

    move/from16 v21, v6

    move-object/from16 v6, p5

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_1e
    move/from16 v22, v4

    move/from16 v19, v5

    move/from16 v21, v6

    :goto_16
    add-int v6, v21, v17

    if-eqz v18, :cond_1f

    .line 43
    invoke-virtual {v8}, Le/m/a/c/q1/s;->c()V

    goto/16 :goto_4

    :cond_1f
    move/from16 v3, v18

    goto/16 :goto_10

    :cond_20
    add-int/lit8 v10, v10, 0x2

    move/from16 v1, p3

    goto/16 :goto_0

    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(Le/m/a/c/q1/s;I)Le/m/a/c/m1/n/b$a;
    .locals 21

    move-object/from16 v0, p0

    const/16 v1, 0x8

    .line 1
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    .line 2
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->l(I)V

    add-int/lit8 v3, p1, -0x2

    const/4 v4, 0x4

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_0

    .line 4
    invoke-static {}, Le/m/a/c/m1/n/b;->b()[I

    move-result-object v6

    .line 5
    invoke-static {}, Le/m/a/c/m1/n/b;->c()[I

    move-result-object v7

    :goto_0
    const/4 v8, 0x2

    if-lez v3, :cond_4

    .line 6
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v9

    .line 7
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v10

    add-int/lit8 v3, v3, -0x2

    and-int/lit16 v11, v10, 0x80

    if-eqz v11, :cond_0

    move-object v11, v5

    goto :goto_1

    :cond_0
    and-int/lit8 v11, v10, 0x40

    if-eqz v11, :cond_1

    move-object v11, v6

    goto :goto_1

    :cond_1
    move-object v11, v7

    :goto_1
    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v8

    .line 9
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v10

    .line 10
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v12

    .line 11
    invoke-virtual {v0, v1}, Le/m/a/c/q1/s;->f(I)I

    move-result v13

    add-int/lit8 v3, v3, -0x4

    goto :goto_2

    :cond_2
    const/4 v10, 0x6

    .line 12
    invoke-virtual {v0, v10}, Le/m/a/c/q1/s;->f(I)I

    move-result v12

    shl-int/2addr v12, v8

    .line 13
    invoke-virtual {v0, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v13

    shl-int/2addr v13, v4

    .line 14
    invoke-virtual {v0, v4}, Le/m/a/c/q1/s;->f(I)I

    move-result v14

    shl-int/2addr v14, v4

    .line 15
    invoke-virtual {v0, v8}, Le/m/a/c/q1/s;->f(I)I

    move-result v8

    shl-int/2addr v8, v10

    add-int/lit8 v3, v3, -0x2

    move v10, v13

    move v13, v8

    move v8, v12

    move v12, v14

    :goto_2
    const/16 v15, 0xff

    if-nez v8, :cond_3

    move v13, v15

    const/4 v10, 0x0

    const/4 v12, 0x0

    :cond_3
    and-int/2addr v13, v15

    rsub-int v13, v13, 0xff

    int-to-byte v13, v13

    move/from16 v16, v2

    int-to-double v1, v8

    const-wide v17, 0x3ff66e978d4fdf3bL    # 1.402

    add-int/lit8 v10, v10, -0x80

    move-object v8, v5

    int-to-double v4, v10

    mul-double v17, v17, v4

    add-double v14, v17, v1

    double-to-int v14, v14

    const-wide v17, 0x3fd60663c74fb54aL    # 0.34414

    add-int/lit8 v12, v12, -0x80

    move-object v15, v11

    int-to-double v10, v12

    mul-double v17, v17, v10

    sub-double v17, v1, v17

    const-wide v19, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v4, v4, v19

    sub-double v4, v17, v4

    double-to-int v4, v4

    const-wide v17, 0x3ffc5a1cac083127L    # 1.772

    mul-double v10, v10, v17

    add-double/2addr v10, v1

    double-to-int v1, v10

    const/4 v2, 0x0

    const/16 v5, 0xff

    .line 16
    invoke-static {v14, v2, v5}, Le/m/a/c/q1/d0;->f(III)I

    move-result v10

    .line 17
    invoke-static {v4, v2, v5}, Le/m/a/c/q1/d0;->f(III)I

    move-result v4

    invoke-static {v1, v2, v5}, Le/m/a/c/q1/d0;->f(III)I

    move-result v1

    .line 18
    invoke-static {v13, v10, v4, v1}, Le/m/a/c/m1/n/b;->d(IIII)I

    move-result v1

    aput v1, v15, v9

    move-object v5, v8

    move/from16 v2, v16

    const/16 v1, 0x8

    const/4 v4, 0x4

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v2

    move-object v8, v5

    .line 19
    new-instance v0, Le/m/a/c/m1/n/b$a;

    move/from16 v1, v16

    invoke-direct {v0, v1, v8, v6, v7}, Le/m/a/c/m1/n/b$a;-><init>(I[I[I[I)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x1000000
        -0x808081
    .end array-data
.end method

.method public static g(Le/m/a/c/q1/s;)Le/m/a/c/m1/n/b$c;
    .locals 6

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Le/m/a/c/q1/s;->f(I)I

    move-result v1

    const/4 v2, 0x4

    .line 2
    invoke-virtual {p0, v2}, Le/m/a/c/q1/s;->l(I)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p0, v2}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    .line 4
    invoke-virtual {p0}, Le/m/a/c/q1/s;->e()Z

    move-result v3

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, v4}, Le/m/a/c/q1/s;->l(I)V

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    const/16 v2, 0x8

    .line 6
    invoke-virtual {p0, v2}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    mul-int/2addr v2, v0

    .line 7
    invoke-virtual {p0, v2}, Le/m/a/c/q1/s;->l(I)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Le/m/a/c/q1/s;->f(I)I

    move-result v2

    .line 9
    invoke-virtual {p0, v0}, Le/m/a/c/q1/s;->f(I)I

    move-result v0

    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 10
    new-array v5, v2, [B

    .line 11
    invoke-virtual {p0, v5, v4, v2}, Le/m/a/c/q1/s;->h([BII)V

    :cond_1
    if-lez v0, :cond_2

    .line 12
    new-array v2, v0, [B

    .line 13
    invoke-virtual {p0, v2, v4, v0}, Le/m/a/c/q1/s;->h([BII)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v5

    .line 14
    :goto_1
    new-instance p0, Le/m/a/c/m1/n/b$c;

    invoke-direct {p0, v1, v3, v5, v2}, Le/m/a/c/m1/n/b$c;-><init>(IZ[B[B)V

    return-object p0
.end method
