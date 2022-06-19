.class public abstract Lcom/freshchat/consumer/sdk/activity/ah;
.super Lcom/freshchat/consumer/sdk/activity/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/freshchat/consumer/sdk/k/n;",
        ">",
        "Lcom/freshchat/consumer/sdk/activity/b;"
    }
.end annotation


# instance fields
.field private Q:Landroid/view/View;

.field private eS:Landroid/view/ViewStub;

.field private eV:Landroid/view/View;

.field private gK:Landroid/view/View;

.field private lG:Landroid/view/View;

.field private lO:Landroidx/appcompat/widget/AppCompatImageView;

.field private mt:Landroidx/appcompat/widget/AppCompatImageView;

.field private oT:Landroidx/appcompat/widget/AppCompatImageView;

.field private pd:Landroid/widget/TextView;

.field public pe:Lcom/freshchat/consumer/sdk/k/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private pg:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/aj;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/aj;-><init>(Lcom/freshchat/consumer/sdk/activity/ah;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pg:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private iz()V
    .locals 5

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->ig()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->ig()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->D()Ln3/x/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pg:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public U(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    sget p1, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_error_image_height_landscape:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/aq;->o(Landroid/content/Context;I)I

    move-result v0

    sget p1, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_error_image_width_landscape:I

    invoke-static {p0, p1}, Lcom/freshchat/consumer/sdk/j/aq;->o(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->lO:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->mt:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->oT:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v1, v0, p1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/view/View;II)V

    return-void
.end method

.method public a(Lcom/freshchat/consumer/sdk/service/Status;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/activity/ak;->pi:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->lG:Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->hV()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->bv(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->hP()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->gK:Landroid/view/View;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->eV:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->h(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public a(ZLandroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->eS:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bv(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->Q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->h(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pd:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract dA()Ljava/lang/String;
.end method

.method public abstract dh()V
.end method

.method public h(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->eV:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->gK:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->lG:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->if()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->Q:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public abstract hP()V
.end method

.method public abstract hV()Ljava/lang/String;
.end method

.method public i(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->h(Landroid/view/View;)V

    return-void
.end method

.method public abstract ie()V
.end method

.method public abstract if()Landroid/view/View;
.end method

.method public abstract ig()[Ljava/lang/String;
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Ln3/b/a/h;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->U(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->iz()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->dh()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->ig()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->D()Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pg:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_menu_item_search_faq:I

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/n;->jh()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onResume()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/n;->jf()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    return-void
.end method

.method public u()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->dA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/a;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->C()V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_contact_us_stub:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->eS:Landroid/view/ViewStub;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->faq_loading:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->eV:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->faq_no_internet:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->gK:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->faq_error:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->lG:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->faq_empty:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->Q:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->faq_empty_description:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pd:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->faq_retry:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_empty_image:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->oT:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_no_internet_image:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->mt:Landroidx/appcompat/widget/AppCompatImageView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_error_image:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->lO:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/ai;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/ai;-><init>(Lcom/freshchat/consumer/sdk/activity/ah;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->U(I)V

    return-void
.end method
