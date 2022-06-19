.class public final Le/a/f/a/b/c$b;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput p1, p0, Le/a/f/a/b/c$b;->b:I

    iput-object p2, p0, Le/a/f/a/b/c$b;->c:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/f/a/b/c$b;->b:I

    const-string v2, "uiEventsChannel"

    const-string v3, "<anonymous parameter 0>"

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/f/a/b/c$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 4
    iget-object v1, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {v1, p2}, Le/a/f/y/v;->i0(Z)V

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->MUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 6
    :cond_1
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->UNMUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 7
    :cond_3
    throw v4

    .line 8
    :cond_4
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 9
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/f/a/b/c$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    if-eqz p2, :cond_6

    .line 11
    iget-object p2, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->j()V

    .line 12
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_5

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->HOLD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 13
    :cond_6
    iget-object p2, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {p2}, Le/a/f/y/c;->z()V

    .line 14
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_7

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->UNHOLD_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 15
    :cond_8
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 16
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Le/a/f/a/b/c$b;->c:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 18
    iget-object v1, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {v1}, Le/a/f/y/v;->s()Lq3/a/w2/r;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lq3/a/w2/r;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/f/z/n0/a;

    if-eqz v1, :cond_e

    .line 19
    iget-object v1, v1, Le/a/f/z/n0/a;->b:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p2, :cond_9

    .line 21
    iget-object p2, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->A0()V

    goto :goto_2

    .line 22
    :cond_9
    iget-object p2, p1, Le/a/f/a/b/j;->q:Le/a/f/y/v;

    invoke-interface {p2}, Le/a/f/y/v;->P1()V

    goto :goto_2

    .line 23
    :cond_a
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Le/a/f/a/b/i;->jq()V

    .line 24
    :cond_b
    iget-object p2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/b/i;

    if-eqz p2, :cond_c

    invoke-interface {p2}, Le/a/f/a/b/i;->Vm()V

    .line 25
    :cond_c
    :goto_2
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_d

    sget-object p2, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->AUDIO_ROUTE_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, p2}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_e
    :goto_3
    return-object v0
.end method
