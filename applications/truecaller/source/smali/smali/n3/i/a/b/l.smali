.class public Ln3/i/a/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ln3/i/a/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ln3/i/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Ln3/i/a/b/l;->a:F

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Ln3/i/a/b/l;->b:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ln3/i/a/b/l;->d:F

    .line 5
    iput v1, p0, Ln3/i/a/b/l;->e:F

    .line 6
    iput v1, p0, Ln3/i/a/b/l;->f:F

    .line 7
    iput v1, p0, Ln3/i/a/b/l;->g:F

    .line 8
    iput v0, p0, Ln3/i/a/b/l;->h:F

    .line 9
    iput v0, p0, Ln3/i/a/b/l;->i:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 10
    iput v0, p0, Ln3/i/a/b/l;->j:F

    .line 11
    iput v0, p0, Ln3/i/a/b/l;->k:F

    .line 12
    iput v1, p0, Ln3/i/a/b/l;->l:F

    .line 13
    iput v1, p0, Ln3/i/a/b/l;->m:F

    .line 14
    iput v1, p0, Ln3/i/a/b/l;->n:F

    .line 15
    iput v0, p0, Ln3/i/a/b/l;->o:F

    .line 16
    iput v0, p0, Ln3/i/a/b/l;->p:F

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ln3/i/a/b/l;->q:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ln3/i/a/b/r;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/i/a/b/r;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_9
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_a
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_b
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_c
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    move v3, v5

    goto :goto_1

    :sswitch_d
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    :cond_e
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "CUSTOM"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ","

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 6
    iget-object v4, p0, Ln3/i/a/b/l;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    iget-object v4, p0, Ln3/i/a/b/l;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/i/c/a;

    .line 8
    instance-of v4, v2, Ln3/i/a/b/r$b;

    if-eqz v4, :cond_1d

    .line 9
    check-cast v2, Ln3/i/a/b/r$b;

    .line 10
    iget-object v1, v2, Ln3/i/a/b/r$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :pswitch_0
    iget v1, p0, Ln3/i/a/b/l;->a:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    iget v4, p0, Ln3/i/a/b/l;->a:F

    :goto_2
    invoke-virtual {v2, p2, v4}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 12
    :pswitch_1
    iget v1, p0, Ln3/i/a/b/l;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_3

    :cond_10
    iget v6, p0, Ln3/i/a/b/l;->o:F

    :goto_3
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 13
    :pswitch_2
    iget v1, p0, Ln3/i/a/b/l;->d:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_4

    :cond_11
    iget v6, p0, Ln3/i/a/b/l;->d:F

    :goto_4
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 14
    :pswitch_3
    iget v1, p0, Ln3/i/a/b/l;->e:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5

    :cond_12
    iget v6, p0, Ln3/i/a/b/l;->e:F

    :goto_5
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 15
    :pswitch_4
    iget v1, p0, Ln3/i/a/b/l;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_6

    :cond_13
    iget v6, p0, Ln3/i/a/b/l;->k:F

    :goto_6
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 16
    :pswitch_5
    iget v1, p0, Ln3/i/a/b/l;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_7

    :cond_14
    iget v6, p0, Ln3/i/a/b/l;->j:F

    :goto_7
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 17
    :pswitch_6
    iget v1, p0, Ln3/i/a/b/l;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    iget v4, p0, Ln3/i/a/b/l;->i:F

    :goto_8
    invoke-virtual {v2, p2, v4}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 18
    :pswitch_7
    iget v1, p0, Ln3/i/a/b/l;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_9

    :cond_16
    iget v4, p0, Ln3/i/a/b/l;->h:F

    :goto_9
    invoke-virtual {v2, p2, v4}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 19
    :pswitch_8
    iget v1, p0, Ln3/i/a/b/l;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_a

    :cond_17
    iget v6, p0, Ln3/i/a/b/l;->p:F

    :goto_a
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 20
    :pswitch_9
    iget v1, p0, Ln3/i/a/b/l;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_b

    :cond_18
    iget v6, p0, Ln3/i/a/b/l;->n:F

    :goto_b
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 21
    :pswitch_a
    iget v1, p0, Ln3/i/a/b/l;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_c

    :cond_19
    iget v6, p0, Ln3/i/a/b/l;->m:F

    :goto_c
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 22
    :pswitch_b
    iget v1, p0, Ln3/i/a/b/l;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_d

    :cond_1a
    iget v6, p0, Ln3/i/a/b/l;->l:F

    :goto_d
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 23
    :pswitch_c
    iget v1, p0, Ln3/i/a/b/l;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_e

    :cond_1b
    iget v6, p0, Ln3/i/a/b/l;->g:F

    :goto_e
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 24
    :pswitch_d
    iget v1, p0, Ln3/i/a/b/l;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_f

    :cond_1c
    iget v6, p0, Ln3/i/a/b/l;->f:F

    :goto_f
    invoke-virtual {v2, p2, v6}, Ln3/i/a/b/r;->b(IF)V

    goto/16 :goto_0

    .line 25
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " splineSet not a CustomSet frame = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ln3/i/c/a;->b()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    .locals 0

    .line 1
    check-cast p1, Ln3/i/a/b/l;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public d(Ln3/i/b/h/d;Ln3/i/c/d;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ln3/i/b/h/d;->x()I

    invoke-virtual {p1}, Ln3/i/b/h/d;->y()I

    .line 2
    invoke-virtual {p2, p3}, Ln3/i/c/d;->j(I)Ln3/i/c/d$a;

    move-result-object p1

    .line 3
    iget-object p2, p1, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget p3, p2, Ln3/i/c/d$d;->c:I

    iput p3, p0, Ln3/i/a/b/l;->b:I

    .line 4
    iget v0, p2, Ln3/i/c/d$d;->b:I

    iput v0, p0, Ln3/i/a/b/l;->c:I

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget p2, p2, Ln3/i/c/d$d;->d:F

    :goto_0
    iput p2, p0, Ln3/i/a/b/l;->a:F

    .line 6
    iget-object p2, p1, Ln3/i/c/d$a;->e:Ln3/i/c/d$e;

    iget-boolean p3, p2, Ln3/i/c/d$e;->l:Z

    .line 7
    iget p3, p2, Ln3/i/c/d$e;->m:F

    iput p3, p0, Ln3/i/a/b/l;->d:F

    .line 8
    iget p3, p2, Ln3/i/c/d$e;->b:F

    iput p3, p0, Ln3/i/a/b/l;->e:F

    .line 9
    iget p3, p2, Ln3/i/c/d$e;->c:F

    iput p3, p0, Ln3/i/a/b/l;->f:F

    .line 10
    iget p3, p2, Ln3/i/c/d$e;->d:F

    iput p3, p0, Ln3/i/a/b/l;->g:F

    .line 11
    iget p3, p2, Ln3/i/c/d$e;->e:F

    iput p3, p0, Ln3/i/a/b/l;->h:F

    .line 12
    iget p3, p2, Ln3/i/c/d$e;->f:F

    iput p3, p0, Ln3/i/a/b/l;->i:F

    .line 13
    iget p3, p2, Ln3/i/c/d$e;->g:F

    iput p3, p0, Ln3/i/a/b/l;->j:F

    .line 14
    iget p3, p2, Ln3/i/c/d$e;->h:F

    iput p3, p0, Ln3/i/a/b/l;->k:F

    .line 15
    iget p3, p2, Ln3/i/c/d$e;->i:F

    iput p3, p0, Ln3/i/a/b/l;->l:F

    .line 16
    iget p3, p2, Ln3/i/c/d$e;->j:F

    iput p3, p0, Ln3/i/a/b/l;->m:F

    .line 17
    iget p2, p2, Ln3/i/c/d$e;->k:F

    iput p2, p0, Ln3/i/a/b/l;->n:F

    .line 18
    iget-object p2, p1, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    iget-object p2, p2, Ln3/i/c/d$c;->c:Ljava/lang/String;

    invoke-static {p2}, Ln3/i/a/a/c;->c(Ljava/lang/String;)Ln3/i/a/a/c;

    .line 19
    iget-object p2, p1, Ln3/i/c/d$a;->c:Ln3/i/c/d$c;

    iget p2, p2, Ln3/i/c/d$c;->g:F

    iput p2, p0, Ln3/i/a/b/l;->o:F

    .line 20
    iget-object p2, p1, Ln3/i/c/d$a;->b:Ln3/i/c/d$d;

    iget p2, p2, Ln3/i/c/d$d;->e:F

    iput p2, p0, Ln3/i/a/b/l;->p:F

    .line 21
    iget-object p2, p1, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 22
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 23
    iget-object v0, p1, Ln3/i/c/d$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/i/c/a;

    .line 24
    iget-object v1, v0, Ln3/i/c/a;->b:Ln3/i/c/a$a;

    .line 25
    sget-object v2, Ln3/i/c/a$a;->e:Ln3/i/c/a$a;

    if-eq v1, v2, :cond_1

    .line 26
    iget-object v1, p0, Ln3/i/a/b/l;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method
