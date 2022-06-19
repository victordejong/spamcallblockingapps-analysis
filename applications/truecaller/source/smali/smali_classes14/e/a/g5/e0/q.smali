.class public final Le/a/g5/e0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ls1/o<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/util/List<",
        "+",
        "Le/a/b0/p/c;",
        ">;+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g5/e0/i;


# direct methods
.method public constructor <init>(Le/a/g5/e0/i;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/q;->a:Le/a/g5/e0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Ls1/o;

    .line 2
    iget-object v2, v1, Ls1/o;->a:Ljava/lang/Object;

    .line 3
    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    const-string v5, "categoryList"

    const-string v6, "noResult"

    const-string v7, "noResultIcon"

    const-string v8, "tagContainerLevel2"

    const-string v9, "tagContainerLevel1"

    if-eqz v2, :cond_5

    .line 4
    iget-object v2, v0, Le/a/g5/e0/q;->a:Le/a/g5/e0/i;

    .line 5
    sget-object v10, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 6
    invoke-virtual {v2}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v2

    .line 7
    iget-object v10, v2, Le/a/g5/d0/b;->h:Landroid/widget/ImageView;

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 8
    iget-object v7, v2, Le/a/g5/d0/b;->g:Landroid/widget/TextView;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 9
    iget-object v2, v2, Le/a/g5/d0/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 10
    iget-object v2, v0, Le/a/g5/e0/q;->a:Le/a/g5/e0/i;

    .line 11
    iget-object v5, v2, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    if-eqz v5, :cond_4

    .line 12
    iget-object v5, v1, Ls1/o;->b:Ljava/lang/Object;

    .line 13
    check-cast v5, Ljava/util/List;

    .line 14
    iget-object v1, v1, Ls1/o;->c:Ljava/lang/Object;

    .line 15
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 16
    invoke-virtual {v2}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v6

    .line 17
    iget-object v7, v6, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 18
    iget-object v3, v6, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 19
    iget-object v3, v6, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5, v1}, Le/a/g5/e0/i;->QA(Landroid/view/ViewGroup;Ljava/util/List;Z)Lcom/truecaller/common/tag/TagView;

    move-result-object v3

    iput-object v3, v2, Le/a/g5/e0/i;->j:Lcom/truecaller/common/tag/TagView;

    .line 20
    iget-object v3, v2, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/truecaller/common/tag/TagView;->getAvailableTag()Le/a/b0/p/c;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 21
    iget-wide v3, v3, Le/a/b0/p/c;->a:J

    .line 22
    invoke-virtual {v2}, Le/a/g5/e0/i;->TA()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->d(J)Le/a/b0/p/c;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 23
    iget-object v4, v2, Le/a/g5/e0/i;->e:Le/a/g5/p;

    if-eqz v4, :cond_3

    .line 24
    iget-wide v9, v3, Le/a/b0/p/c;->a:J

    .line 25
    invoke-interface {v4, v9, v10}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 26
    iget-object v4, v6, Le/a/g5/d0/b;->m:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {v4, v3}, Lcom/truecaller/common/tag/TagView;->setTag(Le/a/b0/p/c;)V

    .line 27
    :cond_2
    iget-object v3, v6, Le/a/g5/d0/b;->f:Landroid/widget/LinearLayout;

    const-string v4, "llHeaderTwo"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_7

    .line 28
    iget-object v3, v6, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 29
    iget v4, v2, Le/a/g5/e0/i;->k:F

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    .line 30
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/16 v7, 0xc8

    int-to-long v9, v7

    .line 31
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 32
    iget-object v7, v2, Le/a/g5/e0/i;->p:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 33
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 34
    iget-object v3, v6, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v2, Le/a/g5/e0/i;->k:F

    neg-float v7, v7

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 35
    iget-object v3, v6, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 36
    iget-object v3, v6, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 38
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 39
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 40
    invoke-virtual {v3, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 41
    iget-object v4, v2, Le/a/g5/e0/i;->s:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 43
    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 44
    new-instance v4, Le/a/g5/e0/p;

    invoke-direct {v4, v6, v2, v5, v1}, Le/a/g5/e0/p;-><init>(Le/a/g5/d0/b;Le/a/g5/e0/i;Ljava/util/List;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v1, "animator"

    .line 45
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x12c

    .line 46
    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 47
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_3
    const-string v1, "tagDisplayUtil"

    .line 48
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 49
    :cond_4
    iget-object v5, v1, Ls1/o;->b:Ljava/lang/Object;

    .line 50
    check-cast v5, Ljava/util/List;

    .line 51
    iget-object v1, v1, Ls1/o;->c:Ljava/lang/Object;

    .line 52
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 53
    invoke-virtual {v2}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v6

    .line 54
    iget-object v7, v6, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 55
    iget-object v3, v6, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 56
    iget-object v3, v6, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5, v1}, Le/a/g5/e0/i;->QA(Landroid/view/ViewGroup;Ljava/util/List;Z)Lcom/truecaller/common/tag/TagView;

    move-result-object v1

    iput-object v1, v2, Le/a/g5/e0/i;->i:Lcom/truecaller/common/tag/TagView;

    goto :goto_2

    .line 57
    :cond_5
    iget-object v2, v0, Le/a/g5/e0/q;->a:Le/a/g5/e0/i;

    .line 58
    iget-object v4, v1, Ls1/o;->a:Ljava/lang/Object;

    .line 59
    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    .line 60
    iget-object v1, v1, Ls1/o;->b:Ljava/lang/Object;

    .line 61
    move-object v13, v1

    check-cast v13, Ljava/util/List;

    .line 62
    sget-object v1, Le/a/g5/e0/i;->t:[Ls1/a/l;

    .line 63
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 65
    invoke-virtual {v2}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v4

    .line 66
    iget-object v10, v4, Le/a/g5/d0/b;->h:Landroid/widget/ImageView;

    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 67
    iget-object v7, v4, Le/a/g5/d0/b;->g:Landroid/widget/TextView;

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 68
    iget-object v6, v4, Le/a/g5/d0/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v5, v1, 0x1

    invoke-static {v6, v5}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 69
    iget-object v5, v4, Le/a/g5/d0/b;->j:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 70
    iget-object v4, v4, Le/a/g5/d0/b;->k:Lcom/truecaller/common/ui/FlowLayout;

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    if-nez v1, :cond_7

    .line 71
    iget-object v1, v2, Le/a/g5/e0/i;->h:Le/a/g5/e0/u/g;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v12, v13}, Le/a/g5/e0/u/g;->e(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 72
    :cond_6
    new-instance v1, Le/a/g5/e0/u/g;

    .line 73
    iget-object v3, v2, Le/a/g5/e0/i;->m:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Le/f/a/i;

    .line 74
    new-instance v15, Le/a/g5/e0/j;

    invoke-direct {v15, v2}, Le/a/g5/e0/j;-><init>(Le/a/g5/e0/i;)V

    const/16 v16, 0x1

    const/4 v11, 0x0

    move-object v10, v1

    .line 75
    invoke-direct/range {v10 .. v16}, Le/a/g5/e0/u/g;-><init>(Lcom/truecaller/tagger/tagPicker/adapter/TagSearchType;Ljava/lang/String;Ljava/util/List;Le/f/a/i;Ls1/z/b/l;I)V

    iput-object v1, v2, Le/a/g5/e0/i;->h:Le/a/g5/e0/u/g;

    .line 76
    invoke-virtual {v2}, Le/a/g5/e0/i;->RA()Le/a/g5/d0/b;

    move-result-object v1

    iget-object v1, v1, Le/a/g5/d0/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "binding.categoryList"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v2, Le/a/g5/e0/i;->h:Le/a/g5/e0/u/g;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    :cond_7
    :goto_2
    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method
