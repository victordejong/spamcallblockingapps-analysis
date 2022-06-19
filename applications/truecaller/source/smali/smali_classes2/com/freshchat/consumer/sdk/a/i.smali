.class public Lcom/freshchat/consumer/sdk/a/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/a/i$b;,
        Lcom/freshchat/consumer/sdk/a/i$a;
    }
.end annotation


# instance fields
.field private final ow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;"
        }
    .end annotation
.end field

.field private final ox:Lcom/freshchat/consumer/sdk/a/i$a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/i$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;",
            "Lcom/freshchat/consumer/sdk/a/i$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/i;->ow:Ljava/util/List;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/i;->ox:Lcom/freshchat/consumer/sdk/a/i$a;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/i;)Lcom/freshchat/consumer/sdk/a/i$a;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/i;->ox:Lcom/freshchat/consumer/sdk/a/i$a;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/i;->ow:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/i;->ow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/i;->ow:Ljava/util/List;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/i;->a(I)Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/freshchat/consumer/sdk/R$layout;->freshchat_calendar_timeslot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/freshchat/consumer/sdk/a/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/freshchat/consumer/sdk/a/i$b;-><init>(Lcom/freshchat/consumer/sdk/a/i;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/j;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/a/i$b;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/a/i;->a(I)Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Lcom/freshchat/consumer/sdk/k/q;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {v1, p3}, Lcom/freshchat/consumer/sdk/k/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/freshchat/consumer/sdk/k/q;->c(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/a/i$b;->a(Lcom/freshchat/consumer/sdk/a/i$b;Lcom/freshchat/consumer/sdk/k/q;)V

    :cond_1
    return-object p2
.end method
