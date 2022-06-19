.class public final Le/a/a0/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/a0/a/a$a;->a:I

    iput-object p2, p0, Le/a/a0/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Le/a/a0/g$b;->a:Le/a/a0/g$b;

    iget v2, v0, Le/a/a0/a/a$a;->a:I

    const-string v3, "currentPage"

    const/4 v4, 0x0

    if-eqz v2, :cond_10

    const/4 v5, 0x1

    if-ne v2, v5, :cond_f

    .line 1
    iget-object v2, v0, Le/a/a0/a/a$a;->b:Ljava/lang/Object;

    check-cast v2, Le/a/a0/a/a;

    invoke-virtual {v2}, Le/a/a0/a/a;->WA()Le/a/a0/e;

    move-result-object v2

    iget-object v6, v0, Le/a/a0/a/a$a;->b:Ljava/lang/Object;

    check-cast v6, Le/a/a0/a/a;

    .line 2
    iget-object v6, v6, Le/a/a0/a/a;->k:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    const-string v7, "spamCategoriesRadioGroup"

    .line 3
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    sget v7, Lcom/truecaller/spamcategories/R$id;->business:I

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    move v12, v5

    goto :goto_0

    :cond_0
    move v12, v8

    :goto_0
    iget-object v6, v0, Le/a/a0/a/a$a;->b:Ljava/lang/Object;

    check-cast v6, Le/a/a0/a/a;

    invoke-static {v6}, Le/a/a0/a/a;->SA(Le/a/a0/a/a;)Ljava/lang/String;

    move-result-object v11

    iget-object v6, v0, Le/a/a0/a/a$a;->b:Ljava/lang/Object;

    check-cast v6, Le/a/a0/a/a;

    invoke-static {v6}, Le/a/a0/a/a;->QA(Le/a/a0/a/a;)Ljava/lang/String;

    move-result-object v6

    check-cast v2, Le/a/a0/b;

    .line 4
    iget-object v7, v2, Le/a/a0/b;->q:Le/a/b0/a/v/a;

    invoke-interface {v7, v6}, Le/a/b0/a/v/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5
    iget-object v1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a0/f;

    if-eqz v1, :cond_d

    sget v2, Lcom/truecaller/spamcategories/R$string;->spam_categories_provide_more_info_write_comment_error_message:I

    invoke-interface {v1, v2}, Le/a/a0/f;->k5(I)V

    goto/16 :goto_9

    .line 6
    :cond_1
    new-instance v7, Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 7
    iget-object v9, v2, Le/a/a0/b;->e:Le/a/a0/a/m;

    if-eqz v9, :cond_2

    .line 8
    iget-wide v9, v9, Le/a/a0/a/m;->a:J

    .line 9
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v10, v9

    goto :goto_1

    :cond_2
    move-object v10, v4

    :goto_1
    if-eqz v6, :cond_4

    .line 10
    invoke-static {v6}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move v9, v8

    goto :goto_3

    :cond_4
    :goto_2
    move v9, v5

    :goto_3
    xor-int/lit8 v14, v9, 0x1

    if-eqz v11, :cond_6

    .line 11
    invoke-static {v11}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    move v9, v8

    goto :goto_5

    :cond_6
    :goto_4
    move v9, v5

    :goto_5
    xor-int/lit8 v15, v9, 0x1

    .line 12
    iget-object v13, v2, Le/a/a0/b;->j:Lcom/truecaller/contactfeedback/model/Profile;

    move-object v9, v7

    move-object/from16 v16, v13

    move-object v13, v6

    .line 13
    invoke-direct/range {v9 .. v16}, Lcom/truecaller/spamcategories/SpamCategoryResult;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;)V

    .line 14
    iput-object v7, v2, Le/a/a0/b;->f:Lcom/truecaller/spamcategories/SpamCategoryResult;

    .line 15
    iget-object v9, v2, Le/a/a0/b;->h:Le/a/a0/g;

    if-eqz v9, :cond_e

    .line 16
    instance-of v3, v9, Le/a/a0/g$a;

    const-string v10, "data"

    if-eqz v3, :cond_9

    .line 17
    iget-object v3, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a0/f;

    if-eqz v3, :cond_8

    iget-object v5, v2, Le/a/a0/b;->g:Lcom/truecaller/spamcategories/SpamCategoryRequest;

    if-eqz v5, :cond_7

    .line 18
    iget-boolean v4, v5, Lcom/truecaller/spamcategories/SpamCategoryRequest;->b:Z

    .line 19
    invoke-interface {v3, v4}, Le/a/a0/f;->c8(Z)V

    goto :goto_6

    :cond_7
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 20
    :cond_8
    :goto_6
    iput-object v1, v2, Le/a/a0/b;->h:Le/a/a0/g;

    goto :goto_9

    .line 21
    :cond_9
    instance-of v1, v9, Le/a/a0/g$b;

    if-eqz v1, :cond_d

    if-eqz v6, :cond_c

    .line 22
    iget-object v1, v2, Le/a/a0/b;->r:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v13

    .line 23
    iget-object v1, v2, Le/a/a0/b;->g:Lcom/truecaller/spamcategories/SpamCategoryRequest;

    if-eqz v1, :cond_b

    .line 24
    iget-object v3, v1, Lcom/truecaller/spamcategories/SpamCategoryRequest;->c:Ljava/util/List;

    .line 25
    iget-object v4, v7, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

    if-nez v4, :cond_a

    move/from16 v17, v5

    goto :goto_7

    :cond_a
    move/from16 v17, v8

    .line 26
    :goto_7
    iget-object v1, v1, Lcom/truecaller/spamcategories/SpamCategoryRequest;->d:Lcom/truecaller/data/entity/FeedbackSource;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v18

    move-object v15, v6

    move-object/from16 v16, v3

    .line 28
    invoke-static/range {v13 .. v18}, Le/a/b0/q/g0;->d(JLjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 29
    iget-object v3, v2, Le/a/a0/b;->s:Le/a/q/i/a;

    check-cast v3, Le/a/q/i/b;

    invoke-virtual {v3, v1}, Le/a/q/i/b;->a(Ljava/util/List;)V

    goto :goto_8

    .line 30
    :cond_b
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 31
    :cond_c
    :goto_8
    invoke-virtual {v2}, Le/a/a0/b;->Jj()V

    :cond_d
    :goto_9
    return-void

    .line 32
    :cond_e
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_f
    throw v4

    .line 34
    :cond_10
    iget-object v2, v0, Le/a/a0/a/a$a;->b:Ljava/lang/Object;

    check-cast v2, Le/a/a0/a/a;

    invoke-virtual {v2}, Le/a/a0/a/a;->WA()Le/a/a0/e;

    move-result-object v2

    check-cast v2, Le/a/a0/b;

    .line 35
    iget-object v5, v2, Le/a/a0/b;->h:Le/a/a0/g;

    if-eqz v5, :cond_13

    .line 36
    sget-object v3, Le/a/a0/g$a;->a:Le/a/a0/g$a;

    invoke-static {v5, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v1, "CancelClicked"

    .line 37
    invoke-virtual {v2, v1}, Le/a/a0/b;->Lj(Ljava/lang/String;)V

    .line 38
    iget-object v1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a0/f;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Le/a/a0/f;->cancel()V

    goto :goto_a

    .line 39
    :cond_11
    invoke-static {v5, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v2}, Le/a/a0/b;->Jj()V

    :cond_12
    :goto_a
    return-void

    .line 40
    :cond_13
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method
