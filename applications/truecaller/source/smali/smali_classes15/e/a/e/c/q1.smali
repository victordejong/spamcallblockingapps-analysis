.class public final Le/a/e/c/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Z

.field public final c:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLe/a/p5/h0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/q1;->a:Landroid/content/Context;

    iput-boolean p2, p0, Le/a/e/c/q1;->b:Z

    iput-object p3, p0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    return-void
.end method


# virtual methods
.method public final a()Le/a/e/c/p1;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    new-instance v7, Le/a/e/c/p1;

    .line 2
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v2, 0x7f060620

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v2

    .line 3
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v3, 0x7f060636

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v4

    .line 4
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v6, 0x106000d

    invoke-interface {v1, v6}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-direct {v5, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 5
    new-instance v6, Le/a/e/c/y1;

    .line 6
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v9

    .line 7
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v3, 0x7f06063a

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v10

    .line 8
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v15, 0x7f0600c8

    invoke-interface {v1, v15}, Le/a/p5/c0;->a(I)I

    move-result v11

    .line 9
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v12

    .line 10
    invoke-virtual/range {p0 .. p0}, Le/a/e/c/q1;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v13, 0x7f060633

    invoke-interface {v8, v13}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 12
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v14, 0x7f060510

    invoke-interface {v8, v14}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 13
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v8, v3}, Le/a/p5/c0;->a(I)I

    move-result v17

    .line 14
    iget-object v3, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v8, 0x7f08014b

    invoke-interface {v3, v8}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v16, 0x0

    const/16 v19, 0x80

    move-object v8, v6

    move v3, v15

    move-object v15, v1

    .line 15
    invoke-direct/range {v8 .. v19}, Le/a/e/c/y1;-><init>(IIIILjava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)V

    .line 16
    new-instance v8, Le/a/e/c/r1;

    .line 17
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v1, v3}, Le/a/p5/c0;->a(I)I

    move-result v21

    .line 18
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v9, 0x7f0600c5

    invoke-interface {v3, v9}, Le/a/p5/c0;->a(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0xc

    move-object/from16 v20, v8

    move-object/from16 v22, v1

    .line 19
    invoke-direct/range {v20 .. v25}, Le/a/e/c/r1;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    move-object v1, v7

    move-object v3, v5

    move-object v5, v6

    move-object v6, v8

    .line 20
    invoke-direct/range {v1 .. v6}, Le/a/e/c/p1;-><init>(ILandroid/graphics/drawable/Drawable;ILe/a/e/c/y1;Le/a/e/c/r1;)V

    return-object v7
.end method

.method public final b(Z)Le/a/e/c/p1;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v7, Le/a/e/c/p1;

    .line 2
    iget-object v2, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v3, 0x7f040723

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    .line 3
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v5, 0x7f0406f4

    invoke-interface {v4, v5}, Le/a/p5/h0;->l(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    iget-object v4, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v6, 0x7f040729

    invoke-interface {v4, v6}, Le/a/p5/h0;->l(I)I

    move-result v4

    .line 5
    new-instance v6, Le/a/e/c/y1;

    .line 6
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v9, 0x7f040728

    invoke-interface {v8, v9}, Le/a/p5/h0;->l(I)I

    move-result v9

    .line 7
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f0405c9

    invoke-interface {v8, v10}, Le/a/p5/h0;->l(I)I

    move-result v11

    .line 8
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v15, 0x7f04019f

    invoke-interface {v8, v15}, Le/a/p5/h0;->l(I)I

    move-result v12

    .line 9
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v8, v10}, Le/a/p5/h0;->l(I)I

    move-result v13

    .line 10
    invoke-virtual/range {p0 .. p0}, Le/a/e/c/q1;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 11
    iget-object v10, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v14, 0x7f040566

    invoke-interface {v10, v14}, Le/a/p5/h0;->l(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v14, v10

    goto :goto_0

    :cond_0
    move-object v14, v8

    :goto_0
    if-eqz v1, :cond_1

    .line 12
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f040564

    invoke-interface {v8, v10}, Le/a/p5/h0;->l(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_1
    move-object/from16 v17, v8

    const/16 v18, 0x0

    .line 13
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f040748

    invoke-interface {v8, v10}, Le/a/p5/h0;->l(I)I

    move-result v19

    .line 14
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f040746

    invoke-interface {v8, v10}, Le/a/p5/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v21, 0x80

    move-object v8, v6

    move v10, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    move v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v20

    move/from16 v19, v21

    .line 15
    invoke-direct/range {v8 .. v19}, Le/a/e/c/y1;-><init>(IIIILjava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)V

    const/4 v8, 0x1

    if-ne v1, v8, :cond_2

    .line 16
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v9, 0x7f0405bc

    invoke-interface {v8, v9}, Le/a/p5/h0;->l(I)I

    move-result v8

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_1
    move-object v12, v1

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    .line 17
    iget-object v1, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    .line 18
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v9, 0x7f04019e

    invoke-interface {v8, v9}, Le/a/p5/c0;->e(I)I

    move-result v8

    .line 19
    invoke-static {v1, v8}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v8, "GUIUtils.getDrawable(\n  \u2026Background)\n            )"

    invoke-static {v1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :goto_2
    new-instance v8, Le/a/e/c/r1;

    .line 21
    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v1, v5}, Le/a/p5/h0;->l(I)I

    move-result v10

    .line 22
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v5, 0x7f0406f4

    invoke-interface {v1, v5}, Le/a/p5/h0;->l(I)I

    move-result v1

    invoke-direct {v11, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v13, 0x0

    const/16 v14, 0x8

    move-object v9, v8

    .line 23
    invoke-direct/range {v9 .. v14}, Le/a/e/c/r1;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    move-object v1, v7

    move-object v5, v6

    move-object v6, v8

    .line 24
    invoke-direct/range {v1 .. v6}, Le/a/e/c/p1;-><init>(ILandroid/graphics/drawable/Drawable;ILe/a/e/c/y1;Le/a/e/c/r1;)V

    return-object v7

    .line 25
    :cond_3
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public final c(Z)Le/a/e/c/p1;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    new-instance v7, Le/a/e/c/p1;

    .line 2
    iget-object v2, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    .line 3
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v3, 0x7f0602cd

    .line 4
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    const v3, 0x7f0405c0

    const v4, 0x7f080278

    if-eqz v1, :cond_1

    .line 5
    iget-object v5, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v5, v3}, Le/a/p5/c0;->m(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v5, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    .line 7
    invoke-static {v5, v4}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 8
    :cond_1
    iget-object v5, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    .line 9
    invoke-static {v5, v4}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 10
    :goto_0
    iget-object v6, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    const v8, 0x7f0606cc

    .line 11
    invoke-static {v6, v8}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 12
    new-instance v19, Le/a/e/c/y1;

    .line 13
    iget-object v8, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    const v9, 0x7f0602ca

    .line 14
    invoke-static {v8, v9}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v9

    .line 15
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f0405ca

    invoke-interface {v8, v10}, Le/a/p5/h0;->l(I)I

    move-result v10

    .line 16
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v11, 0x7f0405c7

    invoke-interface {v8, v11}, Le/a/p5/h0;->l(I)I

    move-result v11

    .line 17
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v12, 0x7f0405bf

    invoke-interface {v8, v12}, Le/a/p5/h0;->l(I)I

    move-result v12

    .line 18
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v13, 0x7f040567

    invoke-interface {v8, v13}, Le/a/p5/h0;->l(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    if-eqz v1, :cond_2

    .line 19
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v14, 0x7f040564

    invoke-interface {v8, v14}, Le/a/p5/h0;->l(I)I

    move-result v8

    goto :goto_1

    .line 20
    :cond_2
    iget-object v8, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    const v14, 0x7f0602c7

    .line 21
    invoke-static {v8, v14}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v8

    .line 22
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 23
    invoke-virtual/range {p0 .. p0}, Le/a/e/c/q1;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v1, :cond_4

    .line 24
    iget-object v8, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    invoke-interface {v8, v3}, Le/a/p5/c0;->m(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    iget-object v3, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    .line 26
    invoke-static {v3, v4}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v16, v3

    .line 27
    iget-object v3, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v4, 0x7f040749

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v17

    .line 28
    iget-object v3, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v4, 0x7f040747

    invoke-interface {v3, v4}, Le/a/p5/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v8, v19

    .line 29
    invoke-direct/range {v8 .. v18}, Le/a/e/c/y1;-><init>(IIIILjava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 30
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, v0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v4, 0x7f0405bd

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_3
    move-object v11, v1

    goto :goto_4

    :cond_5
    if-nez v1, :cond_6

    .line 31
    iget-object v1, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    const v3, 0x7f080277

    invoke-static {v1, v3}, Le/a/b0/q/o;->d(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v3, "GUIUtils.getDrawable(con\u2026s_action_bar_border_gold)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :goto_4
    new-instance v14, Le/a/e/c/r1;

    .line 33
    iget-object v1, v0, Le/a/e/c/q1;->a:Landroid/content/Context;

    const v3, 0x7f0602cc

    .line 34
    invoke-static {v1, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v9

    const/4 v12, 0x0

    const/16 v13, 0x8

    move-object v8, v14

    move-object v10, v11

    .line 35
    invoke-direct/range {v8 .. v13}, Le/a/e/c/r1;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V

    move-object v1, v7

    move-object v3, v5

    move v4, v6

    move-object/from16 v5, v19

    move-object v6, v14

    .line 36
    invoke-direct/range {v1 .. v6}, Le/a/e/c/p1;-><init>(ILandroid/graphics/drawable/Drawable;ILe/a/e/c/y1;Le/a/e/c/r1;)V

    return-object v7

    .line 37
    :cond_6
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public final d(Lcom/truecaller/data/entity/Style;)Le/a/e/c/p1;
    .locals 26

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/Style;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-string v0, "#F2F5F7"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 4
    :goto_0
    invoke-static {v0}, Le/a/e/a2;->x(I)D

    move-result-wide v2

    const-wide v4, 0x4055400000000000L    # 85.0

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v6

    :goto_1
    const v7, -0xd8cdc8

    const/4 v8, -0x1

    if-eqz v2, :cond_1

    move v2, v7

    goto :goto_2

    :cond_1
    move v2, v8

    .line 5
    :goto_2
    invoke-static {v0}, Le/a/e/a2;->v(I)I

    move-result v21

    .line 6
    new-instance v22, Le/a/e/c/p1;

    .line 7
    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 8
    new-instance v0, Le/a/e/c/y1;

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/high16 v23, 0x33000000

    .line 10
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/a/e/c/q1;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v18, 0x0

    .line 12
    iget-object v9, v1, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f040748

    invoke-interface {v9, v10}, Le/a/p5/h0;->l(I)I

    move-result v19

    .line 13
    iget-object v9, v1, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v10, 0x7f040746

    invoke-interface {v9, v10}, Le/a/p5/h0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    const/16 v24, 0x80

    move-object v9, v0

    move v10, v2

    move v11, v2

    move v12, v2

    move v13, v2

    move-object/from16 v25, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v24

    .line 14
    invoke-direct/range {v9 .. v20}, Le/a/e/c/y1;-><init>(IIIILjava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;I)V

    .line 15
    invoke-virtual/range {p0 .. p1}, Le/a/e/c/q1;->f(Lcom/truecaller/data/entity/Style;)I

    move-result v9

    .line 16
    new-instance v14, Le/a/e/c/r1;

    .line 17
    invoke-virtual/range {p0 .. p1}, Le/a/e/c/q1;->f(Lcom/truecaller/data/entity/Style;)I

    move-result v10

    invoke-static {v10}, Le/a/e/a2;->x(I)D

    move-result-wide v10

    cmpl-double v10, v10, v4

    if-lez v10, :cond_2

    move v10, v3

    goto :goto_3

    :cond_2
    move v10, v6

    :goto_3
    if-eqz v10, :cond_3

    goto :goto_4

    :cond_3
    move v7, v8

    .line 18
    :goto_4
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    invoke-virtual/range {p0 .. p1}, Le/a/e/c/q1;->f(Lcom/truecaller/data/entity/Style;)I

    move-result v11

    invoke-static {v11}, Le/a/e/a2;->x(I)D

    move-result-wide v11

    cmpl-double v4, v11, v4

    if-lez v4, :cond_4

    goto :goto_5

    :cond_4
    move v3, v6

    :goto_5
    if-eqz v3, :cond_5

    goto :goto_6

    :cond_5
    const v23, 0x33ffffff

    :goto_6
    move/from16 v3, v23

    .line 22
    invoke-direct {v9, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 23
    invoke-direct {v14, v7, v8, v10, v9}, Le/a/e/c/r1;-><init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v9, v22

    move/from16 v10, v21

    move-object/from16 v11, v25

    move v12, v2

    move-object v13, v0

    .line 24
    invoke-direct/range {v9 .. v14}, Le/a/e/c/p1;-><init>(ILandroid/graphics/drawable/Drawable;ILe/a/e/c/y1;Le/a/e/c/r1;)V

    return-object v22
.end method

.method public final e()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v1, 0x7f0405be

    invoke-interface {v0, v1}, Le/a/p5/c0;->m(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/c/q1;->c:Le/a/p5/h0;

    const v1, 0x7f080360

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "themedResourceProvider.g\u2026ic_add_circle_white_24dp)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final f(Lcom/truecaller/data/entity/Style;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Style;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const-string p1, "#F2F5F7"

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method
