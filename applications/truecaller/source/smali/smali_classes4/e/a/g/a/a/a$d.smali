.class public final Le/a/g/a/a/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/g/a/a/a;",
        "Le/a/g/h/b;",
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
    .locals 67

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

    const-string v3, "Missing required view with ID: "

    if-eqz v2, :cond_14

    .line 5
    invoke-static {v2}, Le/a/g/h/d;->a(Landroid/view/View;)Le/a/g/h/d;

    move-result-object v6

    .line 6
    sget v1, Lcom/truecaller/acs/R$id;->acsBizmonContainer:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 8
    sget v1, Lcom/truecaller/acs/R$id;->bizSurveyContainerCardView:I

    .line 9
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 10
    sget v1, Lcom/truecaller/acs/R$id;->bizSurveyContainer:I

    .line 11
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v5, :cond_12

    .line 12
    new-instance v9, Le/a/g/h/f;

    check-cast v4, Landroidx/cardview/widget/CardView;

    invoke-direct {v9, v4, v5}, Le/a/g/h/f;-><init>(Landroidx/cardview/widget/CardView;Landroidx/fragment/app/FragmentContainerView;)V

    .line 13
    sget v1, Lcom/truecaller/acs/R$id;->callMeBackContainer:I

    .line 14
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v10, :cond_13

    .line 15
    sget v1, Lcom/truecaller/acs/R$id;->callMeBackView:I

    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;

    if-eqz v11, :cond_13

    .line 17
    sget v1, Lcom/truecaller/acs/R$id;->dividerSpace:I

    .line 18
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/Space;

    if-eqz v12, :cond_13

    .line 19
    sget v1, Lcom/truecaller/acs/R$id;->modularCallReason:I

    .line 20
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/truecaller/bizmon/callReason/ModularCallReasonView;

    if-eqz v13, :cond_13

    .line 21
    sget v1, Lcom/truecaller/acs/R$id;->videoPlayerLandscape:I

    .line 22
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;

    if-eqz v14, :cond_13

    .line 23
    new-instance v1, Le/a/g/h/h;

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v7, v1

    invoke-direct/range {v7 .. v14}, Le/a/g/h/h;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Le/a/g/h/f;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;Landroid/widget/Space;Lcom/truecaller/bizmon/callReason/ModularCallReasonView;Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;)V

    .line 24
    sget v2, Lcom/truecaller/acs/R$id;->acsContainer:I

    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_11

    .line 26
    sget v2, Lcom/truecaller/acs/R$id;->action_container:I

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/truecaller/acs/ui/ActionButtonsView;

    if-eqz v9, :cond_11

    .line 28
    sget v2, Lcom/truecaller/acs/R$id;->addressTimezoneView:I

    .line 29
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/truecaller/timezone/AddressTimezoneView;

    if-eqz v10, :cond_11

    .line 30
    sget v2, Lcom/truecaller/acs/R$id;->ads_placeholder:I

    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 32
    sget v2, Lcom/truecaller/acs/R$id;->ads_view_video_frame:I

    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_11

    .line 34
    sget v2, Lcom/truecaller/acs/R$id;->avatarGuideline:I

    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v13, :cond_11

    .line 36
    sget v2, Lcom/truecaller/acs/R$id;->businessStatus:I

    .line 37
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_11

    .line 38
    sget v2, Lcom/truecaller/acs/R$id;->callTypeAndTime:I

    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_11

    .line 40
    sget v2, Lcom/truecaller/acs/R$id;->closeIcon:I

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_11

    .line 42
    sget v2, Lcom/truecaller/acs/R$id;->contactDetails:I

    .line 43
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_11

    .line 44
    sget v2, Lcom/truecaller/acs/R$id;->credBackground:I

    .line 45
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_11

    .line 46
    sget v2, Lcom/truecaller/acs/R$id;->credBackgroundCard:I

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroidx/cardview/widget/CardView;

    if-eqz v19, :cond_11

    .line 48
    sget v2, Lcom/truecaller/acs/R$id;->detailDividerLine:I

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_11

    .line 50
    sget v2, Lcom/truecaller/acs/R$id;->detailsBackground:I

    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_11

    .line 52
    sget v2, Lcom/truecaller/acs/R$id;->feedbackBackground:I

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_11

    .line 54
    sget v4, Lcom/truecaller/acs/R$id;->feedbackDividerLine:I

    .line 55
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_10

    .line 56
    sget v5, Lcom/truecaller/acs/R$id;->feedbackDownVote:I

    .line 57
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v24, v7

    check-cast v24, Landroid/widget/ImageView;

    if-eqz v24, :cond_f

    .line 58
    sget v7, Lcom/truecaller/acs/R$id;->feedbackFooterSpace:I

    .line 59
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Space;

    if-eqz v25, :cond_e

    .line 60
    sget v7, Lcom/truecaller/acs/R$id;->feedbackNumber:I

    .line 61
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    if-eqz v26, :cond_e

    .line 62
    sget v7, Lcom/truecaller/acs/R$id;->feedbackQuestion:I

    .line 63
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    if-eqz v27, :cond_e

    move-object/from16 p1, v3

    .line 64
    sget v3, Lcom/truecaller/acs/R$id;->feedbackThanks:I

    .line 65
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    if-eqz v28, :cond_d

    move-object/from16 v29, v15

    .line 66
    sget v15, Lcom/truecaller/acs/R$id;->feedbackThanksAnimation:I

    .line 67
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v30, :cond_c

    move-object/from16 v31, v14

    .line 68
    sget v14, Lcom/truecaller/acs/R$id;->feedbackTitle:I

    .line 69
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    if-eqz v32, :cond_b

    move-object/from16 v33, v13

    .line 70
    sget v13, Lcom/truecaller/acs/R$id;->feedbackUpVote:I

    .line 71
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    if-eqz v34, :cond_a

    move-object/from16 v35, v12

    .line 72
    sget v12, Lcom/truecaller/acs/R$id;->headerBackground:I

    .line 73
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    if-eqz v36, :cond_9

    .line 74
    sget v12, Lcom/truecaller/acs/R$id;->headerDividerLine:I

    .line 75
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    if-eqz v37, :cond_9

    .line 76
    sget v12, Lcom/truecaller/acs/R$id;->infoLineSpam:I

    .line 77
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    if-eqz v38, :cond_9

    .line 78
    sget v12, Lcom/truecaller/acs/R$id;->layoutVerifiedBizFeedback:I

    move-object/from16 v39, v11

    .line 79
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 80
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    if-eqz v42, :cond_8

    .line 81
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    if-eqz v43, :cond_7

    .line 82
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v44, v2

    check-cast v44, Landroid/widget/ImageView;

    if-eqz v44, :cond_6

    .line 83
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v45, v2

    check-cast v45, Landroid/widget/TextView;

    if-eqz v45, :cond_5

    .line 84
    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Landroid/widget/TextView;

    if-eqz v46, :cond_4

    .line 85
    invoke-virtual {v11, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v47, v2

    check-cast v47, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v47, :cond_3

    .line 86
    sget v2, Lcom/truecaller/acs/R$id;->feedbackThanksGroup:I

    .line 87
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v48, v3

    check-cast v48, Landroidx/constraintlayout/widget/Group;

    if-eqz v48, :cond_8

    .line 88
    invoke-virtual {v11, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v49, v2

    check-cast v49, Landroid/widget/TextView;

    if-eqz v49, :cond_2

    .line 89
    invoke-virtual {v11, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v50, v2

    check-cast v50, Landroid/widget/ImageView;

    if-eqz v50, :cond_1

    .line 90
    sget v2, Lcom/truecaller/acs/R$id;->questionGroup:I

    .line 91
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Landroidx/constraintlayout/widget/Group;

    if-eqz v51, :cond_8

    .line 92
    new-instance v2, Le/a/g/h/g;

    move-object/from16 v41, v11

    check-cast v41, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v40, v2

    invoke-direct/range {v40 .. v51}, Le/a/g/h/g;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Group;)V

    .line 93
    sget v3, Lcom/truecaller/acs/R$id;->logoDivider:I

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    if-eqz v40, :cond_0

    .line 95
    sget v3, Lcom/truecaller/acs/R$id;->mainContainer:I

    .line 96
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v41, v4

    check-cast v41, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v41, :cond_0

    .line 97
    sget v3, Lcom/truecaller/acs/R$id;->nameOrNumber:I

    .line 98
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v42, v4

    check-cast v42, Landroid/widget/TextView;

    if-eqz v42, :cond_0

    .line 99
    sget v3, Lcom/truecaller/acs/R$id;->onDemandReasonPickerView:I

    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v43, v4

    check-cast v43, Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    if-eqz v43, :cond_0

    .line 101
    sget v3, Lcom/truecaller/acs/R$id;->partner_container:I

    .line 102
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v44, v4

    check-cast v44, Landroid/widget/LinearLayout;

    if-eqz v44, :cond_0

    .line 103
    sget v3, Lcom/truecaller/acs/R$id;->partnerLogo:I

    .line 104
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v45, v4

    check-cast v45, Landroid/widget/ImageView;

    if-eqz v45, :cond_0

    .line 105
    sget v3, Lcom/truecaller/acs/R$id;->phoneNumber:I

    .line 106
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v46, v4

    check-cast v46, Landroid/widget/TextView;

    if-eqz v46, :cond_0

    .line 107
    sget v3, Lcom/truecaller/acs/R$id;->placeholder_acs_reply:I

    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v47, v4

    check-cast v47, Landroid/widget/FrameLayout;

    if-eqz v47, :cond_0

    .line 109
    sget v3, Lcom/truecaller/acs/R$id;->priority:I

    .line 110
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v48, v4

    check-cast v48, Landroid/widget/TextView;

    if-eqz v48, :cond_0

    .line 111
    sget v3, Lcom/truecaller/acs/R$id;->priorityGroup:I

    .line 112
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v49, v4

    check-cast v49, Landroidx/constraintlayout/widget/Group;

    if-eqz v49, :cond_0

    .line 113
    sget v3, Lcom/truecaller/acs/R$id;->priorityIcon:I

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v50, v4

    check-cast v50, Landroid/widget/ImageView;

    if-eqz v50, :cond_0

    .line 115
    sget v3, Lcom/truecaller/acs/R$id;->simIndicator:I

    .line 116
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v51, v4

    check-cast v51, Landroid/widget/ImageView;

    if-eqz v51, :cond_0

    .line 117
    sget v3, Lcom/truecaller/acs/R$id;->spamPremiumPromoView:I

    .line 118
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v52, v4

    check-cast v52, Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;

    if-eqz v52, :cond_0

    .line 119
    sget v3, Lcom/truecaller/acs/R$id;->sponsored_by_container:I

    .line 120
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v53, v4

    check-cast v53, Landroid/widget/LinearLayout;

    if-eqz v53, :cond_0

    .line 121
    sget v3, Lcom/truecaller/acs/R$id;->sponsored_by_logo:I

    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v54, v4

    check-cast v54, Lcom/truecaller/ui/view/TintedImageView;

    if-eqz v54, :cond_0

    .line 123
    sget v3, Lcom/truecaller/acs/R$id;->sponsored_by_text:I

    .line 124
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v55, v4

    check-cast v55, Landroid/widget/TextView;

    if-eqz v55, :cond_0

    .line 125
    sget v3, Lcom/truecaller/acs/R$id;->suggestName:I

    .line 126
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v56, v4

    check-cast v56, Landroid/widget/ImageView;

    if-eqz v56, :cond_0

    .line 127
    sget v3, Lcom/truecaller/acs/R$id;->suggestNameDivider:I

    .line 128
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    if-eqz v57, :cond_0

    .line 129
    sget v3, Lcom/truecaller/acs/R$id;->survey_container:I

    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v58, v4

    check-cast v58, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v58, :cond_0

    .line 131
    sget v3, Lcom/truecaller/acs/R$id;->tagView:I

    .line 132
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v59, v4

    check-cast v59, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v59, :cond_0

    .line 133
    sget v3, Lcom/truecaller/acs/R$id;->tagViewBusiness:I

    .line 134
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v60, v4

    check-cast v60, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v60, :cond_0

    .line 135
    sget v3, Lcom/truecaller/acs/R$id;->truecallerLogo:I

    .line 136
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v61, v4

    check-cast v61, Landroid/widget/ImageView;

    if-eqz v61, :cond_0

    .line 137
    sget v3, Lcom/truecaller/acs/R$id;->truecallerLogoQuestionMark:I

    .line 138
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v62, v4

    check-cast v62, Landroid/widget/ImageView;

    if-eqz v62, :cond_0

    .line 139
    sget v3, Lcom/truecaller/acs/R$id;->truecontext:I

    .line 140
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v63, v4

    check-cast v63, Lcom/truecaller/truecontext/TrueContext;

    if-eqz v63, :cond_0

    .line 141
    sget v3, Lcom/truecaller/acs/R$id;->verified:I

    .line 142
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v64, v4

    check-cast v64, Landroid/widget/ImageView;

    if-eqz v64, :cond_0

    .line 143
    sget v3, Lcom/truecaller/acs/R$id;->videoAvatarXView:I

    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v65, v4

    check-cast v65, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    if-eqz v65, :cond_0

    .line 145
    sget v3, Lcom/truecaller/acs/R$id;->viewDetails:I

    .line 146
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v66, v4

    check-cast v66, Landroid/widget/Button;

    if-eqz v66, :cond_0

    .line 147
    new-instance v3, Le/a/g/h/b;

    move-object v4, v3

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    move-object v7, v1

    move-object/from16 v11, v39

    move-object/from16 v12, v35

    move-object/from16 v13, v33

    move-object/from16 v14, v31

    move-object/from16 v15, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v32

    move-object/from16 v31, v34

    move-object/from16 v32, v36

    move-object/from16 v33, v37

    move-object/from16 v34, v38

    move-object/from16 v35, v2

    move-object/from16 v36, v40

    move-object/from16 v37, v41

    move-object/from16 v38, v42

    move-object/from16 v39, v43

    move-object/from16 v40, v44

    move-object/from16 v41, v45

    move-object/from16 v42, v46

    move-object/from16 v43, v47

    move-object/from16 v44, v48

    move-object/from16 v45, v49

    move-object/from16 v46, v50

    move-object/from16 v47, v51

    move-object/from16 v48, v52

    move-object/from16 v49, v53

    move-object/from16 v50, v54

    move-object/from16 v51, v55

    move-object/from16 v52, v56

    move-object/from16 v53, v57

    move-object/from16 v54, v58

    move-object/from16 v55, v59

    move-object/from16 v56, v60

    move-object/from16 v57, v61

    move-object/from16 v58, v62

    move-object/from16 v59, v63

    move-object/from16 v60, v64

    move-object/from16 v61, v65

    move-object/from16 v62, v66

    invoke-direct/range {v4 .. v62}, Le/a/g/h/b;-><init>(Landroid/widget/FrameLayout;Le/a/g/h/d;Le/a/g/h/h;Landroid/widget/RelativeLayout;Lcom/truecaller/acs/ui/ActionButtonsView;Lcom/truecaller/timezone/AddressTimezoneView;Landroid/view/View;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/cardview/widget/CardView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Le/a/g/h/g;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/truecaller/acs/ui/AcsSpamPremiumPromoView;Landroid/widget/LinearLayout;Lcom/truecaller/ui/view/TintedImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroidx/fragment/app/FragmentContainerView;Lcom/truecaller/common/ui/tag/TagXView;Lcom/truecaller/common/ui/tag/TagXView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/truecaller/truecontext/TrueContext;Landroid/widget/ImageView;Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Landroid/widget/Button;)V

    return-object v3

    :cond_0
    move v4, v3

    move-object/from16 v6, p1

    goto/16 :goto_1

    :cond_1
    move v2, v13

    goto :goto_0

    :cond_2
    move v2, v14

    goto :goto_0

    :cond_3
    move v2, v15

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v7

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_0

    :cond_7
    move v2, v4

    .line 148
    :cond_8
    :goto_0
    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/NullPointerException;

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object/from16 v6, p1

    move v4, v12

    goto :goto_1

    :cond_a
    move-object/from16 v6, p1

    move v4, v13

    goto :goto_1

    :cond_b
    move-object/from16 v6, p1

    move v4, v14

    goto :goto_1

    :cond_c
    move-object/from16 v6, p1

    move v4, v15

    goto :goto_1

    :cond_d
    move-object/from16 v6, p1

    move v4, v3

    goto :goto_1

    :cond_e
    move-object v6, v3

    move v4, v7

    goto :goto_1

    :cond_f
    move-object v6, v3

    move v4, v5

    goto :goto_1

    :cond_10
    move-object v6, v3

    goto :goto_1

    :cond_11
    move-object v6, v3

    move v4, v2

    goto :goto_1

    :cond_12
    move-object v6, v3

    .line 150
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move-object v6, v3

    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object v6, v3

    move v4, v1

    .line 154
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
