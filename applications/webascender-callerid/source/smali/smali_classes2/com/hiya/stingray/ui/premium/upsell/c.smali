.class public final Lcom/hiya/stingray/ui/premium/upsell/c;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/premium/upsell/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/premium/upsell/c$b;,
        Lcom/hiya/stingray/ui/premium/upsell/c$a;
    }
.end annotation


# static fields
.field public static final w:Lcom/hiya/stingray/ui/premium/upsell/c$a;


# instance fields
.field public l:Lcom/hiya/stingray/ui/premium/upsell/g;

.field public m:Lcom/hiya/stingray/manager/o1;

.field public n:Lcom/hiya/stingray/util/b0;

.field public o:Lcom/hiya/stingray/manager/x3;

.field public p:Lcom/hiya/stingray/ui/premium/upsell/b;

.field public q:Lcom/hiya/stingray/manager/n4;

.field public r:Lcom/hiya/stingray/ui/login/o;

.field private final s:Lcom/hiya/stingray/ui/premium/upsell/i;

.field public t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

.field private u:Z

.field private v:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/premium/upsell/c;->w:Lcom/hiya/stingray/ui/premium/upsell/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/i;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/premium/upsell/i;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->s:Lcom/hiya/stingray/ui/premium/upsell/i;

    return-void
.end method

.method private final j1()V
    .locals 6

    .line 1
    sget v0, Lcom/hiya/stingray/o;->p:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "autoBlockTitle"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    const/4 v2, 0x0

    const-string v3, "remoteConfigManager"

    if-eqz v1, :cond_8

    const-string v4, "premium_upsell_autoblock"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->Q:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "callerIDTitle"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_7

    const-string v4, "premium_upsell_identify"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lcom/hiya/stingray/o;->g2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "lookupTitle"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_6

    const-string v4, "premium_upsell_lookup"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget v0, Lcom/hiya/stingray/o;->d0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "commentsTitle"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_5

    const-string v4, "premium_upsell_comments"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->x:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "blockListTitle"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_4

    const-string v4, "premium_upsell_blocklist"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->r2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "monthlyButtonTop"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_3

    const-string v4, "premium_upsell_monthly_button_top"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->i:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "annualButtonTop"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_2

    const-string v4, "premium_upsell_annual_button_top"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->s2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "monthlyPrice"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v4, :cond_1

    const-string v5, "premium_monthly_price"

    invoke-virtual {v4, v5}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f1102a2

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->j:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "annualPrice"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v5, :cond_0

    const-string v2, "premium_annual_price"

    invoke-virtual {v5, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 13
    :cond_4
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_5
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_6
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_7
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_8
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final k1()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    const-string v1, "source"

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    sget-object v3, Lcom/hiya/stingray/ui/premium/upsell/c$b;->TAB:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    const-string v4, "getString(R.string.view_tag_feature_line)"

    const v5, 0x7f110413

    const-string v6, "getString(R.string.view_tag_feature_title)"

    const v7, 0x7f110414

    const v8, 0x7f06019a

    const-string v9, "monthlyButton"

    const-string v10, "close"

    const/4 v11, 0x0

    const-string v12, "background"

    if-ne v0, v3, :cond_b

    .line 2
    sget v0, Lcom/hiya/stingray/o;->r:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13, v8}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 3
    sget v3, Lcom/hiya/stingray/o;->b0:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-static {v3, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4
    sget v3, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v8, 0x7f080207

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    sget v3, Lcom/hiya/stingray/o;->j4:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_9

    const v13, 0x7f060165

    .line 7
    invoke-static {v8, v13}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v8

    .line 8
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    sget v3, Lcom/hiya/stingray/o;->p2:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v3, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080203

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    sget v3, Lcom/hiya/stingray/o;->m1:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_8

    const v9, 0x7f06015e

    .line 12
    invoke-static {v8, v9}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v8

    .line 13
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_7

    const v8, 0x7f06015f

    invoke-static {v3, v8}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v3

    .line 15
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/hiya/stingray/util/e0;->f(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 17
    instance-of v7, v6, Landroid/widget/TextView;

    if-nez v7, :cond_1

    move-object v6, v2

    :cond_1
    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_2

    const v8, 0x7f06015c

    .line 19
    invoke-static {v7, v8}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v7

    .line 20
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 21
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 22
    :cond_3
    sget v0, Lcom/hiya/stingray/o;->r:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/hiya/stingray/util/e0;->f(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    const v6, 0x7f06015a

    .line 25
    invoke-static {v5, v6}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v5

    .line 26
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 28
    :cond_5
    sget v0, Lcom/hiya/stingray/o;->q3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    const v5, 0x7f06002a

    invoke-static {v4, v5}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_5

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 29
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 30
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 31
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 32
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 33
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0, v11}, Lcom/hiya/stingray/util/e0;->D(Landroid/app/Activity;Z)V

    .line 34
    :cond_c
    sget v0, Lcom/hiya/stingray/o;->r:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v13, 0x7f0801ff

    invoke-virtual {v3, v13, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    sget v0, Lcom/hiya/stingray/o;->b0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {v0, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 36
    sget v0, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f080206

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    sget v0, Lcom/hiya/stingray/o;->j4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1e

    const v13, 0x7f060164

    .line 39
    invoke-static {v3, v13}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v3

    .line 40
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    sget v0, Lcom/hiya/stingray/o;->p2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-static {v3, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080200

    invoke-virtual {v13, v14, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Landroid/widget/TextView;

    invoke-static {v0, v3}, Lcom/hiya/stingray/util/e0;->e(Landroid/view/View;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_d

    const v13, 0x7f060158

    .line 45
    invoke-static {v9, v13}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v9

    .line 46
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 47
    :cond_d
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 48
    :cond_e
    sget v0, Lcom/hiya/stingray/o;->g:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v3, "annualButton"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f080201

    invoke-virtual {v3, v9, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    sget v0, Lcom/hiya/stingray/o;->m1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1d

    const v9, 0x7f06015d

    invoke-static {v3, v9}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static {v0, v8}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v3

    .line 51
    sget v0, Lcom/hiya/stingray/o;->r:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/hiya/stingray/util/e0;->f(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 53
    instance-of v7, v6, Landroid/widget/TextView;

    if-nez v7, :cond_10

    move-object v6, v2

    :cond_10
    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_f

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_11

    const v8, 0x7f06015b

    .line 55
    invoke-static {v7, v8}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v7

    .line 56
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 57
    :cond_11
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 58
    :cond_12
    sget v0, Lcom/hiya/stingray/o;->r:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-static {v0, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/hiya/stingray/util/e0;->f(Landroid/view/View;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_13

    const v6, 0x7f060159

    .line 61
    invoke-static {v5, v6}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v5

    .line 62
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    .line 63
    :cond_13
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 64
    :cond_14
    sget v0, Lcom/hiya/stingray/o;->q3:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-static {v4, v9}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 65
    :goto_5
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-eqz v0, :cond_1a

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PAYWALL:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    .line 66
    :goto_6
    sget v1, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v4, "title"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 67
    sget v1, Lcom/hiya/stingray/o;->v1:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, "header"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v0}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 68
    sget v4, Lcom/hiya/stingray/o;->b0:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-static {v4, v10}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    if-eqz v0, :cond_17

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_16

    const v4, 0x7f060162

    invoke-static {v0, v4}, Lcom/hiya/stingray/util/e0;->p(Landroid/app/Activity;I)V

    .line 70
    :cond_16
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/premium/upsell/c$n;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$n;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_17
    new-instance v0, Lkotlin/c0/j;

    const-string v1, "\\|.*\\|"

    invoke-direct {v0, v1}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/hiya/stingray/o;->m1:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, "footer"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v6, "footer.text"

    invoke-static {v4, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-static {v0, v4, v11, v7, v2}, Lkotlin/c0/j;->b(Lkotlin/c0/j;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/c0/h;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 72
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v7, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {v0}, Lkotlin/c0/h;->b()Lkotlin/z/c;

    move-result-object v8

    .line 74
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {v9, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/c0/h;->b()Lkotlin/z/c;

    move-result-object v6

    invoke-static {v9, v6}, Lkotlin/c0/m;->w0(Ljava/lang/CharSequence;Lkotlin/z/c;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "|"

    const-string v11, ""

    invoke-static/range {v9 .. v14}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {v7, v8, v6}, Lkotlin/c0/m;->m0(Ljava/lang/CharSequence;Lkotlin/z/c;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/c0/h;->b()Lkotlin/z/c;

    move-result-object v0

    .line 77
    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v4, :cond_18

    const-string v2, "settings_terms_of_use_url"

    invoke-virtual {v4, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v4, Lcom/hiya/stingray/ui/premium/upsell/c$m;

    invoke-direct {v4, p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c$m;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;I)V

    .line 79
    invoke-static {v1, v0, v2, v3, v4}, Lcom/hiya/stingray/util/e0;->l(Landroid/widget/TextView;Lkotlin/z/c;Ljava/lang/String;ILkotlin/w/b/l;)V

    goto :goto_7

    :cond_18
    const-string v0, "remoteConfigManager"

    .line 80
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_7
    return-void

    .line 81
    :cond_1a
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 83
    :cond_1c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 84
    :cond_1d
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 85
    :cond_1e
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 86
    :cond_1f
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public B()Lcom/hiya/stingray/ui/premium/upsell/h$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PROMO_LINK:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/h$b;->UPSELL_PROMO:Lcom/hiya/stingray/ui/premium/upsell/h$b;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/h$b;->UPSELL:Lcom/hiya/stingray/ui/premium/upsell/h$b;

    return-object v0

    :cond_1
    const-string v0, "source"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public T0(Lcom/hiya/stingray/t/e0;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->n:Lcom/hiya/stingray/util/b0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/i2$b;

    .line 3
    sget-object v2, Lcom/hiya/stingray/manager/i2$a;->LOOKUP:Lcom/hiya/stingray/manager/i2$a;

    .line 4
    sget-object v3, Lcom/hiya/stingray/manager/i2$b$a;->PHONE_NUMBER:Lcom/hiya/stingray/manager/i2$b$a;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/e0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    .line 5
    invoke-direct {v1, v2, p1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "sticky"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public U()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public W(Lcom/hiya/stingray/manager/u3$i;Lcom/hiya/stingray/manager/u3$i;Z)V
    .locals 11

    const-string v0, "monthly"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annual"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/stingray/o;->s2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "monthlyPrice"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->f()Z

    move-result v1

    const-string v2, "context!!"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/manager/u3$i;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/manager/u3$i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->j:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "annualPrice"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/manager/u3$i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "annualButtonBottom"

    const v0, 0x7f1102c6

    const-string v1, "monthlyButtonBottom"

    const-string v4, "subtitle"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "remoteConfigManager"

    if-nez p3, :cond_8

    .line 3
    sget v8, Lcom/hiya/stingray/o;->j4:I

    invoke-virtual {p0, v8}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {v8, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v4, :cond_7

    const-string v9, "premium_upsell_subtitle_expired"

    invoke-virtual {v4, v9}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget v4, Lcom/hiya/stingray/o;->q2:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {v9, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lcom/hiya/stingray/manager/u3$i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v5

    invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz p1, :cond_6

    const-string v0, "premium_upsell_monthly_button_bottom_expired"

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_1
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->h:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz p2, :cond_5

    const-string v0, "premium_upsell_annual_button_bottom_expired"

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {v7}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_6
    invoke-static {v7}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_7
    invoke-static {v7}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 10
    :cond_8
    iget-object v8, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v8, :cond_11

    const-string v9, "premium_upsell_subtitle"

    invoke-virtual {v8, v9}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 11
    sget v9, Lcom/hiya/stingray/o;->j4:I

    invoke-virtual {p0, v9}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {v9, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/w/c/t;->a:Lkotlin/w/c/t;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Lcom/hiya/stingray/ui/premium/upsell/g;->z()Lcom/hiya/stingray/manager/u3$p;

    move-result-object v10

    invoke-virtual {v10}, Lcom/hiya/stingray/manager/u3$p;->getTrialLengthDays()Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "java.lang.String.format(format, *args)"

    invoke-static {v4, v8}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget v4, Lcom/hiya/stingray/o;->q2:I

    invoke-virtual {p0, v4}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {v4, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3$i;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_a

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-static {v9, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Lcom/hiya/stingray/manager/u3$i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v5

    invoke-virtual {v1, v0, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 13
    :cond_b
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz p1, :cond_f

    const-string v0, "premium_upsell_monthly_button_bottom"

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_2
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget p1, Lcom/hiya/stingray/o;->h:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz p2, :cond_e

    const-string v0, "premium_upsell_annual_button_bottom"

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_3
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->u:Z

    if-nez p1, :cond_d

    .line 17
    iput-boolean v6, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->u:Z

    .line 18
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->p:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz p1, :cond_c

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/ui/premium/upsell/b;->h(Z)V

    goto :goto_4

    :cond_c
    const-string p1, "analytics"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    :cond_d
    :goto_4
    return-void

    .line 19
    :cond_e
    invoke-static {v7}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_f
    invoke-static {v7}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    :cond_10
    const-string p1, "presenter"

    .line 21
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_11
    invoke-static {v7}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v3

    .line 23
    :cond_12
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 24
    :cond_13
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3
.end method

.method public W0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/hiya/stingray/ui/premium/upsell/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->n:Lcom/hiya/stingray/util/b0;

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lcom/hiya/stingray/manager/i2$b;

    .line 8
    sget-object v2, Lcom/hiya/stingray/manager/i2$a;->PREMIUM_INFO:Lcom/hiya/stingray/manager/i2$a;

    .line 9
    sget-object v3, Lcom/hiya/stingray/manager/i2$b$a;->SHOW_AUTO_BLOCKING_SETTINGS:Lcom/hiya/stingray/manager/i2$b$a;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    invoke-static {v3}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v3

    .line 10
    invoke-direct {v1, v2, v3}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;)V

    .line 11
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/hiya/stingray/ui/local/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v0, "sticky"

    .line 13
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :pswitch_3
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->B()V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "presenter"

    .line 16
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 18
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 19
    :pswitch_6
    sget-object v0, Lcom/hiya/stingray/ui/local/MainActivity;->R:Lcom/hiya/stingray/ui/local/MainActivity$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "context!!"

    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/local/MainActivity$a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 20
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, "source"

    .line 21
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z0()V
    .locals 1

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->v:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/hiya/stingray/o;->W1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "loadingView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v6, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v0, 0x7f1102c0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    .line 4
    invoke-virtual {v6}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public f1(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->v:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->v:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->v:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->v:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hiya/stingray/ui/premium/upsell/h$a;->a(Lcom/hiya/stingray/ui/premium/upsell/h;)V

    return-void
.end method

.method public g0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->s:Lcom/hiya/stingray/ui/premium/upsell/i;

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/i;->b(Landroidx/fragment/app/Fragment;Lcom/hiya/stingray/ui/premium/upsell/g;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final g1()Lcom/hiya/stingray/ui/premium/upsell/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->p:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final h1()Lcom/hiya/stingray/ui/premium/upsell/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public i()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/appcompat/app/b$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {v6, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v0, 0x7f1102a9

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {v6}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final i1()Lcom/hiya/stingray/manager/n4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->q:Lcom/hiya/stingray/manager/n4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "zenDeskManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->r:Lcom/hiya/stingray/ui/login/o;

    const-string v1, "permissionHandler"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hiya/stingray/ui/login/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->p:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/b;->f()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->r:Lcom/hiya/stingray/ui/login/o;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->r:Lcom/hiya/stingray/ui/login/o;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/login/o;->c()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1773

    .line 6
    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 9
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "analytics"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->H()V

    :goto_0
    return-void

    :cond_5
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const-string v1, "presenter"

    const/16 v2, 0x1f47

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/premium/upsell/g;->E()V

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->s:Lcom/hiya/stingray/ui/premium/upsell/i;

    iget-object v3, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/hiya/stingray/ui/premium/upsell/i;->a(IILandroid/content/Intent;Lcom/hiya/stingray/ui/premium/upsell/g;)V

    return-void

    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->f(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0c008e

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/premium/upsell/g;->O(Z)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onDestroyView()V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/c;->Z0()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->o()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->r:Lcom/hiya/stingray/ui/login/o;

    if-eqz v1, :cond_0

    .line 2
    new-instance v6, Lcom/hiya/stingray/ui/premium/upsell/c$c;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$c;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/hiya/stingray/ui/login/o;->e(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;[ILcom/hiya/stingray/ui/login/o$a;)V

    return-void

    :cond_0
    const-string p1, "permissionHandler"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/g;->p()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    sget-object p1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->DEFAULT:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    :goto_1
    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->p:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz v0, :cond_a

    const-string v1, "source"

    if-eqz p1, :cond_9

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/premium/upsell/b;->i(Lcom/hiya/stingray/ui/premium/upsell/c$b;)V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/c;->k1()V

    .line 6
    sget p1, Lcom/hiya/stingray/o;->b0:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/c$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$d;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->g:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/hiya/stingray/ui/premium/upsell/c$e;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$e;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->p2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/hiya/stingray/ui/premium/upsell/c$f;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$f;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget v2, Lcom/hiya/stingray/o;->q3:I

    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/hiya/stingray/ui/premium/upsell/c$g;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$g;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v3, Lcom/hiya/stingray/o;->w1:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    new-instance v4, Lcom/hiya/stingray/ui/premium/upsell/c$h;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$h;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget v3, Lcom/hiya/stingray/o;->s2:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "monthlyPrice"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    const-string v6, "remoteConfigManager"

    if-eqz v5, :cond_8

    const-string v7, "premium_monthly_price"

    invoke-virtual {v5, v7}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1102a2

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget v3, Lcom/hiya/stingray/o;->j:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "annualPrice"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->o:Lcom/hiya/stingray/manager/x3;

    if-eqz v7, :cond_7

    const-string v6, "premium_annual_price"

    invoke-virtual {v7, v6}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    sget v3, Lcom/hiya/stingray/o;->c0:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v4, "commentsFeature"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 14
    sget v3, Lcom/hiya/stingray/o;->u:I

    invoke-virtual {p0, v3}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v4, "blockListFeature"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->t:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    if-eqz v4, :cond_6

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PAYWALL:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    const/4 v5, 0x0

    if-ne v4, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v3, v1}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    .line 15
    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->l:Lcom/hiya/stingray/ui/premium/upsell/g;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Lcom/hiya/stingray/ui/common/k;->s(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Lcom/hiya/stingray/ui/premium/upsell/c$l;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$l;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/hiya/stingray/ui/premium/upsell/c$i;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/ui/premium/upsell/c$i;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;Lkotlin/w/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/hiya/stingray/ui/premium/upsell/c$j;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/premium/upsell/c$j;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;Lkotlin/w/b/l;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 20
    invoke-virtual {p0, v2}, Lcom/hiya/stingray/ui/premium/upsell/c;->f1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/hiya/stingray/ui/premium/upsell/c$k;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/premium/upsell/c$k;-><init>(Lcom/hiya/stingray/ui/premium/upsell/c;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 21
    :cond_4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/premium/upsell/c;->j1()V

    .line 22
    invoke-virtual {p0, v5}, Lcom/hiya/stingray/ui/premium/upsell/c;->b(Z)V

    return-void

    :cond_5
    const-string p1, "presenter"

    .line 23
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 24
    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 25
    :cond_7
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 26
    :cond_8
    invoke-static {v6}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    .line 27
    :cond_9
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2

    :cond_a
    const-string p1, "analytics"

    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public y0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/c;->p:Lcom/hiya/stingray/ui/premium/upsell/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
