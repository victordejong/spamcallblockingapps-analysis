.class public final Lcom/hiya/stingray/ui/t/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public f:Lcom/hiya/stingray/manager/x3;

.field public g:Lcom/hiya/stingray/ui/t/c;

.field public h:Lcom/hiya/stingray/manager/u2;

.field public i:Lcom/hiya/stingray/manager/n4;

.field private j:Ljava/lang/String;

.field private final k:Lcom/hiya/stingray/manager/u2$b;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/u2$b;Landroid/content/Context;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/t/a;->k:Lcom/hiya/stingray/manager/u2$b;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/ui/t/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/t/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/ui/t/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->k()Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->l()V

    return-void
.end method

.method public static final synthetic d(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->m()V

    return-void
.end method

.method public static final synthetic e(Lcom/hiya/stingray/ui/t/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/t/a;->j:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic f(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->o()V

    return-void
.end method

.method public static final synthetic g(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->p()V

    return-void
.end method

.method public static final synthetic h(Lcom/hiya/stingray/ui/t/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->q()V

    return-void
.end method

.method private final k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v0, :cond_0

    const-string v1, "feedback_enable_share_app"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->j(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "remoteConfigManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final l()V
    .locals 5

    const-string v0, "android.intent.action.VIEW"

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/t/c;->d()V

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    new-instance v1, Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 7
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_0
    const/high16 v0, 0x48080000    # 139264.0f

    .line 8
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "analytics"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/hiya/stingray/ui/t/a;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/t/c;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->i:Lcom/hiya/stingray/manager/n4;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/hiya/stingray/manager/n4$a;->FEEDBACK:Lcom/hiya/stingray/manager/n4$a;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/n4;->b(Landroid/content/Context;Lcom/hiya/stingray/manager/n4$a;)Lzendesk/support/request/RequestUiConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lzendesk/commonui/p;

    invoke-virtual {v0, v1, v2}, Lzendesk/support/request/RequestUiConfig$Builder;->show(Landroid/content/Context;[Lzendesk/commonui/p;)V

    return-void

    :cond_0
    const-string v0, "zenDeskManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_2
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final n()V
    .locals 9

    .line 1
    sget v0, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "title"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    const/4 v2, 0x0

    const-string v3, "remoteConfigManager"

    if-eqz v1, :cond_3

    const-string v4, "feedback_dialog_title"

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->D2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v4, "ok"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v5, :cond_2

    const-string v6, "feedback_dialog_ok"

    invoke-virtual {v5, v6}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v1, Lcom/hiya/stingray/o;->B2:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v5, "notNow"

    invoke-static {v1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v6, :cond_1

    const-string v2, "feedback_dialog_not_now"

    invoke-virtual {v6, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/view/View;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget v0, Lcom/hiya/stingray/o;->Q3:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v0, v2, v6

    const/4 v0, 0x2

    sget v6, Lcom/hiya/stingray/o;->g4:I

    invoke-virtual {p0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    aput-object v6, v2, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v0, v1, :cond_0

    .line 5
    aget-object v7, v2, v0

    const-string v8, "it"

    .line 6
    invoke-static {v7, v8}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->D2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->B2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v1, v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 9
    :cond_1
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_2
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final o()V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 1
    sget v2, Lcom/hiya/stingray/o;->I:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/hiya/stingray/o;->Q3:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/hiya/stingray/o;->g4:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v4, v1, v2

    const-string v5, "it"

    .line 3
    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->d1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "faces"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->D2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->B2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "notNow"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    sget v1, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "title"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    const-string v4, "remoteConfigManager"

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    const-string v6, "feedback_dialog_negative_title"

    invoke-virtual {v3, v6}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    sget v1, Lcom/hiya/stingray/o;->g4:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "subTitle"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v3, :cond_5

    const-string v6, "feedback_dialog_negative_subtitle"

    invoke-virtual {v3, v6}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_4

    const-string v2, "feedback_dialog_dismiss"

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget v0, Lcom/hiya/stingray/o;->Q3:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/hiya/stingray/ui/t/a;->j:Ljava/lang/String;

    const-string v3, "meh"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f080143

    goto :goto_1

    :cond_1
    const v2, 0x7f080145

    .line 12
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hiya/stingray/ui/t/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/t/c;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v5

    :cond_3
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 14
    :cond_4
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 15
    :cond_5
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5

    .line 16
    :cond_6
    invoke-static {v4}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v5
.end method

.method private final p()V
    .locals 8

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 1
    sget v2, Lcom/hiya/stingray/o;->I:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/hiya/stingray/o;->Q3:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/hiya/stingray/o;->g4:I

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v4, v1, v2

    const-string v5, "it"

    .line 3
    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->d1:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "faces"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->D2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6
    sget v0, Lcom/hiya/stingray/o;->B2:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "notNow"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->k()Z

    move-result v1

    const-string v3, "subTitle"

    const-string v4, "title"

    const-string v5, "remoteConfigManager"

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 8
    sget v1, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v4, :cond_2

    const-string v7, "feedback_share_app_title"

    invoke-virtual {v4, v7}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v1, Lcom/hiya/stingray/o;->g4:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v3, :cond_1

    const-string v4, "feedback_share_app_desc"

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v6

    .line 10
    :cond_2
    invoke-static {v5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v6

    .line 11
    :cond_3
    sget v1, Lcom/hiya/stingray/o;->w4:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v4, :cond_7

    const-string v7, "feedback_dialog_positive_title"

    invoke-virtual {v4, v7}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    sget v1, Lcom/hiya/stingray/o;->g4:I

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v3, :cond_6

    const-string v4, "feedback_dialog_positive_subtitle"

    invoke-virtual {v3, v4}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/t/a;->f:Lcom/hiya/stingray/manager/x3;

    if-eqz v1, :cond_5

    const-string v2, "feedback_dialog_dismiss"

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    sget v0, Lcom/hiya/stingray/o;->Q3:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080141

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    if-eqz v0, :cond_4

    const-string v1, "happy"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/t/c;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v6

    .line 16
    :cond_5
    invoke-static {v5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v6

    .line 17
    :cond_6
    invoke-static {v5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v6

    .line 18
    :cond_7
    invoke-static {v5}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v6
.end method

.method private final q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1103bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/u;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final i()Lcom/hiya/stingray/ui/t/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Lcom/hiya/stingray/manager/u2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->h:Lcom/hiya/stingray/manager/u2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "feedbackManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0070

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/s/a;->b(Landroid/content/Context;)Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->H(Lcom/hiya/stingray/ui/t/a;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->k:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/t/c;->f(Lcom/hiya/stingray/manager/u2$b;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/t/a;->n()V

    .line 8
    sget p1, Lcom/hiya/stingray/o;->s3:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lcom/hiya/stingray/ui/t/a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/t/a$a;-><init>(Lcom/hiya/stingray/ui/t/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    sget p1, Lcom/hiya/stingray/o;->o2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lcom/hiya/stingray/ui/t/a$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/t/a$b;-><init>(Lcom/hiya/stingray/ui/t/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget p1, Lcom/hiya/stingray/o;->u1:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v0, Lcom/hiya/stingray/ui/t/a$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/t/a$c;-><init>(Lcom/hiya/stingray/ui/t/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    sget p1, Lcom/hiya/stingray/o;->B2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/hiya/stingray/ui/t/a$d;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/t/a$d;-><init>(Lcom/hiya/stingray/ui/t/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    sget p1, Lcom/hiya/stingray/o;->D2:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/hiya/stingray/ui/t/a$e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/t/a$e;-><init>(Lcom/hiya/stingray/ui/t/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const-string p1, "analytics"

    .line 13
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/t/a;->g:Lcom/hiya/stingray/ui/t/c;

    if-eqz v0, :cond_0

    const-string v1, "faces"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/t/c;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
