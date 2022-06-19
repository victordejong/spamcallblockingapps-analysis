.class public final Le/a/c/a/b/a/l$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/l;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/c/a/b/a/l;",
        "Le/a/c/a/g/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "fragment"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/insights/ui/R$id;->animationGroup:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Group;

    if-eqz v5, :cond_0

    .line 5
    sget v1, Lcom/truecaller/insights/ui/R$id;->bankType:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v6, :cond_0

    .line 7
    sget v1, Lcom/truecaller/insights/ui/R$id;->billType:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v7, :cond_0

    .line 9
    sget v1, Lcom/truecaller/insights/ui/R$id;->cancelBtn:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 11
    sget v1, Lcom/truecaller/insights/ui/R$id;->confirmBtn:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    .line 13
    sget v1, Lcom/truecaller/insights/ui/R$id;->consentGroup:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/constraintlayout/widget/Group;

    if-eqz v10, :cond_0

    .line 15
    sget v1, Lcom/truecaller/insights/ui/R$id;->consentToggle:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v11, :cond_0

    .line 17
    sget v1, Lcom/truecaller/insights/ui/R$id;->deliveryType:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v12, :cond_0

    .line 19
    sget v1, Lcom/truecaller/insights/ui/R$id;->desc:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 21
    sget v1, Lcom/truecaller/insights/ui/R$id;->divider:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 23
    sget v1, Lcom/truecaller/insights/ui/R$id;->divider2:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 25
    sget v1, Lcom/truecaller/insights/ui/R$id;->dummyView:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 27
    sget v1, Lcom/truecaller/insights/ui/R$id;->hanger:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v17, :cond_0

    .line 29
    sget v1, Lcom/truecaller/insights/ui/R$id;->header:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 31
    move-object/from16 v19, v0

    check-cast v19, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 32
    sget v1, Lcom/truecaller/insights/ui/R$id;->otherType:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v20, :cond_0

    .line 34
    sget v1, Lcom/truecaller/insights/ui/R$id;->otpType:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v21, :cond_0

    .line 36
    sget v1, Lcom/truecaller/insights/ui/R$id;->pin:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v22, :cond_0

    .line 38
    sget v1, Lcom/truecaller/insights/ui/R$id;->rechargeType:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v23, :cond_0

    .line 40
    sget v1, Lcom/truecaller/insights/ui/R$id;->shoppingType:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v24, :cond_0

    .line 42
    sget v1, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 44
    sget v1, Lcom/truecaller/insights/ui/R$id;->travelType:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v26, :cond_0

    .line 46
    sget v1, Lcom/truecaller/insights/ui/R$id;->whatMessageTitle:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_0

    .line 48
    new-instance v0, Le/a/c/a/g/p;

    move-object v3, v0

    move-object/from16 v4, v19

    invoke-direct/range {v3 .. v27}, Le/a/c/a/g/p;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/widget/Group;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Landroid/widget/Button;Landroid/widget/Button;Landroidx/constraintlayout/widget/Group;Landroidx/appcompat/widget/SwitchCompat;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Lcom/truecaller/ui/view/TintedImageView;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Landroid/widget/TextView;Lcom/truecaller/insights/ui/widget/TypeSelectorView;Landroid/widget/TextView;)V

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
