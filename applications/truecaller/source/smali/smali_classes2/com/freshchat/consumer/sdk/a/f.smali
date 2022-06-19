.class public Lcom/freshchat/consumer/sdk/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic mZ:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

.field public final synthetic na:Lcom/freshchat/consumer/sdk/a/e;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/e;Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/f;->na:Lcom/freshchat/consumer/sdk/a/e;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/f;->mZ:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/f;->na:Lcom/freshchat/consumer/sdk/a/e;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/a/e;->b(Lcom/freshchat/consumer/sdk/a/e;)Lcom/freshchat/consumer/sdk/a/e$a;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/f;->mZ:Lcom/freshchat/consumer/sdk/beans/fragment/MessageFragment;

    check-cast v0, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/f;->na:Lcom/freshchat/consumer/sdk/a/e;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/a/e;->a(Lcom/freshchat/consumer/sdk/a/e;)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/freshchat/consumer/sdk/a/e$a;->a(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;J)V

    return-void
.end method
