.class final enum Lzendesk/support/guide/ArticleVotingView$VoteState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/ArticleVotingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VoteState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/guide/ArticleVotingView$VoteState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/guide/ArticleVotingView$VoteState;

.field public static final enum DOWNVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;

.field public static final enum NONE:Lzendesk/support/guide/ArticleVotingView$VoteState;

.field public static final enum UPVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lzendesk/support/guide/ArticleVotingView$VoteState;

    const-string v1, "UPVOTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/guide/ArticleVotingView$VoteState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/guide/ArticleVotingView$VoteState;->UPVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;

    .line 2
    new-instance v1, Lzendesk/support/guide/ArticleVotingView$VoteState;

    const-string v3, "DOWNVOTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/support/guide/ArticleVotingView$VoteState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/support/guide/ArticleVotingView$VoteState;->DOWNVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;

    .line 3
    new-instance v3, Lzendesk/support/guide/ArticleVotingView$VoteState;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/support/guide/ArticleVotingView$VoteState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/support/guide/ArticleVotingView$VoteState;->NONE:Lzendesk/support/guide/ArticleVotingView$VoteState;

    const/4 v5, 0x3

    new-array v5, v5, [Lzendesk/support/guide/ArticleVotingView$VoteState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lzendesk/support/guide/ArticleVotingView$VoteState;->$VALUES:[Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromArticleVote(Lzendesk/support/ArticleVote;)Lzendesk/support/guide/ArticleVotingView$VoteState;
    .locals 1

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Lzendesk/support/ArticleVote;->getValue()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lzendesk/support/ArticleVote;->getValue()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lez p0, :cond_1

    .line 3
    sget-object p0, Lzendesk/support/guide/ArticleVotingView$VoteState;->UPVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-object p0

    :cond_1
    if-gez p0, :cond_2

    .line 4
    sget-object p0, Lzendesk/support/guide/ArticleVotingView$VoteState;->DOWNVOTED:Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lzendesk/support/guide/ArticleVotingView$VoteState;->NONE:Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-object p0

    .line 6
    :cond_3
    :goto_0
    sget-object p0, Lzendesk/support/guide/ArticleVotingView$VoteState;->NONE:Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/guide/ArticleVotingView$VoteState;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/guide/ArticleVotingView$VoteState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-object p0
.end method

.method public static values()[Lzendesk/support/guide/ArticleVotingView$VoteState;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/guide/ArticleVotingView$VoteState;->$VALUES:[Lzendesk/support/guide/ArticleVotingView$VoteState;

    invoke-virtual {v0}, [Lzendesk/support/guide/ArticleVotingView$VoteState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/guide/ArticleVotingView$VoteState;

    return-object v0
.end method
