.class public Ln3/y/e/e$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/y/e/e$a$b;

.field public b:Z

.field public c:Ln3/y/e/e$a$d;

.field public final d:[Ln3/y/e/e$a$d;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/y/e/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/os/Handler;

.field public final synthetic g:Ln3/y/e/e$a;


# direct methods
.method public constructor <init>(Ln3/y/e/e$a;Ln3/y/e/e$a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/e$a$a;->g:Ln3/y/e/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ln3/y/e/e$a$a;->b:Z

    const/16 p1, 0x8

    new-array p1, p1, [Ln3/y/e/e$a$d;

    .line 3
    iput-object p1, p0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ln3/y/e/e$a$a;->e:Ljava/util/ArrayList;

    .line 5
    iput-object p2, p0, Ln3/y/e/e$a$a;->a:Ln3/y/e/e$a$b;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Ln3/y/e/e$a$a;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Ln3/y/e/e$a$a;->c(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/e/e$a$d;

    .line 2
    iget-object v1, v0, Ln3/y/e/e$a$d;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3
    iget-object v1, v0, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ln3/y/e/c0;->c(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0}, Ln3/y/e/e$a$d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/y/e/e$a$a;->b:Z

    .line 2
    iget-object v0, p0, Ln3/y/e/e$a$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/e/d$c;

    .line 3
    invoke-virtual {p0, v1}, Ln3/y/e/e$a$a;->d(Ln3/y/e/d$c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/y/e/e$a$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final c(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ln3/y/e/e$a$d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Ln3/y/e/d$c;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Ln3/y/e/e$a$a;->b:Z

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v0, Ln3/y/e/e$a$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget v2, v1, Ln3/y/e/d$c;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    .line 4
    :pswitch_0
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/e/d$g;

    if-nez v1, :cond_1

    goto/16 :goto_12

    .line 5
    :cond_1
    iget v2, v1, Ln3/y/e/d$g;->a:I

    if-ltz v2, :cond_2a

    .line 6
    iget-object v4, v0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    array-length v7, v4

    if-lt v2, v7, :cond_2

    goto/16 :goto_12

    .line 7
    :cond_2
    aget-object v4, v4, v2

    if-nez v4, :cond_3

    .line 8
    new-instance v4, Ln3/y/e/e$a$d;

    iget-object v7, v0, Ln3/y/e/e$a$a;->g:Ln3/y/e/e$a;

    iget-object v8, v0, Ln3/y/e/e$a$a;->a:Ln3/y/e/e$a$b;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ln3/y/e/e$a$d;-><init>(Ln3/y/e/e$a;Landroid/content/Context;)V

    .line 9
    :cond_3
    iget-object v7, v0, Ln3/y/e/e$a$a;->a:Ln3/y/e/e$a$b;

    .line 10
    iget-object v8, v4, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    if-eq v8, v7, :cond_5

    if-eqz v8, :cond_4

    .line 11
    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 12
    :cond_4
    iput-object v7, v4, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    .line 13
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 14
    invoke-virtual {v4}, Ln3/y/e/e$a$d;->f()V

    .line 15
    :cond_5
    iget v7, v1, Ln3/y/e/d$g;->d:I

    int-to-float v7, v7

    .line 16
    iget-boolean v8, v1, Ln3/y/e/d$g;->c:Z

    const/16 v9, 0x63

    if-eqz v8, :cond_6

    move v10, v9

    goto :goto_0

    :cond_6
    const/16 v10, 0x4a

    :goto_0
    int-to-float v10, v10

    div-float/2addr v7, v10

    .line 17
    iget v10, v1, Ln3/y/e/d$g;->e:I

    int-to-float v10, v10

    if-eqz v8, :cond_7

    goto :goto_1

    :cond_7
    const/16 v9, 0xd1

    :goto_1
    int-to-float v8, v9

    div-float/2addr v10, v8

    const/4 v8, 0x0

    cmpg-float v9, v7, v8

    const/high16 v11, 0x3f800000    # 1.0f

    if-ltz v9, :cond_8

    cmpl-float v9, v7, v11

    if-lez v9, :cond_9

    .line 18
    :cond_8
    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    :cond_9
    cmpg-float v9, v10, v8

    if-ltz v9, :cond_a

    cmpl-float v9, v10, v11

    if-lez v9, :cond_b

    .line 19
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    :cond_b
    const/16 v9, 0x11

    .line 20
    iget v12, v1, Ln3/y/e/d$g;->f:I

    rem-int/lit8 v13, v12, 0x3

    const/4 v14, 0x3

    .line 21
    div-int/2addr v12, v14

    if-eqz v13, :cond_11

    if-eq v13, v6, :cond_d

    if-eq v13, v5, :cond_c

    move/from16 v17, v8

    move/from16 v18, v11

    goto/16 :goto_6

    :cond_c
    const/4 v9, 0x5

    move/from16 v17, v8

    :goto_2
    move/from16 v18, v10

    goto/16 :goto_6

    :cond_d
    sub-float v9, v11, v10

    .line 22
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 23
    iget v13, v1, Ln3/y/e/d$g;->h:I

    add-int/2addr v13, v6

    const/16 v15, 0x2a

    .line 24
    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 25
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    if-ge v3, v13, :cond_e

    .line 26
    iget-object v14, v4, Ln3/y/e/e$a$d;->k:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x3

    goto :goto_3

    .line 27
    :cond_e
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 28
    iget-object v13, v4, Ln3/y/e/e$a$d;->c:Ln3/y/e/a;

    .line 29
    iget-object v13, v13, Ln3/y/e/a;->j:Landroid/graphics/Typeface;

    .line 30
    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 31
    iget v13, v4, Ln3/y/e/e$a$d;->j:F

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 33
    iget-object v13, v4, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    if-lez v13, :cond_f

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v3, v13

    .line 34
    iget-object v13, v4, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3f4ccccd    # 0.8f

    mul-float/2addr v13, v14

    div-float/2addr v3, v13

    goto :goto_4

    :cond_f
    move v3, v8

    :goto_4
    cmpl-float v13, v3, v8

    if-lez v13, :cond_10

    cmpg-float v13, v3, v10

    if-gez v13, :cond_10

    .line 35
    iget-object v9, v4, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v9, v13}, Ln3/y/e/c0;->b(Landroid/text/Layout$Alignment;)V

    sub-float/2addr v10, v3

    goto :goto_5

    .line 36
    :cond_10
    iget-object v3, v4, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v13}, Ln3/y/e/c0;->b(Landroid/text/Layout$Alignment;)V

    sub-float v3, v10, v9

    add-float/2addr v10, v9

    move/from16 v17, v3

    move v9, v6

    goto :goto_2

    .line 37
    :cond_11
    iget-object v3, v4, Ln3/y/e/e$a$d;->b:Ln3/y/e/e$a$c;

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v3, v9}, Ln3/y/e/c0;->b(Landroid/text/Layout$Alignment;)V

    :goto_5
    move/from16 v17, v10

    move/from16 v18, v11

    const/4 v9, 0x3

    :goto_6
    if-eqz v12, :cond_14

    if-eq v12, v6, :cond_13

    if-eq v12, v5, :cond_12

    goto :goto_7

    :cond_12
    or-int/lit8 v3, v9, 0x50

    move/from16 v16, v7

    move v15, v8

    goto :goto_8

    :cond_13
    or-int/lit8 v9, v9, 0x10

    sub-float/2addr v11, v7

    .line 38
    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v5, v7, v3

    add-float v11, v7, v3

    move v8, v5

    goto :goto_7

    :cond_14
    or-int/lit8 v9, v9, 0x30

    move v8, v7

    :goto_7
    move v15, v8

    move v3, v9

    move/from16 v16, v11

    .line 39
    :goto_8
    iget-object v5, v4, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    new-instance v6, Ln3/y/e/e$a$e$b;

    iget-object v14, v4, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    .line 40
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Ln3/y/e/e$a$e$b;-><init>(Ln3/y/e/e$a$e;FFFF)V

    .line 41
    iget-object v7, v5, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_15

    .line 42
    iget-object v5, v5, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 43
    :cond_15
    iget-object v5, v5, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v5, v4, v6}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :goto_9
    iget v5, v1, Ln3/y/e/d$g;->a:I

    .line 45
    iput v5, v4, Ln3/y/e/e$a$d;->g:I

    .line 46
    iget v5, v1, Ln3/y/e/d$g;->g:I

    if-ltz v5, :cond_17

    .line 47
    iput v5, v4, Ln3/y/e/e$a$d;->d:I

    .line 48
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 49
    iget-boolean v1, v1, Ln3/y/e/d$g;->b:Z

    if-eqz v1, :cond_16

    .line 50
    invoke-virtual {v4}, Ln3/y/e/e$a$d;->d()V

    goto :goto_a

    .line 51
    :cond_16
    invoke-virtual {v4}, Ln3/y/e/e$a$d;->b()V

    .line 52
    :goto_a
    iget-object v1, v0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    aput-object v4, v1, v2

    iput-object v4, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    goto/16 :goto_12

    .line 53
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A rowLimit should have a positive number"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :pswitch_1
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/e/d$h;

    .line 55
    iget-object v1, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    goto/16 :goto_12

    .line 56
    :pswitch_2
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/e/d$f;

    .line 57
    iget-object v2, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    if-eqz v2, :cond_2a

    .line 58
    iget v1, v1, Ln3/y/e/d$f;->a:I

    .line 59
    iget v3, v2, Ln3/y/e/e$a$d;->h:I

    if-ltz v3, :cond_18

    :goto_b
    if-ge v3, v1, :cond_18

    const-string v4, "\n"

    .line 60
    invoke-virtual {v2, v4}, Ln3/y/e/e$a$d;->a(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 61
    :cond_18
    iput v1, v2, Ln3/y/e/e$a$d;->h:I

    goto/16 :goto_12

    .line 62
    :pswitch_3
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/e/d$e;

    .line 63
    iget-object v1, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    goto/16 :goto_12

    .line 64
    :pswitch_4
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ln3/y/e/d$d;

    .line 65
    iget-object v2, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    if-eqz v2, :cond_2a

    .line 66
    iget-object v3, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 67
    iget-boolean v3, v1, Ln3/y/e/d$d;->d:Z

    if-eqz v3, :cond_19

    .line 68
    iget-object v3, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_19
    iget-boolean v3, v1, Ln3/y/e/d$d;->c:Z

    if-eqz v3, :cond_1a

    .line 70
    iget-object v3, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_1a
    iget v3, v1, Ln3/y/e/d$d;->a:I

    if-eqz v3, :cond_1c

    if-eq v3, v5, :cond_1b

    goto :goto_c

    .line 72
    :cond_1b
    iget-object v3, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v6, 0x3fa00000    # 1.25f

    invoke-direct {v4, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 73
    :cond_1c
    iget-object v3, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {v4, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_c
    iget v1, v1, Ln3/y/e/d$d;->b:I

    if-eqz v1, :cond_1e

    if-eq v1, v5, :cond_1d

    goto/16 :goto_12

    .line 75
    :cond_1d
    iget-object v1, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 76
    :cond_1e
    iget-object v1, v2, Ln3/y/e/e$a$d;->f:Ljava/util/List;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12

    .line 77
    :pswitch_5
    iput-object v4, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    .line 78
    iput-boolean v3, v0, Ln3/y/e/e$a$a;->b:Z

    .line 79
    iget-object v1, v0, Ln3/y/e/e$a$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_d
    const/16 v1, 0x8

    if-ge v3, v1, :cond_20

    .line 80
    iget-object v1, v0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    aget-object v2, v1, v3

    if-eqz v2, :cond_1f

    .line 81
    aget-object v1, v1, v3

    .line 82
    iget-object v2, v1, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    if-eqz v2, :cond_1f

    .line 83
    iget-object v2, v2, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 84
    iget-object v2, v1, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 85
    iput-object v4, v1, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    .line 86
    :cond_1f
    iget-object v1, v0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 87
    :cond_20
    iget-object v1, v0, Ln3/y/e/e$a$a;->a:Ln3/y/e/e$a$b;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 88
    iget-object v1, v0, Ln3/y/e/e$a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_12

    .line 89
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Ln3/y/e/e$a$a;->b()V

    goto/16 :goto_12

    .line 90
    :pswitch_7
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2a

    const/16 v2, 0xff

    if-le v1, v2, :cond_21

    goto/16 :goto_12

    .line 91
    :cond_21
    iput-boolean v6, v0, Ln3/y/e/e$a$a;->b:Z

    .line 92
    iget-object v2, v0, Ln3/y/e/e$a$a;->f:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    mul-int/lit8 v1, v1, 0x64

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_12

    .line 93
    :pswitch_8
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_12

    .line 94
    :cond_22
    invoke-virtual {v0, v1}, Ln3/y/e/e$a$a;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/e/e$a$d;

    .line 95
    iget-object v3, v2, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    if-eqz v3, :cond_23

    .line 96
    iget-object v3, v3, Ln3/y/e/e$a$b;->c:Ln3/y/e/e$a$e;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    iget-object v3, v2, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 98
    iput-object v4, v2, Ln3/y/e/e$a$d;->a:Ln3/y/e/e$a$b;

    .line 99
    :cond_23
    iget-object v3, v0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    .line 100
    iget v2, v2, Ln3/y/e/e$a$d;->g:I

    .line 101
    aput-object v4, v3, v2

    goto :goto_e

    .line 102
    :pswitch_9
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_12

    .line 103
    :cond_24
    invoke-virtual {v0, v1}, Ln3/y/e/e$a$a;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/e/e$a$d;

    .line 104
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 105
    invoke-virtual {v2}, Ln3/y/e/e$a$d;->b()V

    goto :goto_f

    .line 106
    :cond_25
    invoke-virtual {v2}, Ln3/y/e/e$a$d;->d()V

    goto :goto_f

    .line 107
    :pswitch_a
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_12

    .line 108
    :cond_26
    invoke-virtual {v0, v1}, Ln3/y/e/e$a$a;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/e/e$a$d;

    .line 109
    invoke-virtual {v2}, Ln3/y/e/e$a$d;->b()V

    goto :goto_10

    .line 110
    :pswitch_b
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_27

    goto :goto_12

    .line 111
    :cond_27
    invoke-virtual {v0, v1}, Ln3/y/e/e$a$a;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/y/e/e$a$d;

    .line 112
    invoke-virtual {v2}, Ln3/y/e/e$a$d;->d()V

    goto :goto_11

    .line 113
    :pswitch_c
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ln3/y/e/e$a$a;->a(I)V

    goto :goto_12

    .line 114
    :pswitch_d
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2a

    .line 115
    iget-object v2, v0, Ln3/y/e/e$a$a;->d:[Ln3/y/e/e$a$d;

    array-length v3, v2

    if-lt v1, v3, :cond_28

    goto :goto_12

    .line 116
    :cond_28
    aget-object v1, v2, v1

    if-nez v1, :cond_29

    goto :goto_12

    .line 117
    :cond_29
    iput-object v1, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    goto :goto_12

    .line 118
    :pswitch_e
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 119
    iget-object v1, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    goto :goto_12

    .line 120
    :pswitch_f
    iget-object v1, v1, Ln3/y/e/d$c;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 121
    iget-object v2, v0, Ln3/y/e/e$a$a;->c:Ln3/y/e/e$a$d;

    if-eqz v2, :cond_2a

    .line 122
    invoke-virtual {v2, v1}, Ln3/y/e/e$a$d;->a(Ljava/lang/String;)V

    .line 123
    iget-object v1, v0, Ln3/y/e/e$a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v1, v0, Ln3/y/e/e$a$a;->f:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2a
    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
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

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xff

    .line 2
    invoke-virtual {p0, p1}, Ln3/y/e/e$a$a;->a(I)V

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/y/e/e$a$a;->b()V

    return v0
.end method
