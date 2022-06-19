.class public Lcom/freshchat/consumer/sdk/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic oA:Lcom/freshchat/consumer/sdk/k/q;

.field public final synthetic oB:Lcom/freshchat/consumer/sdk/a/i$b;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/i$b;Lcom/freshchat/consumer/sdk/k/q;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/k;->oB:Lcom/freshchat/consumer/sdk/a/i$b;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/k;->oA:Lcom/freshchat/consumer/sdk/k/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/k;->oB:Lcom/freshchat/consumer/sdk/a/i$b;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/a/i$b;->oz:Lcom/freshchat/consumer/sdk/a/i;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/i;->a(Lcom/freshchat/consumer/sdk/a/i;)Lcom/freshchat/consumer/sdk/a/i$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/k;->oA:Lcom/freshchat/consumer/sdk/k/q;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/q;->il()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/k;->oB:Lcom/freshchat/consumer/sdk/a/i$b;

    iget-object p1, p1, Lcom/freshchat/consumer/sdk/a/i$b;->oz:Lcom/freshchat/consumer/sdk/a/i;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/i;->a(Lcom/freshchat/consumer/sdk/a/i;)Lcom/freshchat/consumer/sdk/a/i$a;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/k;->oA:Lcom/freshchat/consumer/sdk/k/q;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/q;->il()Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/freshchat/consumer/sdk/a/i$a;->a(Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;)V

    :cond_0
    return-void
.end method
