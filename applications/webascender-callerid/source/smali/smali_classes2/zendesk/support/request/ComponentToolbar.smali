.class Lzendesk/support/request/ComponentToolbar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ComponentToolbar$ToolbarSelector;,
        Lzendesk/support/request/ComponentToolbar$ToolbarModel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt/a/k<",
        "Lzendesk/support/request/ComponentToolbar$ToolbarModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final avatarContainer:Lzendesk/support/request/ViewToolbarAvatar;

.field private final container:Landroid/view/View;

.field private final context:Landroid/content/Context;

.field private final fadeTransition:Lf/v/d;

.field private final picasso:Lg/i/a/d;

.field private final progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

.field private final subTitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;

.field private final toolbar:Landroidx/appcompat/widget/Toolbar;

.field private toolbarModel:Lzendesk/support/request/ComponentToolbar$ToolbarModel;

.field private final toolbarSelector:Lzendesk/support/request/ComponentToolbar$ToolbarSelector;


# direct methods
.method constructor <init>(Lg/i/a/d;Landroidx/appcompat/widget/Toolbar;Lzendesk/support/request/ViewAlmostRealProgressBar;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/v/d;

    invoke-direct {v0}, Lf/v/d;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/ComponentToolbar;->fadeTransition:Lf/v/d;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->picasso:Lg/i/a/d;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ComponentToolbar;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    .line 5
    iput-object p2, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->context:Landroid/content/Context;

    .line 7
    new-instance p1, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    invoke-direct {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarSelector;-><init>()V

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbarSelector:Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    .line 8
    sget p1, Lg/k/c/f;->m:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    .line 9
    sget p1, Lg/k/c/f;->o:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->title:Landroid/widget/TextView;

    .line 10
    sget p1, Lg/k/c/f;->n:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->subTitle:Landroid/widget/TextView;

    .line 11
    sget p1, Lg/k/c/f;->l:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/ViewToolbarAvatar;

    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->avatarContainer:Lzendesk/support/request/ViewToolbarAvatar;

    return-void
.end method

.method private updateProgressBar(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    sget-object v0, Lzendesk/support/request/ViewAlmostRealProgressBar;->DONT_STOP_MOVING:Ljava/util/List;

    invoke-virtual {p1, v0}, Lzendesk/support/request/ViewAlmostRealProgressBar;->start(Ljava/util/List;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->progressBar:Lzendesk/support/request/ViewAlmostRealProgressBar;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->stop(J)V

    :goto_0
    return-void
.end method

.method private updateToolbar(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getToolbarContentState()I

    move-result v0

    sget v1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_LOADING:I

    const-string v2, ""

    const/16 v3, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getToolbarContentState()I

    move-result v0

    sget v1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_AGENT_INFO:I

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getNameOfFirstAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->context:Landroid/content/Context;

    .line 7
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getLastReply()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-static {v0, v3, v4, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8
    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->subTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lzendesk/support/request/ComponentToolbar;->context:Landroid/content/Context;

    sget v5, Lg/k/c/j;->x:I

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->avatarContainer:Lzendesk/support/request/ViewToolbarAvatar;

    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->picasso:Lg/i/a/d;

    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getAvatarUrls()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lzendesk/support/request/ViewToolbarAvatar;->setImageUrls(Lg/i/a/d;Ljava/util/List;)V

    .line 11
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v3, p0, Lzendesk/support/request/ComponentToolbar;->fadeTransition:Lf/v/d;

    invoke-static {v2, v3}, Lf/v/o;->a(Landroid/view/ViewGroup;Lf/v/m;)V

    .line 12
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object v2, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lg/k/c/j;->j0:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getNameOfFirstAgent()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v7

    aput-object v0, v4, v1

    .line 15
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->getToolbarContentState()I

    move-result p1

    sget v0, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->STATE_TITLE:I

    if-ne p1, v0, :cond_2

    .line 18
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->container:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbar:Landroidx/appcompat/widget/Toolbar;

    sget v0, Lg/k/c/j;->d:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method getToolbarSelector()Lzendesk/support/request/ComponentToolbar$ToolbarSelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->toolbarSelector:Lzendesk/support/request/ComponentToolbar$ToolbarSelector;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentToolbar;->update(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V

    return-void
.end method

.method public update(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ComponentToolbar;->toolbarModel:Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    invoke-virtual {p1, v0}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lzendesk/support/request/ComponentToolbar;->toolbarModel:Lzendesk/support/request/ComponentToolbar$ToolbarModel;

    .line 4
    invoke-virtual {p1}, Lzendesk/support/request/ComponentToolbar$ToolbarModel;->isProgressEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lzendesk/support/request/ComponentToolbar;->updateProgressBar(Z)V

    .line 5
    invoke-direct {p0, p1}, Lzendesk/support/request/ComponentToolbar;->updateToolbar(Lzendesk/support/request/ComponentToolbar$ToolbarModel;)V

    :cond_0
    return-void
.end method
