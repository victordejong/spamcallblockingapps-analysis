.class public final Le/a/f/a/b/c$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/c;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/f/a/b/c$a;->a:I

    iput-object p2, p0, Le/a/f/a/b/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget p1, p0, Le/a/f/a/b/c$a;->a:I

    const-string v0, "uiEventsChannel"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_2

    .line 1
    iget-object p1, p0, Le/a/f/a/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 2
    iget-object v4, p1, Le/a/f/a/b/j;->z:Le/a/f/z/y;

    const-string v5, "voipTooltip"

    invoke-interface {v4, v5, v2}, Le/a/f/z/y;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v2, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v2}, Le/a/f/y/c;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v4, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-interface {v4, v1}, Le/a/f/y/c;->A(Z)V

    .line 5
    iget-object v1, p1, Le/a/f/a/b/j;->y:Le/a/f/z/c0;

    sget-object v4, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->INCALLUI_SWITCH_TO_VOIP:Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;

    check-cast v1, Le/a/f/v;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "number"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "analyticsContext"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v5, Lcom/truecaller/voip/VoipCallOptions;

    const-wide/16 v6, 0xbb8

    invoke-direct {v5, v6, v7, v6, v7}, Lcom/truecaller/voip/VoipCallOptions;-><init>(JJ)V

    .line 8
    iget-object v1, v1, Le/a/f/v;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/s1;

    invoke-virtual {v4}, Lcom/truecaller/incallui/utils/analytics/events/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4, v5}, Le/a/d/c0/s1;->k(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipCallOptions;)Z

    .line 9
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->VOIP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-void

    .line 10
    :cond_2
    throw v3

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/f/a/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/b/c;

    invoke-virtual {p1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/j;

    .line 12
    iget-object v4, p1, Le/a/f/a/b/j;->p:Le/a/f/y/c;

    invoke-static {v4, v1, v2, v3}, Le/a/m0/a1$k;->n0(Le/a/f/y/c;ZILjava/lang/Object;)V

    .line 13
    iget-object p1, p1, Le/a/f/a/b/j;->j:Lq3/a/w2/h;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;->HANG_UP_CLICK:Lcom/truecaller/incallui/callui/ongoing/OngoingCallUIEvent;

    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
