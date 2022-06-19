.class public abstract Le/a/e/c2/h0;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/a/b/a;

.field public final b:Lcom/truecaller/common/ui/avatar/AvatarXView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    move-object p2, p0

    check-cast p2, Le/a/e/c/k2;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Le/a/w1;

    invoke-interface {p3}, Le/a/w1;->s()Le/a/j2;

    move-result-object p3

    iput-object p3, p2, Le/a/e/c/k2;->r:Le/a/j2;

    const p3, 0x7f0d04b9

    .line 4
    invoke-static {p1, p3, p2}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p3, 0x7f0a04b8

    .line 5
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p2, Le/a/e/c/k2;->c:Landroid/widget/ImageView;

    const p3, 0x7f0a0c13

    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Le/a/e/c/k2;->d:Landroid/widget/TextView;

    const p3, 0x7f0a1078

    .line 7
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Le/a/e/c/k2;->e:Landroid/widget/TextView;

    const p3, 0x7f0a01b2

    .line 8
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    const p3, 0x7f0a013f

    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p2, Le/a/e/c/k2;->g:Landroid/view/ViewGroup;

    const p3, 0x7f0a1149

    .line 10
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p2, Le/a/e/c/k2;->h:Landroid/view/ViewGroup;

    const p3, 0x7f0a10f7

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p2, Le/a/e/c/k2;->l:Landroid/widget/ImageButton;

    const p3, 0x7f0a0d86

    .line 12
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p2, Le/a/e/c/k2;->k:Landroid/view/View;

    const p3, 0x7f0a0a14

    .line 13
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Le/a/e/c/k2;->m:Landroid/widget/TextView;

    const p3, 0x7f0a0967

    .line 14
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/truecaller/ui/view/TintedImageView;

    iput-object p3, p2, Le/a/e/c/k2;->n:Lcom/truecaller/ui/view/TintedImageView;

    const p3, 0x7f0a01b7

    .line 15
    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p2, Le/a/e/c/k2;->i:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const v0, 0x7f0a01c9

    .line 16
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p2, Le/a/e/c/k2;->j:Landroid/view/View;

    .line 17
    iget-object v0, p2, Le/a/e/c/k2;->i:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p2, Le/a/e/c/k2;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 19
    new-instance v0, Le/a/e/m0$b;

    invoke-direct {v0, p1}, Le/a/e/m0$b;-><init>(Landroid/content/Context;)V

    .line 20
    iput-boolean v1, v0, Le/a/e/m0$b;->b:Z

    const/4 v2, 0x0

    .line 21
    iput-boolean v2, v0, Le/a/e/m0$b;->c:Z

    const/4 v3, 0x6

    .line 22
    iput v3, v0, Le/a/e/m0$b;->e:I

    const/16 v4, 0x10

    .line 23
    iput v4, v0, Le/a/e/m0$b;->f:I

    .line 24
    iput-boolean v1, v0, Le/a/e/m0$b;->d:Z

    .line 25
    invoke-virtual {v0}, Le/a/e/m0$b;->a()Le/a/e/m0;

    move-result-object v0

    iput-object v0, p2, Le/a/e/c/k2;->o:Landroid/graphics/drawable/Drawable;

    .line 26
    new-instance v0, Le/a/e/m0$b;

    invoke-direct {v0, p1}, Le/a/e/m0$b;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v2, v0, Le/a/e/m0$b;->b:Z

    .line 28
    iput-boolean v2, v0, Le/a/e/m0$b;->c:Z

    .line 29
    iput v3, v0, Le/a/e/m0$b;->e:I

    .line 30
    iput v4, v0, Le/a/e/m0$b;->f:I

    .line 31
    iput-boolean v1, v0, Le/a/e/m0$b;->d:Z

    .line 32
    invoke-virtual {v0}, Le/a/e/m0$b;->a()Le/a/e/m0;

    move-result-object v0

    iput-object v0, p2, Le/a/e/c/k2;->p:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object p2, p0, Le/a/e/c2/h0;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 34
    new-instance p3, Le/a/b0/a/b/a;

    new-instance v0, Le/a/p5/i0;

    invoke-direct {v0, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object p3, p0, Le/a/e/c2/h0;->a:Le/a/b0/a/b/a;

    .line 35
    invoke-virtual {p2, p3}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method


# virtual methods
.method public final D1(Lcom/truecaller/data/entity/Contact;ZZZ)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result p2

    .line 2
    move-object v0, p0

    check-cast v0, Le/a/e/c/k2;

    .line 3
    iget-object v1, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Le/a/e/c/k2;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Le/a/e/c/k2;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    :goto_0
    iget-object v1, v0, Le/a/e/c/k2;->i:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v1, v0, Le/a/e/c/k2;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, v0, Le/a/e/c/k2;->d:Landroid/widget/TextView;

    iget-object v4, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 10
    iget v4, v4, Le/a/e/c/y1;->c:I

    .line 11
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object v1, v0, Le/a/e/c/k2;->r:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->J3()Le/a/z2/a;

    move-result-object v1

    invoke-interface {v1, p1}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, v0, Le/a/e/c/k2;->d:Landroid/widget/TextView;

    const v4, 0x7f08041e

    .line 14
    invoke-virtual {v1, v2, v2, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, v0, Le/a/e/c/k2;->d:Landroid/widget/TextView;

    .line 16
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    :goto_1
    if-eqz p4, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 18
    iget-object p4, v0, Le/a/e/c/k2;->l:Landroid/widget/ImageButton;

    invoke-virtual {p4, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 19
    iget-object p4, v0, Le/a/e/c/k2;->l:Landroid/widget/ImageButton;

    iget-object v1, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 20
    iget v1, v1, Le/a/e/c/y1;->c:I

    .line 21
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p4, v1, v4}, Landroid/widget/ImageButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object p4, v0, Le/a/e/c/k2;->l:Landroid/widget/ImageButton;

    invoke-virtual {p4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 23
    :goto_2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p4

    invoke-virtual {p4}, Le/a/b0/g/a;->W()Z

    move-result p4

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v4

    .line 25
    iget-object v5, v0, Le/a/e/c/k2;->e:Landroid/widget/TextView;

    if-lez v4, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    .line 26
    :goto_3
    invoke-static {v5, v6, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    if-lez v4, :cond_5

    .line 27
    iget-object v5, v0, Le/a/e/c/k2;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120039

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 28
    :cond_4
    iget-object v4, v0, Le/a/e/c/k2;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    :cond_5
    :goto_4
    iget-object v4, v0, Le/a/e/c/k2;->r:Le/a/j2;

    invoke-interface {v4}, Le/a/j2;->O()Le/a/g5/p;

    move-result-object v4

    invoke-interface {v4, p1}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 30
    iget-object v5, v0, Le/a/e/c/k2;->h:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 31
    new-instance v5, Lcom/truecaller/common/tag/TagView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2, v1}, Lcom/truecaller/common/tag/TagView;-><init>(Landroid/content/Context;ZZ)V

    .line 32
    invoke-virtual {v5, v4}, Lcom/truecaller/common/tag/TagView;->setTag(Le/a/b0/p/c;)V

    .line 33
    iget-object v4, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 34
    iget-object v4, v4, Le/a/e/c/y1;->e:Ljava/lang/Integer;

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    :cond_6
    iget-object v4, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 37
    iget-object v4, v4, Le/a/e/c/y1;->f:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 38
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/truecaller/common/tag/TagView;->setBackgroundColor(I)V

    .line 39
    :cond_7
    iget-object v4, v0, Le/a/e/c/k2;->h:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    iget-object v4, v0, Le/a/e/c/k2;->h:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 41
    :cond_8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz p4, :cond_9

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v4

    invoke-virtual {v4}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v4

    invoke-interface {v4}, Le/a/b0/c;->H()Le/a/b0/p/d;

    move-result-object v4

    invoke-interface {v4}, Le/a/b0/p/d;->d()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 42
    iget-object v4, v0, Le/a/e/c/k2;->h:Landroid/view/ViewGroup;

    const v5, 0x7f120143

    invoke-virtual {v0, v4, v5}, Le/a/e/c/k2;->a(Landroid/view/ViewGroup;I)V

    :cond_9
    :goto_5
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p3, :cond_c

    .line 43
    iget-object v6, v0, Le/a/e/c/k2;->r:Le/a/j2;

    invoke-interface {v6}, Le/a/j2;->P3()Le/a/l4/c;

    move-result-object v6

    .line 44
    invoke-static {v6, p1}, Le/a/e/a2;->C(Le/a/l4/c;Lcom/truecaller/data/entity/Contact;)Le/a/l4/e;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 45
    iget-object v7, v6, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 46
    invoke-virtual {v7}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v1, :cond_b

    if-eq v7, v4, :cond_a

    goto :goto_7

    .line 47
    :cond_a
    iget-object v1, v0, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    iget-object v7, v0, Le/a/e/c/k2;->p:Landroid/graphics/drawable/Drawable;

    .line 48
    invoke-virtual {v1, v7, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 49
    iget-object v1, v0, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Le/a/l4/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 50
    :cond_b
    iget-object v1, v0, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    iget-object v7, v0, Le/a/e/c/k2;->o:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-virtual {v1, v7, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v1, v0, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Le/a/l4/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    move v1, v2

    goto :goto_8

    :cond_c
    :goto_7
    move v1, v3

    .line 53
    :goto_8
    iget-object v6, v0, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    iget-object v7, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 54
    iget v7, v7, Le/a/e/c/y1;->b:I

    .line 55
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget-object v6, v0, Le/a/e/c/k2;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 58
    iget-object v1, v0, Le/a/e/c/k2;->j:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p4, :cond_e

    .line 60
    iget-object p4, v0, Le/a/e/c/k2;->g:Landroid/view/ViewGroup;

    const v1, 0x7f120142

    invoke-virtual {v0, p4, v1}, Le/a/e/c/k2;->a(Landroid/view/ViewGroup;I)V

    goto :goto_9

    .line 61
    :cond_d
    iget-object p4, v0, Le/a/e/c/k2;->j:Landroid/view/View;

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object p4, v0, Le/a/e/c/k2;->g:Landroid/view/ViewGroup;

    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 63
    :cond_e
    :goto_9
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result p4

    if-eqz p4, :cond_f

    invoke-static {p1, v2}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p4

    if-nez p4, :cond_f

    iget-object p4, v0, Le/a/e/c/k2;->r:Le/a/j2;

    invoke-interface {p4}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object p4

    invoke-interface {p4}, Le/a/l/p2/v0;->H()Z

    move-result p4

    if-nez p4, :cond_f

    .line 64
    iget-object p4, v0, Le/a/e/c/k2;->n:Lcom/truecaller/ui/view/TintedImageView;

    iget-object v1, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 65
    iget v1, v1, Le/a/e/c/y1;->b:I

    .line 66
    invoke-virtual {p4, v1}, Lcom/truecaller/ui/view/TintedImageView;->setTint(I)V

    .line 67
    iget-object p4, v0, Le/a/e/c/k2;->m:Landroid/widget/TextView;

    iget-object v1, v0, Le/a/e/c/k2;->s:Le/a/e/c/y1;

    .line 68
    iget v1, v1, Le/a/e/c/y1;->b:I

    .line 69
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p4, v0, Le/a/e/c/k2;->k:Landroid/view/View;

    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_f
    iget-object p4, p0, Le/a/e/c2/h0;->a:Le/a/b0/a/b/a;

    const/4 v0, 0x6

    .line 72
    invoke-static {p1, p3, v2, v5, v0}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    .line 73
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, v0, v2, v4, v5}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    if-eqz p3, :cond_10

    .line 74
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result p4

    if-eqz p4, :cond_10

    goto :goto_a

    :cond_10
    if-eqz p3, :cond_11

    goto :goto_a

    .line 75
    :cond_11
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result p1

    :cond_12
    :goto_a
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c2/h0;->a:Le/a/b0/a/b/a;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void
.end method
