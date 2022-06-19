.class public Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/w/a/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/w/a/a$a<",
        "Ljava/util/List<",
        "Lcom/freshchat/consumer/sdk/beans/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/w/b/b;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/freshchat/consumer/sdk/k/c;->b(Ljava/util/List;Ljava/util/List;)Ln3/b0/a/h$d;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->o(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    move-object p2, p1

    check-cast p2, Lcom/freshchat/consumer/sdk/g/i;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/g/i;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/k;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freshchat/consumer/sdk/beans/Participant;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->o(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/Participant;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/freshchat/consumer/sdk/activity/r;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->p(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/a/d;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/freshchat/consumer/sdk/activity/r;-><init>(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0, v1}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->r(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Z

    move-result v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->t(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/a/d;->x(Z)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->w(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    instance-of p1, p1, Lcom/freshchat/consumer/sdk/g/i;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/g/i;->di()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)Z

    :cond_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->g(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->ap()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->an()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->s(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->u(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->v(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->gS()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/activity/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/freshchat/consumer/sdk/j/bg;->k(Landroid/content/Context;J)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->x(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)V

    :goto_1
    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->e(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/k/c;

    move-result-object p1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->c(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)J

    move-result-wide v0

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->y(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/l/c$b;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/freshchat/consumer/sdk/k/c;->a(JLcom/freshchat/consumer/sdk/l/c$b;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Ln3/w/b/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;"
        }
    .end annotation

    const-string p1, "CHANNEL_ID"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->n(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Z

    move-result v5

    new-instance p1, Lcom/freshchat/consumer/sdk/g/i;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object v4

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/freshchat/consumer/sdk/g/i;-><init>(Landroid/content/Context;JLjava/util/List;Z)V

    return-object p1
.end method

.method public synthetic onLoadFinished(Ln3/w/b/b;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->a(Ln3/w/b/b;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Ln3/w/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/w/b/b<",
            "Ljava/util/List<",
            "Lcom/freshchat/consumer/sdk/beans/Message;",
            ">;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->d(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->o(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->t(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;)Lcom/freshchat/consumer/sdk/a/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity$6;->be:Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;->b(Lcom/freshchat/consumer/sdk/activity/ConversationDetailActivity;Z)Z

    return-void
.end method
