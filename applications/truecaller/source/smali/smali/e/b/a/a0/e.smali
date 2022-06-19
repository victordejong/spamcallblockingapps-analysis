.class public Le/b/a/a0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/a0/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/a/a0/m<",
        "Le/b/a/y/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/b/a/a0/e;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginArray()V

    .line 4
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 6
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endArray()V

    .line 7
    :cond_3
    iget v2, v0, Le/b/a/a0/e;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    iput v2, v0, Le/b/a/a0/e;->a:I

    .line 9
    :cond_4
    iget v2, v0, Le/b/a/a0/e;->a:I

    new-array v3, v2, [F

    .line 10
    new-array v2, v2, [I

    move v6, v4

    move v7, v6

    move v8, v7

    .line 11
    :goto_2
    iget v9, v0, Le/b/a/a0/e;->a:I

    mul-int/lit8 v9, v9, 0x4

    const-wide v10, 0x406fe00000000000L    # 255.0

    const/4 v12, 0x2

    if-ge v6, v9, :cond_9

    .line 12
    div-int/lit8 v9, v6, 0x4

    .line 13
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    .line 14
    rem-int/lit8 v15, v6, 0x4

    if-eqz v15, :cond_8

    if-eq v15, v5, :cond_7

    if-eq v15, v12, :cond_6

    const/4 v12, 0x3

    if-eq v15, v12, :cond_5

    goto :goto_3

    :cond_5
    mul-double/2addr v13, v10

    double-to-int v10, v13

    const/16 v11, 0xff

    .line 15
    invoke-static {v11, v7, v8, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    aput v10, v2, v9

    goto :goto_3

    :cond_6
    mul-double/2addr v13, v10

    double-to-int v8, v13

    goto :goto_3

    :cond_7
    mul-double/2addr v13, v10

    double-to-int v7, v13

    goto :goto_3

    :cond_8
    double-to-float v10, v13

    .line 16
    aput v10, v3, v9

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 17
    :cond_9
    new-instance v6, Le/b/a/y/k/c;

    invoke-direct {v6, v3, v2}, Le/b/a/y/k/c;-><init>([F[I)V

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v9, :cond_a

    goto/16 :goto_9

    .line 19
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v9

    div-int/2addr v2, v12

    .line 20
    new-array v3, v2, [D

    .line 21
    new-array v7, v2, [D

    move v8, v4

    .line 22
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_c

    .line 23
    rem-int/lit8 v12, v9, 0x2

    if-nez v12, :cond_b

    .line 24
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    aput-wide v12, v3, v8

    goto :goto_5

    .line 25
    :cond_b
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    aput-wide v12, v7, v8

    add-int/lit8 v8, v8, 0x1

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 26
    :cond_c
    :goto_6
    iget-object v1, v6, Le/b/a/y/k/c;->b:[I

    array-length v8, v1

    if-ge v4, v8, :cond_f

    .line 27
    aget v1, v1, v4

    .line 28
    iget-object v8, v6, Le/b/a/y/k/c;->a:[F

    .line 29
    aget v8, v8, v4

    float-to-double v8, v8

    move v12, v5

    :goto_7
    if-ge v12, v2, :cond_e

    add-int/lit8 v13, v12, -0x1

    .line 30
    aget-wide v14, v3, v13

    .line 31
    aget-wide v16, v3, v12

    .line 32
    aget-wide v18, v3, v12

    cmpl-double v18, v18, v8

    if-ltz v18, :cond_d

    sub-double/2addr v8, v14

    sub-double v16, v16, v14

    div-double v8, v8, v16

    .line 33
    aget-wide v13, v7, v13

    aget-wide v15, v7, v12

    .line 34
    sget-object v12, Le/b/a/b0/d;->a:Landroid/graphics/PointF;

    sub-double/2addr v15, v13

    mul-double/2addr v15, v8

    add-double/2addr v15, v13

    mul-double v8, v15, v10

    goto :goto_8

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v8, v2, -0x1

    .line 35
    aget-wide v8, v7, v8

    mul-double/2addr v8, v10

    :goto_8
    double-to-int v8, v8

    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 37
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v12

    .line 38
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 39
    invoke-static {v8, v9, v12, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 40
    iget-object v8, v6, Le/b/a/y/k/c;->b:[I

    .line 41
    aput v1, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_f
    :goto_9
    return-object v6
.end method
