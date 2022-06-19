.class public Lcom/freshchat/consumer/sdk/activity/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic jk:Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;

.field public final synthetic jl:Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bh;->jk:Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/activity/bh;->jl:Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/activity/bh;->jk:Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/bh;->jl:Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;->a(Lcom/freshchat/consumer/sdk/activity/BotFaqDetailsActivity;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;)V

    return-void
.end method
