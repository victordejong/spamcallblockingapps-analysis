.class public Lcom/hiya/stingray/ui/login/MarketingFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/login/j;


# instance fields
.field disabledButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c6
    .end annotation
.end field

.field getStartedButton:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c5
    .end annotation
.end field

.field private l:Landroid/content/Context;

.field loadingView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090245
    .end annotation
.end field

.field m:Lcom/hiya/stingray/ui/login/i;

.field marketingImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025e
    .end annotation
.end field

.field marketingImageNew:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09025f
    .end annotation
.end field

.field marketingTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090260
    .end annotation
.end field

.field n:Lcom/hiya/stingray/manager/e1;

.field newHeader:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902af
    .end annotation
.end field

.field o:Lcom/hiya/stingray/manager/x3;

.field originalHeader:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c6
    .end annotation
.end field

.field p:Lcom/hiya/stingray/ui/login/o;

.field q:Lcom/hiya/stingray/manager/i1;

.field r:Lcom/hiya/stingray/manager/g1;

.field s:Lcom/hiya/stingray/util/b0;

.field t:Lcom/hiya/stingray/manager/j2;

.field tAndCAgreementTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090425
    .end annotation
.end field

.field tcCheckbox:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090424
    .end annotation
.end field

.field u:Lcom/hiya/stingray/manager/s2;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->v:Z

    return-void
.end method

.method static synthetic f1(Lcom/hiya/stingray/ui/login/MarketingFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->s1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g1(Lcom/hiya/stingray/ui/login/MarketingFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->u1(Z)V

    return-void
.end method

.method private h1(Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/login/MarketingFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment$b;-><init>(Lcom/hiya/stingray/ui/login/MarketingFragment;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getWidth()I

    move-result v2

    int-to-float v2, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getWidth()I

    move-result p1

    int-to-float v1, p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v2, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public static i1(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 1
    const-class v0, Lcom/hiya/stingray/ui/login/MarketingFragment;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private synthetic j1(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->v:Z

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->q:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->q:Lcom/hiya/stingray/manager/i1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/i1;->h(Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/i;->C()V

    :cond_1
    return-void
.end method

.method private synthetic l1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/login/MarketingFragment;->v1(Z)V

    return-void
.end method

.method private synthetic n1(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic p1(Landroid/view/View;)Z
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const-class v1, Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private r1(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;I)V
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/ui/login/MarketingFragment$a;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/login/MarketingFragment$a;-><init>(Lcom/hiya/stingray/ui/login/MarketingFragment;Landroid/text/style/URLSpan;)V

    .line 2
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 3
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 4
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/login/MarketingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {v0, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 7
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 8
    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private s1(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const v1, 0x7f1103c1

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "terms_of_service_link"

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    goto :goto_0

    :cond_0
    const-string p1, "data_policy_link"

    .line 4
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->n:Lcom/hiya/stingray/manager/e1;

    const-string v1, "onboard_get_started"

    .line 6
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 7
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    const-string v1, "onboard_action"

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method private t1(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/hiya/stingray/util/c0;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/URLSpan;

    .line 4
    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 5
    invoke-direct {p0, v0, v3, p3}, Lcom/hiya/stingray/ui/login/MarketingFragment;->r1(Landroid/text/SpannableStringBuilder;Landroid/text/style/URLSpan;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private u1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private v1(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->v:Z

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->h1(Z)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->u1(Z)V

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getStartedButton is not correctly attached to window"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lr/a/a;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->t:Lcom/hiya/stingray/manager/j2;

    const/16 v1, 0x1f47

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/manager/j2;->e(Landroidx/fragment/app/Fragment;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/i;->z()V

    :cond_0
    return-void
.end method

.method public L()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public T()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->p:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/login/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->p:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->p:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1773

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->n:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "permission_prompt"

    .line 4
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "required_permission"

    .line 5
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_view"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/i;->A()V

    :goto_0
    return-void
.end method

.method public done()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->l:Landroid/content/Context;

    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/ui/login/PermissionFragment;->i1(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f45

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic k1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->j1(Landroid/view/View;)V

    return-void
.end method

.method public synthetic m1(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/login/MarketingFragment;->l1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public synthetic o1(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->n1(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1f45

    if-eq p1, p3, :cond_2

    const/16 p2, 0x1f47

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1f48

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/i;->y()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->r:Lcom/hiya/stingray/manager/g1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/i;->z()V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->r:Lcom/hiya/stingray/manager/g1;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/g1;->j()V

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/i;->A()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->l:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->c0(Lcom/hiya/stingray/ui/login/MarketingFragment;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->n:Lcom/hiya/stingray/manager/e1;

    const-string v0, "tutorial_begin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c007f

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/hiya/stingray/ui/login/i;->u(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->m:Lcom/hiya/stingray/ui/login/i;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/login/i;->p()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->originalHeader:Landroid/view/View;

    iget-object p2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->u:Lcom/hiya/stingray/manager/s2;

    sget-object v0, Lcom/hiya/stingray/manager/s2$c;->IN_CALL_UI:Lcom/hiya/stingray/manager/s2$c;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/s2;->p(Lcom/hiya/stingray/manager/s2$c;)Z

    move-result p2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->newHeader:Landroid/view/View;

    iget-object p2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->u:Lcom/hiya/stingray/manager/s2;

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/s2;->p(Lcom/hiya/stingray/manager/s2$c;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/login/d;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/login/d;-><init>(Lcom/hiya/stingray/ui/login/MarketingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->tcCheckbox:Landroid/widget/CheckBox;

    new-instance p2, Lcom/hiya/stingray/ui/login/c;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/login/c;-><init>(Lcom/hiya/stingray/ui/login/MarketingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->tAndCAgreementTextView:Landroid/widget/TextView;

    const p2, 0x7f110025

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->o:Lcom/hiya/stingray/manager/x3;

    const-string v3, "settings_terms_of_use_url"

    .line 7
    invoke-virtual {v1, v3}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x7f1103b7

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0600f6

    invoke-direct {p0, p1, p2, v0}, Lcom/hiya/stingray/ui/login/MarketingFragment;->t1(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->getStartedButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->o:Lcom/hiya/stingray/manager/x3;

    const-string v0, "marketing_button_text"

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->o:Lcom/hiya/stingray/manager/x3;

    const-string v0, "marketing_text"

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingImage:Landroid/widget/ImageView;

    new-instance p2, Lcom/hiya/stingray/ui/login/a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/login/a;-><init>(Lcom/hiya/stingray/ui/login/MarketingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->marketingImageNew:Landroid/widget/ImageView;

    new-instance p2, Lcom/hiya/stingray/ui/login/b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/login/b;-><init>(Lcom/hiya/stingray/ui/login/MarketingFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_2
    return-void
.end method

.method public synthetic q1(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/login/MarketingFragment;->p1(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public y(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/MarketingFragment;->loadingView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method
