.class public final Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006JE\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00072\u0016\u0008\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bR\"\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0019\u0010\u0019\u001a\u00020\u00148\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
        "commentViewModel",
        "Ls1/s;",
        "setAvatar",
        "(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V",
        "Lkotlin/Function1;",
        "upVoteClick",
        "downVoteClick",
        "f1",
        "(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Ls1/z/b/l;Ls1/z/b/l;)V",
        "Le/a/u3/g;",
        "u",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Le/a/v/k/q;",
        "v",
        "Le/a/v/k/q;",
        "getBinding",
        "()Le/a/v/k/q;",
        "binding",
        "Le/a/p5/h0;",
        "t",
        "Le/a/p5/h0;",
        "getThemedResourceProvider",
        "()Le/a/p5/h0;",
        "setThemedResourceProvider",
        "(Le/a/p5/h0;)V",
        "themedResourceProvider",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public t:Le/a/p5/h0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public u:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final v:Le/a/v/k/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    sget v0, Lcom/truecaller/details_view/R$layout;->view_single_comment:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p2, Lcom/truecaller/details_view/R$id;->avatar:I

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v3, :cond_0

    .line 7
    sget p2, Lcom/truecaller/details_view/R$id;->comment:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 9
    sget p2, Lcom/truecaller/details_view/R$id;->ivDownVote:I

    .line 10
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 11
    sget p2, Lcom/truecaller/details_view/R$id;->ivUpVote:I

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 13
    sget p2, Lcom/truecaller/details_view/R$id;->originalPoster:I

    .line 14
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 15
    sget p2, Lcom/truecaller/details_view/R$id;->postedDate:I

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 17
    sget p2, Lcom/truecaller/details_view/R$id;->separator:I

    .line 18
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 19
    sget p2, Lcom/truecaller/details_view/R$id;->tvDownVote:I

    .line 20
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 21
    sget p2, Lcom/truecaller/details_view/R$id;->tvUpVote:I

    .line 22
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 23
    sget p2, Lcom/truecaller/details_view/R$id;->voteCommentGroup:I

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/Group;

    if-eqz v12, :cond_0

    .line 25
    new-instance p2, Le/a/v/k/q;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v12}, Le/a/v/k/q;-><init>(Landroid/view/View;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;)V

    const-string v0, "ViewSingleCommentBinding\u2026ater.from(context), this)"

    .line 26
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->v:Le/a/v/k/q;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/v/l/b;

    invoke-interface {p1}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/v/l/a;->q(Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;)V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final setAvatar(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V
    .locals 4

    .line 1
    new-instance v0, Le/a/b0/a/b/a;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->t:Le/a/p5/h0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 2
    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->v:Le/a/v/k/q;

    iget-object v1, v1, Le/a/v/k/q;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 3
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->d:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 4
    invoke-static {v0, p1, v1, v3, v2}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "themedResourceProvider"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final f1(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Ls1/z/b/l;Ls1/z/b/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "commentViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->v:Le/a/v/k/q;

    .line 2
    invoke-direct {p0, p1}, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->setAvatar(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    .line 3
    iget-object v1, v0, Le/a/v/k/q;->f:Landroid/widget/TextView;

    const-string v2, "originalPoster"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Le/a/v/k/q;->g:Landroid/widget/TextView;

    const-string v2, "postedDate"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Le/a/v/k/q;->c:Landroid/widget/TextView;

    const-string v2, "comment"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, v0, Le/a/v/k/q;->j:Landroidx/constraintlayout/widget/Group;

    const-string v2, "voteCommentGroup"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->u:Le/a/u3/g;

    if-eqz v2, :cond_4

    .line 13
    iget-object v3, v2, Le/a/u3/g;->W2:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xcc

    aget-object v4, v4, v5

    invoke-virtual {v3, v2, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 15
    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 16
    instance-of v2, v1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    instance-of v1, v1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpPressed;

    if-eqz v1, :cond_1

    .line 18
    :goto_0
    iget-object v1, v0, Le/a/v/k/q;->e:Landroid/widget/ImageView;

    new-instance v8, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;

    const/4 v3, 0x0

    move-object v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v1, v0, Le/a/v/k/q;->e:Landroid/widget/ImageView;

    .line 20
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 21
    iget v2, v2, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->d:I

    .line 22
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    iget-object v1, v0, Le/a/v/k/q;->e:Landroid/widget/ImageView;

    .line 24
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 25
    iget v2, v2, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->a:I

    .line 26
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v1, v0, Le/a/v/k/q;->i:Landroid/widget/TextView;

    .line 28
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 29
    iget v2, v2, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->c:I

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object v1, v0, Le/a/v/k/q;->i:Landroid/widget/TextView;

    const-string v2, "tvUpVote"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v2, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->g:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 33
    iget-object v2, v2, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 36
    instance-of v2, v1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownDefault;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    instance-of v1, v1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownPressed;

    if-eqz v1, :cond_3

    .line 38
    :goto_1
    iget-object v1, v0, Le/a/v/k/q;->d:Landroid/widget/ImageView;

    new-instance v8, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;

    const/4 v3, 0x1

    move-object v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p2, v0, Le/a/v/k/q;->d:Landroid/widget/ImageView;

    .line 40
    iget-object p3, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 41
    iget p3, p3, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->d:I

    .line 42
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p3, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 43
    iget-object p2, v0, Le/a/v/k/q;->d:Landroid/widget/ImageView;

    .line 44
    iget-object p3, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 45
    iget p3, p3, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->a:I

    .line 46
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object p2, v0, Le/a/v/k/q;->h:Landroid/widget/TextView;

    .line 48
    iget-object p3, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 49
    iget p3, p3, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->c:I

    .line 50
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object p2, v0, Le/a/v/k/q;->h:Landroid/widget/TextView;

    const-string p3, "tvDownVote"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->h:Lcom/truecaller/details_view/ui/comments/widget/ThumbState;

    .line 53
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/ThumbState;->b:Ljava/lang/String;

    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    const-string p1, "featuresRegistry"

    .line 55
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final getBinding()Le/a/v/k/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->v:Le/a/v/k/q;

    return-object v0
.end method

.method public final getFeaturesRegistry()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->u:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getThemedResourceProvider()Le/a/p5/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->t:Le/a/p5/h0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "themedResourceProvider"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setFeaturesRegistry(Le/a/u3/g;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->u:Le/a/u3/g;

    return-void
.end method

.method public final setThemedResourceProvider(Le/a/p5/h0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->t:Le/a/p5/h0;

    return-void
.end method
