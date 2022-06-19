.class public Le/a/q/g/b$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/g/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/contactfeedback/db/CommentFeedback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/q/g/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/contactfeedback/db/CommentFeedback;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getTimestamp()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getTextBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getTextBody()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 10
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getSource()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 13
    :goto_2
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getSyncState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getSyncState()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 16
    :goto_3
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getAnonymous()Z

    move-result v0

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 17
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 18
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getPhoneNumberType()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/CommentFeedback;->getPhoneNumberType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `comment_feedback_table` (`_id`,`creation_timestamp`,`phone_number`,`text_body`,`source`,`sync_state`,`anonymous`,`phone_number_type`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
