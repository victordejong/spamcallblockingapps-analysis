.class Lzendesk/support/guide/ArticleVotingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/ArticleVotingView;->setupViews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/ArticleVotingView;


# direct methods
.method constructor <init>(Lzendesk/support/guide/ArticleVotingView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lzendesk/support/guide/ArticleVotingView;->access$000(Lzendesk/support/guide/ArticleVotingView;Z)V

    .line 2
    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {p1}, Lzendesk/support/guide/ArticleVotingView;->access$100(Lzendesk/support/guide/ArticleVotingView;)Lzendesk/support/ArticleVote;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {p1}, Lzendesk/support/guide/ArticleVotingView;->access$100(Lzendesk/support/guide/ArticleVotingView;)Lzendesk/support/ArticleVote;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/ArticleVote;->getValue()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {p1}, Lzendesk/support/guide/ArticleVotingView;->access$100(Lzendesk/support/guide/ArticleVotingView;)Lzendesk/support/ArticleVote;

    move-result-object p1

    invoke-virtual {p1}, Lzendesk/support/ArticleVote;->getValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lzendesk/support/guide/ArticleVotingView$VoteState;->NONE:Lzendesk/support/guide/ArticleVotingView$VoteState;

    .line 4
    iget-object v0, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {v0}, Lzendesk/support/guide/ArticleVotingView;->access$200(Lzendesk/support/guide/ArticleVotingView;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lzendesk/support/guide/ArticleVotingView$VoteState;->UPVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;

    .line 6
    iget-object v0, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {v0}, Lzendesk/support/guide/ArticleVotingView;->access$300(Lzendesk/support/guide/ArticleVotingView;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lzendesk/support/guide/ArticleVotingView$1;->this$0:Lzendesk/support/guide/ArticleVotingView;

    invoke-static {v0, p1}, Lzendesk/support/guide/ArticleVotingView;->access$400(Lzendesk/support/guide/ArticleVotingView;Lzendesk/support/guide/ArticleVotingView$VoteState;)V

    return-void
.end method
