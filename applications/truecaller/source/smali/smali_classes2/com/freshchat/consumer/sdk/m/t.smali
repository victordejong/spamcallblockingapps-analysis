.class public Lcom/freshchat/consumer/sdk/m/t;
.super Lcom/freshchat/consumer/sdk/m/a;
.source "SourceFile"


# instance fields
.field private jH:Landroidx/core/widget/NestedScrollView;

.field private pn:Lcom/freshchat/consumer/sdk/k/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/m/t;)Lcom/freshchat/consumer/sdk/k/p;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    return-object p0
.end method

.method public static synthetic b(Lcom/freshchat/consumer/sdk/m/t;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/m/t;->jH:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ci;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ci;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    sget v2, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_calendar_confirmation_avatar_size:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/j/ci;->a(Landroid/view/View;Lcom/freshchat/consumer/sdk/k/p;I)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_timeslot_confirmation_scrollbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/t;->jH:Landroidx/core/widget/NestedScrollView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_confirm_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_change_slot_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/freshchat/consumer/sdk/m/v;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/m/v;-><init>(Lcom/freshchat/consumer/sdk/m/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/freshchat/consumer/sdk/m/w;

    invoke-direct {v0, p0}, Lcom/freshchat/consumer/sdk/m/w;-><init>(Lcom/freshchat/consumer/sdk/m/t;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/t;->hR()V

    return-void
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

.method private hQ()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "EXTRA_CALENDAR_SELECTED_TIMESLOT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private hR()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/t;->jH:Landroidx/core/widget/NestedScrollView;

    new-instance v1, Lcom/freshchat/consumer/sdk/m/x;

    invoke-direct {v1, p0}, Lcom/freshchat/consumer/sdk/m/x;-><init>(Lcom/freshchat/consumer/sdk/m/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public cc(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/k/p;

    invoke-direct {v0, p1}, Lcom/freshchat/consumer/sdk/k/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->getCalendarMessageMeta()Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;

    move-result-object p1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/t;->hQ()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    move-result-object v0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/m/a;->hC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/t;->hJ()I

    move-result v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    invoke-virtual {v3, p1}, Lcom/freshchat/consumer/sdk/k/p;->setCalendarMessageMeta(Lcom/freshchat/consumer/sdk/beans/CalendarMessageMeta;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/k/p;->b(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/k/p;->br(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/t;->pn:Lcom/freshchat/consumer/sdk/k/p;

    invoke-virtual {p1, v2}, Lcom/freshchat/consumer/sdk/k/p;->setCalendarType(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/m/t;->hR()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    sget p3, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_calendar_timeslot_confirmation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/m/t;->g(Landroid/view/View;)V

    new-instance p2, Lcom/freshchat/consumer/sdk/m/u;

    invoke-direct {p2, p0}, Lcom/freshchat/consumer/sdk/m/u;-><init>(Lcom/freshchat/consumer/sdk/m/t;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
