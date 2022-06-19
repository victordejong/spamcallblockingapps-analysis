.class public final Le/a/c/a/g/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/google/android/material/button/MaterialButton;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/view/View;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/widget/TextView;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;

.field public final n:Landroid/widget/TextView;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/widget/TextView;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroid/widget/TextView;

.field public final s:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Le/a/c/a/g/b2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p6

    .line 3
    iput-object v1, v0, Le/a/c/a/g/b2;->b:Lcom/google/android/material/button/MaterialButton;

    move-object v1, p7

    .line 4
    iput-object v1, v0, Le/a/c/a/g/b2;->c:Landroid/widget/ImageView;

    move-object v1, p8

    .line 5
    iput-object v1, v0, Le/a/c/a/g/b2;->d:Landroid/view/View;

    move-object v1, p9

    .line 6
    iput-object v1, v0, Le/a/c/a/g/b2;->e:Landroid/widget/TextView;

    move-object v1, p10

    .line 7
    iput-object v1, v0, Le/a/c/a/g/b2;->f:Landroid/widget/TextView;

    move-object v1, p11

    .line 8
    iput-object v1, v0, Le/a/c/a/g/b2;->g:Landroid/widget/TextView;

    move-object v1, p12

    .line 9
    iput-object v1, v0, Le/a/c/a/g/b2;->h:Landroid/widget/TextView;

    move-object v1, p13

    .line 10
    iput-object v1, v0, Le/a/c/a/g/b2;->i:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 11
    iput-object v1, v0, Le/a/c/a/g/b2;->j:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 12
    iput-object v1, v0, Le/a/c/a/g/b2;->k:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 13
    iput-object v1, v0, Le/a/c/a/g/b2;->l:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 14
    iput-object v1, v0, Le/a/c/a/g/b2;->m:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 15
    iput-object v1, v0, Le/a/c/a/g/b2;->n:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 16
    iput-object v1, v0, Le/a/c/a/g/b2;->o:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 17
    iput-object v1, v0, Le/a/c/a/g/b2;->p:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 18
    iput-object v1, v0, Le/a/c/a/g/b2;->q:Landroid/widget/TextView;

    move-object/from16 v1, p22

    .line 19
    iput-object v1, v0, Le/a/c/a/g/b2;->r:Landroid/widget/TextView;

    move-object/from16 v1, p23

    .line 20
    iput-object v1, v0, Le/a/c/a/g/b2;->s:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Le/a/c/a/g/b2;
    .locals 27

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/truecaller/insights/ui/R$id;->barrierInfo1Bottom:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/truecaller/insights/ui/R$id;->barrierInfo2Start:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v6, :cond_0

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$id;->barrierInfo3Bottom:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v7, :cond_0

    .line 7
    sget v1, Lcom/truecaller/insights/ui/R$id;->barrierInfo4Start:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_0

    .line 9
    sget v1, Lcom/truecaller/insights/ui/R$id;->buttonShowTransaction:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    if-eqz v9, :cond_0

    .line 11
    sget v1, Lcom/truecaller/insights/ui/R$id;->imageCategoryIcon:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    .line 13
    sget v1, Lcom/truecaller/insights/ui/R$id;->messageSpacing:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 15
    sget v1, Lcom/truecaller/insights/ui/R$id;->textCardInfo:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 17
    sget v1, Lcom/truecaller/insights/ui/R$id;->textCategory:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 19
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo1Name:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 21
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo1Value:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    .line 23
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo2Name:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 25
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo2Value:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 27
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo3Name:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 29
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo3Value:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 31
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo4Name:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 33
    sget v1, Lcom/truecaller/insights/ui/R$id;->textInfo4Value:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 35
    sget v1, Lcom/truecaller/insights/ui/R$id;->textMessage:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 37
    sget v1, Lcom/truecaller/insights/ui/R$id;->textRightTitle:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 39
    sget v1, Lcom/truecaller/insights/ui/R$id;->textStatus:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    .line 41
    sget v1, Lcom/truecaller/insights/ui/R$id;->textSubtitle:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 43
    sget v1, Lcom/truecaller/insights/ui/R$id;->textTitle:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_0

    .line 45
    new-instance v1, Le/a/c/a/g/b2;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v26}, Le/a/c/a/g/b2;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
