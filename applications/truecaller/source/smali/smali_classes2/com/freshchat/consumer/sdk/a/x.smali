.class public Lcom/freshchat/consumer/sdk/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic jC:Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

.field public final synthetic jD:Lcom/freshchat/consumer/sdk/a/w;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/w;Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/x;->jD:Lcom/freshchat/consumer/sdk/a/w;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/x;->jC:Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/x;->jD:Lcom/freshchat/consumer/sdk/a/w;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/a/w;->b(Lcom/freshchat/consumer/sdk/a/w;)Lcom/freshchat/consumer/sdk/a/w$b;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/x;->jC:Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/a/x;->jD:Lcom/freshchat/consumer/sdk/a/w;

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/a/w;->a(Lcom/freshchat/consumer/sdk/a/w;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/freshchat/consumer/sdk/a/w$b;->a(Landroid/view/View;Lcom/freshchat/consumer/sdk/beans/fragment/StaticTemplateFragment;Ljava/lang/String;)V

    return-void
.end method
