.class public Le/a/a/c/r8/a$b;
.super Le/a/a/c/r8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/r8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/c/r8/a<",
        "Le/a/a/c/n8/a;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Landroid/content/Context;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/a/c/r8/a;-><init>(IILandroid/content/Context;)V

    .line 2
    iput-object p3, p0, Le/a/a/c/r8/a$b;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public d(Le/a/a/c/r8/c;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/c/n8/a;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()Le/a/a/c/r8/c;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/r8/a$b;->f:Landroid/content/Context;

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d04d2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a103b

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "Missing required view with ID: "

    if-eqz v3, :cond_1

    .line 6
    sget v2, Lcom/truecaller/insights/ui/R$id;->barrierInfo1Bottom:I

    .line 7
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_0

    .line 8
    sget v2, Lcom/truecaller/insights/ui/R$id;->barrierInfo2Start:I

    .line 9
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v9, :cond_0

    .line 10
    sget v2, Lcom/truecaller/insights/ui/R$id;->barrierInfo4Start:I

    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v10, :cond_0

    .line 12
    sget v2, Lcom/truecaller/insights/ui/R$id;->buttonAction1:I

    .line 13
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    if-eqz v11, :cond_0

    .line 14
    sget v2, Lcom/truecaller/insights/ui/R$id;->buttonAction2:I

    .line 15
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/google/android/material/button/MaterialButton;

    if-eqz v12, :cond_0

    .line 16
    sget v2, Lcom/truecaller/insights/ui/R$id;->buttonDelete:I

    .line 17
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 18
    sget v2, Lcom/truecaller/insights/ui/R$id;->dataContainer:I

    .line 19
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v14, :cond_0

    .line 20
    sget v2, Lcom/truecaller/insights/ui/R$id;->imageCategoryIcon:I

    .line 21
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    .line 22
    sget v2, Lcom/truecaller/insights/ui/R$id;->textCategory:I

    .line 23
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 24
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo1Name:I

    .line 25
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 26
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo1Value:I

    .line 27
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 28
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo2Name:I

    .line 29
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 30
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo2Value:I

    .line 31
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 32
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo3Name:I

    .line 33
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 34
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo3Value:I

    .line 35
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 36
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo4Name:I

    .line 37
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 38
    sget v2, Lcom/truecaller/insights/ui/R$id;->textInfo4Value:I

    .line 39
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    .line 40
    sget v2, Lcom/truecaller/insights/ui/R$id;->textRightTitle:I

    .line 41
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 42
    sget v2, Lcom/truecaller/insights/ui/R$id;->textStatus:I

    .line 43
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_0

    .line 44
    sget v2, Lcom/truecaller/insights/ui/R$id;->textSubtitle:I

    .line 45
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_0

    .line 46
    sget v2, Lcom/truecaller/insights/ui/R$id;->textTitle:I

    .line 47
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Landroid/widget/TextView;

    if-eqz v28, :cond_0

    .line 48
    new-instance v2, Le/a/c/a/g/n0;

    move-object v6, v2

    move-object v7, v3

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v6 .. v28}, Le/a/c/a/g/n0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/Barrier;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 49
    new-instance v3, Le/a/m3/d1;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v3, v1, v2}, Le/a/m3/d1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Le/a/c/a/g/n0;)V

    const-string v1, "ViewInfoCardContainerBin\u2026(context), parent, false)"

    .line 50
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v1, Le/a/a/c/n8/a;

    iget-object v2, v0, Le/a/a/c/r8/a$b;->f:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Le/a/a/c/n8/a;-><init>(Le/a/m3/d1;Landroid/content/Context;)V

    .line 52
    iget-object v2, v3, Le/a/m3/d1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object v1

    .line 54
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
