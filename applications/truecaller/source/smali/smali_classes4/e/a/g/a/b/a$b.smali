.class public final Le/a/g/a/b/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/g/a/b/a;",
        "Le/a/g/h/a;",
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
    .locals 50

    move-object/from16 v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "fragment"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/acs/R$id;->acsAdsContainer:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v2}, Le/a/g/h/d;->a(Landroid/view/View;)Le/a/g/h/d;

    move-result-object v5

    .line 6
    sget v1, Lcom/truecaller/acs/R$id;->action_container:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/truecaller/acs/ui/ActionButtonsView;

    if-eqz v6, :cond_0

    .line 8
    sget v1, Lcom/truecaller/acs/R$id;->ads_view_video_frame:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    .line 10
    sget v1, Lcom/truecaller/acs/R$id;->button_close_acs:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageButton;

    if-eqz v8, :cond_0

    .line 12
    sget v1, Lcom/truecaller/acs/R$id;->button_container:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 14
    sget v1, Lcom/truecaller/acs/R$id;->button_mute_vcid:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v10, :cond_0

    .line 16
    sget v1, Lcom/truecaller/acs/R$id;->button_view_profile:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    .line 18
    sget v1, Lcom/truecaller/acs/R$id;->caller_gradient:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;

    if-eqz v12, :cond_0

    .line 20
    sget v1, Lcom/truecaller/acs/R$id;->fullscreen_profile_picture:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;

    if-eqz v13, :cond_0

    .line 22
    sget v1, Lcom/truecaller/acs/R$id;->fullscreen_video_player:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;

    if-eqz v14, :cond_0

    .line 24
    sget v1, Lcom/truecaller/acs/R$id;->group_ad:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/constraintlayout/widget/Group;

    if-eqz v15, :cond_0

    .line 26
    sget v1, Lcom/truecaller/acs/R$id;->guide_with_top_window_inset:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v16, :cond_0

    .line 28
    sget v1, Lcom/truecaller/acs/R$id;->header_barrier:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v17, :cond_0

    .line 30
    sget v1, Lcom/truecaller/acs/R$id;->image_partner_logo:I

    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    .line 32
    sget v1, Lcom/truecaller/acs/R$id;->image_truecaller_logo:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz v19, :cond_0

    .line 34
    sget v1, Lcom/truecaller/acs/R$id;->image_truecaller_premium_logo:I

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    if-eqz v20, :cond_0

    .line 36
    sget v1, Lcom/truecaller/acs/R$id;->img_user_badge:I

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/ImageView;

    if-eqz v21, :cond_0

    .line 38
    sget v1, Lcom/truecaller/acs/R$id;->layout_button_call_me_back:I

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;

    if-eqz v22, :cond_0

    .line 40
    sget v1, Lcom/truecaller/acs/R$id;->onDemandReasonPickerView:I

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    if-eqz v23, :cond_0

    .line 42
    sget v1, Lcom/truecaller/acs/R$id;->placeholder_acs_reply:I

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/FrameLayout;

    if-eqz v24, :cond_0

    .line 44
    sget v1, Lcom/truecaller/acs/R$id;->spam_caller_container:I

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v25, :cond_0

    .line 46
    sget v1, Lcom/truecaller/acs/R$id;->spam_caller_icon:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v26, :cond_0

    .line 48
    sget v1, Lcom/truecaller/acs/R$id;->spam_caller_label:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_0

    .line 50
    sget v1, Lcom/truecaller/acs/R$id;->text_ad:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroid/widget/TextView;

    if-eqz v28, :cond_0

    .line 52
    sget v1, Lcom/truecaller/acs/R$id;->text_alt_name:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v29, :cond_0

    .line 54
    sget v1, Lcom/truecaller/acs/R$id;->text_call_status:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v30, :cond_0

    .line 56
    sget v1, Lcom/truecaller/acs/R$id;->text_call_status_icon:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroid/widget/ImageView;

    if-eqz v31, :cond_0

    .line 58
    sget v1, Lcom/truecaller/acs/R$id;->text_caller_label:I

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v32, :cond_0

    .line 60
    sget v1, Lcom/truecaller/acs/R$id;->text_job_details:I

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v33, :cond_0

    .line 62
    sget v1, Lcom/truecaller/acs/R$id;->text_number:I

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/TextView;

    if-eqz v34, :cond_0

    .line 64
    sget v1, Lcom/truecaller/acs/R$id;->text_phonebook_number:I

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v35, :cond_0

    .line 66
    sget v1, Lcom/truecaller/acs/R$id;->text_profile_name:I

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v36, v2

    check-cast v36, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v36, :cond_0

    .line 68
    sget v1, Lcom/truecaller/acs/R$id;->text_sim_slot:I

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v37, :cond_0

    .line 70
    sget v1, Lcom/truecaller/acs/R$id;->text_sponsored_ad:I

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/widget/TextView;

    if-eqz v38, :cond_0

    .line 72
    sget v1, Lcom/truecaller/acs/R$id;->text_verified_business_spam_label:I

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v39, v2

    check-cast v39, Landroid/widget/TextView;

    if-eqz v39, :cond_0

    .line 74
    sget v1, Lcom/truecaller/acs/R$id;->truecaller_logo_barrier:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v40, v2

    check-cast v40, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v40, :cond_0

    .line 76
    sget v1, Lcom/truecaller/acs/R$id;->truecontext:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v41, v2

    check-cast v41, Lcom/truecaller/truecontext/TrueContext;

    if-eqz v41, :cond_0

    .line 78
    sget v1, Lcom/truecaller/acs/R$id;->truecontext_container_barrier:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v42, :cond_0

    .line 80
    sget v1, Lcom/truecaller/acs/R$id;->video_avatar_view:I

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    if-eqz v43, :cond_0

    .line 82
    sget v1, Lcom/truecaller/acs/R$id;->video_player_landscape:I

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    if-eqz v44, :cond_0

    .line 84
    sget v1, Lcom/truecaller/acs/R$id;->view_address_timezone:I

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Lcom/truecaller/timezone/AddressTimezoneView;

    if-eqz v45, :cond_0

    .line 86
    sget v1, Lcom/truecaller/acs/R$id;->view_logo_divider:I

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    if-eqz v46, :cond_0

    .line 88
    sget v1, Lcom/truecaller/acs/R$id;->view_spam_premium_promo:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;

    if-eqz v47, :cond_0

    .line 90
    sget v1, Lcom/truecaller/acs/R$id;->view_tag:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v48, v2

    check-cast v48, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v48, :cond_0

    .line 92
    sget v1, Lcom/truecaller/acs/R$id;->view_tag_business:I

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v49, :cond_0

    .line 94
    new-instance v1, Le/a/g/h/a;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Lcom/truecaller/acs/util/DismissibleConstraintLayout;

    invoke-direct/range {v3 .. v49}, Le/a/g/h/a;-><init>(Lcom/truecaller/acs/util/DismissibleConstraintLayout;Le/a/g/h/d;Lcom/truecaller/acs/ui/ActionButtonsView;Landroid/widget/FrameLayout;Landroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/Button;Lcom/truecaller/acs/ui/fullscreen/CallerGradientView;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;Landroidx/constraintlayout/widget/Group;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Lcom/truecaller/common/ui/imageview/GoldShineImageView;Lcom/truecaller/common/ui/imageview/GoldShineImageView;Landroid/widget/ImageView;Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackFACSButtonView;Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Landroid/widget/ImageView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Landroid/widget/TextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Lcom/truecaller/common/ui/textview/GoldShineTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Barrier;Lcom/truecaller/truecontext/TrueContext;Landroidx/constraintlayout/widget/Barrier;Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;Lcom/truecaller/timezone/AddressTimezoneView;Landroid/view/View;Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;Lcom/truecaller/common/ui/tag/TagXView;Lcom/truecaller/common/ui/tag/TagXView;)V

    return-object v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
