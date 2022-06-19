.class public final Le/a/v/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/y;

.field public final b:Le/a/p5/h0;

.field public final c:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/p5/y;Le/a/p5/h0;Le/a/b0/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/y;",
            "Le/a/p5/h0;",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "numberFormatter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/c/b;->a:Le/a/p5/y;

    iput-object p2, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    iput-object p3, p0, Le/a/v/a/c/b;->c:Le/a/b0/a/b/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;)Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;
    .locals 11

    const-string v0, "commentFeedBackModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_comments_anonymous_poster:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "themedResourceProvider.g\u2026omments_anonymous_poster)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 4
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 5
    invoke-virtual {v0, v4}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/data/entity/Contact;->P0(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/a/v/a/c/b;->a:Le/a/p5/y;

    .line 8
    sget-object v2, Le/a/b0/k/h;->b:Ljava/util/Locale;

    const-string v3, "LocaleManager.getAppLocale()"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getUpVotes()I

    move-result v5

    invoke-interface {v1, v2, v5}, Le/a/p5/y;->b(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v2, p0, Le/a/v/a/c/b;->a:Le/a/p5/y;

    .line 11
    sget-object v5, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 12
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getDownVotes()I

    move-result v3

    invoke-interface {v2, v5, v3}, Le/a/p5/y;->b(Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getUpVotes()I

    move-result v3

    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v5

    .line 14
    sget-object v6, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->UPVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    if-ne v5, v6, :cond_1

    .line 15
    iget-object v5, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v6, Lcom/truecaller/details_view/R$attr;->tcx_brandBackgroundBlue:I

    invoke-interface {v5, v6}, Le/a/p5/h0;->l(I)I

    move-result v5

    .line 16
    new-instance v6, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpPressed;

    invoke-direct {v6, v3, v1, v5, v5}, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpPressed;-><init>(ILjava/lang/String;II)V

    move-object v8, v6

    goto :goto_1

    .line 17
    :cond_1
    new-instance v5, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;

    .line 18
    iget-object v6, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v7, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    .line 19
    iget-object v7, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v8, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewThumbColor:I

    invoke-interface {v7, v8}, Le/a/p5/h0;->l(I)I

    move-result v7

    .line 20
    invoke-direct {v5, v3, v1, v6, v7}, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbUpDefault;-><init>(ILjava/lang/String;II)V

    move-object v8, v5

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getDownVotes()I

    move-result v1

    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    move-result-object v3

    .line 22
    sget-object v5, Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;->DOWNVOTED:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    if-ne v3, v5, :cond_2

    .line 23
    iget-object v3, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v5, Lcom/truecaller/details_view/R$attr;->tcx_alertBackgroundRed:I

    invoke-interface {v3, v5}, Le/a/p5/h0;->l(I)I

    move-result v3

    .line 24
    new-instance v5, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownPressed;

    invoke-direct {v5, v1, v2, v3, v3}, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownPressed;-><init>(ILjava/lang/String;II)V

    move-object v9, v5

    goto :goto_2

    .line 25
    :cond_2
    new-instance v3, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownDefault;

    .line 26
    iget-object v5, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v6, Lcom/truecaller/details_view/R$attr;->tcx_textPrimary:I

    invoke-interface {v5, v6}, Le/a/p5/h0;->l(I)I

    move-result v5

    .line 27
    iget-object v6, p0, Le/a/v/a/c/b;->b:Le/a/p5/h0;

    sget v7, Lcom/truecaller/details_view/R$attr;->tcx_detailsViewThumbColor:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    .line 28
    invoke-direct {v3, v1, v2, v5, v6}, Lcom/truecaller/details_view/ui/comments/widget/ThumbState$ThumbDownDefault;-><init>(ILjava/lang/String;II)V

    move-object v9, v3

    .line 29
    :goto_2
    new-instance v10, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 30
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    .line 32
    iget-object v1, p0, Le/a/v/a/c/b;->c:Le/a/b0/a/b/b;

    invoke-interface {v1, v0}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v5

    .line 33
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getPostedAt()Ljava/lang/String;

    move-result-object v6

    .line 34
    invoke-virtual {p1}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v1, v10

    .line 35
    invoke-direct/range {v1 .. v9}, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/details_view/ui/comments/widget/ThumbState;Lcom/truecaller/details_view/ui/comments/widget/ThumbState;)V

    return-object v10
.end method
