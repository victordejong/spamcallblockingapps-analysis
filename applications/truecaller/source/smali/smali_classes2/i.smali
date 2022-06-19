.class public final Li;
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

    iput p1, p0, Li;->a:I

    iput-object p2, p0, Li;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Li;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 1
    iget-object v1, v0, Li;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/r;

    .line 2
    sget-object v2, Le/a/c/a/b/a/r;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/c/a/b/a/r;->PA()V

    .line 4
    iget-object v1, v0, Li;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/r;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 5
    :cond_0
    throw v3

    .line 6
    :cond_1
    iget-object v1, v0, Li;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/r;

    .line 7
    iget-object v4, v1, Le/a/c/a/b/a/r;->d:Ljava/util/List;

    if-eqz v4, :cond_c

    .line 8
    iget-object v1, v1, Le/a/c/a/b/a/r;->g:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v1, :cond_c

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/insights/ui/widget/TypeSelectorView;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 10
    iget-object v5, v0, Li;->b:Ljava/lang/Object;

    check-cast v5, Le/a/c/a/b/a/r;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "resources"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v1, v5}, Le/a/c/a/b/c/b;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 13
    :cond_3
    iget-object v2, v0, Li;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/r;

    .line 14
    iget-object v2, v2, Le/a/c/a/b/a/r;->b:Le/a/c/i/e/c;

    if-eqz v2, :cond_b

    .line 15
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 17
    check-cast v7, Le/a/c/i/e/a;

    .line 18
    sget-object v14, Lcom/truecaller/insights/models/feedback/FeedbackType;->CATEGORIZER_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v8, "$this$toInsightFeedback"

    .line 19
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "userFeedback"

    invoke-static {v5, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "feedbackType"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v15, Le/a/c/i/e/b;

    .line 21
    iget-object v8, v7, Le/a/c/i/e/a;->b:Ljava/lang/String;

    .line 22
    iget-boolean v9, v7, Le/a/c/i/e/a;->f:Z

    if-eqz v8, :cond_4

    .line 23
    invoke-static {v8}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v9, :cond_5

    const-string v8, "10_digit"

    goto :goto_2

    :cond_4
    move-object v8, v3

    .line 24
    :cond_5
    :goto_2
    iget-object v9, v7, Le/a/c/i/e/a;->a:Ljava/lang/String;

    .line 25
    iget-object v10, v7, Le/a/c/i/e/a;->d:Lw3/b/a/b;

    .line 26
    iget-object v11, v7, Le/a/c/i/e/a;->c:Ljava/lang/String;

    .line 27
    iget-object v12, v7, Le/a/c/i/e/a;->e:Le/a/c/r/j/p;

    .line 28
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    .line 29
    iget-boolean v13, v7, Le/a/c/i/e/a;->f:Z

    const/16 v17, 0x80

    move-object v7, v15

    move/from16 v18, v13

    move-object v13, v5

    move-object v3, v15

    move-object/from16 v15, v16

    move/from16 v16, v18

    .line 30
    invoke-direct/range {v7 .. v17}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;ZI)V

    .line 31
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_1

    .line 32
    :cond_6
    sget-object v3, Le/a/c/n/c$b;->a:Le/a/c/n/c$b;

    .line 33
    sget-object v4, Lcom/truecaller/insights/utils/FeedbackConsentType;->SEND_FEEDBACK_WO_INFOCARD:Lcom/truecaller/insights/utils/FeedbackConsentType;

    .line 34
    invoke-interface {v2, v6, v3, v4}, Le/a/c/i/e/c;->n(Ljava/util/List;Le/a/c/n/c;Lcom/truecaller/insights/utils/FeedbackConsentType;)V

    .line 35
    iget-object v2, v0, Li;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/r;

    .line 36
    invoke-virtual {v2}, Le/a/c/a/b/a/r;->OA()Le/a/c/a/g/s;

    move-result-object v2

    .line 37
    iget-object v2, v2, Le/a/c/a/g/s;->f:Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "binding.consentToggle"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 38
    iget-object v2, v0, Li;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/r;

    .line 39
    iget-object v2, v2, Le/a/c/a/b/a/r;->c:Le/a/c/c0/k;

    if-eqz v2, :cond_7

    .line 40
    invoke-interface {v2}, Le/a/c/c0/k;->d()V

    goto :goto_3

    :cond_7
    const-string v1, "consentConfig"

    .line 41
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 42
    :cond_8
    :goto_3
    iget-object v2, v0, Li;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/r;

    .line 43
    iget-object v2, v2, Le/a/c/a/b/a/r;->a:Le/a/c/e/c;

    if-eqz v2, :cond_a

    .line 44
    sget-object v3, Le/a/c/a/b/c/e;->e:Le/a/c/a/b/c/e;

    .line 45
    sget-object v3, Le/a/c/a/b/c/e;->b:Le/a/c/r/d/c;

    const-string v4, "sms"

    .line 46
    invoke-virtual {v3, v4}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 47
    iget-object v4, v0, Li;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/a/b/a/r;

    .line 48
    iget-object v5, v4, Le/a/c/a/b/a/r;->e:Ljava/lang/String;

    .line 49
    iget-boolean v4, v4, Le/a/c/a/b/a/r;->f:Z

    .line 50
    invoke-static {v5, v4}, Le/a/c/c0/q;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3, v4}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 51
    :cond_9
    invoke-virtual {v3}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v3

    .line 52
    invoke-interface {v2, v3}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 53
    sget-object v2, Le/a/c/a/e/a/f;->d:Le/a/c/a/e/a/f$b;

    .line 54
    sget-object v3, Lcom/truecaller/insights/ui/semicard/view/UiType;->SEND_FEEDBACK_WITHOUT_INFO:Lcom/truecaller/insights/ui/semicard/view/UiType;

    invoke-virtual {v2, v3, v1}, Le/a/c/a/e/a/f$b;->a(Lcom/truecaller/insights/ui/semicard/view/UiType;Ljava/lang/String;)Le/a/c/a/e/a/f;

    move-result-object v1

    .line 55
    iget-object v2, v0, Li;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/r;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Le/a/c/a/e/a/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    iget-object v1, v0, Li;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/r;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_4

    :cond_a
    const-string v1, "analyticsManager"

    .line 57
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_b
    move-object v1, v3

    const-string v2, "insightsFeedbackManager"

    .line 58
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_4
    return-void
.end method
