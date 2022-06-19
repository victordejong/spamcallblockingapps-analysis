.class public Lcom/freshchat/consumer/sdk/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic os:Lcom/freshchat/consumer/sdk/beans/Message;

.field public final synthetic ot:Lcom/freshchat/consumer/sdk/a/d;

.field public final synthetic pW:Landroid/view/View;

.field public final synthetic pX:Lcom/freshchat/consumer/sdk/a/d$e;

.field public final synthetic qA:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/p;->pX:Lcom/freshchat/consumer/sdk/a/d$e;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/p;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    iput-boolean p4, p0, Lcom/freshchat/consumer/sdk/a/p;->qA:Z

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/a/p;->pW:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->pX:Lcom/freshchat/consumer/sdk/a/d$e;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ir()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/freshchat/consumer/sdk/j/bg;->f(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/a/d;->d(Lcom/freshchat/consumer/sdk/a/d;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/p;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/i;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/freshchat/consumer/sdk/j/bg;->f(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/d;->d(Lcom/freshchat/consumer/sdk/a/d;)Ljava/util/Set;

    move-result-object p1

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/p;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-virtual {v3}, Lcom/freshchat/consumer/sdk/beans/Message;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/a/p;->pX:Lcom/freshchat/consumer/sdk/a/d$e;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/a/p;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    iget-boolean v5, p0, Lcom/freshchat/consumer/sdk/a/p;->qA:Z

    invoke-static {p1, v3, v4, v5}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/a/d$e;Lcom/freshchat/consumer/sdk/beans/Message;Z)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->pX:Lcom/freshchat/consumer/sdk/a/d$e;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/a/d$e;->ip()Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v3, Lcom/freshchat/consumer/sdk/a/d$h;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    iget-object v5, p0, Lcom/freshchat/consumer/sdk/a/p;->os:Lcom/freshchat/consumer/sdk/beans/Message;

    invoke-static {v4}, Lcom/freshchat/consumer/sdk/a/d;->e(Lcom/freshchat/consumer/sdk/a/d;)Lcom/freshchat/consumer/sdk/a/d$g;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/freshchat/consumer/sdk/a/d$h;-><init>(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/a/d$g;Z)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/p;->ot:Lcom/freshchat/consumer/sdk/a/d;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/p;->pW:Landroid/view/View;

    xor-int/2addr v0, v1

    invoke-static {p1, v2, v0}, Lcom/freshchat/consumer/sdk/a/d;->a(Lcom/freshchat/consumer/sdk/a/d;Landroid/view/View;Z)V

    return-void
.end method
