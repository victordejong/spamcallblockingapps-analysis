.class public Le/a/e/c2/f0;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/c2/f0$b;,
        Le/a/e/c2/f0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView$g;

.field public b:Le/a/e/c2/f0$b;

.field public c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

.field public d:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/c2/f0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 3
    new-instance v0, Le/a/e/c2/f0$a;

    invoke-direct {v0, p0}, Le/a/e/c2/f0$a;-><init>(Le/a/e/c2/f0;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method


# virtual methods
.method public e(Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object v1, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRemoved(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemInserted(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eq p1, v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 7
    :cond_2
    :goto_0
    iput-object p1, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    return-void
.end method

.method public final getItemCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/e/c2/f0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/c2/f0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemCount()I

    move-result v0

    iget-object v2, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eqz v0, :cond_0

    const p1, 0x7f0a13c2

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/e/c2/f0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 3
    iget-object v1, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eqz v1, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 4
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 3

    if-nez p2, :cond_2

    .line 1
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Le/a/e/c2/f0$c;

    iget-object p1, p1, Le/a/e/c2/f0$c;->a:Lcom/truecaller/common/ui/banner/BannerViewX;

    .line 3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 4
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 5
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getTitleId()I

    move-result v0

    const-string v1, ""

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;->setTitle(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 9
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getMessageId()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSubtitle(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 13
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 14
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getPositiveId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonText(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 16
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 17
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getDismissId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSecondaryButtonText(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    .line 19
    iget-object v0, v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 20
    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getIconId()I

    move-result v0

    invoke-static {p2, v0}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/banner/BannerViewX;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 21
    :cond_2
    iget-object v0, p0, Le/a/e/c2/f0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 22
    iget-object v1, p0, Le/a/e/c2/f0;->c:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eqz v1, :cond_3

    if-lez p2, :cond_3

    add-int/lit8 p2, p2, -0x1

    .line 23
    :cond_3
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3

    const v0, 0x7f0a13c2

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p2, Lcom/truecaller/common/ui/banner/BannerViewX;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p2, p1, v0}, Lcom/truecaller/common/ui/banner/BannerViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070139

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Le/a/e/c2/k;

    invoke-direct {p1, p0}, Le/a/e/c2/k;-><init>(Le/a/e/c2/f0;)V

    invoke-virtual {p2, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setPrimaryButtonCLickListener(Ls1/z/b/l;)V

    .line 10
    new-instance p1, Le/a/e/c2/m;

    invoke-direct {p1, p0, p2}, Le/a/e/c2/m;-><init>(Le/a/e/c2/f0;Lcom/truecaller/common/ui/banner/BannerViewX;)V

    invoke-virtual {p2, p1}, Lcom/truecaller/common/ui/banner/BannerViewX;->setSecondaryButtonCLickListener(Ls1/z/b/l;)V

    .line 11
    new-instance p1, Le/a/e/c2/f0$c;

    invoke-direct {p1, p2}, Le/a/e/c2/f0$c;-><init>(Lcom/truecaller/common/ui/banner/BannerViewX;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Le/a/e/c2/f0;->a:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    :goto_0
    return-object p1
.end method
