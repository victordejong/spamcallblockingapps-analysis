.class public final Le/a/f/x/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final g:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final h:Landroid/widget/FrameLayout;

.field public final i:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final j:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final k:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final l:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

.field public final m:Lcom/truecaller/incallui/utils/OngoingCallActionButton;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Landroid/widget/FrameLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Landroid/widget/FrameLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/f/x/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p2, p0, Le/a/f/x/k;->b:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 4
    iput-object p3, p0, Le/a/f/x/k;->c:Landroid/widget/FrameLayout;

    .line 5
    iput-object p5, p0, Le/a/f/x/k;->d:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 6
    iput-object p6, p0, Le/a/f/x/k;->e:Landroid/widget/FrameLayout;

    .line 7
    iput-object p7, p0, Le/a/f/x/k;->f:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 8
    iput-object p8, p0, Le/a/f/x/k;->g:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 9
    iput-object p9, p0, Le/a/f/x/k;->h:Landroid/widget/FrameLayout;

    .line 10
    iput-object p10, p0, Le/a/f/x/k;->i:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 11
    iput-object p11, p0, Le/a/f/x/k;->j:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 12
    iput-object p12, p0, Le/a/f/x/k;->k:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 13
    iput-object p13, p0, Le/a/f/x/k;->l:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    .line 14
    iput-object p14, p0, Le/a/f/x/k;->m:Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    return-void
.end method

.method public static a(Landroid/view/View;)Le/a/f/x/k;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Lcom/truecaller/incallui/R$id;->addCallAction:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v5, :cond_0

    .line 3
    sget v1, Lcom/truecaller/incallui/R$id;->addOrMergeCallContainer:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    .line 5
    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    sget v1, Lcom/truecaller/incallui/R$id;->holdCallAction:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v8, :cond_0

    .line 8
    sget v1, Lcom/truecaller/incallui/R$id;->holdOrSwapContainer:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/FrameLayout;

    if-eqz v9, :cond_0

    .line 10
    sget v1, Lcom/truecaller/incallui/R$id;->keypadAction:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v10, :cond_0

    .line 12
    sget v1, Lcom/truecaller/incallui/R$id;->manageCallAction:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v11, :cond_0

    .line 14
    sget v1, Lcom/truecaller/incallui/R$id;->manageConferenceOrMessageContainer:I

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/FrameLayout;

    if-eqz v12, :cond_0

    .line 16
    sget v1, Lcom/truecaller/incallui/R$id;->mergeCallsAction:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v13, :cond_0

    .line 18
    sget v1, Lcom/truecaller/incallui/R$id;->messageAction:I

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v14, :cond_0

    .line 20
    sget v1, Lcom/truecaller/incallui/R$id;->muteAction:I

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v15, :cond_0

    .line 22
    sget v1, Lcom/truecaller/incallui/R$id;->speakerAction:I

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v16, :cond_0

    .line 24
    sget v1, Lcom/truecaller/incallui/R$id;->swapCallsAction:I

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/truecaller/incallui/utils/OngoingCallActionButton;

    if-eqz v17, :cond_0

    .line 26
    new-instance v0, Le/a/f/x/k;

    move-object v3, v0

    move-object v4, v7

    invoke-direct/range {v3 .. v17}, Le/a/f/x/k;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Landroid/widget/FrameLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Landroid/widget/FrameLayout;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;Lcom/truecaller/incallui/utils/OngoingCallActionButton;)V

    return-object v0

    .line 27
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
