.class public Ln3/i/a/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ln3/i/a/b/p;",
        ">;"
    }
.end annotation


# static fields
.field public static o:[Ljava/lang/String;


# instance fields
.field public a:Ln3/i/a/a/c;

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:I

.field public k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ln3/i/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:[D

.field public n:[D


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/i/a/b/p;->o:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/a/b/p;->b:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3
    iput v1, p0, Ln3/i/a/b/p;->i:F

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Ln3/i/a/b/p;->j:I

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ln3/i/a/b/p;->k:Ljava/util/LinkedHashMap;

    .line 6
    iput v0, p0, Ln3/i/a/b/p;->l:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 7
    iput-object v1, p0, Ln3/i/a/b/p;->m:[D

    new-array v0, v0, [D

    .line 8
    iput-object v0, p0, Ln3/i/a/b/p;->n:[D

    return-void
.end method

.method public constructor <init>(IILn3/i/a/b/h;Ln3/i/a/b/p;Ln3/i/a/b/p;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 10
    iput v4, v0, Ln3/i/a/b/p;->b:I

    const/high16 v5, 0x7fc00000    # Float.NaN

    .line 11
    iput v5, v0, Ln3/i/a/b/p;->i:F

    const/4 v6, -0x1

    .line 12
    iput v6, v0, Ln3/i/a/b/p;->j:I

    .line 13
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, v0, Ln3/i/a/b/p;->k:Ljava/util/LinkedHashMap;

    .line 14
    iput v4, v0, Ln3/i/a/b/p;->l:I

    const/16 v4, 0x12

    new-array v6, v4, [D

    .line 15
    iput-object v6, v0, Ln3/i/a/b/p;->m:[D

    new-array v4, v4, [D

    .line 16
    iput-object v4, v0, Ln3/i/a/b/p;->n:[D

    .line 17
    iget v4, v1, Ln3/i/a/b/h;->m:I

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x42c80000    # 100.0f

    if-eq v4, v7, :cond_b

    const/4 v7, 0x2

    if-eq v4, v7, :cond_6

    .line 18
    iget v4, v1, Ln3/i/a/b/b;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    .line 19
    iput v4, v0, Ln3/i/a/b/p;->c:F

    .line 20
    iget v9, v1, Ln3/i/a/b/h;->h:I

    iput v9, v0, Ln3/i/a/b/p;->b:I

    .line 21
    iget v9, v1, Ln3/i/a/b/h;->i:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v4

    goto :goto_0

    :cond_0
    iget v9, v1, Ln3/i/a/b/h;->i:F

    .line 22
    :goto_0
    iget v10, v1, Ln3/i/a/b/h;->j:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v4

    goto :goto_1

    :cond_1
    iget v10, v1, Ln3/i/a/b/h;->j:F

    .line 23
    :goto_1
    iget v11, v3, Ln3/i/a/b/p;->g:F

    iget v12, v2, Ln3/i/a/b/p;->g:F

    sub-float v13, v11, v12

    .line 24
    iget v14, v3, Ln3/i/a/b/p;->h:F

    iget v15, v2, Ln3/i/a/b/p;->h:F

    sub-float v16, v14, v15

    .line 25
    iget v6, v0, Ln3/i/a/b/p;->c:F

    iput v6, v0, Ln3/i/a/b/p;->d:F

    .line 26
    iget v6, v2, Ln3/i/a/b/p;->e:F

    div-float v18, v12, v8

    add-float v18, v18, v6

    .line 27
    iget v7, v2, Ln3/i/a/b/p;->f:F

    div-float v19, v15, v8

    add-float v19, v19, v7

    .line 28
    iget v5, v3, Ln3/i/a/b/p;->e:F

    div-float/2addr v11, v8

    add-float/2addr v11, v5

    .line 29
    iget v3, v3, Ln3/i/a/b/p;->f:F

    div-float/2addr v14, v8

    add-float/2addr v14, v3

    sub-float v11, v11, v18

    sub-float v14, v14, v19

    mul-float v3, v11, v4

    add-float/2addr v3, v6

    mul-float/2addr v13, v9

    div-float v5, v13, v8

    sub-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    .line 30
    iput v3, v0, Ln3/i/a/b/p;->e:F

    mul-float v3, v14, v4

    add-float/2addr v3, v7

    mul-float v16, v16, v10

    div-float v6, v16, v8

    sub-float/2addr v3, v6

    float-to-int v3, v3

    int-to-float v3, v3

    .line 31
    iput v3, v0, Ln3/i/a/b/p;->f:F

    add-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v3, v3

    .line 32
    iput v3, v0, Ln3/i/a/b/p;->g:F

    add-float v15, v15, v16

    float-to-int v3, v15

    int-to-float v3, v3

    .line 33
    iput v3, v0, Ln3/i/a/b/p;->h:F

    .line 34
    iget v3, v1, Ln3/i/a/b/h;->k:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    iget v3, v1, Ln3/i/a/b/h;->k:F

    :goto_2
    const/high16 v7, 0x7fc00000    # Float.NaN

    .line 35
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    move v8, v7

    .line 36
    :goto_3
    iget v9, v1, Ln3/i/a/b/h;->l:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    iget v4, v1, Ln3/i/a/b/h;->l:F

    .line 37
    :goto_4
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x2

    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    move/from16 v17, v7

    const/4 v7, 0x2

    .line 38
    :goto_5
    iput v7, v0, Ln3/i/a/b/p;->l:I

    .line 39
    iget v7, v2, Ln3/i/a/b/p;->e:F

    mul-float/2addr v3, v11

    add-float/2addr v3, v7

    mul-float v17, v17, v14

    add-float v17, v17, v3

    sub-float v3, v17, v5

    float-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Ln3/i/a/b/p;->e:F

    .line 40
    iget v2, v2, Ln3/i/a/b/p;->f:F

    mul-float/2addr v11, v8

    add-float/2addr v11, v2

    mul-float/2addr v14, v4

    add-float/2addr v14, v11

    sub-float/2addr v14, v6

    float-to-int v2, v14

    int-to-float v2, v2

    iput v2, v0, Ln3/i/a/b/p;->f:F

    .line 41
    iget-object v2, v1, Ln3/i/a/b/h;->f:Ljava/lang/String;

    invoke-static {v2}, Ln3/i/a/a/c;->c(Ljava/lang/String;)Ln3/i/a/a/c;

    move-result-object v2

    iput-object v2, v0, Ln3/i/a/b/p;->a:Ln3/i/a/a/c;

    .line 42
    iget v1, v1, Ln3/i/a/b/h;->g:I

    iput v1, v0, Ln3/i/a/b/p;->j:I

    return-void

    .line 43
    :cond_6
    iget v4, v1, Ln3/i/a/b/b;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    .line 44
    iput v4, v0, Ln3/i/a/b/p;->c:F

    .line 45
    iget v5, v1, Ln3/i/a/b/h;->h:I

    iput v5, v0, Ln3/i/a/b/p;->b:I

    .line 46
    iget v5, v1, Ln3/i/a/b/h;->i:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    iget v5, v1, Ln3/i/a/b/h;->i:F

    .line 47
    :goto_6
    iget v6, v1, Ln3/i/a/b/h;->j:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    goto :goto_7

    :cond_8
    iget v6, v1, Ln3/i/a/b/h;->j:F

    .line 48
    :goto_7
    iget v7, v3, Ln3/i/a/b/p;->g:F

    iget v9, v2, Ln3/i/a/b/p;->g:F

    sub-float v10, v7, v9

    .line 49
    iget v11, v3, Ln3/i/a/b/p;->h:F

    iget v12, v2, Ln3/i/a/b/p;->h:F

    sub-float v13, v11, v12

    .line 50
    iget v14, v0, Ln3/i/a/b/p;->c:F

    iput v14, v0, Ln3/i/a/b/p;->d:F

    .line 51
    iget v14, v2, Ln3/i/a/b/p;->e:F

    div-float v15, v9, v8

    add-float/2addr v15, v14

    .line 52
    iget v2, v2, Ln3/i/a/b/p;->f:F

    div-float v16, v12, v8

    add-float v16, v16, v2

    .line 53
    iget v1, v3, Ln3/i/a/b/p;->e:F

    div-float/2addr v7, v8

    add-float/2addr v7, v1

    .line 54
    iget v1, v3, Ln3/i/a/b/p;->f:F

    div-float/2addr v11, v8

    add-float/2addr v11, v1

    sub-float/2addr v7, v15

    sub-float v11, v11, v16

    mul-float/2addr v7, v4

    add-float/2addr v7, v14

    mul-float/2addr v10, v5

    div-float v1, v10, v8

    sub-float/2addr v7, v1

    float-to-int v1, v7

    int-to-float v1, v1

    .line 55
    iput v1, v0, Ln3/i/a/b/p;->e:F

    mul-float/2addr v11, v4

    add-float/2addr v11, v2

    mul-float/2addr v13, v6

    div-float v1, v13, v8

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-float v1, v1

    .line 56
    iput v1, v0, Ln3/i/a/b/p;->f:F

    add-float/2addr v9, v10

    float-to-int v1, v9

    int-to-float v1, v1

    .line 57
    iput v1, v0, Ln3/i/a/b/p;->g:F

    add-float/2addr v12, v13

    float-to-int v1, v12

    int-to-float v1, v1

    .line 58
    iput v1, v0, Ln3/i/a/b/p;->h:F

    const/4 v1, 0x3

    .line 59
    iput v1, v0, Ln3/i/a/b/p;->l:I

    move-object/from16 v1, p3

    .line 60
    iget v2, v1, Ln3/i/a/b/h;->k:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v2, p1

    int-to-float v2, v2

    .line 61
    iget v3, v0, Ln3/i/a/b/p;->g:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 62
    iget v3, v1, Ln3/i/a/b/h;->k:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Ln3/i/a/b/p;->e:F

    .line 63
    :cond_9
    iget v2, v1, Ln3/i/a/b/h;->l:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_a

    move/from16 v2, p2

    int-to-float v2, v2

    .line 64
    iget v3, v0, Ln3/i/a/b/p;->h:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 65
    iget v3, v1, Ln3/i/a/b/h;->l:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Ln3/i/a/b/p;->f:F

    .line 66
    :cond_a
    iget-object v2, v1, Ln3/i/a/b/h;->f:Ljava/lang/String;

    invoke-static {v2}, Ln3/i/a/a/c;->c(Ljava/lang/String;)Ln3/i/a/a/c;

    move-result-object v2

    iput-object v2, v0, Ln3/i/a/b/p;->a:Ln3/i/a/a/c;

    .line 67
    iget v1, v1, Ln3/i/a/b/h;->g:I

    iput v1, v0, Ln3/i/a/b/p;->j:I

    return-void

    .line 68
    :cond_b
    iget v4, v1, Ln3/i/a/b/b;->a:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    .line 69
    iput v4, v0, Ln3/i/a/b/p;->c:F

    .line 70
    iget v5, v1, Ln3/i/a/b/h;->h:I

    iput v5, v0, Ln3/i/a/b/p;->b:I

    .line 71
    iget v5, v1, Ln3/i/a/b/h;->i:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_8

    :cond_c
    iget v5, v1, Ln3/i/a/b/h;->i:F

    .line 72
    :goto_8
    iget v6, v1, Ln3/i/a/b/h;->j:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v4

    goto :goto_9

    :cond_d
    iget v6, v1, Ln3/i/a/b/h;->j:F

    .line 73
    :goto_9
    iget v9, v3, Ln3/i/a/b/p;->g:F

    iget v10, v2, Ln3/i/a/b/p;->g:F

    sub-float/2addr v9, v10

    .line 74
    iget v10, v3, Ln3/i/a/b/p;->h:F

    iget v11, v2, Ln3/i/a/b/p;->h:F

    sub-float/2addr v10, v11

    .line 75
    iget v11, v0, Ln3/i/a/b/p;->c:F

    iput v11, v0, Ln3/i/a/b/p;->d:F

    .line 76
    iget v11, v1, Ln3/i/a/b/h;->k:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_a

    :cond_e
    iget v4, v1, Ln3/i/a/b/h;->k:F

    .line 77
    :goto_a
    iget v11, v2, Ln3/i/a/b/p;->e:F

    iget v12, v2, Ln3/i/a/b/p;->g:F

    div-float v13, v12, v8

    add-float/2addr v13, v11

    .line 78
    iget v14, v2, Ln3/i/a/b/p;->f:F

    iget v15, v2, Ln3/i/a/b/p;->h:F

    div-float v16, v15, v8

    add-float v16, v16, v14

    .line 79
    iget v7, v3, Ln3/i/a/b/p;->e:F

    iget v2, v3, Ln3/i/a/b/p;->g:F

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    .line 80
    iget v7, v3, Ln3/i/a/b/p;->f:F

    iget v3, v3, Ln3/i/a/b/p;->h:F

    div-float/2addr v3, v8

    add-float/2addr v3, v7

    sub-float/2addr v2, v13

    sub-float v3, v3, v16

    mul-float v7, v2, v4

    add-float/2addr v11, v7

    mul-float/2addr v9, v5

    div-float v5, v9, v8

    sub-float/2addr v11, v5

    float-to-int v11, v11

    int-to-float v11, v11

    .line 81
    iput v11, v0, Ln3/i/a/b/p;->e:F

    mul-float/2addr v4, v3

    add-float/2addr v14, v4

    mul-float/2addr v10, v6

    div-float v6, v10, v8

    sub-float/2addr v14, v6

    float-to-int v8, v14

    int-to-float v8, v8

    .line 82
    iput v8, v0, Ln3/i/a/b/p;->f:F

    add-float/2addr v12, v9

    float-to-int v8, v12

    int-to-float v8, v8

    .line 83
    iput v8, v0, Ln3/i/a/b/p;->g:F

    add-float/2addr v15, v10

    float-to-int v8, v15

    int-to-float v8, v8

    .line 84
    iput v8, v0, Ln3/i/a/b/p;->h:F

    .line 85
    iget v8, v1, Ln3/i/a/b/h;->l:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_f

    const/16 v17, 0x0

    goto :goto_b

    :cond_f
    iget v8, v1, Ln3/i/a/b/h;->l:F

    move/from16 v17, v8

    :goto_b
    neg-float v3, v3

    mul-float v3, v3, v17

    mul-float v2, v2, v17

    const/4 v8, 0x1

    .line 86
    iput v8, v0, Ln3/i/a/b/p;->l:I

    move-object/from16 v8, p4

    .line 87
    iget v9, v8, Ln3/i/a/b/p;->e:F

    add-float/2addr v9, v7

    sub-float/2addr v9, v5

    float-to-int v5, v9

    int-to-float v5, v5

    iput v5, v0, Ln3/i/a/b/p;->e:F

    .line 88
    iget v7, v8, Ln3/i/a/b/p;->f:F

    add-float/2addr v7, v4

    sub-float/2addr v7, v6

    float-to-int v4, v7

    int-to-float v4, v4

    iput v4, v0, Ln3/i/a/b/p;->f:F

    add-float/2addr v5, v3

    .line 89
    iput v5, v0, Ln3/i/a/b/p;->e:F

    add-float/2addr v4, v2

    .line 90
    iput v4, v0, Ln3/i/a/b/p;->f:F

    .line 91
    iget-object v2, v1, Ln3/i/a/b/h;->f:Ljava/lang/String;

    invoke-static {v2}, Ln3/i/a/a/c;->c(Ljava/lang/String;)Ln3/i/a/a/c;

    move-result-object v2

    iput-object v2, v0, Ln3/i/a/b/p;->a:Ln3/i/a/a/c;

    .line 92
    iget v1, v1, Ln3/i/a/b/h;->g:I

    iput v1, v0, Ln3/i/a/b/p;->j:I

    return-void
.end method


# virtual methods
.method public a(Ln3/i/c/d$a;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    iget-object v0, v0, Ln3/i/c/d$c;->c:Ljava/lang/String;

    invoke-static {v0}, Ln3/i/a/a/c;->c(Ljava/lang/String;)Ln3/i/a/a/c;

    move-result-object v0

    iput-object v0, p0, Ln3/i/a/b/p;->a:Ln3/i/a/a/c;

    .line 2
    iget-object v0, p1, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    iget v1, v0, Ln3/i/c/d$c;->d:I

    iput v1, p0, Ln3/i/a/b/p;->j:I

    .line 3
    iget v1, v0, Ln3/i/c/d$c;->g:F

    iput v1, p0, Ln3/i/a/b/p;->i:F

    .line 4
    iget v0, v0, Ln3/i/c/d$c;->e:I

    iput v0, p0, Ln3/i/a/b/p;->b:I

    .line 5
    iget-object v0, p1, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget v0, v0, Ln3/i/c/d$d;->e:F

    .line 6
    iget-object v0, p1, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p1, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/c/a;

    .line 9
    iget-object v3, v2, Ln3/i/c/a;->b:Ln3/i/c/a$a;

    .line 10
    sget-object v4, Ln3/i/c/a$a;->e:Ln3/i/c/a$a;

    if-eq v3, v4, :cond_0

    .line 11
    iget-object v3, p0, Ln3/i/a/b/p;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(FF)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ln3/i/a/b/p;

    .line 2
    iget v0, p0, Ln3/i/a/b/p;->d:F

    iget p1, p1, Ln3/i/a/b/p;->d:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public d([I[D[FI)V
    .locals 9

    .line 1
    iget v0, p0, Ln3/i/a/b/p;->e:F

    .line 2
    iget v1, p0, Ln3/i/a/b/p;->f:F

    .line 3
    iget v2, p0, Ln3/i/a/b/p;->g:F

    .line 4
    iget v3, p0, Ln3/i/a/b/p;->h:F

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4

    .line 6
    aget-wide v7, p2, v4

    double-to-float v5, v7

    .line 7
    aget v7, p1, v4

    if-eq v7, v6, :cond_3

    const/4 v6, 0x2

    if-eq v7, v6, :cond_2

    const/4 v6, 0x3

    if-eq v7, v6, :cond_1

    const/4 v6, 0x4

    if-eq v7, v6, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v2, v0

    const/4 p2, 0x0

    add-float/2addr v2, p2

    .line 8
    aput v2, p3, p4

    add-int/2addr p4, v6

    div-float/2addr v3, p1

    add-float/2addr v3, v1

    add-float/2addr v3, p2

    .line 9
    aput v3, p3, p4

    return-void
.end method

.method public e(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/i/a/b/p;->e:F

    .line 2
    iput p2, p0, Ln3/i/a/b/p;->f:F

    .line 3
    iput p3, p0, Ln3/i/a/b/p;->g:F

    .line 4
    iput p4, p0, Ln3/i/a/b/p;->h:F

    return-void
.end method

.method public f(FF[F[I[D[D)V
    .locals 12

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    .line 1
    :goto_0
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v3, v8, :cond_4

    .line 2
    aget-wide v10, p5, v3

    double-to-float v8, v10

    .line 3
    aget-wide v10, p6, v3

    .line 4
    aget v10, v0, v3

    if-eq v10, v9, :cond_3

    const/4 v9, 0x2

    if-eq v10, v9, :cond_2

    const/4 v9, 0x3

    if-eq v10, v9, :cond_1

    const/4 v9, 0x4

    if-eq v10, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v8

    goto :goto_1

    :cond_1
    move v5, v8

    goto :goto_1

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    mul-float v0, v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float v0, v2, v7

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v5, v0

    mul-float/2addr v7, v0

    add-float/2addr v5, v4

    add-float/2addr v7, v6

    sub-float v3, v0, p1

    mul-float/2addr v3, v4

    mul-float/2addr v5, p1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    .line 5
    aput v5, p3, v1

    sub-float/2addr v0, p2

    mul-float/2addr v0, v6

    mul-float/2addr v7, p2

    add-float/2addr v7, v0

    add-float/2addr v7, v2

    .line 6
    aput v7, p3, v9

    return-void
.end method
