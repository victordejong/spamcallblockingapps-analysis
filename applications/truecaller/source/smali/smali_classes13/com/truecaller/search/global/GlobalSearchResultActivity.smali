.class public Lcom/truecaller/search/global/GlobalSearchResultActivity;
.super Le/a/e/w0;
.source "SourceFile"

# interfaces
.implements Le/a/w4/s/s0;


# instance fields
.field public d:Le/a/w4/s/b0;

.field public e:Le/a/w4/s/e0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Landroidx/appcompat/widget/Toolbar;

.field public g:Landroidx/appcompat/widget/Toolbar;

.field public h:Landroid/view/View;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Lcom/truecaller/ui/components/EditBase;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Ljava/lang/Runnable;

.field public u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/search/global/GlobalSearchResultActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/e/w0;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->u:Z

    return-void
.end method


# virtual methods
.method public E8()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->t:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/a/w4/s/l;

    invoke-direct {v0, p0}, Le/a/w4/s/l;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->t:Ljava/lang/Runnable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public L9(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return-void
.end method

.method public R5()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Le/a/o5/f1;->a(Ljava/lang/Object;Ljava/lang/String;[F)Le/a/o5/f1;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 2
    iget-object v3, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    .line 3
    iget-object v4, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0x3e8

    .line 4
    iget-object v4, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v2, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 6
    iget-object v0, v0, Le/a/o5/f1;->a:Landroid/animation/ObjectAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public V4(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public W4(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->q:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->p:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public X4(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public Y4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public a5()V
    .locals 6

    const v0, 0x7f010042

    .line 1
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v1, 0x7f010047

    .line 2
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const v2, 0x7f01003d

    .line 3
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 4
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-boolean v4, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->u:Z

    if-eqz v4, :cond_2

    .line 7
    iget-object v4, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->m:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    :cond_2
    iget-object v4, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->r:Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le/a/p5/s0/f;->W(Landroid/view/View;Z)V

    return-void
.end method

.method public e5(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->u:Z

    .line 2
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->m:Landroid/view/View;

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, p1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public g5()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g7(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/truecaller/search/global/GlobalSearchResultActivity;->ua(Landroidx/appcompat/widget/Toolbar;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->h:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ka()V
    .locals 3

    .line 1
    const-class v0, Lcom/truecaller/ui/WizardActivity;

    sget-object v1, Lcom/truecaller/wizard/framework/WizardStartContext;->GLOBAL_SEARCH:Lcom/truecaller/wizard/framework/WizardStartContext;

    const-string v2, "globalSearch"

    invoke-static {p0, v0, v2, v1}, Le/a/r/t/c;->Ca(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/truecaller/wizard/framework/WizardStartContext;)V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e0()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public l7(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->g:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/truecaller/search/global/GlobalSearchResultActivity;->ua(Landroidx/appcompat/widget/Toolbar;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->g:Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->d:Le/a/w4/s/b0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->onBackPressed()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/search/global/GlobalSearchResultActivity;->a5()V

    .line 4
    invoke-super {p0}, Le/a/e/w0;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/e/w0;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-static {p0}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super {p0, p1}, Le/a/e/w0;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0038

    .line 3
    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Le/a/w4/s/d0;

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ARG_RESULT_ORDER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;

    .line 8
    invoke-interface {v0}, Le/a/j2;->L0()Le/a/u4/k;

    move-result-object v4

    invoke-virtual {v4}, Le/a/u4/k;->a()Z

    move-result v4

    invoke-direct {v1, v2, v3, p0, v4}, Le/a/w4/s/d0;-><init>(ILcom/truecaller/search/global/CompositeAdapterDelegate$SearchResultOrder;Landroid/content/Context;Z)V

    .line 9
    const-class v2, Le/a/w4/s/d0;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    const-class v2, Le/a/j2;

    invoke-static {v0, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    new-instance v2, Le/a/w4/s/a0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Le/a/w4/s/a0;-><init>(Le/a/w4/s/d0;Le/a/j2;Le/a/w4/s/a0$a;)V

    .line 12
    iget-object v0, v2, Le/a/w4/s/a0;->u:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/w4/s/e0;

    .line 13
    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    const v0, 0x7f0a0edb

    .line 14
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->f:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a0edc

    .line 15
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->h:Landroid/view/View;

    const v0, 0x7f0a0be3

    .line 16
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->g:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0a1266

    .line 17
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0a10ee

    .line 18
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0efe

    .line 19
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->p:Landroid/view/View;

    const v0, 0x7f0a062f

    .line 20
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->q:Landroid/view/View;

    const v0, 0x7f0a0ed5

    .line 21
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ui/components/EditBase;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    const v0, 0x7f0a02f8

    .line 22
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    const v0, 0x7f0a0303

    .line 23
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->m:Landroid/view/View;

    const v0, 0x7f0a0141

    .line 24
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0a0ebf

    .line 25
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0a02e5

    .line 26
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->r:Landroid/view/View;

    const v0, 0x7f0a0485

    .line 27
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->s:Landroid/view/View;

    .line 28
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->r:Landroid/view/View;

    new-instance v2, Le/a/w4/s/k;

    invoke-direct {v2, p0}, Le/a/w4/s/k;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->o:Landroid/widget/TextView;

    new-instance v2, Le/a/w4/s/j;

    invoke-direct {v2, p0}, Le/a/w4/s/j;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->o:Landroid/widget/TextView;

    const v2, 0x7f0406de

    invoke-static {v1, v2}, Le/a/o5/j0;->w(Landroid/widget/TextView;I)V

    .line 31
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    new-instance v2, Le/a/w4/s/m;

    invoke-direct {v2, p0}, Le/a/w4/s/m;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0402c7

    .line 36
    invoke-static {p0, v1}, Le/a/p5/s0/g;->M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 37
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 39
    :goto_0
    new-instance v1, Le/a/w4/s/n;

    invoke-direct {v1, p0}, Le/a/w4/s/n;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    .line 40
    iget-object v2, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->m:Landroid/view/View;

    new-instance v3, Le/a/w4/s/o;

    invoke-direct {v3, p0}, Le/a/w4/s/o;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v2, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 42
    iget-object v2, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    new-instance v3, Le/a/w4/s/p;

    invoke-direct {v3, p0}, Le/a/w4/s/p;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v2, v3}, Lcom/truecaller/ui/components/EditBase;->setClearIconListener(Lcom/truecaller/ui/components/EditBase$a;)V

    .line 43
    iget-object v2, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 44
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    new-instance v2, Le/a/w4/s/i0;

    invoke-direct {v2, p0}, Le/a/w4/s/i0;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->n:Landroid/widget/EditText;

    new-instance v2, Le/a/w4/s/j0;

    invoke-direct {v2, p0}, Le/a/w4/s/j0;-><init>(Lcom/truecaller/search/global/GlobalSearchResultActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f010041

    .line 46
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const v2, 0x7f010046

    .line 47
    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const v3, 0x7f010049

    .line 48
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 49
    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result v4

    .line 50
    iget-object v5, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    if-eqz v4, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    iget-boolean v5, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->u:Z

    if-eqz v5, :cond_3

    .line 52
    iget-object v5, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->m:Landroid/view/View;

    if-eqz v4, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    :cond_3
    iget-object v5, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->r:Landroid/view/View;

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->s:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 55
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    invoke-interface {v1, p0}, Le/a/w4/s/e0;->qb(Le/a/w4/s/s0;)V

    .line 56
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->f:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/truecaller/search/global/GlobalSearchResultActivity;->ua(Landroidx/appcompat/widget/Toolbar;)V

    const-string v1, "SEARCH_RESULT_TAG"

    if-nez p1, :cond_5

    .line 57
    new-instance p1, Le/a/w4/s/b0;

    invoke-direct {p1}, Le/a/w4/s/b0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->d:Le/a/w4/s/b0;

    .line 58
    iget-object v2, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    .line 59
    iput-object v2, p1, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    .line 60
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 61
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 62
    iget-object p1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->d:Le/a/w4/s/b0;

    .line 63
    invoke-virtual {v2, v0, p1, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 64
    invoke-virtual {v2}, Ln3/r/a/a;->f()I

    goto :goto_4

    .line 65
    :cond_5
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Le/a/w4/s/b0;

    iput-object p1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->d:Le/a/w4/s/b0;

    .line 66
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    .line 67
    iput-object v0, p1, Le/a/w4/s/b0;->a:Le/a/w4/s/e0;

    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/e/w0;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->e:Le/a/w4/s/e0;

    invoke-interface {v0}, Le/a/w4/s/e0;->Y1()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/e/w0;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->t:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public p0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->k:Lcom/truecaller/ui/components/EditBase;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Le/a/p5/s0/f;->X(Landroid/view/View;ZJ)V

    return-void
.end method

.method public r7(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public t7()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/search/global/GlobalSearchResultActivity;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    return v0
.end method

.method public final ua(Landroidx/appcompat/widget/Toolbar;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Le/a/e/w0;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ln3/b/a/a;->p(Z)V

    :cond_0
    return-void
.end method
