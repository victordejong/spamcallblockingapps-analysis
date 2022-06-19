.class public Lcom/freshchat/consumer/sdk/m/n;
.super Lcom/freshchat/consumer/sdk/m/b;
.source "SourceFile"


# instance fields
.field private bX:Landroid/widget/ProgressBar;

.field private qZ:Lcom/freshchat/consumer/sdk/k/r;

.field private ra:Landroid/view/View;

.field private rb:Landroid/widget/LinearLayout;

.field private rc:Landroid/view/View;

.field private rd:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/b;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/n;)Lcom/freshchat/consumer/sdk/k/r;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/n;->qZ:Lcom/freshchat/consumer/sdk/k/r;

    return-object p0
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/n;Lcom/freshchat/consumer/sdk/service/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/m/n;->a(Lcom/freshchat/consumer/sdk/service/b;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/service/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/freshchat/consumer/sdk/service/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/a/l$b;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->bX:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->ra:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b;->getStatus()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    sget-object v3, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/n;->iS()V

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/service/b;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->rd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->rb:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->rc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/m/b;->G(Ljava/util/List;)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/n;->qZ:Lcom/freshchat/consumer/sdk/k/r;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/r;->jr()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/n;->rb:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/n;->rc:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/n;->rb:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/n;->rc:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/n;->rd:Landroid/view/View;

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/m/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/n;->hH()V

    return-void
.end method

.method public static synthetic c(Lcom/freshchat/consumer/sdk/m/n;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/n;->ra:Landroid/view/View;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_fragment_calendar_limited_time_slots_progressbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->bX:Landroid/widget/ProgressBar;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_limited_time_slots_view_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->ra:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_timeslots_data_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->rb:Landroid/widget/LinearLayout;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_show_more_time_slots_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_no_timeslots_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/freshchat/consumer/sdk/m/n;->rc:Landroid/view/View;

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_cancel_invite_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_retry_option_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/freshchat/consumer/sdk/m/n;->rd:Landroid/view/View;

    sget v2, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_retry_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/freshchat/consumer/sdk/m/o;

    invoke-direct {v2, p0}, Lcom/freshchat/consumer/sdk/m/o;-><init>(Lcom/freshchat/consumer/sdk/m/n;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/m/p;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/p;-><init>(Lcom/freshchat/consumer/sdk/m/n;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/m/q;

    invoke-direct {p1, p0}, Lcom/freshchat/consumer/sdk/m/q;-><init>(Lcom/freshchat/consumer/sdk/m/n;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private hH()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->bX:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->ra:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->qZ:Lcom/freshchat/consumer/sdk/k/r;

    new-instance v1, Lcom/freshchat/consumer/sdk/m/r;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/m/r;-><init>(Lcom/freshchat/consumer/sdk/m/n;)V

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/k/r;->a(Lcom/freshchat/consumer/sdk/service/c;)V

    return-void
.end method

.method private iS()V
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/n;->qZ:Lcom/freshchat/consumer/sdk/k/r;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/r;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/m/f;->bo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cc(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/freshchat/consumer/sdk/k/r;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/k/r;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->qZ:Lcom/freshchat/consumer/sdk/k/r;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/k/r;->setCalendarMessageMeta(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V

    return-void
.end method

.method public getCalendarType()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/n;->qZ:Lcom/freshchat/consumer/sdk/k/r;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/r;->getCalendarType()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_fragment_calendar_limited_timeslots:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/freshchat/consumer/sdk/m/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/m/n;->g(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/n;->hH()V

    return-void
.end method
