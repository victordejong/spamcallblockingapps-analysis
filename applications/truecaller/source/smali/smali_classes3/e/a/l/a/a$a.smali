.class public final Le/a/l/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/l/a/a$a;->a:I

    iput-object p2, p0, Le/a/l/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Le/a/l/a/a$a;->a:I

    const-string v2, "debugSubscriptionRepository"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1
    iget-object v1, v0, Le/a/l/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/a;

    .line 2
    iget-object v4, v1, Le/a/l/a/a;->f:Le/a/l/a/f;

    if-eqz v4, :cond_0

    .line 3
    new-instance v2, Le/a/l/a/h;

    .line 4
    iget-object v3, v1, Le/a/l/a/a;->o:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 5
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v6

    .line 6
    iget-object v3, v1, Le/a/l/a/a;->p:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v7

    .line 8
    iget-object v3, v1, Le/a/l/a/a;->n:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v8

    .line 10
    invoke-virtual {v1}, Le/a/l/a/a;->RA()Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v9

    .line 11
    iget-object v3, v1, Le/a/l/a/a;->s:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v10

    .line 13
    iget-object v3, v1, Le/a/l/a/a;->m:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v11

    .line 15
    iget-object v3, v1, Le/a/l/a/a;->h:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 16
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v12

    .line 17
    iget-object v3, v1, Le/a/l/a/a;->g:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 18
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v13

    .line 19
    iget-object v3, v1, Le/a/l/a/a;->i:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 20
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v14

    .line 21
    iget-object v3, v1, Le/a/l/a/a;->k:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 22
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v15

    .line 23
    iget-object v3, v1, Le/a/l/a/a;->j:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    .line 24
    invoke-virtual {v3}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v16

    .line 25
    invoke-virtual {v1}, Le/a/l/a/a;->RA()Lcom/truecaller/premium/util/DebugSubscriptionEditView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/premium/util/DebugSubscriptionEditView;->getSubscription()Le/a/l/a/e;

    move-result-object v17

    move-object v5, v2

    .line 26
    invoke-direct/range {v5 .. v17}, Le/a/l/a/h;-><init>(Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;Le/a/l/a/e;)V

    const-string v1, "debugSubscriptions"

    .line 27
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v1, v4, Le/a/l/a/f;->b:Le/a/p4/b;

    iget-object v3, v4, Le/a/l/a/f;->a:Le/m/e/k;

    invoke-virtual {v3, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/p4/b;->N1(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_1
    throw v3

    .line 31
    :cond_2
    iget-object v1, v0, Le/a/l/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/a;

    .line 32
    sget v4, Le/a/l/a/a;->u:I

    .line 33
    invoke-virtual {v1}, Le/a/l/a/a;->QA()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v1

    const-string v4, "enableSwitch"

    .line 34
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 35
    iget-object v1, v0, Le/a/l/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/a;

    .line 36
    iget-object v1, v1, Le/a/l/a/a;->f:Le/a/l/a/f;

    if-eqz v1, :cond_3

    .line 37
    iget-object v1, v1, Le/a/l/a/f;->b:Le/a/p4/b;

    invoke-interface {v1, v3}, Le/a/p4/b;->N1(Ljava/lang/String;)V

    .line 38
    iget-object v1, v0, Le/a/l/a/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/l/a/a;

    .line 39
    invoke-virtual {v1}, Le/a/l/a/a;->SA()V

    return-void

    .line 40
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
