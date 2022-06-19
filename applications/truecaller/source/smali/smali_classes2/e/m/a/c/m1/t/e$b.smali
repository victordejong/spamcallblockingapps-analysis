.class public Le/m/a/c/m1/t/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/m1/t/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:I

.field public j:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/m/a/c/m1/t/e$b;->b()V

    return-void
.end method


# virtual methods
.method public a()Le/m/a/c/m1/t/e;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/m/a/c/m1/t/e$b;->e:F

    iget v2, v0, Le/m/a/c/m1/t/e$b;->f:I

    const v3, -0x800001

    cmpl-float v4, v1, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    cmpg-float v7, v1, v5

    if-ltz v7, :cond_2

    cmpl-float v7, v1, v6

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    :cond_2
    :goto_0
    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput v1, v0, Le/m/a/c/m1/t/e$b;->e:F

    .line 2
    iget v1, v0, Le/m/a/c/m1/t/e$b;->h:F

    cmpl-float v1, v1, v3

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-nez v1, :cond_6

    .line 3
    iget v1, v0, Le/m/a/c/m1/t/e$b;->d:I

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v6

    :cond_5
    :goto_2
    iput v5, v0, Le/m/a/c/m1/t/e$b;->h:F

    .line 4
    :cond_6
    iget v1, v0, Le/m/a/c/m1/t/e$b;->i:I

    const/high16 v5, -0x80000000

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v1, v5, :cond_9

    .line 5
    iget v1, v0, Le/m/a/c/m1/t/e$b;->d:I

    if-eq v1, v9, :cond_8

    if-eq v1, v7, :cond_7

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_7

    move v1, v9

    goto :goto_3

    :cond_7
    move v1, v8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iput v1, v0, Le/m/a/c/m1/t/e$b;->i:I

    .line 6
    :cond_9
    iget v1, v0, Le/m/a/c/m1/t/e$b;->j:F

    iget v5, v0, Le/m/a/c/m1/t/e$b;->i:I

    iget v10, v0, Le/m/a/c/m1/t/e$b;->h:F

    if-eqz v5, :cond_d

    if-eq v5, v9, :cond_b

    if-ne v5, v8, :cond_a

    goto :goto_4

    .line 7
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    cmpg-float v2, v10, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-gtz v2, :cond_c

    mul-float/2addr v10, v5

    goto :goto_4

    :cond_c
    sub-float/2addr v6, v10

    mul-float v10, v6, v5

    goto :goto_4

    :cond_d
    sub-float v10, v6, v10

    .line 8
    :goto_4
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Le/m/a/c/m1/t/e$b;->j:F

    .line 9
    new-instance v1, Le/m/a/c/m1/t/e;

    iget-wide v11, v0, Le/m/a/c/m1/t/e$b;->a:J

    iget-wide v13, v0, Le/m/a/c/m1/t/e$b;->b:J

    iget-object v15, v0, Le/m/a/c/m1/t/e$b;->c:Ljava/lang/CharSequence;

    .line 10
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v2, v0, Le/m/a/c/m1/t/e$b;->d:I

    if-eq v2, v9, :cond_10

    if-eq v2, v8, :cond_f

    if-eq v2, v7, :cond_e

    if-eq v2, v4, :cond_10

    if-eq v2, v3, :cond_e

    const/4 v2, 0x0

    goto :goto_5

    .line 12
    :cond_e
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 13
    :cond_f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_5

    .line 14
    :cond_10
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_5
    move-object/from16 v16, v2

    .line 15
    iget v2, v0, Le/m/a/c/m1/t/e$b;->e:F

    iget v3, v0, Le/m/a/c/m1/t/e$b;->f:I

    iget v4, v0, Le/m/a/c/m1/t/e$b;->g:I

    iget v5, v0, Le/m/a/c/m1/t/e$b;->h:F

    iget v6, v0, Le/m/a/c/m1/t/e$b;->i:I

    iget v7, v0, Le/m/a/c/m1/t/e$b;->j:F

    const/16 v23, 0x0

    move-object v10, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-direct/range {v10 .. v23}, Le/m/a/c/m1/t/e;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFLe/m/a/c/m1/t/e$a;)V

    return-object v1
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Le/m/a/c/m1/t/e$b;->a:J

    .line 2
    iput-wide v0, p0, Le/m/a/c/m1/t/e$b;->b:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/m/a/c/m1/t/e$b;->c:Ljava/lang/CharSequence;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Le/m/a/c/m1/t/e$b;->d:I

    const v0, -0x800001

    .line 5
    iput v0, p0, Le/m/a/c/m1/t/e$b;->e:F

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Le/m/a/c/m1/t/e$b;->f:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Le/m/a/c/m1/t/e$b;->g:I

    .line 8
    iput v0, p0, Le/m/a/c/m1/t/e$b;->h:F

    const/high16 v0, -0x80000000

    .line 9
    iput v0, p0, Le/m/a/c/m1/t/e$b;->i:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p0, Le/m/a/c/m1/t/e$b;->j:F

    return-void
.end method
