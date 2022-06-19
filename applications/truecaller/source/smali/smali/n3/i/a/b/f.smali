.class public abstract Ln3/i/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/i/a/b/f$d;,
        Ln3/i/a/b/f$g;,
        Ln3/i/a/b/f$c;,
        Ln3/i/a/b/f$o;,
        Ln3/i/a/b/f$n;,
        Ln3/i/a/b/f$m;,
        Ln3/i/a/b/f$l;,
        Ln3/i/a/b/f$k;,
        Ln3/i/a/b/f$f;,
        Ln3/i/a/b/f$j;,
        Ln3/i/a/b/f$i;,
        Ln3/i/a/b/f$h;,
        Ln3/i/a/b/f$b;,
        Ln3/i/a/b/f$e;,
        Ln3/i/a/b/f$p;
    }
.end annotation


# instance fields
.field public a:Ln3/i/a/b/f$d;

.field public b:Ln3/i/c/a;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/i/a/b/f$p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/i/a/b/f;->d:I

    .line 3
    iput v0, p0, Ln3/i/a/b/f;->e:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/i/a/b/f;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Ln3/i/a/b/f;->a:Ln3/i/a/b/f$d;

    .line 2
    iget-object v3, v2, Ln3/i/a/b/f$d;->f:Ln3/i/a/a/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    float-to-double v6, v1

    .line 3
    iget-object v8, v2, Ln3/i/a/b/f$d;->g:[D

    invoke-virtual {v3, v6, v7, v8}, Ln3/i/a/a/b;->c(D[D)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, v2, Ln3/i/a/b/f$d;->g:[D

    iget-object v6, v2, Ln3/i/a/b/f$d;->e:[F

    aget v6, v6, v5

    float-to-double v6, v6

    aput-wide v6, v3, v5

    .line 5
    iget-object v6, v2, Ln3/i/a/b/f$d;->b:[F

    aget v6, v6, v5

    float-to-double v6, v6

    aput-wide v6, v3, v4

    .line 6
    :goto_0
    iget-object v3, v2, Ln3/i/a/b/f$d;->g:[D

    aget-wide v5, v3, v5

    .line 7
    iget-object v3, v2, Ln3/i/a/b/f$d;->a:Ln3/i/a/a/f;

    float-to-double v7, v1

    .line 8
    iget v1, v3, Ln3/i/a/a/f;->d:I

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    packed-switch v1, :pswitch_data_0

    .line 9
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    goto :goto_2

    .line 10
    :pswitch_0
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    rem-double/2addr v7, v11

    sub-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double v7, v15, v7

    mul-double/2addr v7, v7

    goto :goto_1

    .line 11
    :pswitch_1
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    goto :goto_2

    .line 12
    :pswitch_2
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    add-double/2addr v7, v15

    rem-double/2addr v7, v13

    goto :goto_1

    .line 13
    :pswitch_3
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    mul-double/2addr v7, v13

    add-double/2addr v7, v15

    rem-double/2addr v7, v13

    sub-double/2addr v7, v15

    goto :goto_2

    .line 14
    :pswitch_4
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    mul-double/2addr v7, v11

    add-double/2addr v7, v15

    rem-double/2addr v7, v11

    sub-double/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    :goto_1
    sub-double v7, v15, v7

    goto :goto_2

    :pswitch_5
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    .line 15
    invoke-virtual {v3, v7, v8}, Ln3/i/a/a/f;->b(D)D

    move-result-wide v7

    rem-double/2addr v7, v15

    sub-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->signum(D)D

    move-result-wide v7

    .line 16
    :goto_2
    iget-object v1, v2, Ln3/i/a/b/f$d;->g:[D

    aget-wide v2, v1, v4

    mul-double/2addr v7, v2

    add-double/2addr v7, v5

    double-to-float v1, v7

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract b(Landroid/view/View;F)V
.end method

.method public c(F)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    const-class v1, D

    iget-object v2, v0, Ln3/i/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v0, Ln3/i/a/b/f;->f:Ljava/util/ArrayList;

    new-instance v4, Ln3/i/a/b/f$a;

    invoke-direct {v4, v0}, Ln3/i/a/b/f$a;-><init>(Ln3/i/a/b/f;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    new-array v3, v2, [D

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v7, 0x0

    aput v2, v5, v7

    .line 4
    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 5
    new-instance v8, Ln3/i/a/b/f$d;

    iget v9, v0, Ln3/i/a/b/f;->d:I

    iget v10, v0, Ln3/i/a/b/f;->e:I

    invoke-direct {v8, v9, v10, v2}, Ln3/i/a/b/f$d;-><init>(III)V

    iput-object v8, v0, Ln3/i/a/b/f;->a:Ln3/i/a/b/f$d;

    .line 6
    iget-object v2, v0, Ln3/i/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v7

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ln3/i/a/b/f$p;

    .line 7
    iget v10, v9, Ln3/i/a/b/f$p;->d:F

    float-to-double v11, v10

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v11, v13

    aput-wide v11, v3, v8

    .line 8
    aget-object v11, v5, v8

    iget v12, v9, Ln3/i/a/b/f$p;->b:F

    float-to-double v13, v12

    aput-wide v13, v11, v7

    .line 9
    aget-object v11, v5, v8

    iget v13, v9, Ln3/i/a/b/f$p;->c:F

    float-to-double v14, v13

    aput-wide v14, v11, v6

    .line 10
    iget-object v11, v0, Ln3/i/a/b/f;->a:Ln3/i/a/b/f$d;

    iget v9, v9, Ln3/i/a/b/f$p;->a:I

    .line 11
    iget-object v14, v11, Ln3/i/a/b/f$d;->c:[D

    int-to-double v6, v9

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v6, v6, v16

    aput-wide v6, v14, v8

    .line 12
    iget-object v6, v11, Ln3/i/a/b/f$d;->d:[F

    aput v10, v6, v8

    .line 13
    iget-object v6, v11, Ln3/i/a/b/f$d;->e:[F

    aput v13, v6, v8

    .line 14
    iget-object v6, v11, Ln3/i/a/b/f$d;->b:[F

    aput v12, v6, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_0

    .line 15
    :cond_1
    iget-object v2, v0, Ln3/i/a/b/f;->a:Ln3/i/a/b/f$d;

    .line 16
    iget-object v6, v2, Ln3/i/a/b/f$d;->c:[D

    array-length v6, v6

    new-array v7, v4, [I

    const/4 v8, 0x1

    aput v4, v7, v8

    const/4 v4, 0x0

    aput v6, v7, v4

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 17
    iget-object v4, v2, Ln3/i/a/b/f$d;->b:[F

    array-length v6, v4

    add-int/2addr v6, v8

    new-array v6, v6, [D

    iput-object v6, v2, Ln3/i/a/b/f$d;->g:[D

    .line 18
    array-length v4, v4

    add-int/2addr v4, v8

    new-array v4, v4, [D

    .line 19
    iget-object v4, v2, Ln3/i/a/b/f$d;->c:[D

    const/4 v6, 0x0

    aget-wide v7, v4, v6

    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    if-lez v4, :cond_2

    .line 20
    iget-object v4, v2, Ln3/i/a/b/f$d;->a:Ln3/i/a/a/f;

    iget-object v7, v2, Ln3/i/a/b/f$d;->d:[F

    aget v7, v7, v6

    invoke-virtual {v4, v9, v10, v7}, Ln3/i/a/a/f;->a(DF)V

    .line 21
    :cond_2
    iget-object v4, v2, Ln3/i/a/b/f$d;->c:[D

    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 22
    aget-wide v7, v4, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v7, v11

    if-gez v4, :cond_3

    .line 23
    iget-object v4, v2, Ln3/i/a/b/f$d;->a:Ln3/i/a/a/f;

    iget-object v7, v2, Ln3/i/a/b/f$d;->d:[F

    aget v6, v7, v6

    invoke-virtual {v4, v11, v12, v6}, Ln3/i/a/a/f;->a(DF)V

    :cond_3
    const/4 v4, 0x0

    .line 24
    :goto_1
    array-length v6, v1

    if-ge v4, v6, :cond_5

    .line 25
    aget-object v6, v1, v4

    iget-object v7, v2, Ln3/i/a/b/f$d;->e:[F

    aget v7, v7, v4

    float-to-double v7, v7

    const/4 v11, 0x0

    aput-wide v7, v6, v11

    const/4 v6, 0x0

    .line 26
    :goto_2
    iget-object v7, v2, Ln3/i/a/b/f$d;->b:[F

    array-length v8, v7

    if-ge v6, v8, :cond_4

    .line 27
    aget-object v8, v1, v6

    aget v7, v7, v6

    float-to-double v11, v7

    const/4 v7, 0x1

    aput-wide v11, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 28
    :cond_4
    iget-object v6, v2, Ln3/i/a/b/f$d;->a:Ln3/i/a/a/f;

    iget-object v7, v2, Ln3/i/a/b/f$d;->c:[D

    aget-wide v11, v7, v4

    iget-object v7, v2, Ln3/i/a/b/f$d;->d:[F

    aget v7, v7, v4

    invoke-virtual {v6, v11, v12, v7}, Ln3/i/a/a/f;->a(DF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 29
    :cond_5
    iget-object v4, v2, Ln3/i/a/b/f$d;->a:Ln3/i/a/a/f;

    move-wide v7, v9

    const/4 v6, 0x0

    .line 30
    :goto_3
    iget-object v11, v4, Ln3/i/a/a/f;->a:[F

    array-length v12, v11

    if-ge v6, v12, :cond_6

    .line 31
    aget v11, v11, v6

    float-to-double v11, v11

    add-double/2addr v7, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move-wide v11, v9

    const/4 v6, 0x1

    .line 32
    :goto_4
    iget-object v13, v4, Ln3/i/a/a/f;->a:[F

    array-length v14, v13

    const/high16 v16, 0x40000000    # 2.0f

    if-ge v6, v14, :cond_7

    add-int/lit8 v14, v6, -0x1

    .line 33
    aget v17, v13, v14

    aget v13, v13, v6

    add-float v17, v17, v13

    div-float v13, v17, v16

    .line 34
    iget-object v15, v4, Ln3/i/a/a/f;->b:[D

    aget-wide v18, v15, v6

    aget-wide v14, v15, v14

    sub-double v18, v18, v14

    float-to-double v13, v13

    mul-double v18, v18, v13

    add-double v11, v18, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    .line 35
    :goto_5
    iget-object v6, v4, Ln3/i/a/a/f;->a:[F

    array-length v13, v6

    if-ge v15, v13, :cond_8

    .line 36
    aget v13, v6, v15

    float-to-double v13, v13

    div-double v18, v7, v11

    mul-double v13, v13, v18

    double-to-float v13, v13

    aput v13, v6, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 37
    :cond_8
    iget-object v6, v4, Ln3/i/a/a/f;->c:[D

    const/4 v7, 0x0

    aput-wide v9, v6, v7

    const/4 v8, 0x1

    .line 38
    :goto_6
    iget-object v6, v4, Ln3/i/a/a/f;->a:[F

    array-length v7, v6

    if-ge v8, v7, :cond_9

    add-int/lit8 v7, v8, -0x1

    .line 39
    aget v9, v6, v7

    aget v6, v6, v8

    add-float/2addr v9, v6

    div-float v9, v9, v16

    .line 40
    iget-object v6, v4, Ln3/i/a/a/f;->b:[D

    aget-wide v10, v6, v8

    aget-wide v12, v6, v7

    sub-double/2addr v10, v12

    .line 41
    iget-object v6, v4, Ln3/i/a/a/f;->c:[D

    aget-wide v12, v6, v7

    float-to-double v14, v9

    mul-double/2addr v10, v14

    add-double/2addr v10, v12

    aput-wide v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 42
    :cond_9
    iget-object v4, v2, Ln3/i/a/b/f$d;->c:[D

    array-length v6, v4

    const/4 v8, 0x1

    if-le v6, v8, :cond_a

    const/4 v6, 0x0

    .line 43
    invoke-static {v6, v4, v1}, Ln3/i/a/a/b;->a(I[D[[D)Ln3/i/a/a/b;

    move-result-object v1

    iput-object v1, v2, Ln3/i/a/b/f$d;->f:Ln3/i/a/a/b;

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 44
    iput-object v1, v2, Ln3/i/a/b/f$d;->f:Ln3/i/a/a/b;

    .line 45
    :goto_7
    invoke-static {v6, v3, v5}, Ln3/i/a/a/b;->a(I[D[[D)Ln3/i/a/a/b;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/i/a/b/f;->c:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Ln3/i/a/b/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/a/b/f$p;

    const-string v4, "["

    .line 4
    invoke-static {v0, v4}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v3, Ln3/i/a/b/f$p;->a:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Ln3/i/a/b/f$p;->b:F

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
