.class public final Lo0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo0;->a:I

    iput-object p2, p0, Lo0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lo0;->a:I

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v1, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/v;

    .line 2
    sget-object v2, Le/a/c/a/b/a/v;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/c/a/b/a/v;->PA()V

    .line 4
    iget-object v1, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/v;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 5
    :cond_0
    throw v2

    .line 6
    :cond_1
    iget-object v1, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/v;

    .line 7
    iget-object v3, v1, Le/a/c/a/b/a/v;->d:Ljava/util/List;

    if-eqz v3, :cond_a

    .line 8
    iget-object v1, v1, Le/a/c/a/b/a/v;->g:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v1, :cond_a

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/insights/ui/widget/TypeSelectorView;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 10
    iget-object v4, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/a/b/a/v;

    .line 11
    iget-object v15, v4, Le/a/c/a/b/a/v;->b:Le/a/c/i/e/c;

    if-eqz v15, :cond_9

    .line 12
    new-instance v14, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Le/a/c/i/e/a;

    .line 15
    sget-object v11, Lcom/truecaller/insights/models/feedback/FeedbackType;->CATEGORIZER_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v5, "$this$toInsightFeedback"

    .line 16
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "userFeedback"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "feedbackType"

    invoke-static {v11, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v13, Le/a/c/i/e/b;

    .line 18
    iget-object v5, v4, Le/a/c/i/e/a;->b:Ljava/lang/String;

    .line 19
    iget-boolean v6, v4, Le/a/c/i/e/a;->f:Z

    if-eqz v5, :cond_2

    .line 20
    invoke-static {v5}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v6, :cond_3

    const-string v5, "10_digit"

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 21
    :cond_3
    :goto_1
    iget-object v6, v4, Le/a/c/i/e/a;->a:Ljava/lang/String;

    .line 22
    iget-object v7, v4, Le/a/c/i/e/a;->d:Lw3/b/a/b;

    .line 23
    iget-object v8, v4, Le/a/c/i/e/a;->c:Ljava/lang/String;

    .line 24
    iget-object v9, v4, Le/a/c/i/e/a;->e:Le/a/c/r/j/p;

    .line 25
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    .line 26
    iget-boolean v10, v4, Le/a/c/i/e/a;->f:Z

    const/16 v16, 0x80

    move-object v4, v13

    move/from16 v17, v10

    move-object v10, v1

    move-object v2, v13

    move/from16 v13, v17

    move-object/from16 v17, v3

    move-object v3, v14

    move/from16 v14, v16

    .line 27
    invoke-direct/range {v4 .. v14}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;ZI)V

    .line 28
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v3

    move-object/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object v3, v14

    .line 29
    sget-object v2, Le/a/c/n/c$a;->a:Le/a/c/n/c$a;

    .line 30
    sget-object v4, Lcom/truecaller/insights/utils/FeedbackConsentType;->SEND_FEEDBACK_WITH_INFOCARD:Lcom/truecaller/insights/utils/FeedbackConsentType;

    .line 31
    invoke-interface {v15, v3, v2, v4}, Le/a/c/i/e/c;->n(Ljava/util/List;Le/a/c/n/c;Lcom/truecaller/insights/utils/FeedbackConsentType;)V

    .line 32
    iget-object v2, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/v;

    .line 33
    invoke-virtual {v2}, Le/a/c/a/b/a/v;->OA()Le/a/c/a/g/r;

    move-result-object v2

    .line 34
    iget-object v2, v2, Le/a/c/a/g/r;->d:Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "binding.consentToggle"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 35
    iget-object v2, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/v;

    .line 36
    iget-object v2, v2, Le/a/c/a/b/a/v;->c:Le/a/c/c0/k;

    if-eqz v2, :cond_5

    .line 37
    invoke-interface {v2}, Le/a/c/c0/k;->d()V

    goto :goto_2

    :cond_5
    const-string v1, "consentConfig"

    .line 38
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 39
    :cond_6
    :goto_2
    iget-object v2, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/v;

    .line 40
    iget-object v2, v2, Le/a/c/a/b/a/v;->a:Le/a/c/e/c;

    if-eqz v2, :cond_8

    .line 41
    sget-object v3, Le/a/c/a/b/c/e;->e:Le/a/c/a/b/c/e;

    .line 42
    sget-object v3, Le/a/c/a/b/c/e;->b:Le/a/c/r/d/c;

    const-string v4, "infocard"

    .line 43
    invoke-virtual {v3, v4}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 44
    iget-object v4, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/a/b/a/v;

    .line 45
    iget-object v5, v4, Le/a/c/a/b/a/v;->e:Ljava/lang/String;

    .line 46
    iget-boolean v4, v4, Le/a/c/a/b/a/v;->f:Z

    .line 47
    invoke-static {v5, v4}, Le/a/c/c0/q;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v4}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 48
    :cond_7
    invoke-virtual {v3}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v3

    .line 49
    invoke-interface {v2, v3}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 50
    sget-object v2, Le/a/c/a/e/a/f;->d:Le/a/c/a/e/a/f$b;

    .line 51
    sget-object v3, Lcom/truecaller/insights/ui/semicard/view/UiType;->SEND_FEEDBACK_WITH_INFO:Lcom/truecaller/insights/ui/semicard/view/UiType;

    invoke-virtual {v2, v3, v1}, Le/a/c/a/e/a/f$b;->a(Lcom/truecaller/insights/ui/semicard/view/UiType;Ljava/lang/String;)Le/a/c/a/e/a/f;

    move-result-object v1

    .line 52
    iget-object v2, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/v;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Le/a/c/a/e/a/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lo0;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/v;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_3

    :cond_8
    const-string v1, "analyticsManager"

    .line 54
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_9
    move-object v1, v2

    const-string v2, "insightsFeedbackManager"

    .line 55
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_3
    return-void
.end method
