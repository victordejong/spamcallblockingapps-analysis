.class public Lcom/freshchat/consumer/sdk/m/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pp:Lcom/freshchat/consumer/sdk/m/t;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/t;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/v;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/v;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/v;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/m/t;->a(Lcom/freshchat/consumer/sdk/m/t;)Lcom/freshchat/consumer/sdk/k/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/p;->ih()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/v;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/m/t;->a(Lcom/freshchat/consumer/sdk/m/t;)Lcom/freshchat/consumer/sdk/k/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/k/p;->getCalendarType()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/m/f;->a(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;I)V

    :cond_0
    return-void
.end method
