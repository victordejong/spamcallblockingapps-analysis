.class public Lcom/freshchat/consumer/sdk/m/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic pl:Lcom/freshchat/consumer/sdk/m/n;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/n;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/o;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/o;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/m/n;->a(Lcom/freshchat/consumer/sdk/m/n;)Lcom/freshchat/consumer/sdk/k/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/r;->jp()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "EXTRA_CALENDAR_ALL_TIMESLOTS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/o;->pl:Lcom/freshchat/consumer/sdk/m/n;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/m/n;->getCalendarType()I

    move-result p1

    const-string v1, "EXTRA_CALENDAR_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/m/o;->pl:Lcom/freshchat/consumer/sdk/m/n;

    sget-object v1, Lcom/freshchat/consumer/sdk/m/a$a;->oP:Lcom/freshchat/consumer/sdk/m/a$a;

    invoke-virtual {p1, v1, v0}, Lcom/freshchat/consumer/sdk/m/a;->a(Lcom/freshchat/consumer/sdk/m/a$a;Landroid/os/Bundle;)V

    return-void
.end method
