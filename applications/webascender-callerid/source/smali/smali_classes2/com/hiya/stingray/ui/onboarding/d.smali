.class public final Lcom/hiya/stingray/ui/onboarding/d;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/onboarding/d$a;
    }
.end annotation


# static fields
.field public static final u:Lcom/hiya/stingray/ui/onboarding/d$a;


# instance fields
.field private final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/hiya/stingray/manager/d3$a;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/hiya/stingray/manager/d3$b;

.field private n:Z

.field public o:Lcom/hiya/stingray/ui/login/o;

.field public p:Lcom/hiya/stingray/manager/d3;

.field public q:Lcom/hiya/stingray/ui/onboarding/c;

.field public r:Lcom/hiya/stingray/manager/x3;

.field private s:Z

.field private t:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/onboarding/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/onboarding/d$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/onboarding/d;->u:Lcom/hiya/stingray/ui/onboarding/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic g1(Lcom/hiya/stingray/ui/onboarding/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->i1()V

    return-void
.end method

.method public static final synthetic h1(Lcom/hiya/stingray/ui/onboarding/d;Lcom/hiya/stingray/manager/d3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->l1(Lcom/hiya/stingray/manager/d3$a;)V

    return-void
.end method

.method private final i1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    const-string v1, "type"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    sget-object v3, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    if-ne v0, v3, :cond_4

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->j1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    check-cast v2, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->O()V

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->p:Lcom/hiya/stingray/manager/d3;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1, p0}, Lcom/hiya/stingray/manager/d3;->v(Lcom/hiya/stingray/manager/d3$b;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "onBoardingManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v0

    :goto_1
    check-cast v2, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->O()V

    :cond_6
    :goto_2
    return-void

    .line 6
    :cond_7
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final j1()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "itemsViews.keys"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/d3$a;

    .line 4
    iget-object v4, p0, Lcom/hiya/stingray/ui/onboarding/d;->p:Lcom/hiya/stingray/manager/d3;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const-string v6, "it"

    invoke-static {v3, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v5

    :cond_3
    const-string v0, "onBoardingManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 5
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v1, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method private final k1(Lcom/hiya/stingray/manager/d3$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    instance-of v1, v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->Q(Lcom/hiya/stingray/manager/d3$a;)V

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->m1()V

    return-void
.end method

.method private final l1(Lcom/hiya/stingray/manager/d3$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->p:Lcom/hiya/stingray/manager/d3;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, p0}, Lcom/hiya/stingray/manager/d3;->u(Lcom/hiya/stingray/manager/d3$a;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_0
    const-string p1, "onBoardingManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final m1()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->j1()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/hiya/stingray/ui/onboarding/d;->n:Z

    const/4 v2, 0x0

    const-string v3, "type"

    const-string v4, "button"

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v5, 0x1

    if-gt v1, v5, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz v1, :cond_0

    sget-object v5, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    if-ne v1, v5, :cond_1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 3
    :cond_1
    sget v1, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    sget v1, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    const v1, 0x7f110243

    if-eqz v0, :cond_3

    .line 5
    sget v0, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->n1()V

    goto :goto_2

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->o1()V

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    if-ne v0, v2, :cond_4

    .line 9
    sget v0, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f110241

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 10
    :cond_4
    sget v0, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_2
    return-void

    .line 11
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final n1()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06019a

    invoke-static {v2, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "button"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801e2

    invoke-static {v1, v2}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final o1()V
    .locals 4

    .line 1
    sget v0, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06002a

    invoke-static {v2, v3}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "button"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0801e0

    invoke-static {v1, v2}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final p1(Lcom/hiya/stingray/manager/d3$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const-string v2, "itemsViews[item]!!"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 2
    sget v2, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "view.title"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/onboarding/d;->r:Lcom/hiya/stingray/manager/x3;

    const-string v4, "remoteConfigManager"

    if-eqz v3, :cond_8

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/d3$a;->getTitleRC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v2, Lcom/hiya/stingray/o;->F:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "view.body"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/onboarding/d;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/d3$a;->getBodyRC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/onboarding/d;->p:Lcom/hiya/stingray/manager/d3;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v2

    const-string v3, "view.button"

    if-eqz v2, :cond_1

    .line 5
    sget v2, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {v5, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hiya/stingray/ui/onboarding/d;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/d3$a;->getResolvedButtonTitleRC()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->C1:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080139

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    sget v2, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {v5, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hiya/stingray/ui/onboarding/d;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/d3$a;->getButtonTitleRC()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-static {v4, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/hiya/stingray/ui/onboarding/d$d;

    invoke-direct {v4, p0, p1}, Lcom/hiya/stingray/ui/onboarding/d$d;-><init>(Lcom/hiya/stingray/ui/onboarding/d;Lcom/hiya/stingray/manager/d3$a;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p1, Lcom/hiya/stingray/o;->C1:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/hiya/stingray/ui/onboarding/e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const v0, 0x7f08013a

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    const v0, 0x7f08013b

    .line 14
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void

    :cond_4
    const-string p1, "type"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_5
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "onBoardingManager"

    .line 16
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_7
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_8
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method


# virtual methods
.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->t:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->t:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->t:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/onboarding/d;->t:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->k0(Lcom/hiya/stingray/ui/onboarding/d;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "EXTRA_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/hiya/stingray/manager/d3$b;

    iput-object p1, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "EXTRA_SETTINGS"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hiya/stingray/ui/onboarding/d;->n:Z

    return-void

    .line 5
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.stingray.manager.OnBoardingManager.Type"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c0082

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/onboarding/d;->Z0()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    aget v5, p3, v2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const/4 p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_8

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string p3, "itemsViews.keys"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3$a;->getRequestCode()I

    move-result v0

    if-ne v0, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    :goto_4
    check-cast p3, Lcom/hiya/stingray/manager/d3$a;

    if-eqz p3, :cond_7

    const-string p1, "it"

    .line 3
    invoke-static {p3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/hiya/stingray/ui/onboarding/d;->p1(Lcom/hiya/stingray/manager/d3$a;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->m1()V

    .line 5
    invoke-direct {p0, p3}, Lcom/hiya/stingray/ui/onboarding/d;->k1(Lcom/hiya/stingray/manager/d3$a;)V

    return-void

    :cond_7
    const/16 p2, 0x1773

    if-ne p1, p2, :cond_b

    .line 6
    sget-object p1, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->k1(Lcom/hiya/stingray/manager/d3$a;)V

    goto :goto_6

    .line 7
    :cond_8
    array-length p1, p2

    const/4 p3, 0x0

    :goto_5
    if-ge v1, p1, :cond_a

    aget-object v0, p2, v1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 p3, p3, 0x1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    if-nez p3, :cond_b

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object p1

    const-string p2, "requireActivity()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hiya/stingray/util/e0;->v(Landroid/app/Activity;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "itemsViews.keys"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v2, "it"

    .line 4
    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/hiya/stingray/ui/onboarding/d;->p1(Lcom/hiya/stingray/manager/d3$a;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->m1()V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->p:Lcom/hiya/stingray/manager/d3;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/d3;->w()V

    .line 7
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->s:Z

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->q:Lcom/hiya/stingray/ui/onboarding/c;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/onboarding/c;->a(Lcom/hiya/stingray/manager/d3$b;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->s:Z

    goto :goto_1

    :cond_1
    const-string v0, "type"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "permissionsOnBoardingAnalytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v0, "onBoardingManager"

    .line 11
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "title"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/onboarding/d;->r:Lcom/hiya/stingray/manager/x3;

    const/4 v0, 0x0

    const-string v1, "remoteConfigManager"

    if-eqz p2, :cond_7

    iget-object v2, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    const-string v3, "type"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/d3$b;->getTitleRC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget p1, Lcom/hiya/stingray/o;->F:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "body"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/onboarding/d;->r:Lcom/hiya/stingray/manager/x3;

    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/d3$b;->getBodyRC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/onboarding/d;->p:Lcom/hiya/stingray/manager/d3;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/hiya/stingray/ui/onboarding/d;->m:Lcom/hiya/stingray/manager/d3$b;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/d3;->j(Lcom/hiya/stingray/manager/d3$b;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/manager/d3$a;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0107

    sget v2, Lcom/hiya/stingray/o;->R1:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/ui/onboarding/d;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "viewGroup.getChildAt(viewGroup.childCount - 1)"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_1
    sget p1, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/onboarding/d$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/onboarding/d$b;-><init>(Lcom/hiya/stingray/ui/onboarding/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/d;->m1()V

    .line 12
    sget p1, Lcom/hiya/stingray/o;->q:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    const-string v0, "backButton"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/onboarding/d;->n:Z

    invoke-static {p2, v0}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance p2, Lcom/hiya/stingray/ui/onboarding/d$c;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/onboarding/d$c;-><init>(Lcom/hiya/stingray/ui/onboarding/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    new-instance v0, Lcom/hiya/stingray/ui/premium/t;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "requireContext()"

    invoke-static {v1, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    sget p1, Lcom/hiya/stingray/o;->A3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/ScrollView;

    sget p1, Lcom/hiya/stingray/o;->T3:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/onboarding/d;->f1(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x12

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/hiya/stingray/ui/premium/t;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ScrollView;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;ILkotlin/w/c/g;)V

    return-void

    .line 15
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "onBoardingManager"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_6
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method
