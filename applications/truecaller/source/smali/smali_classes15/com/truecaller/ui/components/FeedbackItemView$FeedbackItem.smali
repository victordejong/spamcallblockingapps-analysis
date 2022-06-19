.class public Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;
.super Le/a/e/c2/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/FeedbackItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
    }
.end annotation


# instance fields
.field public j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/e/c2/i0;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 3
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;->OTHER:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 4
    iput-object p1, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->k:Lcom/truecaller/ui/components/FeedbackItemView$DisplaySource;

    .line 5
    iput-object p2, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    check-cast p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;

    iget-object p1, p1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    invoke-virtual {v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->getMessageId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES_THANKS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->FEEDBACK_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_RATE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    iput-object v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;->j:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
