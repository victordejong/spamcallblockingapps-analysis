.class public Lcom/freshchat/consumer/sdk/activity/a;
.super Ln3/b/a/h;
.source "SourceFile"


# instance fields
.field private ly:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/activity/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "freshchatDisableFrame"

    const-string v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "73463f9d-70de-41f8-857a-58590bdd5903"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/e;->getAppKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/aa;->aA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(JJ)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getInstance(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/Freshchat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/Freshchat;->getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public C()V
    .locals 10

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, "Powered by Freshchat"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/freshchat/consumer/sdk/j/af;->h(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x51

    invoke-direct {v2, v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x1020002

    invoke-virtual {p0, v1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/af;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int v9, v1, v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static/range {v4 .. v9}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;Landroid/view/View;IIII)V

    :cond_1
    return-void
.end method

.method public al()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_error_message_token_failed:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/b/i;->a(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->gs()V

    return-void
.end method

.method public bM()Z
    .locals 2

    instance-of v0, p0, Lcom/freshchat/consumer/sdk/activity/CategoryListActivity;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleListActivity;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/freshchat/consumer/sdk/activity/ArticleDetailActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/freshchat/consumer/sdk/activity/ah;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public dH()Z
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/f;->j(Landroid/content/Context;)Ln3/b/a/a;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/b/a/a;->n(Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Ln3/b/a/a;->y(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p1, "Failed to set ActionBar for "

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT_WARNING"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public freshchatOnClickProxy(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ao;->u(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->a(Landroid/view/View;)Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/freshchat/consumer/sdk/FreshchatActionListener;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/freshchat/consumer/sdk/FreshchatActionListener;

    invoke-interface {v0, p1}, Lcom/freshchat/consumer/sdk/FreshchatActionListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->a(Landroid/view/View;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public gs()V
    .locals 1

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gu()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_CREATED_AT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/j/n;->fP()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/a;->ly:J

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->s0(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->onBackPressed()V

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->q0(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Activity "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->gt()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/activity/a;->ly:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/freshchat/consumer/sdk/activity/a;->f(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->iN()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->bM()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/freshchat/consumer/sdk/activity/a;->ly:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/freshchat/consumer/sdk/activity/a;->f(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->isAccountActive()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-wide v0, p0, Lcom/freshchat/consumer/sdk/activity/a;->ly:J

    const-string v2, "EXTRA_CREATED_AT"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->dH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;->onUserInteraction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    :try_start_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->dH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getFreshchatUserInteractionListener()Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/FreshchatUserInteractionListener;->onUserLeaveHint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
