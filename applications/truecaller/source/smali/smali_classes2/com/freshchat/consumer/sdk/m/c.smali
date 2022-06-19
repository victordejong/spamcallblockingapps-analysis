.class public Lcom/freshchat/consumer/sdk/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/a/i$a;


# instance fields
.field public final synthetic oV:Lcom/freshchat/consumer/sdk/m/b;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/c;->oV:Lcom/freshchat/consumer/sdk/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_CALENDAR_SELECTED_TIMESLOT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/c;->oV:Lcom/freshchat/consumer/sdk/m/b;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/m/b;->getCalendarType()I

    move-result p1

    const-string v1, "EXTRA_CALENDAR_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/c;->oV:Lcom/freshchat/consumer/sdk/m/b;

    sget-object v1, Lcom/freshchat/consumer/sdk/m/a$a;->oQ:Lcom/freshchat/consumer/sdk/m/a$a;

    invoke-virtual {p1, v1, v0}, Lcom/freshchat/consumer/sdk/m/a;->a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V

    return-void
.end method
