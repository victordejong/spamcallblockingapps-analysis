.class public Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;
.super Lcom/freshchat/consumer/sdk/activity/b;
.source "SourceFile"


# instance fields
.field private an:Lcom/freshchat/consumer/sdk/ConversationOptions;

.field public bM:Ln3/w/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/a/a$a<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public bN:Ln3/w/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/a/a$a<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public bO:Ln3/w/a/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/w/a/a$a<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/freshchat/consumer/sdk/FaqOptions;

.field private qM:Z

.field private qN:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/b;-><init>()V

    new-instance v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    new-instance v0, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/ConversationOptions;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->qM:Z

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity$1;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity$1;-><init>(Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->bM:Ln3/w/a/a$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity$2;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity$2;-><init>(Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->bN:Ln3/w/a/a$a;

    new-instance v0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity$3;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity$3;-><init>(Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->bO:Ln3/w/a/a$a;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/v;->w(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void
.end method

.method private aC()V
    .locals 7

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->qM:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln3/b/a/h;->getSupportActionBar()Ln3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b/a/a;->f()V

    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v4, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->qM:Z

    return-void
.end method

.method private aD()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/v;->eu()V

    :goto_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/y;->cp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/v;->iY()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/FaqOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aC()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TAGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->ARTICLE:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportLoaderManager()Ln3/w/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->bN:Ln3/w/a/a$a;

    :goto_1
    invoke-virtual {v0, v3, v1, v2}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/FaqOptions;->getFilterType()Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    move-result-object v0

    sget-object v2, Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;->CATEGORY:Lcom/freshchat/consumer/sdk/FaqOptions$FilterType;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportLoaderManager()Ln3/w/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->bM:Ln3/w/a/a$a;

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private aE()V
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aF()Lcom/freshchat/consumer/sdk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/m;->eu()V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/ConversationOptions;->getTags()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aC()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "TAGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Ln3/r/a/l;->getSupportLoaderManager()Ln3/w/a/a;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->bO:Ln3/w/a/a$a;

    invoke-virtual {v0, v2, v1, v3}, Ln3/w/a/a;->d(ILandroid/os/Bundle;Ln3/w/a/a$a;)Ln3/w/b/b;

    return-void
.end method

.method private aF()Lcom/freshchat/consumer/sdk/j/m;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/ConversationOptions;)Lcom/freshchat/consumer/sdk/j/m;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->r()Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/v;->x(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->c(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Channel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aF()Lcom/freshchat/consumer/sdk/j/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/j/m;->u(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/b;->finish()V

    return-void
.end method

.method private r()Lcom/freshchat/consumer/sdk/j/v;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {p0, v0}, Lcom/freshchat/consumer/sdk/j/aa;->a(Landroid/content/Context;Lcom/freshchat/consumer/sdk/FaqOptions;)Lcom/freshchat/consumer/sdk/j/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.freshchat.consumer.sdk.actions.RemoteConfigUpdated"

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aD()V

    :cond_0
    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->qN:Z

    if-eqz v0, :cond_0

    const-string v0, "com.freshchat.consumer.sdk.actions.RemoteConfigUpdated"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/freshchat/consumer/sdk/activity/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTIONS_TYPE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/u;->d(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/FaqOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->g:Lcom/freshchat/consumer/sdk/FaqOptions;

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/ap;->aZ(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->qN:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/b;->L(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aC()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aD()V

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/l;->c(Landroid/os/Bundle;)Lcom/freshchat/consumer/sdk/ConversationOptions;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->an:Lcom/freshchat/consumer/sdk/ConversationOptions;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/activity/InterstitialActivity;->aE()V

    :cond_2
    return-void
.end method
