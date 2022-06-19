.class public Le/a/q/g/h$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/g/h;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/q/g/h;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->getContactId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->getTimestamp()J

    move-result-wide v0

    const/4 p2, 0x3

    invoke-interface {p1, p2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `contact_feedback_timestamp_table` (`_id`,`contact_id`,`feedback_timestamp`) VALUES (?,?,?)"

    return-object v0
.end method
