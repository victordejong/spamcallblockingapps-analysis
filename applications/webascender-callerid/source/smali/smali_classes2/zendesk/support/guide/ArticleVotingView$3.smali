.class Lzendesk/support/guide/ArticleVotingView$3;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/ArticleVotingView;->upvoteArticle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zendesk/service/f<",
        "Lzendesk/support/ArticleVote;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/ArticleVotingView;


# direct methods
.method constructor <init>(Lzendesk/support/guide/ArticleVotingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to upvote article. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ViewArticleActivity"

    invoke-static {v1, p1, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lg/k/c/j;->q0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {p1}, Lzendesk/support/guide/ArticleVotingView;->access$100(Lzendesk/support/guide/ArticleVotingView;)Lzendesk/support/ArticleVote;

    move-result-object v0

    invoke-static {v0}, Lzendesk/support/guide/ArticleVotingView$VoteState;->fromArticleVote(Lzendesk/support/ArticleVote;)Lzendesk/support/guide/ArticleVotingView$VoteState;

    move-result-object v0

    invoke-static {p1, v0}, Lzendesk/support/guide/ArticleVotingView;->access$400(Lzendesk/support/guide/ArticleVotingView;Lzendesk/support/guide/ArticleVotingView$VoteState;)V

    .line 4
    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzendesk/support/guide/ArticleVotingView;->access$000(Lzendesk/support/guide/ArticleVotingView;Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/ArticleVote;

    invoke-virtual {p0, p1}, Lzendesk/support/guide/ArticleVotingView$3;->onSuccess(Lzendesk/support/ArticleVote;)V

    return-void
.end method

.method public onSuccess(Lzendesk/support/ArticleVote;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ViewArticleActivity"

    const-string v2, "Successfully upvoted article!"

    .line 2
    invoke-static {v1, v2, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {v0, p1}, Lzendesk/support/guide/ArticleVotingView;->access$102(Lzendesk/support/guide/ArticleVotingView;Lzendesk/support/ArticleVote;)Lzendesk/support/ArticleVote;

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lg/k/c/j;->s0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {v0}, Lzendesk/support/guide/ArticleVotingView;->access$700(Lzendesk/support/guide/ArticleVotingView;)Lzendesk/support/ArticleVoteStorage;

    move-result-object v0

    iget-object v1, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {v1}, Lzendesk/support/guide/ArticleVotingView;->access$600(Lzendesk/support/guide/ArticleVotingView;)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lzendesk/support/ArticleVoteStorage;->storeArticleVote(Ljava/lang/Long;Lzendesk/support/ArticleVote;)V

    .line 6
    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$3;->this$0:Lzendesk/support/guide/ArticleVotingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lzendesk/support/guide/ArticleVotingView;->access$000(Lzendesk/support/guide/ArticleVotingView;Z)V

    return-void
.end method
