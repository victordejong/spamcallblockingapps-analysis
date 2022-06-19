.class public Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;
.super Lcom/hiya/stingray/ui/contactdetails/y;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z

.field backgroundProfileImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09011f
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/squareup/picasso/Picasso;

.field profileImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090305
    .end annotation
.end field

.field subtitleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090123
    .end annotation
.end field

.field titleTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090124
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Boolean;Lcom/squareup/picasso/Picasso;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/contactdetails/y;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->b:Z

    .line 3
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->c:Z

    .line 6
    iput-object p3, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->d:Lcom/squareup/picasso/Picasso;

    .line 7
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method static synthetic j(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/m0;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->p(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/m0;)I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;ZLcom/hiya/stingray/ui/contactdetails/d0;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->o(ZLcom/hiya/stingray/ui/contactdetails/d0;)I

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->q(I)V

    return-void
.end method

.method private o(ZLcom/hiya/stingray/ui/contactdetails/d0;)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f060189

    return p1

    .line 1
    :cond_0
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const p1, 0x7f060048

    return p1

    :cond_1
    const p1, 0x7f060177

    return p1

    :cond_2
    const p1, 0x7f060150

    return p1
.end method

.method private p(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/m0;)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f08006c

    return p1

    .line 1
    :cond_0
    sget-object p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const p2, 0x7f08006f

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const p1, 0x7f080092

    return p1

    :pswitch_1
    const p1, 0x7f080094

    return p1

    :pswitch_2
    return p2

    :pswitch_3
    const p1, 0x7f080082

    return p1

    .line 2
    :pswitch_4
    sget-object p1, Lcom/hiya/stingray/t/m0;->BUSINESS:Lcom/hiya/stingray/t/m0;

    if-ne p3, p1, :cond_1

    const p2, 0x7f08006d

    :cond_1
    :pswitch_5
    return p2

    :pswitch_6
    const p1, 0x7f08007a

    return p1

    :pswitch_7
    const p1, 0x7f08007e

    return p1

    :pswitch_8
    const p1, 0x7f080071

    return p1

    :pswitch_9
    const p1, 0x7f080087

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private q(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->backgroundProfileImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroidx/core/content/c/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->b:Z

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$b;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->b:Z

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$c;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public r(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v2, p2, v3, v4}, Lcom/hiya/stingray/ui/contactdetails/y;->i(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;Lcom/hiya/stingray/t/n0;)Ljava/lang/String;

    move-result-object v11

    .line 5
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->subtitleTv:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 7
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v9

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v10

    move-object v5, p0

    move-object v7, p2

    .line 8
    invoke-virtual/range {v5 .. v11}, Lcom/hiya/stingray/ui/contactdetails/y;->h(Landroid/content/res/Resources;Lcom/hiya/stingray/ui/contactdetails/d0;Ljava/lang/String;Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/t/m0;->PERSON:Lcom/hiya/stingray/t/m0;

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->c:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez p1, :cond_5

    .line 11
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, Lcom/hiya/stingray/util/q;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/hiya/stingray/ui/contactdetails/d0;->MULTI_CONTACT:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eq p2, v2, :cond_5

    sget-object v2, Lcom/hiya/stingray/ui/contactdetails/d0;->SPAM:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-eq p2, v2, :cond_5

    sget-object v2, Lcom/hiya/stingray/ui/contactdetails/d0;->FRAUD:Lcom/hiya/stingray/ui/contactdetails/d0;

    if-ne p2, v2, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->backgroundProfileImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->profileImage:Landroid/widget/ImageView;

    const v1, 0x7f070071

    iget-object v2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->d:Lcom/squareup/picasso/Picasso;

    new-instance v3, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;

    invoke-direct {v3, p0, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;Lcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/d0;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/hiya/stingray/util/f0;->h(Ljava/lang/String;Landroid/widget/ImageView;ILcom/squareup/picasso/Picasso;Lcom/squareup/picasso/e;)V

    .line 14
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->d:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->backgroundProfileImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/x;->g(Landroid/widget/ImageView;)V

    goto :goto_4

    .line 15
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->profileImage:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->f()Lcom/hiya/stingray/t/m0;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->p(ZLcom/hiya/stingray/ui/contactdetails/d0;Lcom/hiya/stingray/t/m0;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->o(ZLcom/hiya/stingray/ui/contactdetails/d0;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->q(I)V

    :goto_4
    return-void
.end method
