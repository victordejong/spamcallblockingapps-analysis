.class public Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;
.super Lcom/freshchat/consumer/sdk/activity/ah;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/activity/c$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/freshchat/consumer/sdk/activity/ah<",
        "Lcom/freshchat/consumer/sdk/k/y;",
        ">;",
        "Lcom/freshchat/consumer/sdk/activity/c$b;"
    }
.end annotation


# instance fields
.field private final C:Landroid/webkit/WebViewClient;

.field private iB:Landroid/widget/TextView;

.field private ji:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private pH:Lcom/freshchat/consumer/sdk/activity/c;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/ah;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->x:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/bi;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/bi;-><init>(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->C:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;)Lcom/freshchat/consumer/sdk/activity/c;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->a(Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/y;->c(Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_bot_faq_feedback_success:I

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void
.end method

.method private hH()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/y;->jv()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    return-void
.end method

.method private iG()V
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/R$string;->freshchat_faq_failed_to_load:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void
.end method

.method private m()V
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_up:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->b(Landroid/view/View;)V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->f(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/freshchat/consumer/sdk/R$anim;->freshchat_slide_down:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/a;->f()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/a;->A()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/bk;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/bk;-><init>(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.freshchat.consumer.sdk.actions.BotFAQFetched"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/freshchat/consumer/sdk/k/y;->g(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/y;->jm()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.TokenWaitTimeout"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/y;->jw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dh()V
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/k/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/y;->h(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/y;->j(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->iG()V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->m()V

    return-void
.end method

.method public hP()V
    .locals 7

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/y;->jx()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->ERROR:Lcom/freshchat/consumer/sdk/service/Status;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->a(Lcom/freshchat/consumer/sdk/service/Status;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/activity/ah;->i(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/y;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->iB:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->iB:Landroid/widget/TextView;

    new-instance v3, Lcom/freshchat/consumer/sdk/activity/bg;

    invoke-direct {v3, p0, v1}, Lcom/freshchat/consumer/sdk/activity/bg;-><init>(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->ji:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->ji:Landroid/widget/TextView;

    new-instance v2, Lcom/freshchat/consumer/sdk/activity/bh;

    invoke-direct {v2, p0, v0}, Lcom/freshchat/consumer/sdk/activity/bh;-><init>(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->ji:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public hV()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/y;->hV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n()V

    return-void
.end method

.method public ie()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->hH()V

    return-void
.end method

.method public if()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    return-object v0
.end method

.method public ig()[Ljava/lang/String;
    .locals 1

    const-string v0, "com.freshchat.consumer.sdk.actions.BotFAQFetched"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 2

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->x:Z

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->q()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->s()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->x:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->x:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->s()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/ah;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_activity_bot_faq_details:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setContentView(I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->u()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast p1, Lcom/freshchat/consumer/sdk/k/y;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/y;->kc()V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->hH()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->onDestroy()V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/activity/c;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/c;->aA()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Ln3/b/a/h;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/b;->onPause()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->onResume()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->eS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/aw;->fc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method public u()V
    .locals 3

    invoke-super {p0}, Lcom/freshchat/consumer/sdk/activity/ah;->u()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Lcom/freshchat/consumer/sdk/activity/c;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/activity/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->C:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    const/16 v2, 0x55

    invoke-virtual {v1, p0, v2}, Lcom/freshchat/consumer/sdk/activity/c;->a(Lcom/freshchat/consumer/sdk/activity/c$b;I)V

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_voting_view:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->n:Landroid/view/View;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_downvote:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->iB:Landroid/widget/TextView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_upvote:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->ji:Landroid/widget/TextView;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_bot_faq_root_layout:I

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->pH:Lcom/freshchat/consumer/sdk/activity/c;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/activity/c;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
