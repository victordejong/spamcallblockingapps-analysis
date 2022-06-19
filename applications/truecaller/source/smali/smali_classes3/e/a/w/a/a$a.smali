.class public final Le/a/w/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/w/a/a$a;->a:I

    iput-object p2, p0, Le/a/w/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Le/a/w/a/a$a;->a:I

    const-string v0, "Required value was null."

    const-string v1, "action"

    const-string v2, "source"

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1
    iget-object p1, p0, Le/a/w/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/w/a/a;

    invoke-virtual {p1}, Le/a/w/a/a;->RA()Le/a/w/a/d;

    move-result-object p1

    check-cast p1, Le/a/w/a/f;

    .line 2
    iget-object v0, p1, Le/a/w/a/f;->c:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;->SHARE_INVITE:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;

    invoke-virtual {v2}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;->OTHER:Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;

    invoke-virtual {v3}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v1, v2, v3, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Le/a/w/a/f;->i:Le/a/q2/a;

    invoke-static {v1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/w/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Le/a/w/a/f;->Ij()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/w/a/e;->ro(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w/a/e;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/w/a/e;->dismiss()V

    :cond_1
    return-void

    .line 10
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 11
    :cond_3
    throw v3

    .line 12
    :cond_4
    iget-object p1, p0, Le/a/w/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/w/a/a;

    invoke-virtual {p1}, Le/a/w/a/a;->RA()Le/a/w/a/d;

    move-result-object p1

    check-cast p1, Le/a/w/a/f;

    .line 13
    iget-object v4, p1, Le/a/w/a/f;->c:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 14
    sget-object v3, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;->SHARE_INVITE:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;

    invoke-virtual {v3}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 15
    sget-object v4, Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;->SMS:Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;

    invoke-virtual {v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v2, p1, Le/a/w/a/f;->i:Le/a/q2/a;

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 19
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/w/a/e;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Le/a/w/a/f;->Hj()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Le/a/w/a/f;->Ij()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Le/a/w/a/e;->dm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    :goto_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w/a/e;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/w/a/e;->dismiss()V

    :cond_7
    return-void

    .line 21
    :cond_8
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_9
    iget-object p1, p0, Le/a/w/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/w/a/a;

    invoke-virtual {p1}, Le/a/w/a/a;->RA()Le/a/w/a/d;

    move-result-object p1

    check-cast p1, Le/a/w/a/f;

    .line 23
    iget-object v4, p1, Le/a/w/a/f;->c:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Source;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 24
    sget-object v3, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;->SHARE_INVITE:Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;

    invoke-virtual {v3}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$Action;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 25
    sget-object v4, Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;->WHATSAPP:Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;

    invoke-virtual {v4}, Lcom/truecaller/referrals/analytics/ReferralAnalytics$ShareContext;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 26
    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v2, p1, Le/a/w/a/f;->i:Le/a/q2/a;

    invoke-static {v1, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 29
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/w/a/e;

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Le/a/w/a/f;->Jj()Le/a/k3/l/d;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v0, v2, Le/a/k3/l/d;->c:Landroid/content/Intent;

    const-string v2, "requireNotNull(whatsAppAction).actionIntent"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Le/a/w/a/e;->X7(Landroid/content/Intent;)V

    goto :goto_1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_b
    :goto_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/w/a/e;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/w/a/e;->dismiss()V

    :cond_c
    return-void

    .line 31
    :cond_d
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
