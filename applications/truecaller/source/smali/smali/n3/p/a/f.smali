.class public final Ln3/p/a/f;
.super Ln3/p/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/p/a/b<",
        "Ln3/p/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field public v:Ln3/p/a/g;

.field public w:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ln3/p/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ln3/p/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ln3/p/a/b;-><init>(Ljava/lang/Object;Ln3/p/a/d;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/p/a/f;->v:Ln3/p/a/g;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Ln3/p/a/f;->w:F

    return-void
.end method


# virtual methods
.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/p/a/f;->v:Ln3/p/a/g;

    if-eqz v0, :cond_2

    .line 2
    iget-wide v1, v0, Ln3/p/a/g;->i:D

    double-to-float v1, v1

    float-to-double v1, v1

    .line 3
    iget v3, p0, Ln3/p/a/b;->g:F

    float-to-double v3, v3

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_1

    .line 4
    iget v3, p0, Ln3/p/a/b;->h:F

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ln3/p/a/b;->e()F

    move-result v1

    float-to-double v1, v1

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Ln3/p/a/g;->d:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v3

    .line 8
    iput-wide v1, v0, Ln3/p/a/g;->e:D

    .line 9
    invoke-super {p0}, Ln3/p/a/b;->i()V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(J)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Ln3/p/a/f;->w:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 2
    iget-object v3, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    .line 3
    iget-wide v4, v3, Ln3/p/a/g;->i:D

    .line 4
    iget v1, v0, Ln3/p/a/b;->b:F

    float-to-double v4, v1

    iget v1, v0, Ln3/p/a/b;->a:F

    float-to-double v6, v1

    const-wide/16 v8, 0x2

    div-long v15, p1, v8

    move-wide v8, v15

    invoke-virtual/range {v3 .. v9}, Ln3/p/a/g;->c(DDJ)Ln3/p/a/b$k;

    move-result-object v1

    .line 5
    iget-object v10, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    iget v3, v0, Ln3/p/a/f;->w:F

    float-to-double v3, v3

    .line 6
    iput-wide v3, v10, Ln3/p/a/g;->i:D

    .line 7
    iput v2, v0, Ln3/p/a/f;->w:F

    .line 8
    iget v2, v1, Ln3/p/a/b$k;->a:F

    float-to-double v11, v2

    iget v1, v1, Ln3/p/a/b$k;->b:F

    float-to-double v13, v1

    invoke-virtual/range {v10 .. v16}, Ln3/p/a/g;->c(DDJ)Ln3/p/a/b$k;

    move-result-object v1

    .line 9
    iget v2, v1, Ln3/p/a/b$k;->a:F

    iput v2, v0, Ln3/p/a/b;->b:F

    .line 10
    iget v1, v1, Ln3/p/a/b$k;->b:F

    iput v1, v0, Ln3/p/a/b;->a:F

    goto :goto_0

    .line 11
    :cond_0
    iget-object v10, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    iget v1, v0, Ln3/p/a/b;->b:F

    float-to-double v11, v1

    iget v1, v0, Ln3/p/a/b;->a:F

    float-to-double v13, v1

    move-wide/from16 v15, p1

    invoke-virtual/range {v10 .. v16}, Ln3/p/a/g;->c(DDJ)Ln3/p/a/b$k;

    move-result-object v1

    .line 12
    iget v2, v1, Ln3/p/a/b$k;->a:F

    iput v2, v0, Ln3/p/a/b;->b:F

    .line 13
    iget v1, v1, Ln3/p/a/b$k;->b:F

    iput v1, v0, Ln3/p/a/b;->a:F

    .line 14
    :goto_0
    iget v1, v0, Ln3/p/a/b;->b:F

    iget v2, v0, Ln3/p/a/b;->h:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Ln3/p/a/b;->b:F

    .line 15
    iget v2, v0, Ln3/p/a/b;->g:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Ln3/p/a/b;->b:F

    .line 16
    iget v2, v0, Ln3/p/a/b;->a:F

    .line 17
    iget-object v3, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v4, v2

    iget-wide v6, v3, Ln3/p/a/g;->e:D

    cmpg-double v2, v4, v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v2, :cond_1

    .line 20
    iget-wide v6, v3, Ln3/p/a/g;->i:D

    double-to-float v2, v6

    sub-float/2addr v1, v2

    .line 21
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    iget-wide v6, v3, Ln3/p/a/g;->d:D

    cmpg-double v1, v1, v6

    if-gez v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-eqz v1, :cond_2

    .line 22
    iget-object v1, v0, Ln3/p/a/f;->v:Ln3/p/a/g;

    .line 23
    iget-wide v1, v1, Ln3/p/a/g;->i:D

    double-to-float v1, v1

    .line 24
    iput v1, v0, Ln3/p/a/b;->b:F

    const/4 v1, 0x0

    .line 25
    iput v1, v0, Ln3/p/a/b;->a:F

    return v4

    :cond_2
    return v5
.end method
