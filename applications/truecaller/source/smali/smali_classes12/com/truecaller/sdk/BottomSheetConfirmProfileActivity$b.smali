.class public final Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/v4/r0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/b/a/h;


# direct methods
.method public constructor <init>(Ln3/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$b;->b:Ln3/b/a/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$b;->b:Ln3/b/a/h;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layoutInflater"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v2, Lcom/truecaller/sdk/R$layout;->activity_confirm_profile_bottomsheet:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/sdk/R$id;->consent_layout:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "Missing required view with ID: "

    if-eqz v3, :cond_1

    .line 5
    sget v2, Lcom/truecaller/sdk/R$id;->confirm:I

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 7
    sget v2, Lcom/truecaller/sdk/R$id;->confirmProgressBar:I

    .line 8
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/ProgressBar;

    if-eqz v9, :cond_0

    .line 9
    sget v2, Lcom/truecaller/sdk/R$id;->continueWithDifferentNumber:I

    .line 10
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 11
    sget v2, Lcom/truecaller/sdk/R$id;->ctaContainer:I

    .line 12
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 13
    sget v2, Lcom/truecaller/sdk/R$id;->emailAddressDivider:I

    .line 14
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 15
    sget v2, Lcom/truecaller/sdk/R$id;->expandLegalTextIcon:I

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 17
    sget v2, Lcom/truecaller/sdk/R$id;->infoAddress:I

    .line 18
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 19
    sget v2, Lcom/truecaller/sdk/R$id;->infoContainer:I

    .line 20
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 21
    sget v2, Lcom/truecaller/sdk/R$id;->infoEmail:I

    .line 22
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 23
    sget v2, Lcom/truecaller/sdk/R$id;->infoName:I

    .line 24
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 25
    sget v2, Lcom/truecaller/sdk/R$id;->infoNumber:I

    .line 26
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 27
    sget v2, Lcom/truecaller/sdk/R$id;->legalText:I

    .line 28
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 29
    sget v2, Lcom/truecaller/sdk/R$id;->legalTextDivider:I

    .line 30
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 31
    sget v2, Lcom/truecaller/sdk/R$id;->loginText:I

    .line 32
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 33
    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/LinearLayout;

    .line 34
    sget v2, Lcom/truecaller/sdk/R$id;->tcBrandingText:I

    .line 35
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 36
    sget v2, Lcom/truecaller/sdk/R$id;->userName:I

    .line 37
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Landroid/widget/TextView;

    if-eqz v24, :cond_0

    .line 38
    new-instance v2, Le/a/v4/r0/d;

    move-object v6, v2

    move-object/from16 v7, v22

    invoke-direct/range {v6 .. v24}, Le/a/v4/r0/d;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 39
    new-instance v3, Le/a/v4/r0/b;

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v3, v1, v2}, Le/a/v4/r0/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Le/a/v4/r0/d;)V

    return-object v3

    .line 40
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
