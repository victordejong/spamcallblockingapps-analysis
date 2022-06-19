.class public Lcom/freshchat/consumer/sdk/k/m;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private qk:Lcom/freshchat/consumer/sdk/a/l$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/a/l$b;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/m;->qk:Lcom/freshchat/consumer/sdk/a/l$b;

    return-void
.end method

.method public ib()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/m;->qk:Lcom/freshchat/consumer/sdk/a/l$b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/freshchat/consumer/sdk/a/l$a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/freshchat/consumer/sdk/a/l$a;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/a/l$a;->hw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/a/l$a;->hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/n;->I(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public ic()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/m;->qk:Lcom/freshchat/consumer/sdk/a/l$b;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/freshchat/consumer/sdk/a/l$c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/freshchat/consumer/sdk/a/l$c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/a/l$c;->hy()Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/CalendarDay$PartOfDay;->getStringResId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public id()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/CalendarDay$TimeSlot;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/m;->qk:Lcom/freshchat/consumer/sdk/a/l$b;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/freshchat/consumer/sdk/a/l$c;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/freshchat/consumer/sdk/a/l$c;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/a/l$c;->hz()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method
