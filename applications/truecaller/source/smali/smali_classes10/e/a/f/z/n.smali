.class public final Le/a/f/z/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/m;


# instance fields
.field public final a:Le/a/p5/c0;

.field public final b:Le/a/a0/p;

.field public final c:Le/a/f/z/a0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/a0/p;Le/a/f/z/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryRepresentationBuilder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trueContextPresenterProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/n;->a:Le/a/p5/c0;

    iput-object p2, p0, Le/a/f/z/n;->b:Le/a/a0/p;

    iput-object p3, p0, Le/a/f/z/n;->c:Le/a/f/z/a0;

    return-void
.end method


# virtual methods
.method public final a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/f/z/n$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/f/z/n$a;

    iget v1, v0, Le/a/f/z/n$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/z/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/z/n$a;

    invoke-direct {v0, p0, p3}, Le/a/f/z/n$a;-><init>(Le/a/f/z/n;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Le/a/f/z/n$a;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/f/z/n$a;->e:I

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p2, :cond_4

    .line 4
    iget-object p2, p0, Le/a/f/z/n;->c:Le/a/f/z/a0;

    .line 5
    iget-object v2, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    .line 6
    iget-object v3, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    iput v7, v6, Le/a/f/z/n$a;->e:I

    .line 8
    move-object v1, p2

    check-cast v1, Le/a/f/z/b0;

    invoke-virtual/range {v1 .. v6}, Le/a/f/z/b0;->b(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;ZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_1
    check-cast p3, Lcom/truecaller/incallui/utils/TrueContextType;

    sget-object p1, Lcom/truecaller/incallui/utils/TrueContextType;->SEARCH_WARNINGS:Lcom/truecaller/incallui/utils/TrueContextType;

    if-ne p3, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 10
    sget p1, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_identified_stroke:I

    goto :goto_3

    .line 11
    :cond_5
    sget p1, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_identified:I

    .line 12
    :goto_3
    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p2
.end method

.method public b(Le/a/f/a/g;Ljava/lang/Integer;ZLs1/w/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/a/g;",
            "Ljava/lang/Integer;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Le/a/f/z/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Le/a/f/z/n$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/f/z/n$b;

    iget v4, v3, Le/a/f/z/n$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/f/z/n$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/f/z/n$b;

    invoke-direct {v3, v0, v2}, Le/a/f/z/n$b;-><init>(Le/a/f/z/n;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/f/z/n$b;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/f/z/n$b;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Le/a/f/z/n$b;->g:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez v1, :cond_3

    return-object v7

    .line 4
    :cond_3
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->L0(Le/a/f/a/g;)Z

    move-result v2

    const-string v5, "resourceProvider.getStri\u2026_label_verified_business)"

    const/4 v8, 0x0

    if-eqz v2, :cond_5

    new-instance v2, Le/a/f/z/a$e;

    .line 5
    iget-object v3, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v4, Lcom/truecaller/incallui/R$string;->incallui_caller_label_verified_business:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v11, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_verified_business:I

    .line 7
    sget v12, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    .line 8
    iget-object v13, v0, Le/a/f/z/n;->b:Le/a/a0/p;

    .line 9
    iget v14, v1, Le/a/f/a/g;->l:I

    .line 10
    iget-object v15, v1, Le/a/f/a/g;->m:Lcom/truecaller/data/entity/SpamCategoryModel;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xc

    const/16 v19, 0x0

    .line 11
    invoke-static/range {v13 .. v19}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 12
    iget-object v1, v1, Le/a/f/a/g;->m:Lcom/truecaller/data/entity/SpamCategoryModel;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/truecaller/data/entity/SpamCategoryModel;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    :cond_4
    move-object v14, v7

    move-object v9, v2

    .line 14
    invoke-direct/range {v9 .. v14}, Le/a/f/z/a$e;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    goto/16 :goto_4

    .line 15
    :cond_5
    iget-object v2, v1, Le/a/f/a/g;->n:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v2, :cond_6

    .line 16
    new-instance v7, Le/a/f/z/a$a;

    .line 17
    iget-object v1, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_caller_label_blocked:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026lui_caller_label_blocked)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v2, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_spam:I

    .line 19
    sget v3, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    .line 20
    invoke-direct {v7, v1, v2, v3}, Le/a/f/z/a$a;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_4

    .line 21
    :cond_6
    iget-boolean v2, v1, Le/a/f/a/g;->k:Z

    if-eqz v2, :cond_9

    if-nez p2, :cond_7

    .line 22
    iget-object v9, v0, Le/a/f/z/n;->b:Le/a/a0/p;

    .line 23
    iget v10, v1, Le/a/f/a/g;->l:I

    .line 24
    iget-object v11, v1, Le/a/f/a/g;->m:Lcom/truecaller/data/entity/SpamCategoryModel;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    const/4 v15, 0x0

    .line 25
    invoke-static/range {v9 .. v15}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 26
    :cond_7
    iget-object v8, v0, Le/a/f/z/n;->b:Le/a/a0/p;

    .line 27
    iget v9, v1, Le/a/f/a/g;->l:I

    .line 28
    iget-object v10, v1, Le/a/f/a/g;->m:Lcom/truecaller/data/entity/SpamCategoryModel;

    .line 29
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    .line 30
    invoke-static/range {v8 .. v14}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 31
    :goto_1
    new-instance v3, Le/a/f/z/a$d;

    .line 32
    iget-object v1, v1, Le/a/f/a/g;->m:Lcom/truecaller/data/entity/SpamCategoryModel;

    if-eqz v1, :cond_8

    .line 33
    invoke-virtual {v1}, Lcom/truecaller/data/entity/SpamCategoryModel;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    .line 34
    :cond_8
    sget v1, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_spam:I

    .line 35
    sget v4, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    .line 36
    invoke-direct {v3, v2, v7, v1, v4}, Le/a/f/z/a$d;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    move-object v7, v3

    goto/16 :goto_4

    .line 37
    :cond_9
    iget-boolean v2, v1, Le/a/f/a/g;->u:Z

    if-eqz v2, :cond_a

    .line 38
    new-instance v7, Le/a/f/z/a$c;

    .line 39
    iget-object v1, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->CredPrivilege:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getString(R.string.CredPrivilege)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v2, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_cred:I

    .line 41
    sget v3, Lcom/truecaller/incallui/R$color;->credAcsLabelTextColor:I

    .line 42
    invoke-direct {v7, v1, v2, v3}, Le/a/f/z/a$c;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_4

    .line 43
    :cond_a
    invoke-static/range {p1 .. p1}, Le/a/m0/a1$k;->y0(Le/a/f/a/g;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v7, Le/a/f/z/a$c;

    .line 44
    iget-object v1, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_caller_label_gold_call:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026i_caller_label_gold_call)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget v2, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_gold:I

    .line 46
    sget v3, Lcom/truecaller/incallui/R$color;->incallui_gold_caller_label_text_color:I

    .line 47
    invoke-direct {v7, v1, v2, v3}, Le/a/f/z/a$c;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_4

    .line 48
    :cond_b
    iget-boolean v2, v1, Le/a/f/a/g;->r:Z

    if-eqz v2, :cond_c

    .line 49
    new-instance v7, Le/a/f/z/a$c;

    .line 50
    iget-object v1, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_caller_label_priority_call:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026ller_label_priority_call)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget v2, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_priority:I

    .line 52
    sget v3, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    .line 53
    invoke-direct {v7, v1, v2, v3}, Le/a/f/z/a$c;-><init>(Ljava/lang/String;II)V

    goto :goto_4

    .line 54
    :cond_c
    iget-boolean v2, v1, Le/a/f/a/g;->t:Z

    if-eqz v2, :cond_d

    .line 55
    new-instance v7, Le/a/f/z/a$c;

    .line 56
    iget-object v1, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_caller_label_verified_business:I

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget v2, Lcom/truecaller/incallui/R$drawable;->bg_incallui_caller_label_verified_business:I

    .line 58
    sget v3, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    .line 59
    invoke-direct {v7, v1, v2, v3}, Le/a/f/z/a$c;-><init>(Ljava/lang/String;II)V

    goto :goto_4

    :cond_d
    const-string v2, "$this$isIdentified"

    .line 60
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-boolean v2, v1, Le/a/f/a/g;->p:Z

    if-nez v2, :cond_e

    .line 62
    iget-boolean v2, v1, Le/a/f/a/g;->o:Z

    if-nez v2, :cond_e

    move v2, v6

    goto :goto_2

    :cond_e
    move v2, v8

    :goto_2
    if-eqz v2, :cond_10

    .line 63
    iget-object v2, v0, Le/a/f/z/n;->a:Le/a/p5/c0;

    sget v5, Lcom/truecaller/incallui/R$string;->incallui_caller_label_identified_call:I

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v2, v5, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resourceProvider.getStri\u2026er_label_identified_call)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object v2, v3, Le/a/f/z/n$b;->g:Ljava/lang/Object;

    iput v6, v3, Le/a/f/z/n$b;->e:I

    move/from16 v5, p3

    invoke-virtual {v0, v1, v5, v3}, Le/a/f/z/n;->a(Le/a/f/a/g;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_f

    return-object v4

    :cond_f
    move-object/from16 v20, v2

    move-object v2, v1

    move-object/from16 v1, v20

    :goto_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 65
    sget v3, Lcom/truecaller/incallui/R$color;->incallui_white_text_color:I

    .line 66
    new-instance v7, Le/a/f/z/a$b;

    invoke-direct {v7, v1, v2, v3}, Le/a/f/z/a$b;-><init>(Ljava/lang/String;II)V

    :cond_10
    :goto_4
    return-object v7
.end method
