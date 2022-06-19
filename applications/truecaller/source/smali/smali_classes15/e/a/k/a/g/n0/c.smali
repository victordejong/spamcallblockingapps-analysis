.class public final Le/a/k/a/g/n0/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/k/a/g/n0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Integer;

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onItemClickListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onItemVisibleListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/k/a/g/n0/c;->c:Ls1/z/b/l;

    iput-object p2, p0, Le/a/k/a/g/n0/c;->d:Ls1/z/b/l;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/k/a/g/n0/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final e(Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/a/g/n0/c;->b:Ljava/lang/Integer;

    .line 2
    iget-object v1, p0, Le/a/k/a/g/n0/c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Le/a/k/a/g/n0/c;->b:Ljava/lang/Integer;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/g/n0/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 7

    .line 1
    check-cast p1, Le/a/k/a/g/n0/b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/k/a/g/n0/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;

    .line 4
    iget-object v0, p0, Le/a/k/a/g/n0/c;->b:Ljava/lang/Integer;

    const-string v1, "item"

    .line 5
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Le/a/k/a/g/n0/b;->a:Le/a/k/m/m;

    .line 7
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    const/4 v4, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 8
    instance-of v0, p2, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a;

    const-string v2, "image"

    const-string v3, "progressBar"

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v1, Le/a/k/m/m;->d:Landroid/widget/ProgressBar;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 10
    iget-object v0, v1, Le/a/k/m/m;->b:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a;

    .line 11
    iget-object v2, v1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a;->b:Ljava/lang/String;

    .line 12
    iget-boolean v1, v1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$a;->c:Z

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Le/a/k/a/g/n0/b;->N4(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_5

    .line 14
    :cond_2
    instance-of v0, p2, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;

    if-eqz v0, :cond_6

    .line 15
    move-object v0, p2

    check-cast v0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;

    .line 16
    iget-object v5, v0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->f:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    .line 17
    sget-object v6, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;->Loading:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Le/a/k/m/m;->d:Landroid/widget/ProgressBar;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    iget-object v5, v1, Le/a/k/m/m;->d:Landroid/widget/ProgressBar;

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 18
    :goto_2
    iget-object v3, v0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->f:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    .line 19
    sget-object v5, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;->Failed:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    const-string v6, "progressFailure"

    if-ne v3, v5, :cond_4

    iget-object v3, v1, Le/a/k/m/m;->e:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    iget-object v3, v1, Le/a/k/m/m;->e:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 20
    :goto_3
    iget-object v3, v0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->f:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    .line 21
    sget-object v5, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;->Downloaded:Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo$VideoState;

    const-string v6, "newBadge"

    if-ne v3, v5, :cond_5

    .line 22
    iget-boolean v3, v0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->g:Z

    if-eqz v3, :cond_5

    .line 23
    iget-object v3, v1, Le/a/k/m/m;->c:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 24
    iget-object v3, p1, Le/a/k/a/g/n0/b;->c:Ls1/z/b/l;

    invoke-interface {v3, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 25
    :cond_5
    iget-object v3, v1, Le/a/k/m/m;->c:Landroid/widget/ImageView;

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 26
    :goto_4
    iget-object v1, v1, Le/a/k/m/m;->b:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, v0, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, v1, v0, v4}, Le/a/k/a/g/n0/b;->N4(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 29
    :cond_6
    :goto_5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Le/a/k/a/g/n0/a;

    invoke-direct {v1, p1, p2}, Le/a/k/a/g/n0/a;-><init>(Le/a/k/a/g/n0/b;Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 7

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/videocallerid/R$layout;->item_video_caller_id_recording_customisation_option:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    sget p2, Lcom/truecaller/videocallerid/R$id;->image:I

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 5
    sget p2, Lcom/truecaller/videocallerid/R$id;->newBadge:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 7
    sget p2, Lcom/truecaller/videocallerid/R$id;->progress_bar:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ProgressBar;

    if-eqz v5, :cond_0

    .line 9
    sget p2, Lcom/truecaller/videocallerid/R$id;->progress_failure:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 11
    new-instance p2, Le/a/k/m/m;

    move-object v2, p1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Le/a/k/m/m;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;)V

    .line 12
    new-instance p1, Le/a/k/a/g/n0/b;

    const-string v0, "binding"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/a/g/n0/c;->c:Ls1/z/b/l;

    iget-object v1, p0, Le/a/k/a/g/n0/c;->d:Ls1/z/b/l;

    invoke-direct {p1, p2, v0, v1}, Le/a/k/a/g/n0/b;-><init>(Le/a/k/m/m;Ls1/z/b/l;Ls1/z/b/l;)V

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
