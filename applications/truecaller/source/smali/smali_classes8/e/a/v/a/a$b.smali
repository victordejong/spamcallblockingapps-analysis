.class public final Le/a/v/a/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/v/a/a;",
        "Le/a/v/k/c;",
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
    sget v1, Lcom/truecaller/details_view/R$id;->actionButtonBar:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;

    if-eqz v5, :cond_0

    .line 5
    sget v1, Lcom/truecaller/details_view/R$id;->altName:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 7
    sget v1, Lcom/truecaller/details_view/R$id;->appBar:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v7, :cond_0

    .line 9
    sget v1, Lcom/truecaller/details_view/R$id;->avatar:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v8, :cond_0

    .line 11
    sget v1, Lcom/truecaller/details_view/R$id;->avatarMiddleGuideline:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 13
    sget v1, Lcom/truecaller/details_view/R$id;->content:I

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/core/widget/NestedScrollView;

    if-eqz v10, :cond_0

    .line 15
    sget v1, Lcom/truecaller/details_view/R$id;->contentContainer:I

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 17
    sget v1, Lcom/truecaller/details_view/R$id;->fab:I

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v12, :cond_0

    .line 19
    sget v1, Lcom/truecaller/details_view/R$id;->headerBackground:I

    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 21
    sget v1, Lcom/truecaller/details_view/R$id;->headerDivider:I

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 23
    sget v1, Lcom/truecaller/details_view/R$id;->motionLayout:I

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v15, :cond_0

    .line 25
    sget v1, Lcom/truecaller/details_view/R$id;->nameBarrier:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v16, :cond_0

    .line 27
    sget v1, Lcom/truecaller/details_view/R$id;->nameOrNumber:I

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 29
    sget v1, Lcom/truecaller/details_view/R$id;->nameOrNumberShortened:I

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 31
    sget v1, Lcom/truecaller/details_view/R$id;->presence:I

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/truecaller/details_view/ui/presence/PresenceView;

    if-eqz v19, :cond_0

    .line 33
    sget v1, Lcom/truecaller/details_view/R$id;->presenceTimezoneBarrier:I

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v20, :cond_0

    .line 35
    sget v1, Lcom/truecaller/details_view/R$id;->presenceWithTimezone:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v21, :cond_0

    .line 37
    sget v1, Lcom/truecaller/details_view/R$id;->privateUserInformation:I

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 39
    sget v1, Lcom/truecaller/details_view/R$id;->source:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 41
    sget v1, Lcom/truecaller/details_view/R$id;->sourceIcon:I

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/widget/ImageView;

    if-eqz v24, :cond_0

    .line 43
    sget v1, Lcom/truecaller/details_view/R$id;->spamCategoryAndCount:I

    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Landroid/widget/TextView;

    if-eqz v25, :cond_0

    .line 45
    sget v1, Lcom/truecaller/details_view/R$id;->spamCategoryIcon:I

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Landroid/widget/ImageView;

    if-eqz v26, :cond_0

    .line 47
    sget v1, Lcom/truecaller/details_view/R$id;->suggestName:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/widget/ImageView;

    if-eqz v27, :cond_0

    .line 49
    sget v1, Lcom/truecaller/details_view/R$id;->swipe_refresh_layout:I

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v28, :cond_0

    .line 51
    sget v1, Lcom/truecaller/details_view/R$id;->tag:I

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v29, v2

    check-cast v29, Lcom/truecaller/common/ui/tag/TagXView;

    if-eqz v29, :cond_0

    .line 53
    sget v1, Lcom/truecaller/details_view/R$id;->timezone:I

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Lcom/truecaller/timezone/TimezoneView;

    if-eqz v30, :cond_0

    .line 55
    sget v1, Lcom/truecaller/details_view/R$id;->toolbar:I

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v31, v2

    check-cast v31, Landroidx/appcompat/widget/Toolbar;

    if-eqz v31, :cond_0

    .line 57
    sget v1, Lcom/truecaller/details_view/R$id;->trueContext:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lcom/truecaller/truecontext/TrueContext;

    if-eqz v32, :cond_0

    .line 59
    sget v1, Lcom/truecaller/details_view/R$id;->verifiedIcon:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/widget/ImageView;

    if-eqz v33, :cond_0

    .line 61
    sget v1, Lcom/truecaller/details_view/R$id;->viewBackdrop:I

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, Landroid/widget/ImageView;

    if-eqz v34, :cond_0

    .line 63
    new-instance v1, Le/a/v/k/c;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v34}, Le/a/v/k/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/details_view/ui/actionbutton/ActionButtonBarView;Landroid/widget/TextView;Lcom/google/android/material/appbar/AppBarLayout;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/view/View;Landroidx/core/widget/NestedScrollView;Landroid/widget/LinearLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/view/View;Landroid/view/View;Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/truecaller/details_view/ui/presence/PresenceView;Landroidx/constraintlayout/widget/Barrier;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Lcom/truecaller/common/ui/tag/TagXView;Lcom/truecaller/timezone/TimezoneView;Landroidx/appcompat/widget/Toolbar;Lcom/truecaller/truecontext/TrueContext;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v1

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
