.class public Lcom/freshchat/consumer/sdk/a/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final nF:Landroid/widget/ImageView;

.field private final ou:Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;

.field private final ov:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_event:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->ou:Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->ov:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_upload_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$a;->nF:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/k/l;)V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->ou:Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;

    invoke-virtual {v0, p1}, Lcom/freshchat/consumer/sdk/ui/CalendarEventCardView;->setCalendarTimeSlotMessageViewModel(Lcom/freshchat/consumer/sdk/k/l;)V

    return-void
.end method

.method public hk()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->nF:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hv()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$a;->ov:Landroid/widget/TextView;

    return-object v0
.end method
