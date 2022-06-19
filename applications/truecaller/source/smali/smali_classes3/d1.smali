.class public final Ld1;
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

    iput p1, p0, Ld1;->a:I

    iput-object p2, p0, Ld1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Ld1;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    .line 1
    iget-object v1, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/z;

    .line 2
    sget-object v2, Le/a/c/a/b/a/z;->i:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/c/a/b/a/z;->PA()V

    .line 4
    iget-object v1, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/z;

    .line 5
    iget-object v1, v1, Le/a/c/a/b/a/z;->d:Ls1/z/b/p;

    if-eqz v1, :cond_0

    .line 6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    .line 7
    :cond_0
    iget-object v1, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/z;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 8
    :cond_1
    throw v3

    .line 9
    :cond_2
    iget-object v1, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/z;

    .line 10
    iget-object v4, v1, Le/a/c/a/b/a/z;->e:Ljava/util/List;

    if-eqz v4, :cond_c

    .line 11
    iget-object v1, v1, Le/a/c/a/b/a/z;->c:Lcom/truecaller/insights/ui/widget/TypeSelectorView;

    if-eqz v1, :cond_c

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/insights/ui/widget/TypeSelectorView;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 13
    iget-object v5, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v5, Le/a/c/a/b/a/z;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "resources"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v1, v5}, Le/a/c/a/b/c/b;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    goto/16 :goto_3

    .line 16
    :cond_4
    iget-object v2, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/z;

    .line 17
    iget-object v2, v2, Le/a/c/a/b/a/z;->b:Le/a/c/i/e/c;

    if-eqz v2, :cond_b

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 20
    check-cast v6, Le/a/c/i/e/a;

    .line 21
    sget-object v14, Lcom/truecaller/insights/models/feedback/FeedbackType;->CATEGORIZER_FEEDBACK:Lcom/truecaller/insights/models/feedback/FeedbackType;

    const-string v7, "$this$toInsightFeedback"

    .line 22
    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "userFeedback"

    invoke-static {v1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "feedbackType"

    invoke-static {v14, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v15, Le/a/c/i/e/b;

    .line 24
    iget-object v7, v6, Le/a/c/i/e/a;->b:Ljava/lang/String;

    .line 25
    iget-boolean v8, v6, Le/a/c/i/e/a;->f:Z

    if-eqz v7, :cond_6

    .line 26
    invoke-static {v7}, Le/a/c/c0/q;->c(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v8, :cond_5

    const-string v7, "10_digit"

    :cond_5
    move-object v8, v7

    goto :goto_2

    :cond_6
    move-object v8, v3

    .line 27
    :goto_2
    iget-object v9, v6, Le/a/c/i/e/a;->a:Ljava/lang/String;

    .line 28
    iget-object v10, v6, Le/a/c/i/e/a;->d:Lw3/b/a/b;

    .line 29
    iget-object v11, v6, Le/a/c/i/e/a;->c:Ljava/lang/String;

    .line 30
    iget-object v7, v6, Le/a/c/i/e/a;->e:Le/a/c/r/j/p;

    .line 31
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    .line 32
    iget-boolean v6, v6, Le/a/c/i/e/a;->f:Z

    const/16 v17, 0x80

    move-object v7, v15

    move-object v13, v1

    move-object v3, v15

    move-object/from16 v15, v16

    move/from16 v16, v6

    .line 33
    invoke-direct/range {v7 .. v17}, Le/a/c/i/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/feedback/FeedbackType;Le/a/c/b0/c;ZI)V

    .line 34
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_1

    .line 35
    :cond_7
    iget-object v3, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v3, Le/a/c/a/b/a/z;

    .line 36
    invoke-virtual {v3}, Le/a/c/a/b/a/z;->OA()Le/a/c/a/g/o;

    move-result-object v3

    .line 37
    iget-object v3, v3, Le/a/c/a/g/o;->c:Landroidx/appcompat/widget/SwitchCompat;

    const-string v4, "binding.consentToggle"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    .line 38
    invoke-interface {v2, v5, v3}, Le/a/c/i/e/c;->e(Ljava/util/List;Z)V

    .line 39
    iget-object v2, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/z;

    .line 40
    iget-object v2, v2, Le/a/c/a/b/a/z;->a:Le/a/c/e/c;

    if-eqz v2, :cond_a

    .line 41
    sget-object v3, Le/a/c/a/b/c/f;->i:Le/a/c/a/b/c/f;

    .line 42
    sget-object v3, Le/a/c/a/b/c/f;->c:Le/a/c/r/d/c;

    const-string v4, "sms"

    .line 43
    invoke-virtual {v3, v4}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 44
    iget-object v4, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v4, Le/a/c/a/b/a/z;

    .line 45
    iget-object v5, v4, Le/a/c/a/b/a/z;->f:Ljava/lang/String;

    .line 46
    iget-boolean v4, v4, Le/a/c/a/b/a/z;->g:Z

    .line 47
    invoke-static {v5, v4}, Le/a/c/c0/q;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v3, v4}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 48
    :cond_8
    invoke-virtual {v3}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v3

    .line 49
    invoke-interface {v2, v3}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 50
    iget-object v2, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v2, Le/a/c/a/b/a/z;

    .line 51
    iget-object v2, v2, Le/a/c/a/b/a/z;->d:Ls1/z/b/p;

    if-eqz v2, :cond_9

    .line 52
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/s;

    .line 53
    :cond_9
    iget-object v1, v0, Ld1;->b:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/b/a/z;

    invoke-virtual {v1}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_3

    :cond_a
    const-string v1, "analyticsManager"

    .line 54
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_b
    move-object v1, v3

    const-string v2, "insightsFeedbackManager"

    .line 55
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_3
    return-void
.end method
