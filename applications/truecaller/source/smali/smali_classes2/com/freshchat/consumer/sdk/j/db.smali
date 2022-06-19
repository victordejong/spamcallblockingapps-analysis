.class public Lcom/freshchat/consumer/sdk/j/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/a/w$b;


# instance fields
.field public final synthetic iC:Lcom/freshchat/consumer/sdk/j/ak;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/db;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;Ljava/lang/String;)V
    .locals 2

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/db;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "MESSAGE_ALIAS"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->getLabel()Ljava/lang/String;

    move-result-object p3

    const-string v0, "EXTRA_TITLE"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->getReferenceId()Ljava/lang/String;

    move-result-object p3

    const-string v0, "REFERENCE_ID"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;->getPlaceholderReferenceId()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PLACEOLDER_REFERENCE_ID"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/freshchat/consumer/sdk/j/db;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/ak;->a(Lcom/freshchat/consumer/sdk/j/ak;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
