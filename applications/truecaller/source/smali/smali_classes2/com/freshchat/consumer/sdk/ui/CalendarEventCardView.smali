.class public Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"


# instance fields
.field private oZ:Landroid/widget/TextView;

.field private pK:Lcom/freshchat/consumer/sdk/k/l;

.field private pL:Landroid/view/View;

.field private pM:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->cg(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->cg(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->cg(Landroid/content/Context;)V

    return-void
.end method

.method private cg(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_calendar_event_card_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pL:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pL:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_event_card_confirmation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pM:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pL:Landroid/view/View;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_event_card_duration:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->oZ:Landroid/widget/TextView;

    return-void
.end method

.method private hW()V
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ci;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/ci;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pL:Landroid/view/View;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pK:Lcom/freshchat/consumer/sdk/k/l;

    sget v3, Lcom/freshchat/consumer/sdk/R$dimen;->freshchat_calendar_event_card_avatar_size:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/freshchat/consumer/sdk/j/ci;->a(Landroid/view/View;Lcom/freshchat/consumer/sdk/k/p;I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pK:Lcom/freshchat/consumer/sdk/k/l;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/l;->hZ()Lcom/freshchat/consumer/sdk/k/l$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->a(Lcom/freshchat/consumer/sdk/k/l$a;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/aq;->j(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pM:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pM:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->b(Lcom/freshchat/consumer/sdk/k/l$a;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->oZ:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pK:Lcom/freshchat/consumer/sdk/k/l;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/l;->ia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/k/l$a;)I
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/ui/d;->pN:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCalendarEventPendingIcon:I

    return p1

    :cond_0
    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCalendarEventScheduledIcon:I

    return p1

    :cond_1
    sget p1, Lcom/freshchat/consumer/sdk/R$attr;->freshchatCalendarEventFailedIcon:I

    return p1
.end method

.method public b(Lcom/freshchat/consumer/sdk/k/l$a;)I
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/ui/d;->pN:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_meeting_state_pending:I

    return p1

    :cond_0
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_meeting_state_scheduled:I

    return p1

    :cond_1
    sget p1, Lcom/freshchat/consumer/sdk/R$string;->freshchat_calendar_meeting_state_failed:I

    return p1
.end method

.method public setCalendarTimeSlotMessageViewModel(Lcom/freshchat/consumer/sdk/k/l;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->pK:Lcom/freshchat/consumer/sdk/k/l;

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->hW()V

    return-void
.end method
