.class public Lcom/truecaller/sdk/ConfirmProfileActivity;
.super Le/a/v4/s;
.source "SourceFile"

# interfaces
.implements Le/a/v4/w0/d;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final synthetic n:I


# instance fields
.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Landroidx/appcompat/widget/AppCompatTextView;

.field public f:Landroidx/appcompat/widget/AppCompatTextView;

.field public g:Landroidx/appcompat/widget/AppCompatTextView;

.field public h:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public i:Le/a/v4/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Le/a/v4/k;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public k:Le/a/p5/h0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/v4/s;-><init>()V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lcom/airbnb/deeplinkdispatch/DeepLink;
        value = {
            "truecallersdk://truesdk/mweb_verify"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/sdk/ConfirmProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p0, 0x10008000

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public B(Landroid/text/SpannableStringBuilder;)V
    .locals 1

    .line 1
    sget v0, Lcom/truecaller/sdk/R$id;->tcBrandingText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public M3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0}, Le/a/v4/g;->m()V

    return-void
.end method

.method public M5(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Le/a/v4/o0/d;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, v0, Le/a/v4/o0/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeInserted(II)V

    .line 3
    iget-object v1, v0, Le/a/v4/o0/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v0, Le/a/v4/o0/d;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeRemoved(II)V

    .line 5
    :goto_0
    iput v1, v0, Le/a/v4/o0/d;->d:I

    .line 6
    sget v0, Lcom/truecaller/sdk/R$id;->rootView:I

    .line 7
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ln3/g0/s;

    invoke-direct {v1}, Ln3/g0/s;-><init>()V

    new-instance v2, Ln3/g0/c;

    invoke-direct {v2}, Ln3/g0/c;-><init>()V

    sget v3, Lcom/truecaller/sdk/R$id;->ctaContainer:I

    .line 8
    invoke-virtual {v2, v3}, Ln3/g0/m;->b(I)Ln3/g0/m;

    sget v3, Lcom/truecaller/sdk/R$id;->containerView:I

    .line 9
    invoke-virtual {v2, v3}, Ln3/g0/m;->b(I)Ln3/g0/m;

    new-instance v3, Lcom/truecaller/sdk/ConfirmProfileActivity$a;

    invoke-direct {v3, p0, p1}, Lcom/truecaller/sdk/ConfirmProfileActivity$a;-><init>(Lcom/truecaller/sdk/ConfirmProfileActivity;Z)V

    .line 10
    invoke-virtual {v2, v3}, Ln3/g0/m;->a(Ln3/g0/m$d;)Ln3/g0/m;

    .line 11
    invoke-virtual {v1, v2}, Ln3/g0/s;->M(Ln3/g0/m;)Ln3/g0/s;

    const-wide/16 v2, 0x12c

    .line 12
    invoke-virtual {v1, v2, v3}, Ln3/g0/s;->O(J)Ln3/g0/s;

    .line 13
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    return-void
.end method

.method public Q(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public R1(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/truecaller/sdk/R$id;->legalTextDivider:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->f:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->f:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->f:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public S1()V
    .locals 6

    .line 1
    sget v0, Lcom/truecaller/sdk/R$id;->rootView:I

    .line 2
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Ln3/g0/b;

    invoke-direct {v1}, Ln3/g0/b;-><init>()V

    new-instance v2, Lcom/truecaller/sdk/ConfirmProfileActivity$b;

    invoke-direct {v2, p0}, Lcom/truecaller/sdk/ConfirmProfileActivity$b;-><init>(Lcom/truecaller/sdk/ConfirmProfileActivity;)V

    .line 3
    invoke-virtual {v1, v2}, Ln3/g0/s;->L(Ln3/g0/m$d;)Ln3/g0/s;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 5
    sget v0, Lcom/truecaller/sdk/R$id;->inProgressIndicator:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    sget v0, Lcom/truecaller/sdk/R$id;->ctaContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Le/a/v4/o0/d;

    sget v3, Lcom/truecaller/sdk/R$string;->sdkLoggingYouIn:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "inProgressText"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [Le/a/v4/o0/c;

    .line 9
    iget-object v5, v0, Le/a/v4/o0/d;->b:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/v4/o0/c;

    aput-object v5, v4, v1

    .line 10
    new-instance v1, Le/a/v4/o0/a;

    invoke-direct {v1, v3}, Le/a/v4/o0/a;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 11
    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/a/v4/o0/d;->b:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Le/a/v4/o0/d;->d:I

    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 14
    sget v0, Lcom/truecaller/sdk/R$id;->topContainer:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public U1(ILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public U2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->h:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->F(Landroid/net/Uri;)V

    return-void
.end method

.method public U8()Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1
    invoke-static {p0, v0}, Ln3/k/b/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public g0()V
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/sdk/R$id;->profileInfo:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    sget v0, Lcom/truecaller/sdk/R$id;->legalText:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 3
    sget v0, Lcom/truecaller/sdk/R$id;->continueWithDifferentNumber:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    sget v0, Lcom/truecaller/sdk/R$id;->confirm:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    sget v0, Lcom/truecaller/sdk/R$id;->profileImage:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->h:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 6
    iget-object v1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->j:Le/a/v4/k;

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->g:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->k:Le/a/p5/h0;

    sget v1, Lcom/truecaller/sdk/R$drawable;->ic_sdk_arrow_down:I

    sget v2, Lcom/truecaller/sdk/R$attr;->tcx_textPrimary:I

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->l:Landroid/graphics/drawable/Drawable;

    .line 9
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->k:Le/a/p5/h0;

    sget v1, Lcom/truecaller/sdk/R$drawable;->ic_sdk_arrow_up:I

    invoke-interface {v0, v1, v2}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->m:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public g8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->e:Landroidx/appcompat/widget/AppCompatTextView;

    sget p3, Lcom/truecaller/sdk/R$string;->SdkProfileShareTerms:I

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    invoke-virtual {p0, p3, p5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    sget p1, Lcom/truecaller/sdk/R$id;->partnerLoginIntentText:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->g:Landroidx/appcompat/widget/AppCompatTextView;

    sget p2, Lcom/truecaller/sdk/R$string;->SdkProfileContinue:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->f:Landroidx/appcompat/widget/AppCompatTextView;

    sget p2, Lcom/truecaller/sdk/R$string;->SdkContinueWithDifferentNumber:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->e:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->l:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->j:Le/a/v4/k;

    .line 2
    iput-object p1, v0, Le/a/b0/a/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public o3(Lcom/truecaller/android/sdk/TrueProfile;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0, p1}, Le/a/v4/g;->c(Lcom/truecaller/android/sdk/TrueProfile;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0}, Le/a/v4/g;->d()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/truecaller/sdk/R$id;->confirm:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {p1}, Le/a/v4/g;->i()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/truecaller/sdk/R$id;->continueWithDifferentNumber:I

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {p1}, Le/a/v4/g;->e()V

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lcom/truecaller/sdk/R$id;->legalText:I

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {p1}, Le/a/v4/g;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0, p1}, Le/a/v4/g;->f(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {p1, p0}, Le/a/v4/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0}, Le/a/v4/e;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0, p1}, Le/a/v4/g;->j(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0}, Le/a/v4/g;->k()V

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/v4/o0/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/v4/o0/d;

    iget-object v1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->k:Le/a/p5/h0;

    invoke-direct {v0, p0, p1, v1}, Le/a/v4/o0/d;-><init>(Landroid/content/Context;Ljava/util/List;Le/a/p5/h0;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 3
    iget-object p1, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void
.end method

.method public r(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    sget p1, Lcom/truecaller/sdk/R$style;->TrueCaller_Base_Popup_Dark:I

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lcom/truecaller/sdk/R$style;->TrueCaller_Base_Popup_Light:I

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setTheme(I)V

    .line 4
    sget p1, Lcom/truecaller/sdk/R$layout;->activity_confirm_profile:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    return-void
.end method

.method public r4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/ConfirmProfileActivity;->i:Le/a/v4/g;

    invoke-virtual {v0}, Le/a/v4/g;->h()V

    return-void
.end method
