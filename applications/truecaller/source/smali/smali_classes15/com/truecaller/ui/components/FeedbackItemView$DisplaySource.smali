.class public final enum Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/FeedbackItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplaySource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

.field public static final enum AFTERCALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

.field public static final enum BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

.field public static final enum GLOBAL_SEARCH_HISTORY:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

.field public static final enum OTHER:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    const-string v1, "AFTERCALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->AFTERCALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 2
    new-instance v1, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    const-string v3, "BLOCKED_CALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 3
    new-instance v3, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    const-string v5, "GLOBAL_SEARCH_HISTORY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->GLOBAL_SEARCH_HISTORY:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 4
    new-instance v5, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    const-string v7, "OTHER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->OTHER:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->$VALUES:[Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->$VALUES:[Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    invoke-virtual {v0}, [Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    return-object v0
.end method


# virtual methods
.method public asAnalyticsContext()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "undefined"

    return-object v0

    :cond_0
    const-string v0, "searchHistory"

    return-object v0

    :cond_1
    const-string v0, "callBlocked"

    return-object v0

    :cond_2
    const-string v0, "afterCall"

    return-object v0
.end method

.method public getInitialFeedbackState()Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->AFTERCALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0
.end method

.method public getInitialInviteState()Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_INVITE_FRIENDS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0
.end method

.method public getInitialShareState()Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->AFTERCALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->BLOCKED_CALL:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne p0, v0, :cond_1

    .line 4
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0
.end method

.method public shouldShowFeedback()Z
    .locals 7

    .line 1
    sget v0, Lcom/truecaller/ui/components/FeedbackItemView;->m:I

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GOOGLE_REVIEW_DONE"

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    const-string v0, "FEEDBACK_SENT"

    .line 3
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->D4()Le/a/d4/a;

    move-result-object v0

    invoke-interface {v0}, Le/a/d4/a;->b()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x2

    const-string v0, "FEEDBACK_DISMISSED_COUNT"

    .line 5
    invoke-static {v0, v3, v4}, Le/a/j4/b/a/h;->r(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    return v2

    .line 6
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    const-string v0, "FEEDBACK_HAS_ASKED_SEARCH"

    .line 7
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 8
    invoke-static {v0}, Le/a/j4/b/a/h;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/32 v3, 0xf731400

    .line 9
    invoke-static {v0, v3, v4}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "INVITE_LAST_ASKED"

    .line 10
    invoke-static {v0}, Le/a/j4/b/a/h;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 11
    invoke-static {v0, v3, v4}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-wide v3, 0x9a7ec800L

    const-string v0, "FEEDBACK_LAST_DISMISSED"

    .line 12
    invoke-static {v0, v3, v4}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    :cond_8
    const-string v0, "blockCallCounter"

    .line 13
    invoke-static {v0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    return v1

    :cond_a
    const-string v0, "FEEDBACK_HAS_ASKED_AFTERCALL"

    .line 14
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public shouldShowInviteFriends()Z
    .locals 5

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "INVITE_PEOPLE_FIRST_CHECKED"

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->GLOBAL_SEARCH_HISTORY:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    if-ne p0, v0, :cond_1

    const-wide/16 v0, 0x3

    const-string v2, "counterFacebookInvite"

    .line 5
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->r(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x5265c00

    const-string v2, "INVITE_LAST_ASKED"

    .line 6
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, 0x48190800

    const-string v2, "INVITE_LAST_DISMISSED"

    .line 7
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShowShare()Z
    .locals 3

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FEEDBACK_LIKES_TRUECALLER"

    .line 2
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2

    const-string v2, "FEEDBACK_DISMISSED_COUNT"

    .line 3
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->r(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HAS_SHARED"

    .line 4
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x240c8400

    const-string v2, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 5
    invoke-static {v2, v0, v1}, Le/a/j4/b/a/h;->c(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
