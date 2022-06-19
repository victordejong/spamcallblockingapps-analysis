.class public final Le/a/g/a/a/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->En(Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/g/a/a/a$b;->a:I

    iput-object p2, p0, Le/a/g/a/a/a$b;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/g/a/a/a$b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Le/a/g/a/a/a$b;->a:I

    const-string v0, "feedbackQuestion"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1
    iget-object p1, p0, Le/a/g/a/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    iget-object v2, p0, Le/a/g/a/a/a$b;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    move-object v3, p1

    check-cast v3, Le/a/g/a/m;

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v3}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, v3, Le/a/g/a/m;->j0:Le/a/b/q/a;

    .line 6
    iget-object v0, v3, Le/a/g/a/m;->B:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v3}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    .line 8
    invoke-interface {p1, v0, v2, v4}, Le/a/b/q/a;->b(Ljava/lang/String;Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;Lcom/truecaller/data/entity/HistoryEvent;)V

    .line 9
    :cond_0
    new-instance v6, Le/a/g/a/z;

    invoke-direct {v6, v3, v1}, Le/a/g/a/z;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 10
    :cond_1
    throw v1

    .line 11
    :cond_2
    iget-object p1, p0, Le/a/g/a/a/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    iget-object v2, p0, Le/a/g/a/a/a$b;->c:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    move-object v3, p1

    check-cast v3, Le/a/g/a/m;

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, v3, Le/a/g/a/m;->j0:Le/a/b/q/a;

    .line 16
    iget-object v0, v3, Le/a/g/a/m;->B:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v3}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v4

    .line 18
    invoke-interface {p1, v0, v2, v4}, Le/a/b/q/a;->a(Ljava/lang/String;Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;Lcom/truecaller/data/entity/HistoryEvent;)V

    .line 19
    :cond_3
    new-instance v6, Le/a/g/a/z;

    invoke-direct {v6, v3, v1}, Le/a/g/a/z;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
