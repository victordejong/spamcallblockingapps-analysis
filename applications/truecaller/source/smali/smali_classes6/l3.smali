.class public final Ll3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Landroid/view/View;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ll3;->b:I

    iput-object p2, p0, Ll3;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ll3;->b:I

    const-string v2, "uiEventsChannel"

    const/4 v3, 0x0

    const-string v4, "<anonymous parameter 0>"

    if-eqz v1, :cond_b

    const/4 v5, 0x1

    if-eq v1, v5, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 4
    iget-object p2, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Le/a/f/a/b/j;->A:Le/a/f/p;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "number"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p1, Le/a/f/p;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a;

    .line 8
    new-instance v2, Le/a/q2/g$b$a;

    const-string v4, "InCallUiMessageBtnPressed"

    invoke-direct {v2, v4, v3, v3, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v3, "AnalyticsEvent.Builder(A\u2026eBtnPressed.NAME).build()"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 10
    iget-object v1, p1, Le/a/f/p;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/q/z;

    iget-object v2, p1, Le/a/f/p;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/q/z;

    invoke-interface {v2}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    invoke-static {p2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    check-cast p2, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 13
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p1, Le/a/f/p;->a:Landroid/content/Context;

    const-class v3, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "participants"

    .line 14
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "launch_source"

    const-string v2, "incallui"

    .line 15
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 16
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    iget-object p1, p1, Le/a/f/p;->a:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-object v0

    .line 18
    :cond_1
    throw v3

    .line 19
    :cond_2
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 22
    iget-object p2, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->m()V

    .line 23
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/f/a/b/i;->Lm()V

    :cond_3
    return-object v0

    .line 24
    :cond_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    invoke-virtual {p1}, Le/a/f/a/b/j;->Zj()V

    return-object v0

    .line 27
    :cond_5
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 30
    iget-object p2, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->D()V

    .line 31
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Le/a/f/a/b/i;->an()V

    .line 32
    :cond_6
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_7

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->MERGE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-object v0

    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 33
    :cond_8
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 36
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_9

    invoke-interface {p2}, Le/a/f/a/b/i;->z9()V

    .line 37
    :cond_9
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_a

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->ADD_CALL_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-object v0

    :cond_a
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_b
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Ll3;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 41
    iget-object p2, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->o0()V

    .line 42
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Le/a/f/a/b/i;->y5()V

    .line 43
    :cond_c
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_d

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->KEYPAD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-object v0

    :cond_d
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
