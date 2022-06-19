.class public final Le/m/a/c/g1/y/b;
.super Le/m/a/c/g1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/y/b$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Le/m/a/c/q1/m;IJJ)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le/m/a/c/g1/y/a;

    invoke-direct {v1, v0}, Le/m/a/c/g1/y/a;-><init>(Le/m/a/c/q1/m;)V

    new-instance v2, Le/m/a/c/g1/y/b$b;

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-direct {v2, v0, v4, v3}, Le/m/a/c/g1/y/b$b;-><init>(Le/m/a/c/q1/m;ILe/m/a/c/g1/y/b$a;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Le/m/a/c/q1/m;->d()J

    move-result-wide v3

    iget-wide v7, v0, Le/m/a/c/q1/m;->j:J

    .line 3
    iget v5, v0, Le/m/a/c/q1/m;->d:I

    if-lez v5, :cond_0

    int-to-long v5, v5

    .line 4
    iget v9, v0, Le/m/a/c/q1/m;->c:I

    int-to-long v9, v9

    add-long/2addr v5, v9

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    const-wide/16 v9, 0x1

    goto :goto_1

    .line 5
    :cond_0
    iget v5, v0, Le/m/a/c/q1/m;->a:I

    iget v6, v0, Le/m/a/c/q1/m;->b:I

    if-ne v5, v6, :cond_1

    if-lez v5, :cond_1

    int-to-long v5, v5

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x1000

    .line 6
    :goto_0
    iget v9, v0, Le/m/a/c/q1/m;->g:I

    int-to-long v9, v9

    mul-long/2addr v5, v9

    iget v9, v0, Le/m/a/c/q1/m;->h:I

    int-to-long v9, v9

    mul-long/2addr v5, v9

    const-wide/16 v9, 0x8

    div-long/2addr v5, v9

    const-wide/16 v9, 0x40

    :goto_1
    add-long v13, v5, v9

    const/4 v5, 0x6

    .line 7
    iget v0, v0, Le/m/a/c/q1/m;->c:I

    .line 8
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    .line 9
    invoke-direct/range {v0 .. v15}, Le/m/a/c/g1/a;-><init>(Le/m/a/c/g1/a$d;Le/m/a/c/g1/a$f;JJJJJJI)V

    return-void
.end method
