.class public final Le/a/f/a/b/c$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/f/a/b/c;",
        "Le/a/f/x/e;",
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
    .locals 35

    move-object/from16 v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "fragment"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/incallui/R$id;->btn_group_container:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v2}, Le/a/f/x/k;->a(Landroid/view/View;)Le/a/f/x/k;

    move-result-object v5

    .line 6
    sget v1, Lcom/truecaller/incallui/R$id;->button_end_call:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v6, :cond_2

    .line 8
    sget v1, Lcom/truecaller/incallui/R$id;->button_record:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;

    if-eqz v7, :cond_2

    .line 10
    sget v1, Lcom/truecaller/incallui/R$id;->button_voip:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v8, :cond_2

    .line 12
    sget v1, Lcom/truecaller/incallui/R$id;->chronometer:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/truecaller/common/ui/textview/GoldShineChronometer;

    if-eqz v9, :cond_2

    .line 14
    sget v1, Lcom/truecaller/incallui/R$id;->contextCallView:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    if-eqz v10, :cond_2

    .line 16
    sget v1, Lcom/truecaller/incallui/R$id;->image_profile_picture:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v11, :cond_2

    .line 18
    sget v1, Lcom/truecaller/incallui/R$id;->img_user_badge:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_2

    .line 20
    sget v1, Lcom/truecaller/incallui/R$id;->linear_status:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_2

    .line 22
    move-object v14, v0

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 23
    sget v1, Lcom/truecaller/incallui/R$id;->onDemandReasonPickerView:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    if-eqz v15, :cond_2

    .line 25
    sget v1, Lcom/truecaller/incallui/R$id;->profile_name_container:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v16, :cond_2

    .line 27
    sget v1, Lcom/truecaller/incallui/R$id;->space_caller_label:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Space;

    if-eqz v17, :cond_2

    .line 29
    sget v1, Lcom/truecaller/incallui/R$id;->space_profile_name:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Space;

    if-eqz v18, :cond_2

    .line 31
    sget v1, Lcom/truecaller/incallui/R$id;->space_profile_picture:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Space;

    if-eqz v19, :cond_2

    .line 33
    sget v1, Lcom/truecaller/incallui/R$id;->space_spam_caller_label:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/Space;

    if-eqz v20, :cond_2

    .line 35
    sget v1, Lcom/truecaller/incallui/R$id;->space_timezone:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/Space;

    if-eqz v21, :cond_2

    .line 37
    sget v1, Lcom/truecaller/incallui/R$id;->space_true_context:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/Space;

    if-eqz v22, :cond_2

    .line 39
    sget v1, Lcom/truecaller/incallui/R$id;->text_alt_name:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v23, :cond_2

    .line 41
    sget v1, Lcom/truecaller/incallui/R$id;->text_caller_label:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 43
    check-cast v2, Landroid/widget/TextView;

    .line 44
    new-instance v1, Le/a/f/x/i;

    invoke-direct {v1, v2, v2}, Le/a/f/x/i;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 45
    sget v2, Lcom/truecaller/incallui/R$id;->text_carrier:I

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v25, :cond_1

    .line 47
    sget v2, Lcom/truecaller/incallui/R$id;->text_number:I

    .line 48
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v26, :cond_1

    .line 49
    sget v2, Lcom/truecaller/incallui/R$id;->text_phonebook_number:I

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v27, :cond_1

    .line 51
    sget v2, Lcom/truecaller/incallui/R$id;->text_profile_name:I

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v28, :cond_1

    .line 53
    sget v2, Lcom/truecaller/incallui/R$id;->text_sim_slot:I

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v29, :cond_1

    .line 55
    sget v2, Lcom/truecaller/incallui/R$id;->text_spam_caller_label:I

    .line 56
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 57
    check-cast v3, Landroid/widget/TextView;

    .line 58
    new-instance v2, Le/a/f/x/j;

    invoke-direct {v2, v3, v3}, Le/a/f/x/j;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 59
    sget v3, Lcom/truecaller/incallui/R$id;->text_status:I

    .line 60
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v31, v4

    check-cast v31, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v31, :cond_0

    .line 61
    sget v3, Lcom/truecaller/incallui/R$id;->timezone_view:I

    .line 62
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v32, v4

    check-cast v32, Lcom/truecaller/timezone/TimezoneView;

    if-eqz v32, :cond_0

    .line 63
    sget v3, Lcom/truecaller/incallui/R$id;->trueContext:I

    .line 64
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v33, v4

    check-cast v33, Lcom/truecaller/truecontext/TrueContext;

    if-eqz v33, :cond_0

    .line 65
    sget v3, Lcom/truecaller/incallui/R$id;->view_keypad:I

    .line 66
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v34, v4

    check-cast v34, Landroid/widget/FrameLayout;

    if-eqz v34, :cond_0

    .line 67
    new-instance v0, Le/a/f/x/e;

    move-object v3, v0

    move-object v4, v14

    move-object/from16 v24, v1

    move-object/from16 v30, v2

    invoke-direct/range {v3 .. v34}, Le/a/f/x/e;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Le/a/f/x/k;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/truecaller/callrecording/ui/floatingbutton/CallRecordingFloatingButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/truecaller/common/ui/textview/GoldShineChronometer;Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Space;Landroid/widget/Space;Landroid/widget/Space;Landroid/widget/Space;Landroid/widget/Space;Landroid/widget/Space;Lcom/truecaller/common/ui/textview/GoldShineTextView;Le/a/f/x/i;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Le/a/f/x/j;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/timezone/TimezoneView;Lcom/truecaller/truecontext/TrueContext;Landroid/widget/FrameLayout;)V

    return-object v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
