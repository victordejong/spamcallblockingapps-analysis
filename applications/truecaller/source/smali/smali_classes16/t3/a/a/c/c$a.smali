.class public final synthetic Lt3/a/a/c/c$a;
.super Ls1/z/c/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/a/a/c/c;-><init>(Lt3/a/a/f/a;Lt3/a/a/f/b;[Lt3/a/a/e/c;[Lt3/a/a/e/b;[ILt3/a/a/e/a;Lt3/a/a/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/i;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lt3/a/a/c/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ls1/z/c/i;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "addConfetti"

    return-object v0
.end method

.method public final getOwner()Ls1/a/e;
    .locals 1

    const-class v0, Lt3/a/a/c/c;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "addConfetti()V"

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v1, Lt3/a/a/c/c;

    .line 2
    iget-object v2, v1, Lt3/a/a/c/c;->c:Ljava/util/List;

    new-instance v14, Lt3/a/a/a;

    .line 3
    new-instance v4, Lt3/a/a/e/d;

    iget-object v3, v1, Lt3/a/a/c/c;->d:Lt3/a/a/f/a;

    .line 4
    iget-object v5, v3, Lt3/a/a/f/a;->b:Ljava/lang/Float;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 5
    iget v3, v3, Lt3/a/a/f/a;->a:F

    goto :goto_0

    .line 6
    :cond_0
    iget-object v5, v3, Lt3/a/a/f/a;->e:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    iget-object v7, v3, Lt3/a/a/f/a;->b:Ljava/lang/Float;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v3, v3, Lt3/a/a/f/a;->a:F

    invoke-static {v7, v3, v5, v3}, Le/d/c/a/a;->a(FFFF)F

    move-result v3

    .line 7
    :goto_0
    iget-object v5, v1, Lt3/a/a/c/c;->d:Lt3/a/a/f/a;

    .line 8
    iget-object v7, v5, Lt3/a/a/f/a;->d:Ljava/lang/Float;

    if-nez v7, :cond_1

    .line 9
    iget v5, v5, Lt3/a/a/f/a;->c:F

    goto :goto_1

    .line 10
    :cond_1
    iget-object v7, v5, Lt3/a/a/f/a;->e:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    iget-object v8, v5, Lt3/a/a/f/a;->d:Ljava/lang/Float;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget v5, v5, Lt3/a/a/f/a;->c:F

    invoke-static {v6, v5, v7, v5}, Le/d/c/a/a;->a(FFFF)F

    move-result v5

    .line 11
    :goto_1
    invoke-direct {v4, v3, v5}, Lt3/a/a/e/d;-><init>(FF)V

    .line 12
    iget-object v3, v1, Lt3/a/a/c/c;->f:[Lt3/a/a/e/c;

    iget-object v5, v1, Lt3/a/a/c/c;->a:Ljava/util/Random;

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v6, v3, v5

    .line 13
    iget-object v3, v1, Lt3/a/a/c/c;->g:[Lt3/a/a/e/b;

    iget-object v5, v1, Lt3/a/a/c/c;->a:Ljava/util/Random;

    array-length v7, v3

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v7, v3, v5

    .line 14
    iget-object v3, v1, Lt3/a/a/c/c;->h:[I

    iget-object v5, v1, Lt3/a/a/c/c;->a:Ljava/util/Random;

    array-length v8, v3

    invoke-virtual {v5, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget v5, v3, v5

    .line 15
    iget-object v3, v1, Lt3/a/a/c/c;->i:Lt3/a/a/e/a;

    .line 16
    iget-wide v8, v3, Lt3/a/a/e/a;->b:J

    .line 17
    iget-boolean v10, v3, Lt3/a/a/e/a;->a:Z

    .line 18
    iget-object v1, v1, Lt3/a/a/c/c;->e:Lt3/a/a/f/b;

    .line 19
    iget-object v3, v1, Lt3/a/a/f/b;->d:Ljava/lang/Float;

    if-nez v3, :cond_2

    .line 20
    iget v3, v1, Lt3/a/a/f/b;->c:F

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v11, v1, Lt3/a/a/f/b;->c:F

    sub-float/2addr v3, v11

    iget-object v11, v1, Lt3/a/a/f/b;->e:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextFloat()F

    move-result v11

    mul-float/2addr v11, v3

    iget v3, v1, Lt3/a/a/f/b;->c:F

    add-float/2addr v3, v11

    .line 22
    :goto_2
    iget-object v11, v1, Lt3/a/a/f/b;->b:Ljava/lang/Double;

    if-nez v11, :cond_3

    .line 23
    iget-wide v11, v1, Lt3/a/a/f/b;->a:D

    move-wide v15, v8

    goto :goto_3

    .line 24
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    move-wide v15, v8

    iget-wide v8, v1, Lt3/a/a/f/b;->a:D

    sub-double/2addr v11, v8

    iget-object v8, v1, Lt3/a/a/f/b;->e:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v11

    iget-wide v11, v1, Lt3/a/a/f/b;->a:D

    add-double/2addr v11, v8

    .line 25
    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v1, v3

    .line 26
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float/2addr v3, v8

    .line 27
    new-instance v12, Lt3/a/a/e/d;

    invoke-direct {v12, v1, v3}, Lt3/a/a/e/d;-><init>(FF)V

    const/16 v13, 0x40

    const/4 v11, 0x0

    move-object v3, v14

    move-wide v8, v15

    .line 28
    invoke-direct/range {v3 .. v13}, Lt3/a/a/a;-><init>(Lt3/a/a/e/d;ILt3/a/a/e/c;Lt3/a/a/e/b;JZLt3/a/a/e/d;Lt3/a/a/e/d;I)V

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    .line 30
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6

    .line 31
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6
.end method
