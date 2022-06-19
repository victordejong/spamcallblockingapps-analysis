.class public final Le/a/x/k0/a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x/k0/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/x/k0/a;",
        "Le/a/x/j0/b;",
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
    .locals 29

    move-object/from16 v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "fragment"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/ghost_call/R$id;->barrier:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    .line 5
    sget v1, Lcom/truecaller/ghost_call/R$id;->btn_group_container:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v2}, Le/a/f/x/k;->a(Landroid/view/View;)Le/a/f/x/k;

    move-result-object v6

    .line 8
    sget v1, Lcom/truecaller/ghost_call/R$id;->button_end_call:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v7, :cond_0

    .line 10
    sget v1, Lcom/truecaller/ghost_call/R$id;->button_record:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/truecaller/common/ui/fab/FloatingActionButton;

    if-eqz v8, :cond_0

    .line 12
    sget v1, Lcom/truecaller/ghost_call/R$id;->button_voip:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v9, :cond_0

    .line 14
    sget v1, Lcom/truecaller/ghost_call/R$id;->chronometer:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/truecaller/common/ui/textview/GoldShineChronometer;

    if-eqz v10, :cond_0

    .line 16
    sget v1, Lcom/truecaller/ghost_call/R$id;->contextCallView:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    if-eqz v11, :cond_0

    .line 18
    sget v1, Lcom/truecaller/ghost_call/R$id;->ghost_call_label:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 20
    sget v1, Lcom/truecaller/ghost_call/R$id;->image_profile_picture:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v13, :cond_0

    .line 22
    sget v1, Lcom/truecaller/ghost_call/R$id;->img_user_badge:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 24
    sget v1, Lcom/truecaller/ghost_call/R$id;->linear_status:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_0

    .line 26
    move-object/from16 v16, v0

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 27
    sget v1, Lcom/truecaller/ghost_call/R$id;->profile_name_container:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v17, :cond_0

    .line 29
    sget v1, Lcom/truecaller/ghost_call/R$id;->spam_caller_container:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v18, :cond_0

    .line 31
    sget v1, Lcom/truecaller/ghost_call/R$id;->spam_caller_icon:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v19, :cond_0

    .line 33
    sget v1, Lcom/truecaller/ghost_call/R$id;->spam_caller_label:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 35
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_caller_label:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v21, :cond_0

    .line 37
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_number:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v22, :cond_0

    .line 39
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_phonebook_number:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v23, :cond_0

    .line 41
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_profile_name:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v24, :cond_0

    .line 43
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_sim_slot:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v25, :cond_0

    .line 45
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_status:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v26, :cond_0

    .line 47
    sget v1, Lcom/truecaller/ghost_call/R$id;->timezone_view:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/truecaller/timezone/TimezoneView;

    if-eqz v27, :cond_0

    .line 49
    sget v1, Lcom/truecaller/ghost_call/R$id;->view_keypad:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/FrameLayout;

    if-eqz v28, :cond_0

    .line 51
    new-instance v0, Le/a/x/j0/b;

    move-object v3, v0

    move-object/from16 v4, v16

    invoke-direct/range {v3 .. v28}, Le/a/x/j0/b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Le/a/f/x/k;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/truecaller/common/ui/fab/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/truecaller/common/ui/textview/GoldShineChronometer;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Landroid/widget/TextView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/timezone/TimezoneView;Landroid/widget/FrameLayout;)V

    return-object v0

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
