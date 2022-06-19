.class public final Le/a/g/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/g/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Le/a/g/a/a/a$a;->a:I

    const-string v0, "it"

    const/4 v1, 0x0

    const-string v2, "contactFeedbackContext"

    packed-switch p1, :pswitch_data_0

    throw v1

    .line 1
    :pswitch_0
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->nk()V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/m;

    .line 3
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p1, Le/a/g/a/m;->h:Lq3/a/w2/j;

    sget-object v3, Lcom/truecaller/acs/analytics/ClickEvent;->SUGGEST_NAME:Lcom/truecaller/acs/analytics/ClickEvent;

    invoke-interface {v2, v3}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_0

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/g/a/h;->e1(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void

    .line 7
    :pswitch_2
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->dk()V

    return-void

    .line 8
    :pswitch_3
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->dk()V

    return-void

    .line 9
    :pswitch_4
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/m;

    .line 10
    iget-object v1, p1, Le/a/g/a/m;->k0:Le/a/q/e/a;

    iget-object v3, p1, Le/a/g/a/m;->B:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v3}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v2, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->VOTE_NEGATIVE:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    invoke-virtual {v1, v3, v2}, Le/a/q/e/a;->a(Ljava/lang/String;Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;)V

    .line 13
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_1

    .line 15
    iget-object v2, p1, Le/a/g/a/m;->X:Le/a/g/j/j;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Le/a/g/j/j;->a(Lcom/truecaller/data/entity/Contact;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 16
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/h;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0, v1}, Le/a/g/a/h;->ik(J)V

    :cond_1
    return-void

    .line 17
    :pswitch_5
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/g/a/m;

    .line 18
    iget-object p1, v3, Le/a/g/a/m;->k0:Le/a/q/e/a;

    iget-object v0, v3, Le/a/g/a/m;->B:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v0}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v2, Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;->VOTE_POSITIVE:Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;

    invoke-virtual {p1, v0, v2}, Le/a/q/e/a;->a(Ljava/lang/String;Lcom/truecaller/contactfeedback/analytics/ContactFeedbackAnalyticsAction;)V

    const/4 p1, 0x1

    .line 21
    invoke-virtual {v3, p1}, Le/a/g/a/m;->qk(Z)V

    .line 22
    new-instance v6, Le/a/g/a/y;

    invoke-direct {v6, v3, v1}, Le/a/g/a/y;-><init>(Le/a/g/a/m;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    .line 23
    :pswitch_6
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/a/i;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/truecaller/acs/analytics/DismissReason;->EMPTY_SPACE:Lcom/truecaller/acs/analytics/DismissReason;

    invoke-virtual {p1, v0}, Le/a/g/a/m;->Jj(Lcom/truecaller/acs/analytics/DismissReason;)V

    return-void

    .line 26
    :pswitch_7
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/m;

    invoke-virtual {p1}, Le/a/g/a/m;->gk()V

    return-void

    .line 27
    :pswitch_8
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/a/i;

    .line 28
    iget-object p1, p1, Le/a/g/a/a/i;->J0:Le/a/g/j/u;

    .line 29
    iget-object v0, p1, Le/a/g/j/u;->b:Le/a/l/a2;

    iget-object p1, p1, Le/a/g/j/u;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->GOLD_HINT_AFTER_CALL:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v2, "gold"

    invoke-interface {v0, p1, v1, v2}, Le/a/l/a2;->a(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V

    return-void

    .line 30
    :pswitch_9
    iget-object p1, p0, Le/a/g/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/a;

    invoke-virtual {p1}, Le/a/g/a/a/a;->VA()Le/a/g/a/a/g;

    move-result-object p1

    check-cast p1, Le/a/g/a/a/i;

    .line 31
    invoke-virtual {p1}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/a/g/a/m;->Nk(Lcom/truecaller/data/entity/HistoryEvent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
