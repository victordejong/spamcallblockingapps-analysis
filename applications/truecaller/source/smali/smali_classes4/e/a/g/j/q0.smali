.class public final Le/a/g/j/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/PopupWindow;

.field public final b:Le/a/k/h;


# direct methods
.method public constructor <init>(Le/a/k/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/q0;->b:Le/a/k/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/j/q0;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/g/j/q0;->a:Landroid/widget/PopupWindow;

    return-void
.end method

.method public b(Landroidx/fragment/app/FragmentManager;Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ls1/z/b/l;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    const-string v0, "fragmentManager"

    move-object/from16 v12, p1

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchor"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numbers"

    move-object/from16 v13, p3

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v14, p4

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemClicked"

    move-object/from16 v15, p5

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 2
    iget-object v0, v10, Le/a/g/j/q0;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    :cond_0
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_1

    move/from16 v16, v8

    goto :goto_0

    :cond_1
    move/from16 v16, v7

    .line 5
    :goto_0
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    sget v2, Lcom/truecaller/videocallerid/R$layout;->video_caller_id_acs_more_options:I

    invoke-virtual {v0, v2, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 7
    sget v1, Lcom/truecaller/videocallerid/R$id;->hideVidTv:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 9
    sget v1, Lcom/truecaller/videocallerid/R$id;->reportVidTv:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 11
    new-instance v6, Le/a/k/m/s;

    check-cast v0, Landroidx/cardview/widget/CardView;

    invoke-direct {v6, v0, v2, v3}, Le/a/k/m/s;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string v0, "VideoCallerIdAcsMoreOpti\u2026          false\n        )"

    .line 12
    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v5, Landroid/widget/PopupWindow;

    .line 14
    iget-object v0, v6, Le/a/k/m/s;->a:Landroidx/cardview/widget/CardView;

    const/4 v1, -0x2

    .line 15
    invoke-direct {v5, v0, v1, v1, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const-string v0, "context"

    .line 16
    invoke-static {v9, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/acs/R$dimen;->vid_acs_popup_margins:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 17
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/truecaller/acs/R$dimen;->vid_acs_popup_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 18
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    if-eqz v16, :cond_2

    neg-float v1, v2

    sub-float v0, v1, v0

    :cond_2
    move v3, v0

    .line 19
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v0, v6, Le/a/k/m/s;->c:Landroid/widget/TextView;

    const-string v1, "reportVidTv"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/acs/R$string;->vid_report_acs_more:I

    new-array v2, v8, [Ljava/lang/Object;

    sget v12, Lcom/truecaller/acs/R$string;->video_caller_id:I

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v7

    invoke-virtual {v9, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v2, v6, Le/a/k/m/s;->c:Landroid/widget/TextView;

    new-instance v1, Le/a/g/j/q0$a;

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object v14, v2

    move-object v2, v9

    move v15, v3

    move/from16 v3, v16

    move v10, v4

    move-object v4, v6

    move-object v11, v5

    move-object/from16 v5, p1

    move-object/from16 v17, v11

    move-object v11, v6

    move-object/from16 v6, p4

    move/from16 v18, v7

    move-object/from16 v7, p5

    move/from16 v19, v10

    move v10, v8

    move-object/from16 v8, p3

    move-object/from16 v20, v9

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Le/a/g/j/q0$a;-><init>(Le/a/g/j/q0;Landroid/content/Context;ZLe/a/k/m/s;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ls1/z/b/l;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, v11, Le/a/k/m/s;->b:Landroid/widget/TextView;

    const-string v1, "hideVidTv"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/truecaller/acs/R$string;->vid_hide_video_caller_id:I

    new-array v2, v10, [Ljava/lang/Object;

    move-object/from16 v3, v20

    invoke-virtual {v3, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v18

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v10, v11, Le/a/k/m/s;->b:Landroid/widget/TextView;

    new-instance v12, Le/a/g/j/q0$b;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v3

    move/from16 v3, v16

    move-object v4, v11

    invoke-direct/range {v0 .. v9}, Le/a/g/j/q0$b;-><init>(Le/a/g/j/q0;Landroid/content/Context;ZLe/a/k/m/s;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ls1/z/b/l;Ljava/util/List;Landroid/view/View;)V

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    float-to-int v0, v15

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    move/from16 v2, v19

    float-to-int v2, v2

    sub-int/2addr v1, v2

    const v2, 0x800005

    move-object/from16 v3, p2

    move-object/from16 v4, v17

    .line 25
    invoke-virtual {v4, v3, v0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    move-object/from16 v2, p0

    .line 26
    iput-object v4, v2, Le/a/g/j/q0;->a:Landroid/widget/PopupWindow;

    return-void

    :cond_3
    move-object v2, v10

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
