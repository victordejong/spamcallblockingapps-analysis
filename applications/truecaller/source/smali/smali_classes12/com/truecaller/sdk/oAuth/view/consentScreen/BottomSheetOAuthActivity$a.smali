.class public final Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/v4/r0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/b/a/h;


# direct methods
.method public constructor <init>(Ln3/b/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$a;->b:Ln3/b/a/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$a;->b:Ln3/b/a/h;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "layoutInflater"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v2, Lcom/truecaller/sdk/R$layout;->activity_bottom_sheet_o_auth:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 3
    sget v2, Lcom/truecaller/sdk/R$id;->oauth_layout:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "Missing required view with ID: "

    if-eqz v3, :cond_1

    .line 5
    sget v2, Lcom/truecaller/sdk/R$id;->atv_language:I

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    if-eqz v8, :cond_0

    .line 7
    move-object v9, v3

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    sget v2, Lcom/truecaller/sdk/R$id;->fl_primary_cta:I

    .line 9
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    .line 10
    sget v2, Lcom/truecaller/sdk/R$id;->iv_info:I

    .line 11
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    .line 12
    sget v2, Lcom/truecaller/sdk/R$id;->iv_partner:I

    .line 13
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v12, :cond_0

    .line 14
    sget v2, Lcom/truecaller/sdk/R$id;->ll_buttons:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    .line 15
    sget v2, Lcom/truecaller/sdk/R$id;->ll_info_container:I

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 17
    sget v2, Lcom/truecaller/sdk/R$id;->ll_oauthView:I

    .line 18
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v15, :cond_0

    .line 19
    sget v2, Lcom/truecaller/sdk/R$id;->pb_confirm:I

    .line 20
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/widget/ProgressBar;

    if-eqz v16, :cond_0

    .line 21
    sget v2, Lcom/truecaller/sdk/R$id;->pb_loader:I

    .line 22
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/widget/ProgressBar;

    if-eqz v17, :cond_0

    .line 23
    sget v2, Lcom/truecaller/sdk/R$id;->rv_scopes:I

    .line 24
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v18, :cond_0

    .line 25
    sget v2, Lcom/truecaller/sdk/R$id;->space_btn_divider:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Space;

    .line 26
    sget v2, Lcom/truecaller/sdk/R$id;->til_language:I

    .line 27
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v20, :cond_0

    .line 28
    sget v2, Lcom/truecaller/sdk/R$id;->top_container:I

    .line 29
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v21, :cond_0

    .line 30
    sget v2, Lcom/truecaller/sdk/R$id;->tv_confirm:I

    .line 31
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v22, :cond_0

    .line 32
    sget v2, Lcom/truecaller/sdk/R$id;->tv_continueWithDifferentNumber:I

    .line 33
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v23, :cond_0

    .line 34
    sget v2, Lcom/truecaller/sdk/R$id;->tv_login:I

    .line 35
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v24, :cond_0

    .line 36
    sget v2, Lcom/truecaller/sdk/R$id;->tv_partner_name:I

    .line 37
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v25, :cond_0

    .line 38
    sget v2, Lcom/truecaller/sdk/R$id;->tv_privacy:I

    .line 39
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v26, :cond_0

    .line 40
    sget v2, Lcom/truecaller/sdk/R$id;->tv_terms:I

    .line 41
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v27, v5

    check-cast v27, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v27, :cond_0

    .line 42
    sget v2, Lcom/truecaller/sdk/R$id;->tv_user_name:I

    .line 43
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v28, :cond_0

    .line 44
    sget v2, Lcom/truecaller/sdk/R$id;->tv_user_number:I

    .line 45
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v29, v5

    check-cast v29, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v29, :cond_0

    .line 46
    new-instance v2, Le/a/v4/r0/i;

    move-object v6, v2

    move-object v7, v9

    invoke-direct/range {v6 .. v29}, Le/a/v4/r0/i;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Space;Lcom/google/android/material/textfield/TextInputLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 47
    new-instance v3, Le/a/v4/r0/a;

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v3, v1, v2}, Le/a/v4/r0/a;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Le/a/v4/r0/i;)V

    return-object v3

    .line 48
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
