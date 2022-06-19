.class public Lcom/freshchat/consumer/sdk/m/d;
.super Lcom/freshchat/consumer/sdk/m/b;
.source "SourceFile"


# instance fields
.field private oW:Lcom/freshchat/consumer/sdk/k/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/b;-><init>()V

    return-void
.end method

.method private hH()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/d;->oW:Lcom/freshchat/consumer/sdk/k/j;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/j;->hY()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/m/b;->G(Ljava/util/List;)V

    return-void
.end method

.method private hI()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_CALENDAR_ALL_TIMESLOTS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private hJ()I
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_CALENDAR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cc(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/k/j;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/k/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/d;->oW:Lcom/freshchat/consumer/sdk/k/j;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/d;->hI()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/j;->H(Ljava/util/List;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/d;->oW:Lcom/freshchat/consumer/sdk/k/j;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/d;->hJ()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/k/j;->setCalendarType(I)V

    return-void
.end method

.method public getCalendarType()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/d;->oW:Lcom/freshchat/consumer/sdk/k/j;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/j;->getCalendarType()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_fragment_calendar_all_timeslots:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/m/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/d;->hH()V

    new-instance p2, Lcom/freshchat/consumer/sdk/m/e;

    invoke-direct {p2, p0}, Lcom/freshchat/consumer/sdk/m/e;-><init>(Lcom/freshchat/consumer/sdk/m/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
