.class public final Le/a/x/a/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/x/a/a;",
        "Le/a/x/j0/a;",
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
    .locals 34

    move-object/from16 v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "fragment"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/ghost_call/R$id;->button_accept_call:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v5, :cond_0

    .line 5
    sget v1, Lcom/truecaller/ghost_call/R$id;->button_reject_call:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v6, :cond_0

    .line 7
    sget v1, Lcom/truecaller/ghost_call/R$id;->button_reject_call_message:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v7, :cond_0

    .line 9
    sget v1, Lcom/truecaller/ghost_call/R$id;->context_call_container_view_stub:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/view/ViewStub;

    if-eqz v8, :cond_0

    .line 11
    sget v1, Lcom/truecaller/ghost_call/R$id;->external_message_container:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 13
    sget v1, Lcom/truecaller/ghost_call/R$id;->ghost_call_label:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 15
    sget v1, Lcom/truecaller/ghost_call/R$id;->guideline_answer_button_end:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v11, :cond_0

    .line 17
    sget v1, Lcom/truecaller/ghost_call/R$id;->image_profile_picture:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v12, :cond_0

    .line 19
    sget v1, Lcom/truecaller/ghost_call/R$id;->img_user_badge:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 21
    move-object v14, v0

    check-cast v14, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 22
    sget v1, Lcom/truecaller/ghost_call/R$id;->search_warning_container_view_Stub:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/view/ViewStub;

    if-eqz v15, :cond_0

    .line 24
    sget v1, Lcom/truecaller/ghost_call/R$id;->spam_caller_container:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v16, :cond_0

    .line 26
    sget v1, Lcom/truecaller/ghost_call/R$id;->spam_caller_icon:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v17, :cond_0

    .line 28
    sget v1, Lcom/truecaller/ghost_call/R$id;->spam_caller_label:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 30
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_alt_name:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v19, :cond_0

    .line 32
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_caller_label:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v20, :cond_0

    .line 34
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_carrier:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v21, :cond_0

    .line 36
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_incoming_call:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v22, :cond_0

    .line 38
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_job_details:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v23, :cond_0

    .line 40
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_location:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v24, :cond_0

    .line 42
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_number:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v25, :cond_0

    .line 44
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_phonebook_number:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v26, :cond_0

    .line 46
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_profile_name:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v27, :cond_0

    .line 48
    sget v1, Lcom/truecaller/ghost_call/R$id;->text_sim_slot:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v28, :cond_0

    .line 50
    sget v1, Lcom/truecaller/ghost_call/R$id;->timezone_view:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/truecaller/timezone/TimezoneView;

    if-eqz v29, :cond_0

    .line 52
    sget v1, Lcom/truecaller/ghost_call/R$id;->view_answer_arrows:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/truecaller/common/ui/ArrowImageViewAnimation;

    if-eqz v30, :cond_0

    .line 54
    sget v1, Lcom/truecaller/ghost_call/R$id;->view_ripple:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Lcom/truecaller/common/ui/HeartbeatRippleView;

    if-eqz v31, :cond_0

    .line 56
    sget v1, Lcom/truecaller/ghost_call/R$id;->view_tag:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v32, :cond_0

    .line 58
    sget v1, Lcom/truecaller/ghost_call/R$id;->view_tag_business:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v33, :cond_0

    .line 60
    new-instance v0, Le/a/x/j0/a;

    move-object v3, v0

    move-object v4, v14

    invoke-direct/range {v3 .. v33}, Le/a/x/j0/a;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/ViewStub;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/ImageView;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/ViewStub;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/timezone/TimezoneView;Lcom/truecaller/common/ui/ArrowImageViewAnimation;Lcom/truecaller/common/ui/HeartbeatRippleView;Lcom/truecaller/common/ui/tag/TagXView;Lcom/truecaller/common/ui/tag/TagXView;)V

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
