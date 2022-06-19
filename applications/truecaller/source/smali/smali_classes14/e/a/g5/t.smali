.class public Le/a/g5/t;
.super Le/a/g5/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ln3/w/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/g5/t$e;,
        Le/a/g5/t$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/g5/l$d;",
        "Landroid/view/View$OnClickListener;",
        "Ln3/w/a/a$a<",
        "Ljava/util/List<",
        "Le/a/b0/p/c;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public e:Le/a/b0/p/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/g5/p;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/widget/TextView;

.field public m:Lcom/truecaller/common/tag/TagView;

.field public n:Le/a/b0/p/c;

.field public o:Lcom/truecaller/common/tag/TagView;

.field public p:Lcom/truecaller/common/tag/TagView;

.field public q:Z

.field public r:F

.field public final s:Landroid/animation/Animator$AnimatorListener;

.field public final t:Landroid/animation/Animator$AnimatorListener;

.field public final u:Landroid/animation/Animator$AnimatorListener;

.field public final v:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/g5/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/g5/t;->q:Z

    .line 3
    new-instance v0, Le/a/g5/t$a;

    invoke-direct {v0, p0}, Le/a/g5/t$a;-><init>(Le/a/g5/t;)V

    iput-object v0, p0, Le/a/g5/t;->s:Landroid/animation/Animator$AnimatorListener;

    .line 4
    new-instance v0, Le/a/g5/t$b;

    invoke-direct {v0, p0}, Le/a/g5/t$b;-><init>(Le/a/g5/t;)V

    iput-object v0, p0, Le/a/g5/t;->t:Landroid/animation/Animator$AnimatorListener;

    .line 5
    new-instance v0, Le/a/g5/t$c;

    invoke-direct {v0, p0}, Le/a/g5/t$c;-><init>(Le/a/g5/t;)V

    iput-object v0, p0, Le/a/g5/t;->u:Landroid/animation/Animator$AnimatorListener;

    .line 6
    new-instance v0, Le/a/g5/t$d;

    invoke-direct {v0, p0}, Le/a/g5/t$d;-><init>(Le/a/g5/t;)V

    iput-object v0, p0, Le/a/g5/t;->v:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public OA()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/g5/t;->SA()V

    return-void
.end method

.method public final RA(Landroid/view/ViewGroup;Ljava/util/List;)Lcom/truecaller/common/tag/TagView;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;)",
            "Lcom/truecaller/common/tag/TagView;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/tagger/R$dimen;->space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/p/c;

    .line 4
    new-instance v3, Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p0}, Le/a/g5/h;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 5
    iget-wide v5, v2, Le/a/b0/p/c;->c:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    .line 6
    :goto_1
    invoke-direct {v3, v4, v7, v5}, Lcom/truecaller/common/tag/TagView;-><init>(Landroid/content/Context;ZZ)V

    .line 7
    iget-object v4, p0, Le/a/g5/t;->f:Le/a/g5/p;

    invoke-interface {v4, v2}, Le/a/g5/p;->a(Le/a/b0/p/c;)Le/a/b0/p/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/truecaller/common/tag/TagView;->setTag(Le/a/b0/p/c;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/tagger/R$dimen;->tagTextSize:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v7, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v4, p0, Le/a/g5/t;->n:Le/a/b0/p/c;

    if-eqz v4, :cond_2

    .line 11
    iget-wide v8, v2, Le/a/b0/p/c;->a:J

    iget-wide v10, v4, Le/a/b0/p/c;->a:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1

    .line 12
    iget-wide v4, v4, Le/a/b0/p/c;->c:J

    cmp-long v2, v8, v4

    if-nez v2, :cond_2

    .line 13
    :cond_1
    invoke-virtual {v3, v6, v7}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    move-object v1, v3

    .line 14
    :cond_2
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 16
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 17
    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final SA()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    .line 2
    instance-of v1, v0, Le/a/g5/t$f;

    if-eqz v1, :cond_6

    .line 3
    check-cast v0, Le/a/g5/t$f;

    .line 4
    iget-object v1, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/common/tag/TagView;->getAvailableTag()Le/a/b0/p/c;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Le/a/g5/t;->o:Lcom/truecaller/common/tag/TagView;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/common/tag/TagView;->getAvailableTag()Le/a/b0/p/c;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Le/a/g5/t;->n:Le/a/b0/p/c;

    invoke-virtual {v1, v2}, Le/a/b0/p/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Le/a/g5/t;->n:Le/a/b0/p/c;

    if-eqz v2, :cond_4

    .line 9
    invoke-virtual {v2, v1}, Le/a/b0/p/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_5

    .line 10
    invoke-interface {v0, v1}, Le/a/g5/t$f;->F5(Le/a/b0/p/c;)V

    goto :goto_2

    .line 11
    :cond_5
    invoke-interface {v0}, Le/a/g5/t$f;->f8()V

    :cond_6
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2
    sget v1, Lcom/truecaller/tagger/R$id;->tag_selected_root:I

    const-wide/16 v2, 0xc8

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/g5/t;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Le/a/g5/t;->r:F

    neg-float v0, v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v1, p0, Le/a/g5/t;->u:Landroid/animation/Animator$AnimatorListener;

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 9
    iget-object p1, p0, Le/a/g5/t;->j:Landroid/view/View;

    iget v1, p0, Le/a/g5/t;->r:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    iget-object p1, p0, Le/a/g5/t;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 11
    iget-object p1, p0, Le/a/g5/t;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Le/a/g5/t;->t:Landroid/animation/Animator$AnimatorListener;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_3

    .line 18
    :cond_0
    sget v1, Lcom/truecaller/tagger/R$id;->close_button:I

    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p0}, Le/a/g5/t;->SA()V

    goto/16 :goto_3

    .line 20
    :cond_1
    instance-of v0, p1, Lcom/truecaller/common/tag/TagView;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Le/a/g5/t;->q:Z

    if-nez v0, :cond_9

    .line 21
    check-cast p1, Lcom/truecaller/common/tag/TagView;

    .line 22
    invoke-virtual {p1}, Lcom/truecaller/common/tag/TagView;->getParentTagId()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_4

    .line 23
    iget-object v0, p0, Le/a/g5/t;->o:Lcom/truecaller/common/tag/TagView;

    if-ne p1, v0, :cond_2

    .line 24
    invoke-virtual {p1, v5, v4}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 25
    iput-object v1, p0, Le/a/g5/t;->o:Lcom/truecaller/common/tag/TagView;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0, v5, v4}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/common/tag/TagView;->getTagId()J

    move-result-wide v0

    .line 28
    iput-object p1, p0, Le/a/g5/t;->o:Lcom/truecaller/common/tag/TagView;

    .line 29
    invoke-virtual {p1, v4, v4}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 30
    iget-object p1, p0, Le/a/g5/t;->l:Landroid/widget/TextView;

    sget v2, Lcom/truecaller/tagger/R$string;->TagsChooserChildTitle:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 31
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "root_tag"

    .line 32
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Ln3/w/a/a;

    move-result-object v0

    sget v1, Lcom/truecaller/tagger/R$id;->truecaller_loader_child_tags:I

    invoke-virtual {v0, v1, p1, p0}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    :goto_0
    const-string p1, "Root = "

    .line 34
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Parent = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/g5/t;->o:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Child = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    .line 35
    :cond_4
    iget-object v0, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    const-wide/16 v6, -0x1

    if-ne v0, p1, :cond_5

    .line 36
    iput-object v1, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    move-wide v0, v6

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    .line 37
    invoke-virtual {v0, v5, v4}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 38
    :cond_6
    iput-object p1, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    .line 39
    invoke-virtual {p1}, Lcom/truecaller/common/tag/TagView;->getTagId()J

    move-result-wide v0

    :goto_1
    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_2

    :cond_7
    move v0, v5

    .line 40
    :goto_2
    iput-boolean v0, p0, Le/a/g5/t;->q:Z

    .line 41
    iget-object v0, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    if-ne v0, p1, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {p1, v5, v4}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 42
    iget-boolean p1, p0, Le/a/g5/t;->q:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 43
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 45
    new-instance v0, Le/a/g5/u;

    invoke-direct {v0, p0}, Le/a/g5/u;-><init>(Le/a/g5/t;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_9
    :goto_3
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3eb33333    # 0.35f
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/g5/t;->g:Le/a/q2/a;

    const-string v0, "tagPicker"

    invoke-static {v0}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Le/a/b0/p/c;",
            ">;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    const-string p1, "root_tag"

    .line 1
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    :cond_0
    new-instance p1, Le/a/g5/t$e;

    invoke-virtual {p0}, Le/a/g5/h;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Le/a/g5/t;->e:Le/a/b0/p/d;

    invoke-direct {p1, p2, v0, v1, v2}, Le/a/g5/t$e;-><init>(Landroid/content/Context;JLe/a/b0/p/d;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/tagger/R$layout;->view_tag_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Ln3/w/b/b;->getId()I

    move-result v0

    .line 3
    sget v1, Lcom/truecaller/tagger/R$id;->truecaller_loader_root_tags:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/g5/t;->h:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Le/a/g5/t;->RA(Landroid/view/ViewGroup;Ljava/util/List;)Lcom/truecaller/common/tag/TagView;

    move-result-object p1

    iput-object p1, p0, Le/a/g5/t;->o:Lcom/truecaller/common/tag/TagView;

    goto/16 :goto_0

    .line 5
    :cond_0
    sget v1, Lcom/truecaller/tagger/R$id;->truecaller_loader_child_tags:I

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Le/a/g5/t;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p2}, Le/a/g5/t;->RA(Landroid/view/ViewGroup;Ljava/util/List;)Lcom/truecaller/common/tag/TagView;

    move-result-object p2

    iput-object p2, p0, Le/a/g5/t;->p:Lcom/truecaller/common/tag/TagView;

    .line 7
    check-cast p1, Le/a/g5/t$e;

    iget-wide p1, p1, Le/a/g5/t$e;->a:J

    .line 8
    iget-object v0, p0, Le/a/g5/t;->e:Le/a/b0/p/d;

    invoke-interface {v0, p1, p2}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    iget-object v0, p0, Le/a/g5/t;->f:Le/a/g5/p;

    .line 10
    iget-wide v1, p1, Le/a/b0/p/c;->a:J

    .line 11
    invoke-interface {v0, v1, v2}, Le/a/g5/p;->c(J)Le/a/b0/p/c;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/common/tag/TagView;->setTag(Le/a/b0/p/c;)V

    .line 12
    iget-object p1, p0, Le/a/g5/t;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Le/a/g5/t;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Le/a/g5/t;->r:F

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 16
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v2, p0, Le/a/g5/t;->s:Landroid/animation/Animator$AnimatorListener;

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 19
    iget-object p1, p0, Le/a/g5/t;->k:Landroid/view/View;

    iget v2, p0, Le/a/g5/t;->r:F

    neg-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    iget-object p1, p0, Le/a/g5/t;->k:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 21
    iget-object p1, p0, Le/a/g5/t;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Le/a/g5/t;->v:Landroid/animation/Animator$AnimatorListener;

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x3

    new-array p1, p1, [F

    .line 28
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 29
    new-instance p2, Le/a/g5/v;

    invoke-direct {p2, p0}, Le/a/g5/v;-><init>(Le/a/g5/t;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x12c

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onLoaderReset(Ln3/w/b/b;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .line 1
    sget v0, Lcom/truecaller/tagger/R$id;->tag_container_level_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Le/a/g5/t;->h:Landroid/view/ViewGroup;

    .line 2
    sget v0, Lcom/truecaller/tagger/R$id;->tag_container_level_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Le/a/g5/t;->i:Landroid/view/ViewGroup;

    .line 3
    sget v0, Lcom/truecaller/tagger/R$id;->tags_level_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/g5/t;->j:Landroid/view/View;

    .line 4
    sget v0, Lcom/truecaller/tagger/R$id;->tags_level_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/g5/t;->k:Landroid/view/View;

    .line 5
    sget v0, Lcom/truecaller/tagger/R$id;->tag_level_2_title_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/g5/t;->l:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/truecaller/tagger/R$id;->tag_selected_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/tag/TagView;

    iput-object v0, p0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/tagger/R$dimen;->tag_animation_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Le/a/g5/t;->r:F

    .line 8
    iget-object v0, p0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/common/tag/TagView;->h(ZZ)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initial_tag"

    const-wide/high16 v3, -0x8000000000000000L

    .line 10
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Le/a/g5/t;->e:Le/a/b0/p/d;

    invoke-interface {v1, v5, v6}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Le/a/g5/t;->n:Le/a/b0/p/c;

    const-string v1, "tag_context"

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v4, 0x4

    if-eq v0, v1, :cond_1

    if-ne v0, v4, :cond_2

    .line 13
    :cond_1
    sget v0, Lcom/truecaller/tagger/R$id;->titleFirstLine:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    sget v0, Lcom/truecaller/tagger/R$id;->titleSecondLine:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_2
    iget-object v0, p0, Le/a/g5/t;->n:Le/a/b0/p/c;

    if-eqz v0, :cond_3

    .line 16
    iget-wide v5, v0, Le/a/b0/p/c;->c:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_3

    .line 17
    iget-object v0, p0, Le/a/g5/t;->e:Le/a/b0/p/d;

    invoke-interface {v0, v5, v6}, Le/a/b0/p/d;->h(J)Le/a/b0/p/c;

    move-result-object v0

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Ln3/w/a/a;

    move-result-object v1

    sget v5, Lcom/truecaller/tagger/R$id;->truecaller_loader_root_tags:I

    invoke-virtual {v1, v5, v3, p0}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    if-eqz v0, :cond_4

    .line 19
    iget-object v1, p0, Le/a/g5/t;->j:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 20
    iget-object v1, p0, Le/a/g5/t;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-wide v0, v0, Le/a/b0/p/c;->a:J

    .line 22
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "root_tag"

    .line 23
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Ln3/w/a/a;

    move-result-object v0

    sget v1, Lcom/truecaller/tagger/R$id;->truecaller_loader_child_tags:I

    invoke-virtual {v0, v1, v2, p0}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    .line 25
    iget-object v0, p0, Le/a/g5/t;->l:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/tagger/R$string;->TagsChooserEditTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object v0, p0, Le/a/g5/t;->l:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/tagger/R$string;->TagsChooserChildTitle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 27
    :goto_1
    iget-object v0, p0, Le/a/g5/t;->m:Lcom/truecaller/common/tag/TagView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    sget v0, Lcom/truecaller/tagger/R$id;->close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
