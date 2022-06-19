.class public abstract Le/a/e/g1;
.super Le/a/e/x0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/e/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public WA()Landroid/widget/ImageView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0b1b

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_0
    return-object v0
.end method

.method public XA()Landroid/widget/TextView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0b1c

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method public YA()Landroid/widget/TextView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0b1d

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method public ZA(Le/a/e/c2/f0;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->GLOBAL_SEARCH_HISTORY:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 2
    iget-object v1, p1, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-nez v1, :cond_4

    .line 3
    invoke-virtual {p1}, Le/a/e/c2/f0;->getItemCount()I

    move-result v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/truecaller/ui/components/FeedbackItemView;->c(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Landroid/content/Context;)Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->shouldClose()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Le/a/e/c2/f0;->e(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V

    return-void

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->isInviteState()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "INVITE_LAST_ASKED"

    .line 10
    invoke-static {v1}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 11
    invoke-static {v1}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p1, v0}, Le/a/e/c2/f0;->e(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public aB()Landroid/widget/ListView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0b19

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3
    :goto_0
    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public bB(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/e/g1;->YA()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Le/a/e/g1;->XA()Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1, p2}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Le/a/e/g1;->WA()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f040728

    invoke-static {p2, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, Le/a/p5/s0/g;->r1(Landroid/widget/ImageView;I)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-static {p1, p2, p3}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x7f0a0b4b

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 4
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method
