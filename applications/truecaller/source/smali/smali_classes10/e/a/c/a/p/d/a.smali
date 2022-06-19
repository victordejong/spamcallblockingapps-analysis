.class public final Le/a/c/a/p/d/a;
.super Ln3/z/f2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/f2<",
        "Le/a/c/a/p/c/d;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/c/h/h;

.field public final f:Le/a/b0/m/c/a;

.field public final g:Le/a/c/a/i/h;

.field public final h:Le/a/c/b/j;

.field public final i:Ls1/w/f;

.field public final j:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/b/j;Ls1/w/f;Ls1/w/f;)V
    .locals 3
    .param p3    # Le/a/c/a/i/h;
        .annotation runtime Ljavax/inject/Named;
            value = "smartfeed_analytics_logger"
        .end annotation
    .end param
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messageLocator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/a/c;

    invoke-direct {v0}, Le/a/c/a/a/c;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v1, v2}, Ln3/z/f2;-><init>(Ln3/b0/a/h$e;Lq3/a/g0;Lq3/a/g0;I)V

    iput-object p1, p0, Le/a/c/a/p/d/a;->e:Le/a/c/h/h;

    iput-object p2, p0, Le/a/c/a/p/d/a;->f:Le/a/b0/m/c/a;

    iput-object p3, p0, Le/a/c/a/p/d/a;->g:Le/a/c/a/i/h;

    iput-object p4, p0, Le/a/c/a/p/d/a;->h:Le/a/c/b/j;

    iput-object p5, p0, Le/a/c/a/p/d/a;->i:Ls1/w/f;

    iput-object p6, p0, Le/a/c/a/p/d/a;->j:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ln3/z/f2;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/c/a/p/c/d;

    if-eqz p1, :cond_5

    .line 2
    instance-of v0, p1, Le/a/c/a/p/c/d$a;

    if-eqz v0, :cond_0

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_past_smart_feed_card:I

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/c/a/p/c/d$e;

    if-eqz v0, :cond_1

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_smart_feed_expanded:I

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Le/a/c/a/p/c/d$b;

    if-eqz v0, :cond_2

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_smart_feed_section_header:I

    goto :goto_0

    .line 5
    :cond_2
    instance-of v0, p1, Le/a/c/a/p/c/d$d;

    if-eqz v0, :cond_3

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_expand:I

    goto :goto_0

    .line 6
    :cond_3
    instance-of p1, p1, Le/a/c/a/p/c/d$c;

    if-eqz p1, :cond_4

    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_collapse:I

    :goto_0
    return p1

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 7
    :cond_5
    sget p1, Lcom/truecaller/insights/ui/R$layout;->item_shimmer_smart_feed_card:I

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "holder"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 1
    invoke-virtual {v1, v2}, Ln3/z/f2;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/c/a/p/c/d;

    if-nez v2, :cond_0

    .line 2
    check-cast v0, Le/a/c/a/p/d/q/e;

    return-void

    .line 3
    :cond_0
    instance-of v3, v2, Le/a/c/a/p/c/d$a;

    const-string v4, "binding.smartCard"

    const-string v5, "binding.dateTv"

    const-string v6, "binding.senderNameTv"

    const-string v7, "icon"

    const-string v8, "identifier"

    const-string v9, "name"

    const-string v10, "Uri.EMPTY"

    const-string v11, ""

    const-string v12, "item"

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_2

    check-cast v0, Le/a/c/a/p/d/q/c;

    check-cast v2, Le/a/c/a/p/c/d$a;

    .line 4
    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v2}, Le/a/c/a/p/d/q/a;->R4(Le/a/c/a/p/c/d;)V

    .line 6
    iget-object v3, v0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    iget-object v3, v3, Le/a/c/a/g/q0;->d:Landroid/widget/TextView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v6, v2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 8
    iget-object v6, v6, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, v0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    iget-object v3, v3, Le/a/c/a/g/q0;->b:Landroid/widget/TextView;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, v2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 12
    iget-object v5, v5, Le/a/c/y/m;->i:Ljava/lang/String;

    .line 13
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v0}, Le/a/c/a/p/d/q/a;->N4()Le/a/b0/a/b/a;

    move-result-object v3

    .line 15
    iget-object v5, v2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 16
    iget-object v5, v5, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 17
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v7, Le/a/b0/m/a/a;

    invoke-direct {v7, v5, v11, v6}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    invoke-virtual {v0, v7}, Le/a/c/a/p/d/q/a;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v5

    .line 21
    invoke-virtual {v3, v5, v13}, Le/a/b0/a/b/a;->nk(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    .line 22
    invoke-virtual {v3, v15}, Le/a/b0/a/b/a;->pk(Z)V

    .line 23
    iget-object v5, v0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    iget-object v5, v5, Le/a/c/a/g/q0;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v5, v3}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 24
    iget-object v5, v0, Le/a/c/a/p/d/q/c;->h:Le/a/b0/m/c/a;

    .line 25
    iget-object v6, v2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 26
    iget-object v6, v6, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 27
    new-instance v7, Le/a/c/a/p/d/q/b;

    invoke-direct {v7, v0, v3}, Le/a/c/a/p/d/q/b;-><init>(Le/a/c/a/p/d/q/c;Le/a/b0/a/b/a;)V

    invoke-interface {v5, v6, v7}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v3

    iput-object v3, v0, Le/a/c/a/p/d/q/c;->d:Lq3/a/p1;

    .line 28
    iget-object v3, v2, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    .line 29
    iget-boolean v3, v3, Le/a/c/a/p/c/a;->c:Z

    const-string v5, "view"

    if-eqz v3, :cond_1

    .line 30
    iget-object v3, v0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    iget-object v3, v3, Le/a/c/a/g/q0;->e:Le/a/c/a/g/b2;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, v2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 32
    iget-object v4, v4, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 33
    iget-object v6, v0, Le/a/c/a/p/d/q/c;->j:Ls1/z/b/a;

    .line 34
    iget-object v7, v3, Le/a/c/a/g/b2;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v8, "root"

    .line 35
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "root.context"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "$this$bindHiddenSmartCard"

    .line 36
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "smartCardUiModel"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "context"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v8, v3, Le/a/c/a/g/b2;->c:Landroid/widget/ImageView;

    const-string v9, "imageCategoryIcon"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v9, v4, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 39
    invoke-static {v9}, Le/a/c/a/r/f;->a(Lcom/truecaller/insights/smartcards/SmartCardCategory;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Le/a/c/p/a;->D2(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 40
    iget-object v8, v3, Le/a/c/a/g/b2;->f:Landroid/widget/TextView;

    const-string v9, "textCategory"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v4, v4, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 42
    invoke-static {v4, v7}, Le/a/c/a/r/f;->c(Lcom/truecaller/insights/smartcards/SmartCardCategory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v4, v3, Le/a/c/a/g/b2;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v8, "buttonShowTransaction"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 44
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v9, Lcom/truecaller/insights/ui/R$dimen;->dp40:I

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 45
    iget-object v9, v3, Le/a/c/a/g/b2;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v8, Le/a/c/c0/a0;

    invoke-direct {v8, v9, v4, v4}, Le/a/c/c0/a0;-><init>(Landroid/view/View;II)V

    invoke-virtual {v9, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    iget-object v4, v3, Le/a/c/a/g/b2;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v8, Le/a/c/a/o/a;

    invoke-direct {v8, v3, v7, v6}, Le/a/c/a/o/a;-><init>(Le/a/c/a/g/b2;Landroid/content/Context;Ls1/z/b/a;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v4, v3, Le/a/c/a/g/b2;->e:Landroid/widget/TextView;

    sget v6, Lcom/truecaller/insights/ui/R$string;->hidden_trx_subtitle:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v4, v3, Le/a/c/a/g/b2;->e:Landroid/widget/TextView;

    const-string v6, "textCardInfo"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 51
    iget-object v4, v3, Le/a/c/a/g/b2;->p:Landroid/widget/TextView;

    const-string v6, "textRightTitle"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 52
    iget-object v4, v3, Le/a/c/a/g/b2;->r:Landroid/widget/TextView;

    const-string v6, "textSubtitle"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 53
    iget-object v4, v3, Le/a/c/a/g/b2;->s:Landroid/widget/TextView;

    const-string v6, "textTitle"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 54
    iget-object v4, v3, Le/a/c/a/g/b2;->o:Landroid/widget/TextView;

    const-string v6, "textMessage"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 55
    iget-object v4, v3, Le/a/c/a/g/b2;->d:Landroid/view/View;

    const-string v6, "messageSpacing"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 56
    iget-object v4, v3, Le/a/c/a/g/b2;->q:Landroid/widget/TextView;

    const-string v6, "textStatus"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 57
    iget-object v4, v3, Le/a/c/a/g/b2;->g:Landroid/widget/TextView;

    const-string v6, "textInfo1Name"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 58
    iget-object v4, v3, Le/a/c/a/g/b2;->i:Landroid/widget/TextView;

    const-string v6, "textInfo2Name"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 59
    iget-object v4, v3, Le/a/c/a/g/b2;->k:Landroid/widget/TextView;

    const-string v6, "textInfo3Name"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 60
    iget-object v4, v3, Le/a/c/a/g/b2;->m:Landroid/widget/TextView;

    const-string v6, "textInfo4Name"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 61
    iget-object v4, v3, Le/a/c/a/g/b2;->h:Landroid/widget/TextView;

    const-string v6, "textInfo1Value"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 62
    iget-object v4, v3, Le/a/c/a/g/b2;->j:Landroid/widget/TextView;

    const-string v6, "textInfo2Value"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 63
    iget-object v4, v3, Le/a/c/a/g/b2;->l:Landroid/widget/TextView;

    const-string v6, "textInfo3Value"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 64
    iget-object v3, v3, Le/a/c/a/g/b2;->n:Landroid/widget/TextView;

    const-string v4, "textInfo4Value"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v3, v0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    iget-object v3, v3, Le/a/c/a/g/q0;->e:Le/a/c/a/g/b2;

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v4, v2, Le/a/c/a/p/c/d$a;->c:Le/a/c/y/m;

    .line 67
    iget-object v4, v4, Le/a/c/y/m;->d:Le/a/c/y/l;

    const/4 v6, 0x0

    .line 68
    invoke-static {v3, v4, v6, v14}, Le/a/c/p/a;->G(Le/a/c/a/g/b2;Le/a/c/y/l;Landroid/content/Context;I)V

    .line 69
    :goto_0
    sget-boolean v3, Le/a/c/a/p/d/q/c;->k:Z

    if-nez v3, :cond_f

    .line 70
    invoke-static {v2, v5}, Le/a/c/p/a;->O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;

    move-result-object v2

    invoke-virtual {v2}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v2

    .line 71
    iget-object v0, v0, Le/a/c/a/p/d/q/c;->i:Le/a/c/a/i/h;

    invoke-interface {v0, v2}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 72
    sput-boolean v15, Le/a/c/a/p/d/q/c;->k:Z

    goto/16 :goto_9

    .line 73
    :cond_2
    instance-of v3, v2, Le/a/c/a/p/c/d$e;

    if-eqz v3, :cond_4

    check-cast v0, Le/a/c/a/p/d/q/j;

    check-cast v2, Le/a/c/a/p/c/d$e;

    .line 74
    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, v2}, Le/a/c/a/p/d/q/a;->R4(Le/a/c/a/p/c/d;)V

    .line 76
    iget-object v3, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v3, v3, Le/a/c/a/g/y0;->i:Landroid/widget/TextView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v6, v2, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 78
    iget-object v6, v6, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 79
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v3, v3, Le/a/c/a/g/y0;->e:Landroid/widget/TextView;

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v5, v2, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 82
    iget-object v5, v5, Le/a/c/y/m;->i:Ljava/lang/String;

    .line 83
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0}, Le/a/c/a/p/d/q/a;->N4()Le/a/b0/a/b/a;

    move-result-object v3

    .line 85
    iget-object v5, v2, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 86
    iget-object v5, v5, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 87
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v7, Le/a/b0/m/a/a;

    invoke-direct {v7, v5, v11, v6}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    invoke-virtual {v0, v7}, Le/a/c/a/p/d/q/a;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v5

    .line 91
    invoke-virtual {v3, v5, v13}, Le/a/b0/a/b/a;->nk(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    .line 92
    invoke-virtual {v3, v15}, Le/a/b0/a/b/a;->pk(Z)V

    .line 93
    iget-object v5, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v5, v5, Le/a/c/a/g/y0;->g:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v5, v3}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 94
    iget-object v5, v0, Le/a/c/a/p/d/q/j;->i:Le/a/b0/m/c/a;

    .line 95
    iget-object v6, v2, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 96
    iget-object v6, v6, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 97
    new-instance v7, Le/a/c/a/p/d/q/i;

    invoke-direct {v7, v0, v3}, Le/a/c/a/p/d/q/i;-><init>(Le/a/c/a/p/d/q/j;Le/a/b0/a/b/a;)V

    invoke-interface {v5, v6, v7}, Le/a/b0/m/c/a;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;

    move-result-object v3

    iput-object v3, v0, Le/a/c/a/p/d/q/j;->d:Lq3/a/p1;

    .line 98
    iget-object v3, v2, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 99
    iget-object v3, v3, Le/a/c/y/m;->d:Le/a/c/y/l;

    .line 100
    iget-object v5, v3, Le/a/c/y/l;->j:Ljava/util/List;

    .line 101
    invoke-static {v5, v13}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/y/i;

    .line 102
    iget-object v3, v3, Le/a/c/y/l;->j:Ljava/util/List;

    .line 103
    invoke-static {v3, v15}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/y/i;

    .line 104
    iget-object v6, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v6, v6, Le/a/c/a/g/y0;->b:Landroid/widget/Button;

    const-string v7, "binding.buttonAction1"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lx2;

    invoke-direct {v7, v13, v0, v2}, Lx2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v6, v5, v7}, Le/a/c/p/a;->B2(Landroid/widget/Button;Le/a/c/y/i;Ls1/z/b/l;)V

    .line 105
    iget-object v5, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v5, v5, Le/a/c/a/g/y0;->c:Landroid/widget/Button;

    const-string v6, "binding.buttonAction2"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lx2;

    invoke-direct {v6, v15, v0, v2}, Lx2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v3, v6}, Le/a/c/p/a;->B2(Landroid/widget/Button;Le/a/c/y/i;Ls1/z/b/l;)V

    .line 106
    iget-object v5, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v5, v5, Le/a/c/a/g/y0;->h:Landroidx/constraintlayout/widget/Group;

    const-string v6, "binding.secondButtonGroup"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v15, v13

    :goto_1
    invoke-static {v5, v15}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 107
    iget-object v0, v0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iget-object v0, v0, Le/a/c/a/g/y0;->j:Le/a/c/a/g/b2;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v2, v2, Le/a/c/a/p/c/d$e;->c:Le/a/c/y/m;

    .line 109
    iget-object v2, v2, Le/a/c/y/m;->d:Le/a/c/y/l;

    const/4 v3, 0x0

    .line 110
    invoke-static {v0, v2, v3, v14}, Le/a/c/p/a;->G(Le/a/c/a/g/b2;Le/a/c/y/l;Landroid/content/Context;I)V

    goto/16 :goto_9

    .line 111
    :cond_4
    instance-of v3, v2, Le/a/c/a/p/c/d$b;

    if-eqz v3, :cond_5

    check-cast v0, Le/a/c/a/p/d/q/d;

    check-cast v2, Le/a/c/a/p/c/d$b;

    .line 112
    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, v0, Le/a/c/a/p/d/q/d;->e:Le/a/c/a/g/v0;

    iget-object v0, v0, Le/a/c/a/g/v0;->b:Landroid/widget/TextView;

    const-string v3, "binding.header"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v2, v2, Le/a/c/a/p/c/d$b;->b:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 116
    :cond_5
    instance-of v3, v2, Le/a/c/a/p/c/d$d;

    if-eqz v3, :cond_e

    check-cast v0, Le/a/c/a/p/d/q/h;

    check-cast v2, Le/a/c/a/p/c/d$d;

    .line 117
    invoke-static {v2, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2}, Le/a/c/a/p/d/q/a;->R4(Le/a/c/a/p/c/d;)V

    .line 119
    iget-object v3, v0, Le/a/c/a/p/d/q/h;->k:Ls1/w/f;

    const/4 v4, 0x0

    invoke-static {v4, v15}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v5

    invoke-interface {v3, v5}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v3

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v3

    iput-object v3, v0, Le/a/c/a/p/d/q/h;->d:Lq3/a/i0;

    .line 120
    iget-object v3, v2, Le/a/c/a/p/c/d$d;->b:Ljava/util/List;

    const/4 v4, 0x3

    .line 121
    invoke-static {v3, v4}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 122
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 123
    iget-object v6, v0, Le/a/c/a/p/d/q/h;->e:Ljava/util/Map;

    .line 124
    sget-object v12, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v12, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v14, Le/a/b0/m/a/a;

    invoke-direct {v14, v5, v11, v12}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    invoke-interface {v6, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v6, v0, Le/a/c/a/p/d/q/h;->d:Lq3/a/i0;

    if-eqz v6, :cond_7

    .line 129
    invoke-virtual {v0}, Le/a/c/a/p/d/q/a;->N4()Le/a/b0/a/b/a;

    move-result-object v12

    .line 130
    sget-object v14, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v14, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {v11, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v4, Le/a/b0/m/a/a;

    invoke-direct {v4, v5, v11, v14}, Le/a/b0/m/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 133
    invoke-virtual {v0, v4}, Le/a/c/a/p/d/q/a;->O4(Le/a/b0/m/a/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v4

    .line 134
    invoke-virtual {v12, v4, v13}, Le/a/b0/a/b/a;->nk(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    .line 135
    invoke-virtual {v12, v15}, Le/a/b0/a/b/a;->pk(Z)V

    .line 136
    iget-object v4, v0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 137
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 138
    sget v14, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_avatar_view:I

    .line 139
    iget-object v15, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v15, v15, Le/a/c/a/g/x0;->b:Landroid/widget/LinearLayout;

    .line 140
    invoke-virtual {v4, v14, v15, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const-string v14, "null cannot be cast to non-null type com.truecaller.common.ui.avatar.AvatarXView"

    invoke-static {v4, v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 141
    invoke-virtual {v4, v12}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 142
    iget-object v14, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v14, v14, Le/a/c/a/g/x0;->b:Landroid/widget/LinearLayout;

    const-string v15, "binding.logoContainer"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v14

    if-nez v14, :cond_6

    move v14, v13

    goto :goto_3

    :cond_6
    const/4 v14, -0x8

    .line 143
    iget-object v15, v0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 144
    invoke-static {v14, v15}, Le/a/c/p/a;->W(ILandroid/content/Context;)I

    move-result v14

    .line 145
    :goto_3
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v15, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 147
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 148
    new-instance v1, Le/a/c/a/p/d/q/g;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v5, v12, v4}, Le/a/c/a/p/d/q/g;-><init>(Le/a/c/a/p/d/q/h;Ljava/lang/String;Le/a/b0/a/b/a;Ls1/w/d;)V

    const/16 v20, 0x3

    const/16 v21, 0x0

    move-object/from16 v16, v6

    move-object/from16 v19, v1

    invoke-static/range {v16 .. v21}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v1, p0

    const/4 v4, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x1

    goto/16 :goto_2

    .line 149
    :cond_8
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->d:Landroid/widget/TextView;

    const-string v3, "binding.moreSenders"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v4, v2, Le/a/c/a/p/c/d$d;->b:Ljava/util/List;

    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    invoke-static {v1, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 152
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->d:Landroid/widget/TextView;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v3, v0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 154
    sget v4, Lcom/truecaller/insights/ui/R$string;->no_of_senders_more:I

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    .line 155
    iget-object v5, v2, Le/a/c/a/p/c/d$d;->b:Ljava/util/List;

    .line 156
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x3

    sub-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->e:Lcom/google/android/material/card/MaterialCardView;

    const-string v3, "binding.secondCard"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v4, v2, Le/a/c/a/p/c/d$d;->b:Ljava/util/List;

    .line 159
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-static {v1, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 160
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->g:Lcom/google/android/material/card/MaterialCardView;

    const-string v4, "binding.thirdCard"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v5, v2, Le/a/c/a/p/c/d$d;->b:Ljava/util/List;

    .line 162
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-static {v1, v5}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 163
    iget-object v1, v2, Le/a/c/a/p/c/d$d;->b:Ljava/util/List;

    .line 164
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    iget-object v2, v0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 166
    invoke-static {v6, v2}, Le/a/c/p/a;->W(ILandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const/4 v5, 0x6

    .line 167
    iget-object v6, v0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 168
    invoke-static {v5, v6}, Le/a/c/p/a;->W(ILandroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    const/16 v6, 0x8

    .line 169
    iget-object v7, v0, Le/a/c/a/p/d/q/a;->a:Landroid/content/Context;

    .line 170
    invoke-static {v6, v7}, Le/a/c/p/a;->W(ILandroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Float;

    .line 171
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v8, v12

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v8, v13

    invoke-static {v8}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-array v11, v7, [Ljava/lang/Float;

    .line 172
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v11, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v11, v13

    invoke-static {v11}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-array v7, v7, [Ljava/lang/Float;

    .line 173
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v7, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v7, v12

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v7, v13

    invoke-static {v7}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eq v1, v12, :cond_d

    if-eq v1, v13, :cond_c

    move-object v8, v2

    goto :goto_8

    :cond_c
    move-object v8, v9

    .line 174
    :cond_d
    :goto_8
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->c:Lcom/google/android/material/card/MaterialCardView;

    const-string v2, "binding.mainCard"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 175
    iget-object v1, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v1, v1, Le/a/c/a/g/x0;->e:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 176
    iget-object v0, v0, Le/a/c/a/p/d/q/h;->g:Le/a/c/a/g/x0;

    iget-object v0, v0, Le/a/c/a/g/x0;->g:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    goto :goto_9

    .line 177
    :cond_e
    instance-of v1, v2, Le/a/c/a/p/c/d$c;

    if-eqz v1, :cond_f

    check-cast v0, Le/a/c/a/p/d/q/f;

    invoke-virtual {v0, v2}, Le/a/c/a/p/d/q/a;->R4(Le/a/c/a/p/c/d;)V

    :cond_f
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "parent"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v4, Lcom/truecaller/insights/ui/R$layout;->item_past_smart_feed_card:I

    const-string v5, "searchApi"

    const-string v6, "analyticsLogger"

    const-string v7, "Missing required view with ID: "

    const-string v8, "messageLocator"

    const/4 v9, 0x0

    if-ne v2, v4, :cond_2

    .line 2
    iget-object v12, v0, Le/a/c/a/p/d/a;->e:Le/a/c/h/h;

    .line 3
    iget-object v13, v0, Le/a/c/a/p/d/a;->f:Le/a/b0/m/c/a;

    .line 4
    iget-object v14, v0, Le/a/c/a/p/d/a;->g:Le/a/c/a/i/h;

    .line 5
    iget-object v15, v0, Le/a/c/a/p/d/a;->d:Ls1/z/b/a;

    if-eqz v15, :cond_1

    .line 6
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onShowTransactionClicked"

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v2, Le/a/c/a/p/d/q/c;

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 9
    invoke-virtual {v3, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 10
    sget v3, Lcom/truecaller/insights/ui/R$id;->dateTv:I

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 12
    sget v3, Lcom/truecaller/insights/ui/R$id;->iconIv:I

    .line 13
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v19, :cond_0

    .line 14
    sget v3, Lcom/truecaller/insights/ui/R$id;->senderNameTv:I

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 16
    sget v3, Lcom/truecaller/insights/ui/R$id;->smartCard:I

    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 18
    invoke-static {v4}, Le/a/c/a/g/b2;->a(Landroid/view/View;)Le/a/c/a/g/b2;

    move-result-object v21

    .line 19
    new-instance v11, Le/a/c/a/g/q0;

    move-object/from16 v17, v1

    check-cast v17, Lcom/google/android/material/card/MaterialCardView;

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Le/a/c/a/g/q0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Le/a/c/a/g/b2;)V

    const-string v1, "ItemPastSmartFeedCardBin\u2026.context), parent, false)"

    .line 20
    invoke-static {v11, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v2

    .line 21
    invoke-direct/range {v10 .. v15}, Le/a/c/a/p/d/q/c;-><init>(Le/a/c/a/g/q0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Ls1/z/b/a;)V

    goto/16 :goto_1

    .line 22
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Listener must have been initialized here"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_2
    sget v4, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_smart_feed_expanded:I

    if-ne v2, v4, :cond_4

    .line 26
    iget-object v2, v0, Le/a/c/a/p/d/a;->e:Le/a/c/h/h;

    .line 27
    iget-object v10, v0, Le/a/c/a/p/d/a;->f:Le/a/b0/m/c/a;

    .line 28
    iget-object v11, v0, Le/a/c/a/p/d/a;->g:Le/a/c/a/i/h;

    .line 29
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v3, Le/a/c/a/p/d/q/j;

    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 32
    invoke-virtual {v5, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 33
    sget v4, Lcom/truecaller/insights/ui/R$id;->buttonAction1:I

    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_3

    .line 35
    sget v4, Lcom/truecaller/insights/ui/R$id;->buttonAction2:I

    .line 36
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_3

    .line 37
    sget v4, Lcom/truecaller/insights/ui/R$id;->buttonDivider:I

    .line 38
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 39
    sget v4, Lcom/truecaller/insights/ui/R$id;->dateTv:I

    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_3

    .line 41
    sget v4, Lcom/truecaller/insights/ui/R$id;->divider:I

    .line 42
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 43
    sget v4, Lcom/truecaller/insights/ui/R$id;->guidelineEnd:I

    .line 44
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v19, :cond_3

    .line 45
    sget v4, Lcom/truecaller/insights/ui/R$id;->guidelineStart:I

    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v20, :cond_3

    .line 47
    sget v4, Lcom/truecaller/insights/ui/R$id;->iconIv:I

    .line 48
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v21, :cond_3

    .line 49
    sget v4, Lcom/truecaller/insights/ui/R$id;->secondButtonGroup:I

    .line 50
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Landroidx/constraintlayout/widget/Group;

    if-eqz v22, :cond_3

    .line 51
    sget v4, Lcom/truecaller/insights/ui/R$id;->senderNameTv:I

    .line 52
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_3

    .line 53
    sget v4, Lcom/truecaller/insights/ui/R$id;->smartCard:I

    .line 54
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 55
    invoke-static {v5}, Le/a/c/a/g/b2;->a(Landroid/view/View;)Le/a/c/a/g/b2;

    move-result-object v24

    .line 56
    new-instance v4, Le/a/c/a/g/y0;

    move-object v13, v1

    check-cast v13, Lcom/google/android/material/card/MaterialCardView;

    move-object v12, v4

    invoke-direct/range {v12 .. v24}, Le/a/c/a/g/y0;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;Le/a/c/a/g/b2;)V

    const-string v1, "ItemUpcomingSmartFeedExp\u2026.context), parent, false)"

    .line 57
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {v3, v4, v2, v10, v11}, Le/a/c/a/p/d/q/j;-><init>(Le/a/c/a/g/y0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_4
    sget v4, Lcom/truecaller/insights/ui/R$layout;->item_smart_feed_section_header:I

    if-ne v2, v4, :cond_6

    iget-object v2, v0, Le/a/c/a/p/d/a;->e:Le/a/c/h/h;

    .line 62
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v3, Le/a/c/a/p/d/q/d;

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 65
    invoke-virtual {v5, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    sget v4, Lcom/truecaller/insights/ui/R$id;->header:I

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 68
    new-instance v4, Le/a/c/a/g/v0;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1, v5}, Le/a/c/a/g/v0;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-string v1, "ItemSmartFeedSectionHead\u2026.context), parent, false)"

    .line 69
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {v3, v4, v2}, Le/a/c/a/p/d/q/d;-><init>(Le/a/c/a/g/v0;Le/a/c/h/h;)V

    :goto_0
    move-object v2, v3

    goto/16 :goto_1

    .line 71
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_6
    sget v4, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_expand:I

    if-ne v2, v4, :cond_8

    .line 74
    iget-object v12, v0, Le/a/c/a/p/d/a;->e:Le/a/c/h/h;

    .line 75
    iget-object v13, v0, Le/a/c/a/p/d/a;->f:Le/a/b0/m/c/a;

    .line 76
    iget-object v14, v0, Le/a/c/a/p/d/a;->i:Ls1/w/f;

    .line 77
    iget-object v15, v0, Le/a/c/a/p/d/a;->j:Ls1/w/f;

    .line 78
    iget-object v2, v0, Le/a/c/a/p/d/a;->g:Le/a/c/a/i/h;

    .line 79
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ioContext"

    invoke-static {v14, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uiContext"

    invoke-static {v15, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v3, Le/a/c/a/p/d/q/h;

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 82
    invoke-virtual {v5, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    sget v4, Lcom/truecaller/insights/ui/R$id;->expand:I

    .line 84
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_7

    .line 85
    sget v4, Lcom/truecaller/insights/ui/R$id;->logoContainer:I

    .line 86
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_7

    .line 87
    sget v4, Lcom/truecaller/insights/ui/R$id;->mainCard:I

    .line 88
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v20, v5

    check-cast v20, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v20, :cond_7

    .line 89
    sget v4, Lcom/truecaller/insights/ui/R$id;->moreSenders:I

    .line 90
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_7

    .line 91
    sget v4, Lcom/truecaller/insights/ui/R$id;->secondCard:I

    .line 92
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v22, v5

    check-cast v22, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v22, :cond_7

    .line 93
    sget v4, Lcom/truecaller/insights/ui/R$id;->senders:I

    .line 94
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v23, v5

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_7

    .line 95
    sget v4, Lcom/truecaller/insights/ui/R$id;->thirdCard:I

    .line 96
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v24, :cond_7

    .line 97
    new-instance v11, Le/a/c/a/g/x0;

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v24}, Le/a/c/a/g/x0;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-string v1, "ItemUpcomingExpandBindin\u2026.context), parent, false)"

    .line 98
    invoke-static {v11, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v16, v2

    .line 99
    invoke-direct/range {v10 .. v16}, Le/a/c/a/p/d/q/h;-><init>(Le/a/c/a/g/x0;Le/a/c/h/h;Le/a/b0/m/c/a;Ls1/w/f;Ls1/w/f;Le/a/c/a/i/h;)V

    goto/16 :goto_0

    .line 100
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_8
    sget v4, Lcom/truecaller/insights/ui/R$layout;->item_upcoming_collapse:I

    if-ne v2, v4, :cond_a

    .line 103
    iget-object v2, v0, Le/a/c/a/p/d/a;->e:Le/a/c/h/h;

    .line 104
    iget-object v5, v0, Le/a/c/a/p/d/a;->g:Le/a/c/a/i/h;

    .line 105
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v3, Le/a/c/a/p/d/q/f;

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 108
    invoke-virtual {v6, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 109
    sget v4, Lcom/truecaller/insights/ui/R$id;->collapse:I

    .line 110
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 111
    new-instance v4, Le/a/c/a/g/w0;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v4, v1, v6}, Le/a/c/a/g/w0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    const-string v1, "ItemUpcomingCollapseBind\u2026.context), parent, false)"

    .line 112
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {v3, v4, v2, v5}, Le/a/c/a/p/d/q/f;-><init>(Le/a/c/a/g/w0;Le/a/c/h/h;Le/a/c/a/i/h;)V

    goto/16 :goto_0

    .line 114
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_a
    sget v4, Lcom/truecaller/insights/ui/R$layout;->item_shimmer_smart_feed_card:I

    if-ne v2, v4, :cond_b

    .line 117
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v2, Le/a/c/a/p/d/q/e;

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 120
    invoke-virtual {v3, v4, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "rootView"

    .line 121
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    check-cast v1, Lcom/truecaller/common/ui/ShimmerLoadingView;

    .line 123
    new-instance v3, Le/a/c/a/g/u0;

    invoke-direct {v3, v1, v1}, Le/a/c/a/g/u0;-><init>(Lcom/truecaller/common/ui/ShimmerLoadingView;Lcom/truecaller/common/ui/ShimmerLoadingView;)V

    const-string v1, "ItemShimmerSmartFeedCard\u2026.context), parent, false)"

    .line 124
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {v2, v3}, Le/a/c/a/p/d/q/e;-><init>(Le/a/c/a/g/u0;)V

    :goto_1
    return-object v2

    .line 126
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewHolder type not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
