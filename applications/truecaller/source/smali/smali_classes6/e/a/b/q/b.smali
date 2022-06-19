.class public final Le/a/b/q/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/q/a;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/q/b;->a:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 6

    const-string v0, "contactFeedbackContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackQuestion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEvent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "historyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->getQuestionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p2, p3, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    move-object v4, p2

    const-string p2, "historyEvent.contact?.displayName ?: \"\""

    invoke-static {v4, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v5, p3, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    const-string p2, "historyEvent.rawNumber"

    .line 6
    invoke-static {v5, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "UpVote"

    move-object v0, p0

    move-object v3, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Le/a/b/q/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;Lcom/truecaller/data/entity/HistoryEvent;)V
    .locals 6

    const-string v0, "contactFeedbackContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackQuestion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyEvent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "historyEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->getQuestionId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object p2, p3, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    move-object v4, p2

    const-string p2, "historyEvent.contact?.displayName ?: \"\""

    invoke-static {v4, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v5, p3, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    const-string p2, "historyEvent.rawNumber"

    .line 6
    invoke-static {v5, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DownVote"

    move-object v0, p0

    move-object v3, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Le/a/b/q/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ls1/k;

    .line 1
    new-instance v1, Ls1/k;

    const-string v2, "Action"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 2
    new-instance p1, Ls1/k;

    const-string v1, "questionId"

    invoke-direct {p1, v1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 3
    new-instance p1, Ls1/k;

    const-string p2, "Context"

    invoke-direct {p1, p2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 4
    new-instance p1, Ls1/k;

    const-string p2, "BusinessName"

    invoke-direct {p1, p2, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 5
    new-instance p1, Ls1/k;

    const-string p2, "PhoneNumber"

    invoke-direct {p1, p2, p5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 6
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VerifiedFeedbackLog : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p2

    const-string p3, "VerifiedBusinessFeedbackEvent"

    .line 9
    invoke-virtual {p2, p3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 10
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1, p3}, Ls1/u/i;->X0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    invoke-virtual {p2, p3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 11
    invoke-virtual {p2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 12
    iget-object p2, p0, Le/a/b/q/b;->a:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    invoke-interface {p2, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
